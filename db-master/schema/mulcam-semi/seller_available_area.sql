/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `seller_available_area` (
  `seller_id` int(10) unsigned zerofill NOT NULL COMMENT '판매자 id',
  `eupmyundong_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '법정동 코드',
  PRIMARY KEY (`seller_id`,`eupmyundong_code`),
  KEY `FK_seller_available_area_eupmyundong_code` (`eupmyundong_code`),
  CONSTRAINT `FK_seller_available_area_eupmyundong_code` FOREIGN KEY (`eupmyundong_code`) REFERENCES `area_eupmyundong` (`code`) ON DELETE CASCADE,
  CONSTRAINT `FK_seller_available_area_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `member_seller` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='판매자가 거래 가능한 법정동들을 등록하는 테이블. 판매자 계정이 삭제되거나, 법정동 코드가 제거되면 함께 삭제된다';

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
