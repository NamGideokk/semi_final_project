/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `sales_product` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `sales_page_id` bigint(20) unsigned zerofill NOT NULL COMMENT '판매 페이지의 ID',
  `product_id` bigint(20) unsigned zerofill NOT NULL COMMENT '상품의 ID. 하나의 페이지에만 등록될 수 있도록 unique 처리',
  `seller_id` int(10) unsigned zerofill NOT NULL COMMENT '판매자의 ID / 판매자 이름으로 검색할 시 사용',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `UK_sales_product_product_id` (`product_id`),
  KEY `FK_sales_product_sales_page_id` (`sales_page_id`),
  KEY `FK_sales_product_seller_id` (`seller_id`),
  CONSTRAINT `FK_sales_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`uid`) ON DELETE CASCADE,
  CONSTRAINT `FK_sales_product_sales_page_id` FOREIGN KEY (`sales_page_id`) REFERENCES `sales_page` (`uid`) ON DELETE CASCADE,
  CONSTRAINT `FK_sales_product_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `member_seller` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='판매 페이지에 등록된 상품 목록';

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
