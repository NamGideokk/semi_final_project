/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `notification_consumer` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `consumer_id` int(10) unsigned zerofill NOT NULL COMMENT '알림을 받은 구매자 id',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '알림의 메시지 내용',
  `target_type` tinyint unsigned NOT NULL COMMENT '알림이 가리키는 대상의 타입. 1: order, 2: review, 3: product, 4: sales_page, 5: sales_product',
  `target_id` bigint(20) unsigned zerofill NOT NULL COMMENT '알림이 가리키는 대상의 id',
  `source_type` tinyint unsigned NOT NULL COMMENT '알림을 발생시킨 멤버의 타입. 1: admin, 2: consumer, 3: seller',
  `source_id` int(10) unsigned zerofill NOT NULL COMMENT '알림을 발생시킨 멤버의 id',
  `reg_time` datetime NOT NULL DEFAULT (now()),
  PRIMARY KEY (`uid`),
  KEY `FK_notification_consumer_consumer_id` (`consumer_id`),
  CONSTRAINT `FK_notification_consumer_consumer_id` FOREIGN KEY (`consumer_id`) REFERENCES `member_consumer` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='구매자가 직접 삭제하거나, 구매자 계정이 삭제되면 함께 삭제된다.';

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
