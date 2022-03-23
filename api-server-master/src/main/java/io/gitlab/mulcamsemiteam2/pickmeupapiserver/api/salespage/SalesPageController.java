package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.NotFoundException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.MemberConsumerService;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.MemberSellerService;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.dto.*;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.MemberRoles;
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
public class SalesPageController {

    @Autowired private SalesPageService salesPageService;
    @Autowired private MemberSellerService sellerService;
    @Autowired private MemberConsumerService consumerService;

    @PostMapping("/api/seller/salespage")
    public ResponseEntity postSalesPage(
            Authentication authentication,
            @ModelAttribute SalesPageAddReq data
    ) {
        salesPageService.addPage((Long) authentication.getPrincipal(), data);
        return new ResponseEntity(HttpStatus.CREATED);
    }

    @PutMapping("/api/seller/salespage/{id}")
    public ResponseEntity postSalesPage(
            Authentication authentication,
            @PathVariable("id") BigInteger id,
            @ModelAttribute SalesPageModifyReq data
    ) {
        if(!salesPageService.modifyPage((Long) authentication.getPrincipal(), id, data)) {
            return new ResponseEntity(HttpStatus.FORBIDDEN);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @GetMapping("/api/salespage/{id}")
    public ResponseEntity getSalesPage(
            @PathVariable("id") BigInteger id
    ) {
        SalesPageDetailInfo info = salesPageService.getPageInfo(id);
        if(info == null) {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity(info, HttpStatus.OK);
    }

    @GetMapping("/api/seller/salespage/search")
    public ResponseEntity searchMySalesPageList(
            Authentication authentication,
            @PageableDefault(size=20, sort="id", page = 0) Pageable pageable,
            @RequestParam(value = "name", required = false) String name
    ) {
        List<SalesPageSimpleInfo> pageList = salesPageService.getSellersPageList(
                pageable, (Long) authentication.getPrincipal(), name);
        return new ResponseEntity(pageList, HttpStatus.OK);
    }

    @GetMapping("/api/salesproduct/{id}")
    public ResponseEntity getSalesProduct(
            @PathVariable("id") BigInteger id
    ) {
        try {
            SalesProductDetailInfo productInfo = salesPageService.getSalesProduct(id);
            return new ResponseEntity(productInfo, HttpStatus.OK);
        } catch (NotFoundException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/api/salesproduct/search")
    public ResponseEntity searchSalesProductList(
            Authentication authentication,
            @PageableDefault(size=20, sort="id", page = 0) Pageable pageable,
            @RequestParam(value = "category1", required = false) Integer category1,
            @RequestParam(value = "category2", required = false) Integer category2,
            @RequestParam(value = "minPrice", required = false) Integer minPrice,
            @RequestParam(value = "maxPrice", required = false) Integer maxPrice,
            @RequestParam(value = "name", required = false) String name
    ) {
        // 로그인 된 사용자의 정보를 가져온다.
        Long id = (Long) authentication.getPrincipal();
        String role = authentication.getAuthorities().stream()
                .filter(auth -> auth.getAuthority().startsWith("ROLE_"))
                .findAny().get().getAuthority();

        // 로그인 된 사용자의 활동 법정동 코드를 가져온다.
        String eupmyundongCode = null;
        if (role.equals("ROLE_" + MemberRoles.CONSUMER)) {
            eupmyundongCode = consumerService.getUserInfo(id).getEupmyundongCode();
        } else if (role.equals("ROLE_" + MemberRoles.SELLER)) {
            eupmyundongCode = sellerService.getUserInfo(id).getEupmyundongCode();
        }

        List<SalesProductDetailInfo> productList = salesPageService.searchSalesProductList(
                pageable, eupmyundongCode, category1, category2, minPrice, maxPrice, name);
        return new ResponseEntity(productList, HttpStatus.OK);
    }
}
