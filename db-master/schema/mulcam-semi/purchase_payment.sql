/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `purchase_payment` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `consumer_id` int(10) unsigned zerofill DEFAULT NULL COMMENT '구매자 id',
  `receive_method` tinyint unsigned NOT NULL COMMENT '수령 방법. 0: 직접 픽업, 1: 일반 배송, 2: 당일 배송',
  `receiver_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '수령인 이름',
  `receiver_contact` varchar(20) COLLATE utf8mb4_general_ci NOT NULL COMMENT '수령인 연락처',
  `receiver_comment` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '구매자 전달 사항',
  `delivery_address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '배송 주소',
  `payment_time` datetime NOT NULL DEFAULT (now()) COMMENT '결제 시간',
  `payment_method` tinyint unsigned NOT NULL COMMENT '결제 수단. 0: 현금 직접 전달, 1: 계좌이체, 2: 카드',
  `payment_details_json` json NOT NULL COMMENT '결제 수단에 대한 상세 내용을 기록하기 위한 컬럼',
  PRIMARY KEY (`uid`),
  KEY `FK_payment_consumer_id` (`consumer_id`),
  CONSTRAINT `FK_payment_consumer_id` FOREIGN KEY (`consumer_id`) REFERENCES `member_consumer` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='삭제 안함. 구매 결제 내역';

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
