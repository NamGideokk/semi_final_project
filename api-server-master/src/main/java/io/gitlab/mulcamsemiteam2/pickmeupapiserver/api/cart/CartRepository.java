package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart.entity.Cart;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesProduct;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.math.BigInteger;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class CartRepository {

    @Autowired
    private final EntityManager em;

    //재고 수량 확인
    public int getStockCount(BigInteger salesProductId) {
        BigInteger id = salesProductId;
        SalesProduct product = em.find(SalesProduct.class, id);
        return product.getProduct().getStockCount();
    }

    public MemberConsumer findConsumerMember(Long id) {
        return em.find(MemberConsumer.class, id);
    }

    public SalesProduct findSalesProduct(BigInteger id) {
        return em.find(SalesProduct.class, id);
    }

    public Cart findCart(BigInteger id) {
        return em.find(Cart.class, id);
    }
    Cart findCart(Long cartId, Long userId) {
        return em.createQuery("select c from Cart  c where c.id = :cartId and c.memberConsumer.id = :userId", Cart.class).setParameter("cartId", cartId).setParameter("userId", userId).getResultList().get(0);
    }

    public void addCart(Cart cart) {
        em.persist(cart);
    }

    public void deleteCart(Cart cart) {
        em.remove(cart);
    }

    public void deleteAllCart(Long userId) {
        em.createQuery("delete from Cart c where c.memberConsumer.id =:userId", Cart.class).setParameter("userId",userId).executeUpdate();
    }

    public List<Cart> findDuplicationProduct(long userId, BigInteger salesProductId) {
        return  em.createQuery("select c from Cart as c where c.memberConsumer.id=:userId and  c.salesProduct.id=:salesProductId", Cart.class)
                .setParameter("userId",userId).setParameter("salesProductId",salesProductId).getResultList();
    }
}
