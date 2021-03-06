package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.MemberSellerRepositoy;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto.ProductAddReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto.ProductInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto.ProductInfoWithIsSales;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto.ProductModifyReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.entity.Product;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.SalesProductRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.config.PickmeupProperties;
import lombok.RequiredArgsConstructor;
import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.math.BigInteger;
import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class ProductService {
    private final ProductRepository productRepository;

    private final MemberSellerRepositoy sellerRepositoy;

    private final SalesProductRepository salesProductRepository;

    @Autowired
    private PickmeupProperties pickmeupProperties;

    @Transactional
    public void addProduct(Long sellerId, ProductAddReq data) {
        Product newProduct = Product.builder()
                .seller(sellerRepositoy.findOne(sellerId))
                .name(data.getName())
                .images("")
                .category1(data.getCategory1())
                .category2(data.getCategory2())
                .additionalDesc(data.getAdditionalDesc())
                .price(data.getPrice())
                .discountRate(data.getDiscountRate())
                .stockCount(data.getStockCount())
                .build();

        productRepository.save(newProduct);

        if(data.getImages() != null && data.getImages().length > 10) {
            throw new RuntimeException("???????????? ?????? ?????? ????????????.");
        }

        if(data.getImages() != null && data.getImages().length > 0) {
            String resourcesPath = pickmeupProperties.getUploadPath();
            File productUploadDir = new File(resourcesPath, "product");
            File eachProductUploadDir = new File(productUploadDir, newProduct.getId().toString());
            File indexFile = new File(eachProductUploadDir, "index");

            int fileIdx = 1;
            if(!eachProductUploadDir.exists()) {
                eachProductUploadDir.mkdirs();
            } else if(indexFile.exists()) {
                try (Scanner scan = new Scanner(indexFile))  {
                    fileIdx = Integer.parseInt(scan.nextLine());
                } catch (Exception ignore) { }
            }

            List<File> images = new ArrayList<File>();
            try {
                for (MultipartFile multiPartFile: data.getImages()) {
                    // image ????????? ???????????? ??????
                    if(!multiPartFile.getContentType().toLowerCase().startsWith("image/")) {
                        throw new Exception("????????? ????????? ???????????????.");
                    }
                    File uploadFile = new File(eachProductUploadDir, Integer.toString(fileIdx++));
                    multiPartFile.transferTo(uploadFile);
                    images.add(uploadFile);
                }
                BufferedWriter writer = new BufferedWriter(new FileWriter(indexFile));
                writer.write(Integer.toString(fileIdx));
                writer.close();
                newProduct.setImages(String.join(",",
                        images.stream().map(f -> f.getName()).collect(Collectors.toList())));

                productRepository.flush();
            } catch (Exception e) {
                try {
                    FileUtils.deleteDirectory(eachProductUploadDir);
                } catch (IOException ignore) { }

                throw new RuntimeException(e);
            }
        }
    }

    @Transactional
    public boolean modifyProduct(Long sellerId, BigInteger id, ProductModifyReq data) {
        Product product = productRepository.findById(id).get();

        if(!product.getSeller().getId().equals(sellerId)) {
            return false; // ?????? ??????
        }

        product.setName(data.getName());
        product.setCategory1(data.getCategory1());
        product.setCategory2(data.getCategory2());
        product.setAdditionalDesc(data.getAdditionalDesc());
        product.setPrice(data.getPrice());
        product.setDiscountRate(data.getDiscountRate());
        product.setStockCount(data.getStockCount());
        product.setLastModTime(new Date());

        // ????????? ??????, ?????? ??????
        // ?????? ????????? ??????
        Set<String> originImages = new HashSet<>(Arrays.asList(product.getImages().split(",")));
        // ????????? ????????? ??????
        Set<String> removeImages = data.getRemoveImages() != null
                ? Arrays.stream(data.getRemoveImages())
                .map(v -> {
                    String[] pathParts = v.split("/");
                    if(pathParts.length > 0) {
                        return pathParts[pathParts.length - 1];
                    }
                    return "";
                })
                .filter(v -> originImages.contains(v))
                .collect(Collectors.toSet())
                : new HashSet<>();
        int addSize = data.getNewImages() != null ? data.getNewImages().length : 0;

        // ????????? ?????? ?????? ??????
        if(originImages.size() - removeImages.size() + addSize > 10) {
            throw new RuntimeException("???????????? ?????? ?????? ????????????.");
        }

        String resourcesPath = pickmeupProperties.getUploadPath();
        File productUploadDir = new File(resourcesPath, "product");
        File eachProductUploadDir = new File(productUploadDir, product.getId().toString());

        // ?????? ??????
        List<File> addedImages = new ArrayList<File>();
        try {
            if(addSize > 0) {
                File indexFile = new File(eachProductUploadDir, "index");

                int fileIdx = 1;
                if(!eachProductUploadDir.exists()) {
                    eachProductUploadDir.mkdirs();
                } else if(indexFile.exists()) {
                    try (Scanner scan = new Scanner(indexFile))  {
                        fileIdx = Integer.parseInt(scan.nextLine());
                    } catch (Exception ignore) { }
                }

                for (MultipartFile multiPartFile: data.getNewImages()) {
                    // image ????????? ???????????? ??????
                    if(!multiPartFile.getContentType().toLowerCase().startsWith("image/")) {
                        throw new Exception("????????? ????????? ???????????????.");
                    }
                    File uploadFile = new File(eachProductUploadDir, Integer.toString(fileIdx++));
                    multiPartFile.transferTo(uploadFile);
                    addedImages.add(uploadFile);
                    originImages.add(uploadFile.getName());
                }
                // ?????? ??????????????? ???????????? ????????? index??? ????????? ????????????.
                BufferedWriter writer = new BufferedWriter(new FileWriter(indexFile));
                writer.write(Integer.toString(fileIdx));
                writer.close();
            }
        } catch (Exception e) {
            addedImages.forEach(f -> f.delete());
            throw new RuntimeException(e);
        }

        // ?????? ??????
        for (String removeFileName: removeImages) {
            new File(eachProductUploadDir, removeFileName).delete();
            originImages.remove(removeFileName);
        }

        product.setImages(String.join(",", originImages));

        return true;
    }

    @Transactional
    public boolean removeProduct(Long sellerId, BigInteger id) {
        Product product = productRepository.findById(id).get();
        if(!product.getSeller().getId().equals(sellerId)) {
            return false; // ?????? ??????
        }

        productRepository.delete(product);

        return true;
    }

    public ProductInfo getProductInfo(BigInteger id) {
        Optional<Product> product = productRepository.findById(id);
        if(product.isEmpty()) {
            return null;
        }
        return ProductInfo.fromEntity(product.get());
    }

    public List<ProductInfoWithIsSales> getSellersProductList(
            Pageable pageable, Long sellerId, Integer category1, Integer category2, Integer maxPrice, String name
    ) {
        List<Product> productList = productRepository.findByQuery(sellerId, category1, category2, maxPrice, name, pageable);
        if(productList == null || productList.isEmpty()) {
            return new ArrayList<>();
        }
        return productList.stream()
                .map(v -> ProductInfoWithIsSales
                        .fromEntity(v, salesProductRepository.findByProduct_Id(v.getId())))
                .collect(Collectors.toList());
    }
}
