/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `review` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) unsigned zerofill NOT NULL COMMENT '물건을 판매한 판매자 id',
  `consumer_id` int(10) unsigned zerofill DEFAULT NULL COMMENT '물건을 구매한 구매자 id',
  `order_id` bigint(20) unsigned zerofill DEFAULT NULL COMMENT '거래된 주문의 id',
  `sales_page_id` bigint(20) unsigned zerofill NOT NULL COMMENT '판매 페이지의 id',
  `product_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '거래된 상품의 이름',
  `content` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '리뷰 내용',
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '리뷰 사진들. 콤마(,)로 이미지 이름들을 나열',
  `review_point` double(2,1) NOT NULL COMMENT '리뷰 점수',
  `reg_time` datetime NOT NULL DEFAULT (now()) COMMENT '등록 시간',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `FK_review_consumer_id` (`consumer_id`),
  KEY `FK_review_slaes_page_id` (`sales_page_id`),
  KEY `FK_review_seller_id` (`seller_id`),
  CONSTRAINT `FK_review_consumer_id` FOREIGN KEY (`consumer_id`) REFERENCES `member_consumer` (`uid`),
  CONSTRAINT `FK_review_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`uid`),
  CONSTRAINT `FK_review_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `member_seller` (`uid`),
  CONSTRAINT `FK_review_slaes_page_id` FOREIGN KEY (`sales_page_id`) REFERENCES `sales_page` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='물건을 판 판매자가 삭제되면 함께 삭제된다.';

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
