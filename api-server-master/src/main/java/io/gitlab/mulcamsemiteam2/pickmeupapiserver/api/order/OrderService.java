package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart.CartRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart.entity.Cart;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.MemberType;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.OrderState;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.ResourceType;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.BadRequestException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.ForbiddenException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.NotFoundException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.MemberConsumerRepositoy;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.NotificationConsumerRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.NotificationConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.NotificationSellerRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.NotificationSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.dto.*;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.Order;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.PurchasePayment;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.ProductRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.entity.Product;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.SalesProductRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesPage;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesProduct;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class OrderService {


    @Autowired
    private MemberConsumerRepositoy memberConsumerRepositoy;

    @Autowired
    private SalesProductRepository salesProductRepository;

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private PurchasePaymentRepository purchasePaymentRepository;

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private NotificationConsumerRepository notificationConsumerRepository;

    @Autowired
    private NotificationSellerRepository notificationSellerRepository;


    /**
     * Sales_page ?????? ?????? ??????
     */
    @Transactional
    public boolean saveOrder(Long userId, SellerPageOrderDto sellerPageOrderDto) {
        MemberConsumer findConsumerMember = memberConsumerRepositoy.findOne(userId);
        SalesProduct findSalesProduct = salesProductRepository.findById(sellerPageOrderDto.getSalesProductId()).get();
        Product findProduct = findSalesProduct.getProduct();

        int avaliableQuantity = findProduct.getStockCount();
        int orderQuantity = sellerPageOrderDto.getQty();
        if(avaliableQuantity < orderQuantity) {
            return false;
        }
        findProduct.setStockCount(avaliableQuantity - orderQuantity);

        Order order = Order.builder()
                .memberConsumer(findConsumerMember)
                .memberSeller(findSalesProduct.getMemberSeller())
                .sellerName(findSalesProduct.getMemberSeller().getName())
                .salesProduct(findSalesProduct)
                .salesPage(findSalesProduct.getSalesPage())
                .product(findProduct)
                .productName(findProduct.getName())
                .productPrice(findProduct.getPrice())
                .productDiscountRate(findProduct.getDiscountRate())
                .receiveMethod(0)
                .qty(orderQuantity)
                .build();

        PurchasePayment purchasePayment = PurchasePayment.builder()
                .memberConsumer(findConsumerMember)
                .receiveMethod(0)
                .receiverName(sellerPageOrderDto.getReceiverName())
                .receiverContact(sellerPageOrderDto.getReceiverContact())
                .receiverComment(sellerPageOrderDto.getReceiverComment())
                .paymentMethod(sellerPageOrderDto.getPaymentMethod())
                .paymentDetailsJson(sellerPageOrderDto.getPaymentDetailsJson())
                .build();
        purchasePayment.addOrder(order);
        purchasePaymentRepository.save(purchasePayment);

        // ?????? ??????
        notificationSellerRepository.save(
                NotificationSeller.builder()
                        .memberSeller(findSalesProduct.getMemberSeller())
                        .message(String.format("????????? ??????: %s????????? %s??? %d??? ?????????????????????.",
                                findConsumerMember.getName(),
                                findProduct.getName(),
                                orderQuantity))
                        .targetType(ResourceType.ORDER)
                        .targetId(order.getId())
                        .sourceType(MemberType.CONSUMER)
                        .sourceId(findConsumerMember.getId())
                        .build());

        return true;
    }
    /**
     * ???????????? ??????
     */
    @Transactional
    public boolean saveOrderList(Long userId, CartOrderDto cartOrderDto) {
        List<BigInteger> cartIdList = cartOrderDto.getCartId();
        MemberConsumer findConsumerMember = memberConsumerRepositoy.findOne(userId);
        PurchasePayment purchasePayment = PurchasePayment.builder()
                .memberConsumer(findConsumerMember)
                .receiveMethod(0)
                .receiverName(cartOrderDto.getReceiverName())
                .receiverContact(cartOrderDto.getReceiverContact())
                .receiverComment(cartOrderDto.getReceiverComment())
                .paymentMethod(cartOrderDto.getPaymentMethod())
                .paymentDetailsJson(cartOrderDto.getPaymentDetailsJson())
                .build();
        purchasePaymentRepository.save(purchasePayment);

        for (BigInteger cartId : cartIdList) {
            Cart cart = cartRepository.findCart(cartId);
            SalesProduct findSalesProduct = cart.getSalesProduct();
            Product findProduct = findSalesProduct.getProduct();

            int avaliableQuantity = findProduct.getStockCount();
            int orderQuantity = cart.getQty();
            if(avaliableQuantity < orderQuantity) {
                throw new BadRequestException("????????? ????????? ???????????????.");
            }
            findProduct.setStockCount(avaliableQuantity - orderQuantity);

            Order order = Order.builder()
                    .memberConsumer(findConsumerMember)
                    .memberSeller(findSalesProduct.getMemberSeller())
                    .sellerName(findSalesProduct.getMemberSeller().getName())
                    .salesProduct(findSalesProduct)
                    .salesPage(findSalesProduct.getSalesPage())
                    .product(findProduct)
                    .productName(findProduct.getName())
                    .productPrice(findProduct.getPrice())
                    .productDiscountRate(findProduct.getDiscountRate())
                    .receiveMethod(0)
                    .qty(orderQuantity)
                    .build();

            purchasePayment.addOrder(order);

            orderRepository.save(order);
            cartRepository.deleteCart(cart);

            // ?????? ??????
            notificationSellerRepository.save(
                    NotificationSeller.builder()
                            .memberSeller(findSalesProduct.getMemberSeller())
                            .message(String.format("????????? ??????: %s????????? %s??? %d??? ?????????????????????.",
                                    findConsumerMember.getName(),
                                    findProduct.getName(),
                                    orderQuantity))
                            .targetType(ResourceType.ORDER)
                            .targetId(order.getId())
                            .sourceType(MemberType.CONSUMER)
                            .sourceId(findConsumerMember.getId())
                            .build());
        }

        return true;
    }


    /**
     * ?????? ??????  STATE : 30
     */
    @Transactional
    public boolean cancelOrder(Long userId, BigInteger orderId) {
        Optional<Order> findOrder = orderRepository.findById(orderId);
        if(findOrder.isEmpty()) {
            throw new NotFoundException("?????? ????????? ?????? ??? ????????????.");
        }
        Order order = findOrder.get();

        if(!order.getMemberConsumer().getId().equals(userId)) {
            throw new ForbiddenException("?????? ????????? ????????????.");
        }

        // ????????? ???????????? ????????? ?????? ???????????????
        if(order.getState() != OrderState.PRODUCT_WAITING) {
            return false;
        }
        Product findProduct = productRepository.findById(order.getProduct().getId()).get();
        findProduct.setStockCount(findProduct.getStockCount() + order.getQty());
        order.setState(OrderState.ORDER_CANCELED);

        // ?????? ??????
        if(order.getMemberSeller() != null) {
            notificationSellerRepository.save(
                    NotificationSeller.builder()
                            .memberSeller(order.getMemberSeller())
                            .message(String.format("?????? ??????: %s????????? %s %d??? ????????? ?????????????????????.",
                                    order.getMemberConsumer().getName(),
                                    order.getProductName(),
                                    order.getQty()))
                            .targetType(ResourceType.ORDER)
                            .targetId(order.getId())
                            .sourceType(MemberType.CONSUMER)
                            .sourceId(order.getMemberConsumer().getId())
                            .build());
        }

        return true;
    }

    /**
     * ?????? ??????  STATE : 30
     */
    @Transactional
    public boolean cancelOrderForSeller(Long userId, BigInteger orderId) {
        Optional<Order> findOrder = orderRepository.findById(orderId);
        if(findOrder.isEmpty()) {
            throw new NotFoundException("?????? ????????? ?????? ??? ????????????.");
        }
        Order order = findOrder.get();

        if(!order.getMemberSeller().getId().equals(userId)) {
            throw new ForbiddenException("?????? ????????? ????????????.");
        }

        // ???????????? ?????? ?????? ??????, ?????? ?????? ???????????? ?????? ??????
        if(order.getState() != OrderState.PRODUCT_WAITING &&
            order.getState() != OrderState.PRODUCT_READY
        ) {
            return false;
        }
        Product findProduct = productRepository.findById(order.getProduct().getId()).get();
        findProduct.setStockCount(findProduct.getStockCount() + order.getQty());
        order.setState(OrderState.ORDER_CANCELED);

        // ?????? ??????
        if(order.getMemberConsumer() != null) {
            notificationConsumerRepository.save(
                    NotificationConsumer.builder()
                            .memberConsumer(order.getMemberConsumer())
                            .message(String.format("%s ????????? ???????????? ?????? ?????????????????????.",
                                    order.getProductName()))
                            .targetType(ResourceType.ORDER)
                            .targetId(order.getId())
                            .sourceType(MemberType.SELLER)
                            .sourceId(order.getMemberSeller().getId())
                            .build());
        }

        return true;
    }

    /**
     * state ??????
     * 10 : ??????  ??????
     * 20 : ????????????
     */
    @Transactional
    public void readyOrder(Long sellerId, BigInteger orderId, int orderState) {
        Optional<Order> findOrder = orderRepository.findById(orderId);
        if(findOrder.isEmpty()) {
            throw new NotFoundException("?????? ????????? ?????? ??? ????????????.");
        }
        Order order = findOrder.get();

        if(!order.getMemberSeller().getId().equals(sellerId)) {
            throw new ForbiddenException("?????? ????????? ????????????.");
        }

        if(orderState == OrderState.PRODUCT_RECEIVED.getCode()) {
            if(order.getState() != OrderState.PRODUCT_READY) {
                throw new BadRequestException("'?????? ?????? ??????' ????????? ????????? '?????? ??????'??? ????????? ??? ????????????.");
            }

            Integer paymentCost = (int)(order.getProductPrice() * ((100. - order.getProductDiscountRate()) / 100.)) * order.getQty();

            // ???????????? ?????? ??????, ??? ?????? ?????? ??????
            MemberConsumer memberConsumer = order.getMemberConsumer();
            if(memberConsumer != null) {
                memberConsumer.setTotalBuyCount(memberConsumer.getTotalBuyCount() + 1);
                memberConsumer.setTotalBuyCost(memberConsumer.getTotalBuyCost() + paymentCost);
            }

            // ???????????? ?????? ?????? ??????
            MemberSeller memberSeller = order.getMemberSeller();
            if(memberSeller != null) {
                memberSeller.setTotalSellCount(memberSeller.getTotalSellCount().add(BigInteger.valueOf(1)));
            }

            // ????????? ?????? ?????? ??????
            Product product = order.getProduct();
            if(product != null) {
                product.setSellCount(product.getSellCount() + 1);
            }

            // ?????? ???????????? ?????? ?????? ??????
            SalesPage salesPage = order.getSalesPage();
            if(salesPage != null) {
                salesPage.setTotalSellCount(salesPage.getTotalSellCount().add(BigInteger.valueOf(1)));
            }

        } else if(orderState == OrderState.PRODUCT_READY.getCode()) {
            if(order.getState() != OrderState.PRODUCT_WAITING) {
                throw new BadRequestException("'?????? ??????' ????????? ????????? '?????? ?????? ??????'??? ????????? ??? ????????????.");
            }
        } else {
            throw new BadRequestException("???????????? ?????? ?????? ?????? ???????????????.");
        }
        order.setState(OrderState.fromCode(orderState));

        // ?????? ??????
        if(order.getMemberConsumer() != null) {
            notificationConsumerRepository.save(
                    NotificationConsumer.builder()
                            .memberConsumer(order.getMemberConsumer())
                            .message(
                                    orderState == OrderState.PRODUCT_READY.getCode()
                                            ? String.format("%s??? ?????????????????????.",
                                                order.getProductName())
                                            : String.format("%s??? ?????? ?????????????????????.",
                                                order.getProductName()))
                            .targetType(ResourceType.ORDER)
                            .targetId(order.getId())
                            .sourceType(MemberType.SELLER)
                            .sourceId(order.getMemberSeller().getId())
                            .build());
        }
    }

    public List<PurchasePaymentDto> getAllOrder(Long consumerId, Pageable pageable) {
        List<PurchasePayment> allPurchasePayment = purchasePaymentRepository.findByMemberConsumer_Id(consumerId, pageable);
        return allPurchasePayment.stream().map(v -> PurchasePaymentDto.fromEntity(v)).collect(Collectors.toList());
    }

    public List<OrderSimpleDto> getAllOrderForConsumer(Long memberId, Integer state, Pageable pageable) {
        List<Order> orderList = orderRepository.findByQuery(null, memberId, state == null ? null : OrderState.fromCode(state), pageable);
        return orderList.stream().map(OrderSimpleDto::fromEntity).collect(Collectors.toList());
    }

    public List<OrderSimpleForSellerDto> getAllOrderForSeller(Long sellerId, Integer state, Pageable pageable) {
        List<Order> orderList = orderRepository.findByQuery(sellerId, null, state == null ? null : OrderState.fromCode(state), pageable);
        return orderList.stream().map(OrderSimpleForSellerDto::fromEntity).collect(Collectors.toList());
    }

    public PurchasePaymentDetailDto showDetailOrder(Long consumerId, BigInteger purchasePaymentId) {
        Optional<PurchasePayment> findPurchasePayment = purchasePaymentRepository.findById(purchasePaymentId);
        if(findPurchasePayment.isEmpty()) {
            throw new NotFoundException("?????? ????????? ?????? ??? ????????????.");
        }
        PurchasePayment purchasePayment = findPurchasePayment.get();

        if(!purchasePayment.getMemberConsumer().getId().equals(consumerId)) {
            throw new ForbiddenException("?????? ????????? ????????????.");
        }

        return PurchasePaymentDetailDto.fromEntity(purchasePayment);
    }
}
