package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.dto.*;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.BadRequestException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.ForbiddenException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.NotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class OrderController {
    @Autowired
    private OrderService orderService;

    /**
     *  Sales_page 에서 단품 구매
     */
    @PostMapping("/api/consumer/order/createOrder")
    public ResponseEntity  createOrder(Authentication authentication, SellerPageOrderDto dto) {
        Long userId = (Long) authentication.getPrincipal();
        if(orderService.saveOrder(userId, dto)) {
            return new ResponseEntity(true, HttpStatus.OK);
        }
        return new ResponseEntity("상품의 재고가 부족합니다.", HttpStatus.BAD_REQUEST);
    }
    /**
     *  장바구니에서 여러개 구매
     */
    @PostMapping("/api/consumer/order/createOrderList")
    public ResponseEntity createOrderList(Authentication authentication, CartOrderDto cartOrderDto) {
        Long userId = (Long) authentication.getPrincipal();
        try {
            boolean result = orderService.saveOrderList(userId, cartOrderDto);
            return new ResponseEntity(result, HttpStatus.OK);
        } catch (BadRequestException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 주문 취소 : STATE - 30
     */
    @PutMapping("/api/consumer/cancelOrder")
    public ResponseEntity cancelOrder(Authentication authentication,@RequestParam(value = "orderId") BigInteger orderId) {
        Long userId = (Long) authentication.getPrincipal();
        try {
            if(!orderService.cancelOrder(userId, orderId)) {
                return new ResponseEntity("상품이 준비되기 전에만 취소가 가능합니다.", HttpStatus.BAD_REQUEST);
            }
            return new ResponseEntity(HttpStatus.OK);
        } catch (ForbiddenException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.FORBIDDEN);
        } catch (NotFoundException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.NOT_FOUND);
        }
    }

    /**
     * 주문 취소 : STATE - 30
     */
    @PutMapping("/api/seller/cancelOrder")
    public ResponseEntity cancelOrderForSeller(Authentication authentication,@RequestParam(value = "orderId") BigInteger orderId) {
        Long userId = (Long) authentication.getPrincipal();
        try {
            if(!orderService.cancelOrderForSeller(userId, orderId)) {
                return new ResponseEntity("상품 픽업 전에만 취소가 가능합니다.", HttpStatus.BAD_REQUEST);
            }
            return new ResponseEntity(HttpStatus.OK);
        } catch (ForbiddenException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.FORBIDDEN);
        } catch (NotFoundException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.NOT_FOUND);
        }
    }

    /**
     * 상품 준비 완료 : 판매자가 가능하게
     */
    @PutMapping("/api/seller/setOrderStatus")
    public ResponseEntity readyOrder(Authentication authentication, @RequestParam(value = "orderId") BigInteger orderId, @RequestParam(value = "orderState") int orderState) {
        Long sellerId = (Long) authentication.getPrincipal();
        try {
            orderService.readyOrder(sellerId, orderId, orderState);
            return new ResponseEntity(HttpStatus.OK);
        } catch (BadRequestException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.BAD_REQUEST);
        } catch (ForbiddenException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.FORBIDDEN);
        } catch (NotFoundException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.NOT_FOUND);
        }
    }

    /**
     * 주문 전체보기 (구매자)
     */
    @GetMapping("/api/consumer/payments")
    public ResponseEntity showOrder(
            Authentication authentication,
            @PageableDefault(size=20, page = 0, sort="id", direction = Sort.Direction.DESC) Pageable pageable
    ) {
        Long memberId = (Long) authentication.getPrincipal();
        List<PurchasePaymentDto> allOrder = orderService.getAllOrder(memberId, pageable);
        return new ResponseEntity(allOrder, HttpStatus.OK);
    }

    @GetMapping("/api/consumer/showOrder")
    public ResponseEntity showOrders(
            Authentication authentication,
            @RequestParam(value = "state", required = false) Integer state,
            @PageableDefault(size=20, page = 0, sort="id", direction = Sort.Direction.DESC) Pageable pageable
    ) {
        Long memberId = (Long) authentication.getPrincipal();
        List<OrderSimpleDto> orderList = orderService.getAllOrderForConsumer(memberId, state, pageable);
        return new ResponseEntity(orderList, HttpStatus.OK);
    }

    /**
     * 주문 상세보기
     */
    @GetMapping("/api/consumer/order/{purchasePaymentId}")
    public ResponseEntity showDetailOrder(Authentication authentication, @PathVariable BigInteger purchasePaymentId) {
        Long memberId = (Long) authentication.getPrincipal();
        try {
            PurchasePaymentDetailDto purchasePaymentDetailDto = orderService.showDetailOrder(memberId, purchasePaymentId);
            if(purchasePaymentDetailDto == null) {
                return new ResponseEntity("주문에 대한 세부상항이 없습니다", HttpStatus.NOT_FOUND);
            }
            return new ResponseEntity(purchasePaymentDetailDto, HttpStatus.OK);
        } catch (ForbiddenException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.FORBIDDEN);
        } catch (NotFoundException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.NOT_FOUND);
        }
    }

    /**
     * 주문 전체보기 (판매자)
     */
    @GetMapping("/api/seller/showOrder")
    public ResponseEntity showOrderForSeller(
            Authentication authentication,
            @RequestParam(value = "state", required = false) Integer state,
            @PageableDefault(size=20, page = 0, sort="id", direction = Sort.Direction.DESC) Pageable pageable
    ) {
        Long memberId = (Long) authentication.getPrincipal();
        List<OrderSimpleForSellerDto> orderList = orderService.getAllOrderForSeller(memberId, state, pageable);
        return new ResponseEntity(orderList, HttpStatus.OK);
    }
}
