/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `review_reply` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `review_id` bigint(20) unsigned zerofill NOT NULL COMMENT '부모 리뷰 id',
  `seller_id` int(10) unsigned zerofill DEFAULT NULL COMMENT '판매자 id',
  `content` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '답글 내용',
  `reg_time` datetime NOT NULL DEFAULT (now()) COMMENT '답글 등록 시간',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `review_id` (`review_id`),
  KEY `FK_review_reply_seller_id` (`seller_id`),
  CONSTRAINT `FK_review_reply_review_id` FOREIGN KEY (`review_id`) REFERENCES `review` (`uid`) ON DELETE CASCADE,
  CONSTRAINT `FK_review_reply_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `member_seller` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='부모 리뷰가 삭제되면 함께 삭제됨';

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
