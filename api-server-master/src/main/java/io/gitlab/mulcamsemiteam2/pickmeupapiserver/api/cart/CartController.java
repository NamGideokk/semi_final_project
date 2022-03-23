package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart.dto.CartDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.ForbiddenException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.NotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class CartController {

    @Autowired
    private CartService cartService;

    @PostMapping("/api/consumer/addCart")
    public ResponseEntity addToCart(Authentication authentication, @RequestParam(value = "id") BigInteger salesProductId, @RequestParam(value="count") int count) {
        Long userId = (Long) authentication.getPrincipal();
        Boolean result = cartService.addCart(userId, salesProductId, count);
        return  new ResponseEntity(result, HttpStatus.OK);
    }

    @DeleteMapping("/api/consumer/deleteCart/{cartId}")
    public ResponseEntity deleteCart(Authentication authentication, @PathVariable BigInteger cartId) {
        Long userId = (Long) authentication.getPrincipal();
        if(cartService.deleteCart(userId, cartId)) {
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity(HttpStatus.FORBIDDEN);
    }

    @PutMapping("/api/consumer/updateCart/{cartId}")
    public ResponseEntity updateCart(Authentication authentication, @PathVariable BigInteger cartId,  @RequestParam(value="count") int count) {
        Long userId = (Long) authentication.getPrincipal();
        try {
            return new ResponseEntity(cartService.updateCart(userId, cartId, count), HttpStatus.OK);
        } catch (ForbiddenException e) {
            return new ResponseEntity(HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/api/consumer/cart/{id}")
    public ResponseEntity getCart(
            Authentication authentication,
            @PathVariable("id") BigInteger id
    ) {
        try {
            CartDto cart = cartService.getCart((Long) authentication.getPrincipal(), id);
            return  new ResponseEntity(cart, HttpStatus.OK);
        } catch (NotFoundException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.NOT_FOUND);
        } catch (ForbiddenException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.FORBIDDEN);
        }
    }

    /**
     * Cart
     */
    @GetMapping("/api/consumer/showCart")
    public ResponseEntity showCart(Authentication authentication) {
        Long id = (Long) authentication.getPrincipal();
        List<CartDto> cartList = cartService.showCart(id);
        return  new ResponseEntity(cartList, HttpStatus.OK);
    }
}
