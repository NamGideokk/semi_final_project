/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `order` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '판매자 id',
  `purchase_payment_id` bigint(20) unsigned zerofill NOT NULL COMMENT '결제의 id. payment와 order는 1:N의 관계(여러개의 order는 하나의 payment에 속한다)',
  `consumer_id` int(10) unsigned zerofill DEFAULT NULL COMMENT '구매자 id',
  `seller_id` int(10) unsigned zerofill DEFAULT NULL COMMENT '판매자 id',
  `seller_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '판매자의 이름',
  `sales_product_id` bigint(20) unsigned zerofill DEFAULT NULL COMMENT '구매한 상품에 대한 id. 구매 내역에서 클릭할 때 구매한 페이지로 이동하기 위해 사용',
  `sales_page_id` bigint(20) unsigned zerofill DEFAULT NULL COMMENT '상품을 구매한 판매 페이지의 id',
  `product_id` bigint(20) unsigned zerofill DEFAULT NULL COMMENT '상품 id',
  `product_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '구매한 상품의 이름 / 상품 페이지가 삭제되어도 이름을 표기하기 위함',
  `product_price` int unsigned NOT NULL COMMENT '주문할 때 원래 가격',
  `product_discount_rate` tinyint unsigned NOT NULL COMMENT '주문할 때의 기본 할인율',
  `receive_method` tinyint unsigned NOT NULL COMMENT '수령 방법. 0: 직접 픽업, 1: 일반 배송, 2: 당일 배송',
  `delivery_fee` smallint unsigned DEFAULT NULL COMMENT '배송비',
  `together_delivery_order_id` bigint(20) unsigned zerofill DEFAULT NULL COMMENT '합배송비를 담당하는 주문의 id. 만약 해당 주문이 취소될 경우 이를 참조하고 있는 주문들 중 가장 높은 배송비를 가진 주문으로 재 설정한다.',
  `qty` smallint unsigned NOT NULL COMMENT '구매 갯수',
  `state` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '주문 진행 상태. 0: 장바구니, 10: 결제 대기, 20: 결제 완료, 30: 상품 준비, 40: 상품 준비 완료, 50: 배송 준비, 60: 배송중, 100: 수취 완료, 110: 후기 대기, 120: 거래 완료, 130: 반품 신청중, 140: 반품 진행중, 150: 반품 완료, 160: 취소 신청, 170: 취소중, 180: 취소 완료',
  `coupon_discount` mediumint unsigned DEFAULT NULL COMMENT '구매할 때 적용한 일반 쿠폰의 할인액수',
  `reg_time` datetime NOT NULL DEFAULT (now()),
  PRIMARY KEY (`uid`),
  KEY `FK_order_purchase_payment_id` (`purchase_payment_id`),
  KEY `FK_order_seller_id` (`seller_id`),
  KEY `FK_order_consumer_id` (`consumer_id`),
  KEY `FK_order_product_id` (`product_id`),
  KEY `FK_order_sales_product_id` (`sales_product_id`),
  KEY `FK_order_together_delivery_order_id` (`together_delivery_order_id`),
  KEY `FK_order_sales_page_id` (`sales_page_id`),
  CONSTRAINT `FK_order_consumer_id` FOREIGN KEY (`consumer_id`) REFERENCES `member_consumer` (`uid`),
  CONSTRAINT `FK_order_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`uid`),
  CONSTRAINT `FK_order_purchase_payment_id` FOREIGN KEY (`purchase_payment_id`) REFERENCES `purchase_payment` (`uid`),
  CONSTRAINT `FK_order_sales_page_id` FOREIGN KEY (`sales_page_id`) REFERENCES `sales_page` (`uid`),
  CONSTRAINT `FK_order_sales_product_id` FOREIGN KEY (`sales_product_id`) REFERENCES `sales_product` (`uid`),
  CONSTRAINT `FK_order_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `member_seller` (`uid`),
  CONSTRAINT `FK_order_together_delivery_order_id` FOREIGN KEY (`together_delivery_order_id`) REFERENCES `order` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='삭제 안함 / 상품 하나하나의 주문에 대한 정보(결제 내역안에 다수의 상품 주문들이 속한다)';

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
