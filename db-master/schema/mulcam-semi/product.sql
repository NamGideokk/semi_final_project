/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `product` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) unsigned zerofill NOT NULL COMMENT '판매자 id',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '상품 이름',
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '이미지 목록, 콤마(,)로 구분되는 배열',
  `category1` int unsigned NOT NULL COMMENT '상품의 카테고리',
  `category2` int unsigned NOT NULL,
  `additional_desc` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int unsigned NOT NULL COMMENT '가격',
  `discount_rate` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '기본 할인율',
  `stock_count` int unsigned NOT NULL COMMENT '재고량',
  `sell_count` int unsigned NOT NULL DEFAULT '0' COMMENT '판매량',
  `avg_feedback_point` double unsigned DEFAULT NULL COMMENT '후기 점수의 평균',
  `feedback_count` int unsigned NOT NULL DEFAULT '0' COMMENT '후기의 수',
  `reg_time` datetime NOT NULL DEFAULT (now()) COMMENT '등록된 시간',
  `last_mod_time` datetime DEFAULT NULL COMMENT '마지막 수정 시간',
  `deny_time` datetime DEFAULT NULL COMMENT '관리자에게 제재를 먹은 시간',
  PRIMARY KEY (`uid`),
  KEY `FK_product_seller_id` (`seller_id`),
  FULLTEXT KEY `IDX_product_name` (`name`) /*!50100 WITH PARSER `ngram` */ ,
  CONSTRAINT `FK_product_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `member_seller` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='판매자가 삭제되면 함께 삭제됨';

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
