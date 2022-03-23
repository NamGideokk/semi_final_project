/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `cart` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `consumer_id` int(10) unsigned zerofill NOT NULL COMMENT '구매자 id',
  `sales_product_id` bigint(20) unsigned zerofill NOT NULL COMMENT '등록된 상품 id',
  `coupon_id` bigint(20) unsigned zerofill DEFAULT NULL COMMENT '적용한 쿠폰 id, 같은 쿠폰이 중복 적용되지 않도록 unique 처리',
  `qty` smallint unsigned NOT NULL DEFAULT '1' COMMENT '상품 개수',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `UK_cart_coupon_id` (`coupon_id`),
  KEY `FK_cart_consumer_id` (`consumer_id`),
  KEY `FK_cart_sales_product_id` (`sales_product_id`),
  CONSTRAINT `FK_cart_consumer_id` FOREIGN KEY (`consumer_id`) REFERENCES `member_consumer` (`uid`) ON DELETE CASCADE,
  CONSTRAINT `FK_cart_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`uid`),
  CONSTRAINT `FK_cart_sales_product_id` FOREIGN KEY (`sales_product_id`) REFERENCES `sales_product` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
