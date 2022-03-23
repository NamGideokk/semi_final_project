package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart.dto.CartDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart.entity.Cart;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.NotFoundException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.MemberConsumerRepositoy;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.ForbiddenException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesProduct;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.List;
import java.util.stream.Collectors;

@Service("cartService")
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CartService {
    private final CartRepository cartRepository;
    private final MemberConsumerRepositoy memberConsumerRepositoy;

    @Transactional
    public boolean addCart(Long userId, BigInteger salesProductId, int count) {
        int stockCount = cartRepository.getStockCount(salesProductId);
        if (stockCount < count) {
            return false;
        } else {
            //장바구니에 똑같은 아이템 담겨져있는지 체크
            List<Cart> cartlist = cartRepository.findDuplicationProduct(userId, salesProductId);
            if(cartlist.size() > 0) {
                Cart updateCart = cartlist.get(0);
                if(stockCount < updateCart.getQty() + count) {
                    return false;
                }
                updateCart.setQty(updateCart.getQty() + count);
                return true;
            } else {
                MemberConsumer findMember = cartRepository.findConsumerMember(userId);
                SalesProduct findSalesProduct = cartRepository.findSalesProduct(salesProductId);
                Cart cart = Cart.builder().memberConsumer(findMember).salesProduct(findSalesProduct).qty(count).build();
                cartRepository.addCart(cart);
                return true;
            }
        }
    }

    @Transactional
    public boolean deleteCart(Long userId, BigInteger cartId) {
        Cart findCart = cartRepository.findCart(cartId);
        if(!findCart.getMemberConsumer().getId().equals(userId)) {
            return false;
        }
        cartRepository.deleteCart(findCart);
        return true;
    }


    @Transactional
    public boolean updateCart(Long userId, BigInteger cartId, int count) {
        Cart findCart = cartRepository.findCart(cartId);
        if(!findCart.getMemberConsumer().getId().equals(userId)) {
            throw new ForbiddenException();
        }
        int stockCount = cartRepository.getStockCount(findCart.getSalesProduct().getId());
        if(stockCount < count) {
            return false;
        }
        findCart.setQty(count);
        return true;
    }

    public CartDto getCart(Long consumerId, BigInteger cartId) {
        Cart cart = cartRepository.findCart(cartId);
        if(cart == null) {
            throw new NotFoundException("해당 항목을 찾을 수 없습니다.");
        }
        if(!cart.getMemberConsumer().getId().equals(consumerId)) {
            throw new ForbiddenException("접근 권한이 없습니다.");
        }
        return CartDto.fromEntity(cart);
    }

    public List<CartDto> showCart(Long consumerId) {
        MemberConsumer memberConsumer = memberConsumerRepositoy.findOne(consumerId);
        List<Cart> carts = memberConsumer.getCarts();
        List<CartDto> cartList = carts.stream().map(CartDto::fromEntity).collect(Collectors.toList());
        return cartList;
    }
}
