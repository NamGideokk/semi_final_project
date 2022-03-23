/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `sales_page` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) unsigned zerofill NOT NULL COMMENT '판매자 id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '상품 페이지 이름',
  `content` mediumblob NOT NULL COMMENT '판매 페이지의 내용',
  `click_count` int unsigned NOT NULL DEFAULT '0' COMMENT '페이지 클릭 수',
  `is_pickup_able` tinyint(1) NOT NULL DEFAULT '1' COMMENT '직접 픽업이 가능한지',
  `is_able_normal_delivery` tinyint(1) NOT NULL DEFAULT '0' COMMENT '일반 배송이 가능한지',
  `normal_delivery_corp_id` smallint unsigned DEFAULT NULL COMMENT '일반 배송 업체. 0: 기타',
  `normal_delivery_fee` smallint unsigned DEFAULT NULL COMMENT '일반 배송비',
  `normal_delivery_fee_qty` smallint unsigned DEFAULT NULL COMMENT '상품 몇개 단위로 일반 배송비를 추가할지. 여기에 값이 설정되어 있는 경우 배송비를 따로 계산한다.',
  `is_able_oneday_delivery` tinyint(1) NOT NULL DEFAULT '0' COMMENT '당일 배송 가능 여부',
  `oneday_delivery_corp_id` smallint unsigned DEFAULT NULL COMMENT '당일 배송 업체. 0: 기타',
  `onday_delivery_fee` smallint unsigned DEFAULT NULL COMMENT '당일 배송비',
  `onday_delivery_fee_qty` smallint unsigned DEFAULT NULL COMMENT '상품 몇개 단위로 당일 배송비를 추가할지. 여기에 값이 설정되어 있는 경우 배송비를 따로 계산한다.',
  `reg_time` datetime NOT NULL DEFAULT (now()) COMMENT '등록된 시간',
  `last_mod_time` datetime DEFAULT NULL COMMENT '마지막 수정 시간',
  `total_sell_count` bigint unsigned NOT NULL DEFAULT '0' COMMENT '이 페이지에서 거래된 횟수',
  `avg_feedback_point` double unsigned DEFAULT NULL,
  `total_feedback_count` bigint unsigned NOT NULL DEFAULT '0',
  `is_disable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '판매자가 해당 페이지를 비활성화한 경우. 검색에서 빼기 위해',
  `deny_time` datetime DEFAULT NULL COMMENT '관리자에게 제재를 먹은 시간',
  PRIMARY KEY (`uid`),
  KEY `FK_sales_page_seller_id` (`seller_id`),
  CONSTRAINT `FK_sales_page_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `member_seller` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='판매자 계정이 삭제될 경우에만 함께 삭제';

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
