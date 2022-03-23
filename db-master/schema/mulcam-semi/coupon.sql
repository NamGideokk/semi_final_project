/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `coupon` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `consumer_id` int(10) unsigned zerofill NOT NULL COMMENT '쿠폰을 소유한 고객 ID',
  `seller_id` int(10) unsigned zerofill DEFAULT NULL COMMENT '쿠폰을 발급한 판매자의 ID, null이면 사이트가 자체 배포한거',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '쿠폰의 이름',
  `type` tinyint(3) unsigned zerofill NOT NULL DEFAULT '000' COMMENT '0: 일반/고정금액, 1: 일반/비율, 2: 중복/고정금액, 3: 중복/비율, 4: 배송비',
  `discount` mediumint unsigned NOT NULL COMMENT '할인액 or 할인',
  `min_payment` mediumint unsigned NOT NULL COMMENT '최소 결제액 조건',
  `max_discount` mediumint unsigned DEFAULT NULL COMMENT '최대 할인액. NULL이면 제한 없음',
  `category` int unsigned DEFAULT NULL COMMENT '쿠폰을 사용할 수 있는 카테고리, NULL은 전체',
  `expire_date` date NOT NULL COMMENT '쿠폰 만료 일자',
  `used_order_id` bigint unsigned DEFAULT NULL COMMENT '쿠폰이 사용된 order의 id',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `UK_coupon_used_order_id` (`used_order_id`),
  KEY `FK_coupon_consumer_id` (`consumer_id`),
  KEY `FK_coupon_seller_id` (`seller_id`),
  CONSTRAINT `FK_coupon_consumer_id` FOREIGN KEY (`consumer_id`) REFERENCES `member_consumer` (`uid`) ON DELETE CASCADE,
  CONSTRAINT `FK_coupon_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `member_seller` (`uid`) ON DELETE CASCADE,
  CONSTRAINT `FK_coupon_used_order_id` FOREIGN KEY (`used_order_id`) REFERENCES `order` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
