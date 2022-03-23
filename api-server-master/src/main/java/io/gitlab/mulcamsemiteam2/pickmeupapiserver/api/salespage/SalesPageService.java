package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.NotFoundException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.MemberSellerRepositoy;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.ProductRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.entity.Product;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.dto.*;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesPage;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesProduct;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class SalesPageService {
    private final SalesPageRepository salesPageRepository;

    private final SalesProductRepository salesProductRepository;

    private final MemberSellerRepositoy sellerRepositoy;

    private final ProductRepository productRepository;

    @Transactional
    public void addPage(Long sellerId, SalesPageAddReq data) {
        MemberSeller seller = sellerRepositoy.findOne(sellerId);

        if(seller == null) {
            throw new RuntimeException("사용자 인증에 실패했습니다.");
        }

        SalesPage newPage = SalesPage.builder()
                .memberSeller(seller)
                .name(data.getName())
                .content(data.getContent())
                .build();
        salesPageRepository.save(newPage);

        if(data.getProductList() == null || data.getProductList().length == 0) {
            return;
        }

        for (BigInteger productId: data.getProductList()) {
            SalesProduct salesProduct = salesProductRepository.findByProduct_Id(productId);
            if(salesProduct != null) {
                if(!salesProduct.getMemberSeller().getId().equals(sellerId)) {
                    throw new RuntimeException("Product " + productId + "에 대한 권한이 없습니다.");
                }
                salesProduct.setSalesPage(newPage);
            } else {
                Product product = productRepository.findById(productId).get();
                if(!product.getSeller().getId().equals(sellerId)) {
                    throw new RuntimeException("Product " + productId + "에 대한 권한이 없습니다.");
                }
                salesProduct = SalesProduct.builder()
                        .memberSeller(seller)
                        .product(product)
                        .salesPage(newPage)
                        .build();
                salesProductRepository.save(salesProduct);
            }
        }
    }

    @Transactional
    public boolean modifyPage(Long sellerId, BigInteger id, SalesPageModifyReq data) {
        SalesPage salesPage = salesPageRepository.findById(id).get();

        if(!salesPage.getMemberSeller().getId().equals(sellerId)) {
            return false; // 권한 없음
        }

        salesPage.setName(data.getName());
        salesPage.setContent(data.getName());
        salesPage.setLastModTime(new Date());
        salesPage.getSalesProductList().clear();

        salesPageRepository.flush();

        if(data.getProductList() == null || data.getProductList().length == 0) {
            return true;
        }

        for (BigInteger productId: data.getProductList()) {
            SalesProduct salesProduct = salesProductRepository.findByProduct_Id(productId);
            if(salesProduct != null) {
                if(!salesProduct.getMemberSeller().getId().equals(sellerId)) {
                    throw new RuntimeException("Product " + productId + "에 대한 권한이 없습니다.");
                }
                salesProduct.setSalesPage(salesPage);
            } else {
                Product product = productRepository.findById(productId).get();
                if(!product.getSeller().getId().equals(sellerId)) {
                    throw new RuntimeException("Product " + productId + "에 대한 권한이 없습니다.");
                }
                salesProduct = SalesProduct.builder()
                        .memberSeller(salesPage.getMemberSeller())
                        .product(product)
                        .salesPage(salesPage)
                        .build();
                salesProductRepository.save(salesProduct);
            }
        }
        return true;
    }

    @Transactional
    public SalesPageDetailInfo getPageInfo(BigInteger id) {
        SalesPage salesPage = salesPageRepository.findById(id).get();
        if(salesPage == null) {
            return null;
        }
        salesPage.setClickCount(salesPage.getClickCount() + 1);
        return SalesPageDetailInfo.fromEntity(salesPage);
    }

    public List<SalesPageSimpleInfo> getSellersPageList(
            Pageable pageable, Long sellerId, String name
    ) {
        List<SalesPage> pageList = salesPageRepository.findByQuery(sellerId, name, pageable);
        if(pageList == null || pageList.isEmpty()) {
            return new ArrayList<>();
        }
        return pageList.stream().map(v -> SalesPageSimpleInfo.fromEntity(v)).collect(Collectors.toList());
    }

    public SalesProductDetailInfo getSalesProduct(BigInteger id) {
        Optional<SalesProduct> product = salesProductRepository.findById(id);
        if(product.isEmpty()) {
            throw new NotFoundException("항목을 찾을 수 없습니다.");
        }
        return SalesProductDetailInfo.fromEntity(product.get());
    }

    public List<SalesProductDetailInfo> searchSalesProductList(
            Pageable pageable, String eupmyundongCode, Integer category1, Integer category2, Integer minPrice, Integer maxPrice, String name
    ) {
        List<SalesProduct> productList = salesProductRepository.findByQuery(eupmyundongCode, category1, category2, minPrice, maxPrice, name, pageable);
        if(productList == null || productList.isEmpty()) {
            return new ArrayList<>();
        }
        return productList.stream().map(v -> SalesProductDetailInfo.fromEntity(v)).collect(Collectors.toList());
    }
}
