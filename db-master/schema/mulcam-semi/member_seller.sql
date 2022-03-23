/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `member_seller` (
  `uid` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '이메일, 로그인 id',
  `pwd` varbinary(64) NOT NULL COMMENT '로그인 비밀번호',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '이름. 중복 불가능하게 unique 처리',
  `level` tinyint(3) unsigned zerofill NOT NULL DEFAULT '000' COMMENT '120: 최우수, 110: 우수, 100: normal, 10: unauthenticated, 0: prepare',
  `owner_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '대표자명',
  `eupmyundong_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '판매자가 위치한 법정동의 코드',
  `address1` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '기본 주소',
  `address2` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '상세 주소',
  `tele_contact` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '전화 연락처',
  `company_classification` tinyint unsigned NOT NULL COMMENT '사업자 구분. 0: 개인, 1: 법인',
  `company_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '사업자 등록번호',
  `company_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT '사업자 이름',
  `unread_noti_count` tinyint unsigned NOT NULL DEFAULT '0',
  `total_sell_count` bigint unsigned NOT NULL DEFAULT '0' COMMENT '전체 판매 수',
  `avg_feedback_point` double unsigned DEFAULT NULL COMMENT '평균 평점',
  `total_feedback_count` bigint unsigned NOT NULL DEFAULT '0' COMMENT '전체 리뷰 갯수',
  `reg_time` datetime NOT NULL DEFAULT (now()) COMMENT '등록 시간',
  `last_access_time` datetime NOT NULL DEFAULT (now()) COMMENT '마지막 접속 시간',
  `deny_time` datetime DEFAULT NULL COMMENT '관리자에 의해 차단된 시간',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
