package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto.ProductAddReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto.ProductInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto.ProductInfoWithIsSales;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto.ProductModifyReq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.List;

@RestController
public class ProductController {

    @Autowired
    private ProductService productService;

    @PostMapping("/api/seller/product")
    public ResponseEntity postProduct(
            Authentication authentication,
            @ModelAttribute ProductAddReq data
    ) {
        productService.addProduct((Long) authentication.getPrincipal(), data);
        return new ResponseEntity(HttpStatus.CREATED);
    }

    @PutMapping("/api/seller/product/{id}")
    public ResponseEntity putProduct(
            Authentication authentication,
            @PathVariable("id") BigInteger id,
            @ModelAttribute ProductModifyReq data
    ) {
        if(!productService.modifyProduct((Long) authentication.getPrincipal(), id, data)) {
            return new ResponseEntity(HttpStatus.FORBIDDEN);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @DeleteMapping("/api/seller/product/{id}")
    public ResponseEntity putProduct(
            Authentication authentication,
            @PathVariable("id") BigInteger id
    ) {
        if(!productService.removeProduct((Long) authentication.getPrincipal(), id)) {
            return new ResponseEntity(HttpStatus.FORBIDDEN);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @GetMapping("/api/product/{id}")
    public ResponseEntity getProduct(
            @PathVariable("id") BigInteger id
    ) {
        ProductInfo info = productService.getProductInfo(id);
        if(info == null) {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity(info, HttpStatus.OK);
    }

    @GetMapping("/api/seller/product/search")
    public ResponseEntity searchMyProductList(
            Authentication authentication,
            @PageableDefault(size=20, sort="id", page = 0) Pageable pageable,
            @RequestParam(value = "category1", required = false) Integer category1,
            @RequestParam(value = "category2", required = false) Integer category2,
            @RequestParam(value = "maxPrice", required = false) Integer maxPrice,
            @RequestParam(value = "name", required = false) String name
    ) {
        List<ProductInfoWithIsSales> productList = productService.getSellersProductList(
                pageable, (Long) authentication.getPrincipal(), category1, category2, maxPrice, name);
        return new ResponseEntity(productList, HttpStatus.OK);
    }
}
