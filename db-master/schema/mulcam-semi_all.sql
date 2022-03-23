/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `area_eupmyundong` (
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '법정동 코드',
  `sido_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '소속 시/도 코드',
  `sigungu_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '소속 시/군/구 코드',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '법정동 이름',
  `axis_x` double DEFAULT NULL COMMENT '경도',
  `axis_y` double DEFAULT NULL COMMENT '위도',
  PRIMARY KEY (`code`),
  KEY `FK_area_eupmyundong` (`sido_code`,`sigungu_code`),
  CONSTRAINT `FK_area_eupmyundong` FOREIGN KEY (`sido_code`, `sigungu_code`) REFERENCES `area_sigungu` (`sido_code`, `code`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `area_eupmyundong`;
/*!40000 ALTER TABLE `area_eupmyundong` DISABLE KEYS */;
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111010100', '11', '11110', '청운동', 953122.6068422303, 1954322.0334863253);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111010200', '11', '11110', '신교동', 953060.2380958481, 1953968.5043988756);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111010300', '11', '11110', '궁정동', 953340.7927550954, 1954020.9559653807);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111010400', '11', '11110', '효자동', 953352.0085130836, 1953801.9066583642);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111010500', '11', '11110', '창성동', 953384.6520150002, 1953573.2706757423);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111010600', '11', '11110', '통의동', 953455.8437364459, 1953343.9489623224);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111010700', '11', '11110', '적선동', 953506.9777595478, 1953090.8447403575);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111010800', '11', '11110', '통인동', 953214.8496841317, 1953549.9886981933);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111010900', '11', '11110', '누상동', 952836.0514813269, 1953589.9253901828);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111011000', '11', '11110', '누하동', 953072.2043785407, 1953471.7604590666);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111011100', '11', '11110', '옥인동', 952964.7407380547, 1953775.3149949347);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111011200', '11', '11110', '체부동', 953278.7543697404, 1953272.4695391357);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111011300', '11', '11110', '필운동', 953099.5313029833, 1953209.9733644421);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111011400', '11', '11110', '내자동', 953304.309829433, 1953049.574875472);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111011500', '11', '11110', '사직동', 952871.884778338, 1952838.93709198);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111011600', '11', '11110', '도렴동', 953648.4706431, 1952691.9633035);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111011700', '11', '11110', '당주동', 953602.6803559673, 1952583.8739942461);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111011800', '11', '11110', '내수동', 953364.1931961068, 1952771.9662461074);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111011900', '11', '11110', '세종로', 953793.3380599285, 1952689.6517677864);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111012000', '11', '11110', '신문로1가', 953560.52804295, 1952459.440353951);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111012100', '11', '11110', '신문로2가', 953090.919509659, 1952567.5149532263);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111012200', '11', '11110', '청진동', 954139.5153484249, 1952628.539595975);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111012300', '11', '11110', '서린동', 954085.508695682, 1952380.5906260905);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111012400', '11', '11110', '수송동', 954176.2650315939, 1952855.0036031413);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111012500', '11', '11110', '중학동', 954018.2796617498, 1953007.936640125);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111012600', '11', '11110', '종로1가', 954098.0740386999, 1952452.1444387003);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111012700', '11', '11110', '공평동', 954347.8306285, 1952600.13516775);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111012800', '11', '11110', '관훈동', 954511.0159244773, 1952898.6707912234);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111012900', '11', '11110', '견지동', 954352.9440081168, 1952807.7832082168);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111013000', '11', '11110', '와룡동', 955066.730816804, 1953185.3424226544);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111013100', '11', '11110', '권농동', 955098.8382447974, 1953037.5096419712);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111013200', '11', '11110', '운니동', 954896.5615046863, 1953097.7782380814);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111013300', '11', '11110', '익선동', 954949.1503167263, 1952867.2229039487);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111013400', '11', '11110', '경운동', 954675.6436246621, 1952921.6889146767);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111013500', '11', '11110', '관철동', 954611.3770276721, 1952326.3941246124);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111013600', '11', '11110', '인사동', 954623.0342056367, 1952636.8056117094);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111013700', '11', '11110', '낙원동', 954862.3737939688, 1952693.7409559372);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111013800', '11', '11110', '종로2가', 954640.5772869549, 1952438.1871383185);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111013900', '11', '11110', '팔판동', 954162.4641190303, 1953848.3891563923);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111014000', '11', '11110', '삼청동', 954277.3097716451, 1954127.4671812903);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111014100', '11', '11110', '안국동', 954433.831830685, 1953248.5043427055);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111014200', '11', '11110', '소격동', 954211.9842499372, 1953541.1428129196);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111014300', '11', '11110', '화동', 954287.5323942018, 1953605.3315561286);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111014400', '11', '11110', '사간동', 954136.3236185429, 1953269.626968629);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111014500', '11', '11110', '송현동', 954277.5252582, 1953230.7115737996);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111014600', '11', '11110', '가회동', 954499.2485339683, 1953775.155657475);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111014700', '11', '11110', '재동', 954576.443717804, 1953344.5695894284);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111014800', '11', '11110', '계동', 954706.1054205614, 1953670.6705654385);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111014900', '11', '11110', '원서동', 954855.538100222, 1953712.04226206);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111015000', '11', '11110', '훈정동', 955416.727124, 1952520.873118);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111015100', '11', '11110', '묘동', 955117.8134588845, 1952697.1598193224);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111015200', '11', '11110', '봉익동', 955218.1529031292, 1952679.2469748182);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111015300', '11', '11110', '돈의동', 955028.9182158341, 1952645.6576396856);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111015400', '11', '11110', '장사동', 955300.8905426546, 1952347.3524554768);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111015500', '11', '11110', '관수동', 955009.7920973592, 1952325.1378362335);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111015600', '11', '11110', '종로3가', 955144.3834441819, 1952452.854906189);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111015700', '11', '11110', '인의동', 955663.9431644363, 1952755.7248489042);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111015800', '11', '11110', '예지동', 955666.6062310841, 1952371.146051836);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111015900', '11', '11110', '원남동', 955616.6054891262, 1953001.7879186687);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111016000', '11', '11110', '연지동', 955803.2022064975, 1952808.013868465);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111016100', '11', '11110', '종로4가', 955678.4002703691, 1952479.6656152979);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111016200', '11', '11110', '효제동', 956147.9509500711, 1952725.1132716697);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111016300', '11', '11110', '종로5가', 956179.7308206559, 1952468.7092809079);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111016400', '11', '11110', '종로6가', 956465.334615502, 1952689.4733780434);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111016500', '11', '11110', '이화동', 956413.8246863161, 1953192.0492424932);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111016600', '11', '11110', '연건동', 955931.1780581085, 1953246.9593291907);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111016700', '11', '11110', '충신동', 956421.3991751587, 1952982.2356813462);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111016800', '11', '11110', '동숭동', 956300.9992720296, 1953702.4052355904);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111016900', '11', '11110', '혜화동', 955958.673058104, 1954398.519969041);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111017000', '11', '11110', '명륜1가', 955657.615877479, 1954447.4244751313);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111017100', '11', '11110', '명륜2가', 955734.0249785689, 1954021.3723069543);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111017200', '11', '11110', '명륜4가', 955854.7556852051, 1953765.4906056891);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111017300', '11', '11110', '명륜3가', 955392.7035803372, 1954449.273597781);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111017400', '11', '11110', '창신동', 956914.024763206, 1952927.8862324758);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111017500', '11', '11110', '숭인동', 957507.6351790898, 1953067.2446165045);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111017600', '11', '11110', '교남동', 952755.0633017502, 1952205.5003952186);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111017700', '11', '11110', '평동', 952963.3271816667, 1952123.9867564167);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111017800', '11', '11110', '송월동', 952822.2510716667, 1952401.892469);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111017900', '11', '11110', '홍파동', 952771.0015993847, 1952633.4188116922);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111018000', '11', '11110', '교북동', 952354.325099353, 1952719.4734150004);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111018100', '11', '11110', '행촌동', 952534.4091947587, 1952904.4984052016);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111018200', '11', '11110', '구기동', 952097.6970409428, 1956781.42993397);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111018300', '11', '11110', '평창동', 953209.3283294428, 1956911.358799532);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111018400', '11', '11110', '부암동', 952701.922355715, 1955103.7361774354);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111018500', '11', '11110', '홍지동', 952135.8565457681, 1955795.818351554);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111018600', '11', '11110', '신영동', 952456.0778911754, 1956054.7630712525);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1111018700', '11', '11110', '무악동', 952256.9313417983, 1953082.2717693534);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114010100', '11', '11140', '무교동', 954008.5898261428, 1952171.9591707143);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114010200', '11', '11140', '다동', 954170.405148769, 1952149.9870159237);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114010300', '11', '11140', '태평로1가', 953796.1576763002, 1952224.637846433);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114010400', '11', '11140', '을지로1가', 954094.04483575, 1952014.5914170623);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114010500', '11', '11140', '을지로2가', 954591.0088536316, 1951945.2857505798);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114010600', '11', '11140', '남대문로1가', 954333.3000258184, 1952111.2531856364);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114010700', '11', '11140', '삼각동', 954409.4301825626, 1952150.677014875);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114010800', '11', '11140', '수하동', 954438.7192041666, 1952111.4736875);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114010900', '11', '11140', '장교동', 954719.1595815001, 1952100.4495660001);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114011000', '11', '11140', '수표동', 954935.9234428046, 1952115.9060609024);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114011100', '11', '11140', '소공동', 954083.5161266511, 1951725.1156921396);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114011200', '11', '11140', '남창동', 953849.4587318832, 1951141.0324834215);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114011300', '11', '11140', '북창동', 953903.1019919486, 1951588.0627541975);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114011400', '11', '11140', '태평로2가', 953789.2018400138, 1951667.8011683696);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114011500', '11', '11140', '남대문로2가', 954257.8780702961, 1951750.2113895924);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114011600', '11', '11140', '남대문로3가', 953927.9262028751, 1951427.8286280415);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114011700', '11', '11140', '남대문로4가', 953797.077685485, 1951380.8111075452);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114011800', '11', '11140', '남대문로5가', 953571.6376485882, 1951003.3633368681);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114011900', '11', '11140', '봉래동1가', 953423.7514323667, 1951177.3259048664);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114012000', '11', '11140', '봉래동2가', 953261.8123670768, 1951057.8290488461);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114012100', '11', '11140', '회현동1가', 954136.7653430677, 1951027.7525874139);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114012200', '11', '11140', '회현동2가', 954373.4364081057, 1951094.0156044941);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114012300', '11', '11140', '회현동3가', 954434.3494815481, 1951314.6015692258);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114012400', '11', '11140', '충무로1가', 954364.5561752708, 1951450.0416994113);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114012500', '11', '11140', '충무로2가', 954765.1638289756, 1951511.5504812035);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114012600', '11', '11140', '명동1가', 954446.5125883629, 1951766.7675531253);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114012700', '11', '11140', '명동2가', 954470.5578731041, 1951627.6476035407);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114012800', '11', '11140', '남산동1가', 954483.0150845834, 1951233.3418692998);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114012900', '11', '11140', '남산동2가', 954586.8348431706, 1951142.6692133173);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114013000', '11', '11140', '남산동3가', 954701.5942071466, 1951349.9647891703);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114013100', '11', '11140', '저동1가', 954725.532339757, 1951795.0561118103);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114013200', '11', '11140', '충무로4가', 955426.3192772581, 1951573.6163576052);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114013300', '11', '11140', '충무로5가', 955836.9091617545, 1951626.7624070188);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114013400', '11', '11140', '인현동2가', 955467.1405083323, 1951718.9858574443);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114013500', '11', '11140', '예관동', 955695.5168624208, 1951781.1562981752);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114013600', '11', '11140', '묵정동', 955917.1192985099, 1951456.606307366);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114013700', '11', '11140', '필동1가', 955158.0374958458, 1951415.7195522164);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114013800', '11', '11140', '필동2가', 955436.9078866722, 1951189.5905955168);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114013900', '11', '11140', '필동3가', 955588.3308587362, 1951198.4247168172);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114014000', '11', '11140', '남학동', 955033.4413340001, 1951350.4886109997);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114014100', '11', '11140', '주자동', 954944.2511755452, 1951388.89824);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114014200', '11', '11140', '예장동', 955000.3260453055, 1951016.4841927146);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114014300', '11', '11140', '장충동1가', 956510.7383210524, 1951451.0235665294);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114014400', '11', '11140', '장충동2가', 956068.0650190312, 1951290.0094350297);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114014500', '11', '11140', '광희동1가', 956292.0563043152, 1951873.8571754962);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114014600', '11', '11140', '광희동2가', 956607.0702675484, 1951717.4042485678);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114014700', '11', '11140', '쌍림동', 956255.73846513, 1951650.8665858624);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114014800', '11', '11140', '을지로6가', 956425.6034488468, 1952068.2460085722);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114014900', '11', '11140', '을지로7가', 956663.5319740889, 1951863.7191943028);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114015000', '11', '11140', '을지로4가', 955673.7426334019, 1952032.174136984);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114015100', '11', '11140', '을지로5가', 956006.0122115157, 1952015.3198620118);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114015200', '11', '11140', '주교동', 955778.6256989797, 1952203.5530703575);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114015300', '11', '11140', '방산동', 956013.5913611101, 1952239.374554627);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114015400', '11', '11140', '오장동', 955905.1601058325, 1951819.686139787);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114015500', '11', '11140', '을지로3가', 955165.8471210271, 1952002.5653668444);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114015600', '11', '11140', '입정동', 955204.165610428, 1952144.391382145);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114015700', '11', '11140', '산림동', 955503.6659439018, 1952138.7493391645);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114015800', '11', '11140', '충무로3가', 955124.3167536358, 1951601.145134993);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114015900', '11', '11140', '초동', 955169.6100263683, 1951774.1338294495);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114016000', '11', '11140', '인현동1가', 955335.2408301559, 1951802.53649252);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114016100', '11', '11140', '저동2가', 954982.8862478113, 1951790.270766245);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114016200', '11', '11140', '신당동', 957025.9069183392, 1951233.6198704068);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114016300', '11', '11140', '흥인동', 957330.4544196797, 1952049.071670994);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114016400', '11', '11140', '무학동', 957175.4069265737, 1951753.7145053605);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114016500', '11', '11140', '황학동', 957639.1352538135, 1952169.94868244);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114016600', '11', '11140', '서소문동', 953555.3979805654, 1951653.9101120874);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114016700', '11', '11140', '정동', 953380.0308870818, 1952077.4666611468);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114016800', '11', '11140', '순화동', 953245.1831035938, 1951580.8778396249);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114016900', '11', '11140', '의주로1가', 953059.6701241999, 1951790.6069482);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114017000', '11', '11140', '충정로1가', 953075.0946581819, 1952139.224951273);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114017100', '11', '11140', '중림동', 952822.8648010233, 1951174.8504141278);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114017200', '11', '11140', '의주로2가', 953188.9180509999, 1951246.3287936663);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114017300', '11', '11140', '만리동1가', 952950.1800599877, 1950917.7815945414);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1114017400', '11', '11140', '만리동2가', 952673.6630627058, 1950697.9425562352);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117010100', '11', '11170', '후암동', 953973.5339252844, 1950108.4411213617);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117010200', '11', '11170', '용산동2가', 954515.8266737139, 1949552.5398552574);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117010300', '11', '11170', '용산동4가', 954665.913517, 1948529.025706);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117010400', '11', '11170', '갈월동', 953439.9728541102, 1949780.936149177);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117010500', '11', '11170', '남영동', 953480.5223515886, 1949419.1885627632);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117010600', '11', '11170', '용산동1가', 953870.506202, 1949135.8034295);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117010700', '11', '11170', '동자동', 953548.2815206094, 1950377.9807505666);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117010800', '11', '11170', '서계동', 952839.9563584555, 1950441.5396187257);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117010900', '11', '11170', '청파동1가', 952922.5787137568, 1950081.8045023486);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117011000', '11', '11170', '청파동2가', 952983.014397104, 1949769.9336176813);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117011100', '11', '11170', '청파동3가', 953027.4046992161, 1949476.0280179752);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117011200', '11', '11170', '원효로1가', 952914.0340791099, 1949094.699804548);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117011300', '11', '11170', '원효로2가', 952571.2049216223, 1948687.9999062186);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117011400', '11', '11170', '신창동', 951866.776325849, 1948628.7653062697);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117011500', '11', '11170', '산천동', 951617.7882647845, 1948595.305065);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117011600', '11', '11170', '청암동', 951098.8667385653, 1948557.3099803037);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117011700', '11', '11170', '원효로3가', 952015.8132310169, 1948453.0709879212);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117011800', '11', '11170', '원효로4가', 951651.1461454051, 1948383.64537587);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117011900', '11', '11170', '효창동', 952404.0514800353, 1949465.615951408);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117012000', '11', '11170', '도원동', 952111.8786469356, 1949012.0976572903);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117012100', '11', '11170', '용문동', 952286.3928589062, 1948831.378631572);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117012200', '11', '11170', '문배동', 953118.4527837146, 1948700.7186494109);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117012300', '11', '11170', '신계동', 952724.0918115695, 1948496.898719699);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117012400', '11', '11170', '한강로1가', 953510.3427554604, 1948470.5255881755);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117012500', '11', '11170', '한강로2가', 953178.5760275011, 1948142.129006721);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117012600', '11', '11170', '용산동3가', 953555.7954004033, 1948339.4651950484);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117012700', '11', '11170', '용산동5가', 953276.9466906666, 1947600.5653316001);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117012800', '11', '11170', '한강로3가', 952576.2563547597, 1947403.0352779368);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117012900', '11', '11170', '이촌동', 952474.4929382679, 1947329.4371966466);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117013000', '11', '11170', '이태원동', 955133.251497255, 1948718.7946118503);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117013100', '11', '11170', '한남동', 956174.8400515083, 1948401.6588924036);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117013200', '11', '11170', '동빙고동', 955460.8849672353, 1947262.9541577154);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117013300', '11', '11170', '서빙고동', 955199.7648844956, 1946979.6875752055);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117013400', '11', '11170', '주성동', 955675.1747820342, 1947150.7815603332);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117013500', '11', '11170', '용산동6가', 954385.6796787501, 1946796.29981875);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1117013600', '11', '11170', '보광동', 955801.2496181016, 1947845.303551863);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120010100', '11', '11200', '상왕십리동', 958090.4839153333, 1952332.3342872);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120010200', '11', '11200', '하왕십리동', 958453.9510867049, 1951560.4566942812);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120010300', '11', '11200', '홍익동', 958748.8990343093, 1951968.0696359896);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120010400', '11', '11200', '도선동', 958780.267560328, 1951717.6747424204);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120010500', '11', '11200', '마장동', 959296.4008219517, 1952093.748656818);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120010600', '11', '11200', '사근동', 959974.6258551094, 1951428.0211478688);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120010700', '11', '11200', '행당동', 958988.1724899309, 1951223.9155400936);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120010800', '11', '11200', '응봉동', 958617.5041164287, 1950305.9602292331);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120010900', '11', '11200', '금호동1가', 957908.9581576424, 1950696.7586576757);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120011000', '11', '11200', '금호동2가', 957612.921379841, 1950459.6355170882);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120011100', '11', '11200', '금호동3가', 957759.8766404885, 1950125.8630273228);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120011200', '11', '11200', '금호동4가', 957602.6164300363, 1949900.4062190778);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120011300', '11', '11200', '옥수동', 957122.1989918015, 1949385.5660397555);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120011400', '11', '11200', '성수동1가', 959993.82963627, 1949519.1076178574);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120011500', '11', '11200', '성수동2가', 960788.7353057616, 1949179.800058124);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120011800', '11', '11200', '송정동', 961807.5216821436, 1950393.0449220357);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1120012200', '11', '11200', '용답동', 960508.8200929197, 1951756.111546235);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1121510100', '11', '11215', '중곡동', 963326.8760905585, 1951470.4047402958);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1121510200', '11', '11215', '능동', 963113.2803760843, 1950569.2438188314);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1121510300', '11', '11215', '구의동', 963738.954205979, 1949557.302226583);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1121510400', '11', '11215', '광장동', 965013.9108006194, 1949811.0417761598);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1121510500', '11', '11215', '자양동', 962433.8943584419, 1948447.546148995);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1121510700', '11', '11215', '화양동', 962016.1038545814, 1949536.1150803433);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1121510900', '11', '11215', '군자동', 962331.8306545481, 1950589.2627619873);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1123010100', '11', '11230', '신설동', 958145.2412015479, 1952970.2234890435);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1123010200', '11', '11230', '용두동', 958988.8618293151, 1953042.4370086107);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1123010300', '11', '11230', '제기동', 959208.850254306, 1953954.9015908025);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1123010400', '11', '11230', '전농동', 960603.230581243, 1953470.3050189863);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1123010500', '11', '11230', '답십리동', 960856.1401220675, 1952369.3534993227);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1123010600', '11', '11230', '장안동', 961871.3147285003, 1952458.5572554294);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1123010700', '11', '11230', '청량리동', 959794.896082814, 1954221.597816306);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1123010800', '11', '11230', '회기동', 960446.565111837, 1954765.4468462686);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1123010900', '11', '11230', '휘경동', 961257.8809827606, 1954548.6355513379);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1123011000', '11', '11230', '이문동', 961442.7370533885, 1955536.2495262045);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1126010100', '11', '11260', '면목동', 963485.9090873543, 1953970.9220837487);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1126010200', '11', '11260', '상봉동', 963420.394592867, 1955293.5932918175);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1126010300', '11', '11260', '중화동', 962725.5322628203, 1955678.5539498448);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1126010400', '11', '11260', '묵동', 962740.9156887954, 1956957.6503971808);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1126010500', '11', '11260', '망우동', 964726.4727252824, 1955312.1463475984);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1126010600', '11', '11260', '신내동', 964605.1030116826, 1956522.632222663);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1129010100', '11', '11290', '성북동', 955640.7821301233, 1955136.978068167);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1129010200', '11', '11290', '성북동1가', 956179.9762553634, 1954557.7593442877);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('1129010300', '11', '11290', '돈암동', 957649.0019137892, 1955522.6000677398);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611010100', '21', '26110', '영주동', 1139734.859798256, 1680647.234254849);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611010200', '21', '26110', '대창동1가', 1140007.6064586665, 1680307.253148756);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611010300', '21', '26110', '대창동2가', 1140104.6377249735, 1680593.496752131);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611010400', '21', '26110', '중앙동1가', 1139971.8008008199, 1679478.60601814);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611010500', '21', '26110', '중앙동2가', 1139944.868877, 1679624.9700977923);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611010600', '21', '26110', '중앙동3가', 1139917.3079934386, 1679780.2837344555);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611010700', '21', '26110', '중앙동4가', 1140043.5238949063, 1680143.4258168458);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611010800', '21', '26110', '중앙동5가', 1140067.3062578158, 1679634.1621061056);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611010900', '21', '26110', '중앙동6가', 1140082.4551079618, 1679447.6972418847);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611011000', '21', '26110', '중앙동7가', 1140101.5366715002, 1679206.817981);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611011100', '21', '26110', '동광동1가', 1139968.5344551664, 1679352.0922787217);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611011200', '21', '26110', '동광동2가', 1139868.8042737192, 1679427.4309630315);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611011300', '21', '26110', '동광동3가', 1139841.045229717, 1679588.861122962);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611011400', '21', '26110', '동광동4가', 1139829.3233071018, 1679768.922754831);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611011500', '21', '26110', '동광동5가', 1139826.5172459362, 1680214.3498729365);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611011600', '21', '26110', '대청동1가', 1139713.3707661438, 1679829.0506390068);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611011700', '21', '26110', '대청동2가', 1139526.8288074462, 1679729.5459381524);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611011800', '21', '26110', '대청동3가', 1139353.3160661922, 1679728.5099084417);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611011900', '21', '26110', '대청동4가', 1139444.746044025, 1680088.588343432);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611012000', '21', '26110', '보수동1가', 1139046.262125317, 1680078.206126356);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611012100', '21', '26110', '보수동2가', 1138838.5035706188, 1679952.7444422257);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611012200', '21', '26110', '보수동3가', 1138754.1072172578, 1679862.5049340753);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611012300', '21', '26110', '부평동1가', 1139183.9873880404, 1679474.2314238525);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611012400', '21', '26110', '부평동2가', 1139070.6102125617, 1679468.6382957012);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611012500', '21', '26110', '부평동3가', 1138937.4325084304, 1679566.5696822912);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611012600', '21', '26110', '부평동4가', 1138796.5774648064, 1679608.801971326);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611012700', '21', '26110', '신창동1가', 1139467.066830107, 1679526.3653039455);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611012800', '21', '26110', '신창동2가', 1139396.430912129, 1679527.3564044905);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611012900', '21', '26110', '신창동3가', 1139345.161256987, 1679529.8431531296);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611013000', '21', '26110', '신창동4가', 1139307.3594553464, 1679531.487729769);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611013100', '21', '26110', '창선동1가', 1139495.367128091, 1679332.1724067791);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611013200', '21', '26110', '창선동2가', 1139350.8180395556, 1679343.5384566945);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611013300', '21', '26110', '광복동1가', 1139854.09597143, 1679254.2426515569);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611013400', '21', '26110', '광복동2가', 1139664.719925671, 1679313.746330773);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611013500', '21', '26110', '광복동3가', 1139569.070154283, 1679436.38627813);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611013600', '21', '26110', '남포동1가', 1139894.960041992, 1679084.0875889687);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611013700', '21', '26110', '남포동2가', 1139665.006307488, 1679213.106040441);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611013800', '21', '26110', '남포동3가', 1139404.9844796571, 1679266.4180378856);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611013900', '21', '26110', '남포동4가', 1139612.2704614366, 1679108.4798233449);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611014000', '21', '26110', '남포동5가', 1139410.170145876, 1679142.0145292557);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2611014100', '21', '26110', '남포동6가', 1139173.69169907, 1679095.223894332);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614010100', '21', '26140', '동대신동1가', 1138759.0305322097, 1680503.9531570987);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614010200', '21', '26140', '동대신동2가', 1138792.9627327565, 1680872.931493912);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614010300', '21', '26140', '동대신동3가', 1138408.740476138, 1681131.775277018);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614010400', '21', '26140', '서대신동1가', 1138097.1206765173, 1680230.2123080748);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614010500', '21', '26140', '서대신동2가', 1137834.6293057862, 1680449.7417791237);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614010600', '21', '26140', '서대신동3가', 1137686.5067376038, 1681372.3347115174);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614010700', '21', '26140', '부용동1가', 1138631.0999811634, 1680116.4452732552);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614010800', '21', '26140', '부용동2가', 1138303.3280701267, 1680111.9595840864);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614010900', '21', '26140', '부민동1가', 1138593.3929108859, 1679779.7231934909);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614011000', '21', '26140', '부민동2가', 1138467.5314916472, 1679679.948104779);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614011100', '21', '26140', '부민동3가', 1138248.9356736254, 1679793.9662585869);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614011200', '21', '26140', '토성동1가', 1138813.2108283986, 1679333.731601241);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614011300', '21', '26140', '토성동2가', 1138671.7709961364, 1679455.3275771367);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614011400', '21', '26140', '토성동3가', 1138571.64299275, 1679380.9664535725);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614011500', '21', '26140', '아미동1가', 1138452.47238669, 1679293.5665207177);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614011600', '21', '26140', '아미동2가', 1137963.4551135271, 1679401.2793799983);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614011700', '21', '26140', '토성동4가', 1138812.2598695836, 1679077.4392847915);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614011800', '21', '26140', '토성동5가', 1138711.0419794584, 1679113.4311842294);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614011900', '21', '26140', '초장동', 1138473.755111818, 1678847.1921166969);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614012000', '21', '26140', '충무동1가', 1138964.460852836, 1678880.5071056045);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614012100', '21', '26140', '충무동2가', 1138757.5802431644, 1678861.8426179446);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614012200', '21', '26140', '충무동3가', 1138755.6996118722, 1678698.7682035833);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614012300', '21', '26140', '남부민동', 1138703.3873895227, 1677928.312483421);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2614012400', '21', '26140', '암남동', 1138201.3007605197, 1676929.0024469136);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2617010100', '21', '26170', '초량동', 1140015.4506489143, 1681584.3016792666);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2617010200', '21', '26170', '수정동', 1140554.5289499261, 1682754.706218695);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2617010300', '21', '26170', '좌천동', 1141312.805305375, 1683073.96155718);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2617010400', '21', '26170', '범일동', 1141463.544162132, 1683839.457224232);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620010100', '21', '26200', '대교동1가', 1140221.3818866475, 1678578.1696278849);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620010200', '21', '26200', '대교동2가', 1140480.976762853, 1678470.36042743);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620010300', '21', '26200', '대평동1가', 1139877.4297622954, 1678384.4179277467);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620010400', '21', '26200', '대평동2가', 1139738.9462461807, 1678539.3544504982);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620010500', '21', '26200', '남항동1가', 1140351.539984812, 1678299.7850332423);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620010600', '21', '26200', '남항동2가', 1140221.6393019857, 1678111.170658192);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620010700', '21', '26200', '남항동3가', 1140123.6113832665, 1677819.694038051);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620010800', '21', '26200', '영선동1가', 1140737.673787431, 1678342.3323779774);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620010900', '21', '26200', '영선동2가', 1140602.3805490988, 1678090.9541040026);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620011000', '21', '26200', '영선동3가', 1140533.0481768565, 1677824.8746627006);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620011100', '21', '26200', '영선동4가', 1140664.6143882072, 1677368.5779385078);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620011200', '21', '26200', '신선동1가', 1141029.1441758864, 1678346.407625894);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620011300', '21', '26200', '신선동2가', 1140979.0438704705, 1677966.995818347);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620011400', '21', '26200', '신선동3가', 1140895.0760242506, 1677519.6517428544);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620011500', '21', '26200', '봉래동1가', 1140376.595678039, 1678739.0982901722);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620011600', '21', '26200', '봉래동2가', 1140597.3794178064, 1678737.4656799643);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620011700', '21', '26200', '봉래동3가', 1140817.6755932379, 1678711.3917701354);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620011800', '21', '26200', '봉래동4가', 1141229.0417384151, 1678501.4851297673);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620011900', '21', '26200', '봉래동5가', 1141503.7001552235, 1678673.063960143);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620012000', '21', '26200', '청학동', 1142265.7749600185, 1678628.068799187);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2620012100', '21', '26200', '동삼동', 1143335.9150166032, 1676768.0703208805);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2623010100', '21', '26230', '양정동', 1143018.4163808902, 1687546.2658717865);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2623010200', '21', '26230', '전포동', 1142830.4287681386, 1685700.6575647967);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2623010300', '21', '26230', '부전동', 1141866.2987466473, 1685829.8069930288);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2623010400', '21', '26230', '범천동', 1141464.7574265606, 1684607.0370515685);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2623010500', '21', '26230', '범전동', 1142239.5570290044, 1686914.7913681096);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2623010600', '21', '26230', '연지동', 1141504.4421575966, 1687444.2282344732);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2623010700', '21', '26230', '초읍동', 1141178.4518808876, 1688291.727355702);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2623010800', '21', '26230', '부암동', 1140739.9288283805, 1686788.3364241803);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2623010900', '21', '26230', '당감동', 1140148.2521404251, 1686522.489901201);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2623011000', '21', '26230', '가야동', 1139808.3525275916, 1685118.1795992714);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2623011100', '21', '26230', '개금동', 1138597.862384408, 1685215.2357753792);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2626010100', '21', '26260', '명장동', 1145901.615608413, 1691252.0244262966);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2626010200', '21', '26260', '안락동', 1145963.0068341275, 1690275.546978226);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2626010300', '21', '26260', '칠산동', 1144912.1711314826, 1691105.0804668297);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2626010400', '21', '26260', '낙민동', 1144813.0079964115, 1690341.982294277);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2626010500', '21', '26260', '복천동', 1144524.1855577054, 1691233.191654675);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2626010600', '21', '26260', '수안동', 1144360.277967525, 1690529.6954395326);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2626010700', '21', '26260', '명륜동', 1144073.7913172261, 1691611.37725164);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2626010800', '21', '26260', '온천동', 1143109.6666051687, 1691665.1246758173);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2626010900', '21', '26260', '사직동', 1142604.4963646275, 1690446.0160079221);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2629010600', '21', '26290', '대연동', 1144897.8297298965, 1683263.8467235146);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2629010700', '21', '26290', '용호동', 1146863.3479362978, 1681527.9697262377);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2629010800', '21', '26290', '용당동', 1145373.83408183, 1681507.7580729069);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2629010900', '21', '26290', '문현동', 1143168.9393331811, 1684029.6374617314);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2629011000', '21', '26290', '우암동', 1143341.9390281062, 1682401.46126161);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2629011100', '21', '26290', '감만동', 1144358.9576460503, 1681433.1806289316);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2632010100', '21', '26320', '금곡동', 1137927.4426826215, 1697051.4465674104);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2632010200', '21', '26320', '화명동', 1137834.4002484188, 1694361.3552870366);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2632010300', '21', '26320', '만덕동', 1139861.5000319213, 1691655.2694390167);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2632010400', '21', '26320', '덕천동', 1137661.7038580982, 1691798.3752997078);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2632010500', '21', '26320', '구포동', 1136809.8896157274, 1690638.5298673455);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2635010100', '21', '26350', '반송동', 1150354.9431853334, 1693720.696733627);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2635010200', '21', '26350', '석대동', 1148369.9552026563, 1692932.952038781);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2635010300', '21', '26350', '반여동', 1148219.6802647724, 1690768.3350245052);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2635010400', '21', '26350', '재송동', 1148025.1568031628, 1689219.7002532016);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2635010500', '21', '26350', '우동', 1150554.0022558577, 1686978.1562589894);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2635010600', '21', '26350', '중동', 1152425.0075059456, 1686570.7828022528);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2635010700', '21', '26350', '좌동', 1152366.185398483, 1687847.6376742458);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2635010800', '21', '26350', '송정동', 1155007.0253578795, 1688930.4720862727);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2638010100', '21', '26380', '괴정동', 1136184.6283562272, 1679405.9418593037);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2638010200', '21', '26380', '당리동', 1134548.027984631, 1679826.5629302836);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2638010300', '21', '26380', '하단동', 1133472.6772806535, 1680061.7283276713);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2638010400', '21', '26380', '신평동', 1134152.2739304248, 1678527.514324048);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2638010500', '21', '26380', '장림동', 1133911.470117662, 1676970.112777913);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2638010600', '21', '26380', '다대동', 1134099.7656707803, 1674714.6482019548);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2638010700', '21', '26380', '구평동', 1135761.6432387703, 1676448.292520602);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2638010800', '21', '26380', '감천동', 1137382.819024786, 1678379.3342201302);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641010100', '21', '26410', '두구동', 1146451.116976383, 1701181.0567168875);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641010200', '21', '26410', '노포동', 1144904.929228489, 1700304.2102310641);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641010300', '21', '26410', '청룡동', 1144331.7172347333, 1699027.2213690164);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641010400', '21', '26410', '남산동', 1144539.9451591205, 1698085.2320988742);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641010500', '21', '26410', '선동', 1146412.704614399, 1698346.8977370234);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641010600', '21', '26410', '오륜동', 1146495.7255528357, 1696002.626435183);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641010700', '21', '26410', '구서동', 1144603.02946545, 1696385.924392067);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641010800', '21', '26410', '장전동', 1144224.2383873404, 1694225.9432359703);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641010900', '21', '26410', '부곡동', 1144951.715380085, 1693580.4859517778);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641011000', '21', '26410', '서동', 1145791.5012722723, 1692355.2605430805);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641011100', '21', '26410', '금사동', 1146766.2126973772, 1692791.9128276727);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641011200', '21', '26410', '회동동', 1147296.826781118, 1693710.2597056744);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2641011300', '21', '26410', '금성동', 1141502.1864552503, 1696045.4363075779);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644010100', '21', '26440', '대저1동', 1133649.9456008538, 1692047.9829062703);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644010200', '21', '26440', '대저2동', 1131429.8188355633, 1685703.6775419815);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644010300', '21', '26440', '강동동', 1129713.474764991, 1689404.3592636294);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644010400', '21', '26440', '명지동', 1129495.3941018402, 1679920.7140130165);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644010500', '21', '26440', '죽림동', 1127563.6861880799, 1689979.6388352541);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644010600', '21', '26440', '식만동', 1128487.7180713397, 1691756.0948514561);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644010700', '21', '26440', '죽동동', 1126185.0379839852, 1690191.509754659);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644010800', '21', '26440', '봉림동', 1127038.6201296567, 1687641.5038689426);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644010900', '21', '26440', '송정동', 1122685.0695384135, 1678781.1351679398);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644011000', '21', '26440', '화전동', 1125727.6315933522, 1679889.5251142683);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644011100', '21', '26440', '녹산동', 1126244.57215242, 1680948.125706166);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644011200', '21', '26440', '생곡동', 1125747.6550946773, 1683006.7629787778);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644011300', '21', '26440', '구랑동', 1123504.2145044236, 1682595.71469);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644011400', '21', '26440', '지사동', 1121165.4602759986, 1684425.6457523361);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644011500', '21', '26440', '미음동', 1124166.4857363952, 1684911.8609474564);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644011600', '21', '26440', '범방동', 1125934.3561675816, 1685046.414887359);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644011700', '21', '26440', '신호동', 1125742.0849208722, 1677384.3086338209);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644011800', '21', '26440', '동선동', 1121721.3151984846, 1673909.4920904336);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644011900', '21', '26440', '성북동', 1121257.6813497369, 1674480.394097812);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644012000', '21', '26440', '눌차동', 1122450.1398875618, 1675645.9495886317);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644012100', '21', '26440', '천성동', 1120031.2117998893, 1671462.2866409763);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2644012200', '21', '26440', '대항동', 1121258.2581189421, 1669349.1800007084);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2647010100', '21', '26470', '거제동', 1143152.04631325, 1689071.950086016);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2647010200', '21', '26470', '연산동', 1144840.195292733, 1688453.5100606575);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2650010100', '21', '26500', '망미동', 1146256.3660888728, 1687776.81436832);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711010100', '22', '27110', '동인동1가', 1099713.7704658727, 1764472.1955958325);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711010200', '22', '27110', '동인동2가', 1099675.1511984179, 1764230.6678985236);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711010300', '22', '27110', '동인동3가', 1100164.3083239824, 1764470.3349516722);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711010400', '22', '27110', '동인동4가', 1100165.343603111, 1764043.7288129292);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711010500', '22', '27110', '삼덕동1가', 1099140.1861824081, 1763896.549692365);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711010600', '22', '27110', '삼덕동2가', 1099537.6755499456, 1763769.5375574785);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711010700', '22', '27110', '삼덕동3가', 1100058.76324099, 1763678.2415244752);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711010800', '22', '27110', '봉산동', 1099076.9680530748, 1763512.9986672045);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711010900', '22', '27110', '장관동', 1098460.6840703075, 1764120.495961846);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711011000', '22', '27110', '상서동', 1098407.3022887332, 1764303.4810450666);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711011100', '22', '27110', '수동', 1098336.0269211484, 1764205.9743007403);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711011200', '22', '27110', '덕산동', 1098770.1320195652, 1763849.8813401952);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711011300', '22', '27110', '종로1가', 1098518.2612773837, 1764282.3225869148);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711011400', '22', '27110', '종로2가', 1098589.654432938, 1764085.9072427782);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711011500', '22', '27110', '사일동', 1098843.13128856, 1764207.2059216397);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711011600', '22', '27110', '동일동', 1098649.092629591, 1764235.015460864);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711011700', '22', '27110', '남일동', 1098749.4821497283, 1764203.7433822588);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711011800', '22', '27110', '전동', 1098661.895367344, 1764349.8178164375);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711011900', '22', '27110', '동성로3가', 1098757.4931786398, 1763978.409220433);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711012000', '22', '27110', '동문동', 1099171.404327192, 1764497.4185353771);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711012100', '22', '27110', '문화동', 1099072.4170174673, 1764464.5241684152);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711012200', '22', '27110', '공평동', 1099175.7561097564, 1764202.888260042);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711012300', '22', '27110', '동성로2가', 1098908.3767309545, 1764280.6359213851);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711012400', '22', '27110', '태평로1가', 1099092.392267132, 1764763.736087528);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711012500', '22', '27110', '교동', 1099164.0746800613, 1764643.285392122);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711012600', '22', '27110', '용덕동', 1099016.9929652882, 1764710.5097763217);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711012700', '22', '27110', '상덕동', 1099103.9062596923, 1764682.5098796152);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711012800', '22', '27110', '완전동', 1099245.4258767818, 1764557.1160761819);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711012900', '22', '27110', '도원동', 1097853.550719, 1765040.834904);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711013000', '22', '27110', '수창동', 1098077.050512996, 1764782.584608833);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711013100', '22', '27110', '태평로3가', 1098117.3897147337, 1765020.0852496377);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711013200', '22', '27110', '인교동', 1097889.157705429, 1764560.3130110977);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711013300', '22', '27110', '서야동', 1098014.3435510981, 1764624.0866332506);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711013400', '22', '27110', '서성로1가', 1098132.0397770002, 1764553.9044994172);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711013500', '22', '27110', '시장북로', 1097716.7025559014, 1764502.3032793608);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711013600', '22', '27110', '하서동', 1098236.6433592855, 1764288.3431424287);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711013700', '22', '27110', '남성로', 1098371.4016055153, 1764064.7186443931);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711013800', '22', '27110', '계산동1가', 1098076.979191136, 1764176.6002669998);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711013900', '22', '27110', '계산동2가', 1098355.4790278946, 1763974.5809894006);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711014000', '22', '27110', '동산동', 1097885.0406746962, 1764110.2005471594);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711014100', '22', '27110', '서문로2가', 1098065.756793202, 1764374.9746368353);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711014200', '22', '27110', '서성로2가', 1098157.9442838463, 1764287.1454060772);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711014300', '22', '27110', '포정동', 1098777.3947423946, 1764480.7510657238);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711014400', '22', '27110', '서문로1가', 1098301.0853004411, 1764438.3211302985);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711014500', '22', '27110', '서내동', 1098266.7747987998, 1764575.5813011501);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711014600', '22', '27110', '북성로2가', 1098328.2506968193, 1764699.8160940083);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711014700', '22', '27110', '대안동', 1098531.0663779415, 1764617.7875110926);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711014800', '22', '27110', '동성로1가', 1098919.961891151, 1764621.8674095853);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711014900', '22', '27110', '태평로2가', 1098594.898458394, 1764862.6147995912);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711015000', '22', '27110', '북성로1가', 1098727.130785839, 1764738.1137817497);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711015100', '22', '27110', '화전동', 1098832.9039362855, 1764615.4094243334);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711015200', '22', '27110', '향촌동', 1098735.673680977, 1764642.3094887128);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711015300', '22', '27110', '북내동', 1098365.1444942942, 1764597.2725951178);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711015400', '22', '27110', '대신동', 1097424.8578950656, 1764026.0272924693);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711015500', '22', '27110', '달성동', 1097520.7317533083, 1764854.7571846328);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711015600', '22', '27110', '남산동', 1098263.255047348, 1763254.3784104295);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2711015700', '22', '27110', '대봉동', 1099476.3960086114, 1763044.9542756937);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714010100', '22', '27140', '신암동', 1101422.0363494318, 1765914.8574107261);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714010200', '22', '27140', '신천동', 1101408.964075166, 1764596.4079280116);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714010300', '22', '27140', '효목동', 1102958.0239929736, 1765441.3031487502);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714010400', '22', '27140', '평광동', 1108006.4047301444, 1771289.59085386);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714010500', '22', '27140', '봉무동', 1102921.7412717422, 1770681.2401950413);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714010600', '22', '27140', '불로동', 1102722.0676648864, 1768439.6550997584);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714010700', '22', '27140', '도동', 1104080.8665323486, 1769170.2134118355);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714010800', '22', '27140', '지저동', 1102841.6881155218, 1767165.6219996335);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714010900', '22', '27140', '입석동', 1103573.4191757315, 1766720.43523217);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714011000', '22', '27140', '검사동', 1104274.1346375775, 1766237.3982016204);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714011100', '22', '27140', '방촌동', 1105297.233333604, 1765728.1825499285);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714011200', '22', '27140', '둔산동', 1106400.7530323244, 1767781.5623774123);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714011300', '22', '27140', '부동', 1107044.7788270272, 1766718.4634328766);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714011400', '22', '27140', '신평동', 1106853.1826152587, 1765509.9719474872);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714011500', '22', '27140', '서호동', 1109311.138893525, 1764213.8474625472);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714011600', '22', '27140', '동호동', 1109810.2087541735, 1764277.0420695874);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714011700', '22', '27140', '신기동', 1108785.939960692, 1764451.5307696343);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714011800', '22', '27140', '율하동', 1108081.139280182, 1764192.5754338575);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714011900', '22', '27140', '용계동', 1107218.5518855078, 1764985.0642380721);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714012000', '22', '27140', '율암동', 1108696.8287703642, 1765301.7484331145);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714012100', '22', '27140', '상매동', 1109147.26124071, 1767474.7759514188);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714012200', '22', '27140', '매여동', 1110028.011285333, 1768974.0935938486);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714012300', '22', '27140', '각산동', 1109890.2356189662, 1765191.5005956716);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714012400', '22', '27140', '신서동', 1110939.5849069483, 1764569.8232224537);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714012500', '22', '27140', '동내동', 1111717.3829640003, 1765682.1652459605);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714012600', '22', '27140', '괴전동', 1111517.8570548727, 1764640.8019406435);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714012700', '22', '27140', '금강동', 1111735.5553372598, 1763264.3540828002);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714012800', '22', '27140', '대림동', 1112445.7319756926, 1764392.5614572146);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714012900', '22', '27140', '사복동', 1113023.7537281367, 1764819.420619901);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714013000', '22', '27140', '숙천동', 1113239.609921036, 1765438.041290692);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714013100', '22', '27140', '내곡동', 1113591.9865397464, 1766385.423425716);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714013200', '22', '27140', '능성동', 1111613.3885427774, 1775010.441343911);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714013300', '22', '27140', '진인동', 1109680.8233515394, 1774145.1855700067);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714013400', '22', '27140', '도학동', 1108403.5408897484, 1775452.0908769812);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714013500', '22', '27140', '백안동', 1107707.610242762, 1773867.7867826684);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714013600', '22', '27140', '미곡동', 1106722.9203605633, 1774264.1518370064);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714013700', '22', '27140', '용수동', 1106730.5072421718, 1776759.6968094285);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714013800', '22', '27140', '신무동', 1105569.4700628773, 1777466.4140954039);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714013900', '22', '27140', '미대동', 1105620.8969123573, 1773910.3027681343);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714014000', '22', '27140', '내동', 1104605.2851139035, 1775030.553176606);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714014100', '22', '27140', '신용동', 1103220.0737370206, 1776827.726633821);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714014200', '22', '27140', '중대동', 1102333.4685104047, 1776866.7172126425);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714014300', '22', '27140', '송정동', 1101128.785466111, 1777585.579988121);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714014400', '22', '27140', '덕곡동', 1100805.7122305313, 1777310.8987698925);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2714014500', '22', '27140', '지묘동', 1102625.2300386704, 1772558.1925026379);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2717010100', '22', '27170', '내당동', 1095937.6576214014, 1763443.3459501863);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2717010200', '22', '27170', '비산동', 1096382.779075337, 1765345.1787099175);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2717010300', '22', '27170', '평리동', 1095660.9408890523, 1764614.2921028892);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2717010400', '22', '27170', '상리동', 1092862.6991774573, 1764925.8143809452);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2717010500', '22', '27170', '중리동', 1094201.681845142, 1763488.2029295021);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2717010600', '22', '27170', '이현동', 1093819.3623971858, 1764752.4330973637);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2717010700', '22', '27170', '원대동1가', 1097205.061860267, 1765552.205884668);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2717010800', '22', '27170', '원대동2가', 1097463.1770570525, 1765823.755104164);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2717010900', '22', '27170', '원대동3가', 1097151.942102092, 1765922.62069321);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2720010100', '22', '27200', '이천동', 1099387.8219484645, 1762290.0100217783);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2720010200', '22', '27200', '봉덕동', 1099204.7346012166, 1761178.928590515);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2720010300', '22', '27200', '대명동', 1097151.820570713, 1761345.8021576307);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723010100', '22', '27230', '칠성동1가', 1099649.594028971, 1764907.89869654);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723010200', '22', '27230', '칠성동2가', 1099039.8671573536, 1765266.191431468);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723010300', '22', '27230', '고성동1가', 1097835.3774229847, 1765272.0902796178);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723010400', '22', '27230', '고성동2가', 1097869.1167275277, 1765385.0344087342);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723010500', '22', '27230', '고성동3가', 1097856.915884763, 1765653.8759124533);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723010600', '22', '27230', '침산동', 1098091.252210124, 1766896.8976560466);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723010700', '22', '27230', '노원동1가', 1097433.572393058, 1766363.0100416106);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723010800', '22', '27230', '노원동2가', 1096875.405965368, 1766607.2074303993);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723010900', '22', '27230', '노원동3가', 1096321.3186587743, 1767104.1246665008);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723011000', '22', '27230', '대현동', 1099936.4688651466, 1765785.7746482713);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723011100', '22', '27230', '산격동', 1099677.0325705865, 1767304.8553353439);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723011200', '22', '27230', '복현동', 1101023.4422278204, 1767078.3680026394);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723011300', '22', '27230', '검단동', 1101334.8263643242, 1769152.8224571068);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723011400', '22', '27230', '동변동', 1099571.7866601886, 1770054.910253157);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723011500', '22', '27230', '서변동', 1098870.4774098182, 1770193.2948741415);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723011600', '22', '27230', '조야동', 1097117.6741326253, 1768908.9074380756);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723011700', '22', '27230', '노곡동', 1095712.7456276973, 1768248.0755171957);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723011800', '22', '27230', '읍내동', 1094828.8353681124, 1772448.7527145122);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723011900', '22', '27230', '동호동', 1095297.4732029347, 1774510.7844129554);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723012000', '22', '27230', '학정동', 1096131.140968024, 1773249.0858911849);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723012100', '22', '27230', '도남동', 1098071.6093740554, 1774902.8909237427);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723012200', '22', '27230', '국우동', 1096957.991887814, 1772780.0264761115);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723012300', '22', '27230', '구암동', 1095696.5329109677, 1771031.9433834867);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723012400', '22', '27230', '동천동', 1095472.8770808969, 1771804.2957548269);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723012500', '22', '27230', '관음동', 1094259.5506912277, 1772145.6677142899);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723012600', '22', '27230', '태전동', 1094417.4989839038, 1770177.055242935);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723012700', '22', '27230', '매천동', 1093901.8631889534, 1768450.6194342005);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723012800', '22', '27230', '팔달동', 1094113.3970612767, 1767298.4142727451);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723012900', '22', '27230', '금호동', 1092247.0553936707, 1767262.7566801137);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723013000', '22', '27230', '사수동', 1091501.880716504, 1767236.2408141836);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2723013100', '22', '27230', '연경동', 1100675.795718494, 1773119.094084983);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726010100', '22', '27260', '범어동', 1102240.5832222037, 1763189.331799392);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726010200', '22', '27260', '만촌동', 1103414.5735216732, 1763688.2675707603);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726010300', '22', '27260', '수성동1가', 1100353.999980615, 1762379.730277725);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726010400', '22', '27260', '수성동2가', 1100723.6235188437, 1762561.9185308598);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726010500', '22', '27260', '수성동3가', 1101041.4941524463, 1762425.5079585887);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726010600', '22', '27260', '수성동4가', 1100742.2616488892, 1763497.1492096127);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726010700', '22', '27260', '황금동', 1101349.252791418, 1761565.484198253);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726010800', '22', '27260', '중동', 1100463.2176114197, 1761514.6631183499);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726010900', '22', '27260', '상동', 1100439.360891191, 1760315.071150271);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726011000', '22', '27260', '파동', 1100856.4720966804, 1758334.2174064047);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726011100', '22', '27260', '두산동', 1101186.4507470555, 1760227.849558966);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726011200', '22', '27260', '지산동', 1102079.5094151748, 1759755.4875280086);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726011300', '22', '27260', '범물동', 1103348.9781417781, 1758393.695050634);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726011400', '22', '27260', '시지동', 1107914.2847034135, 1761215.7245131703);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726011500', '22', '27260', '매호동', 1108900.1036847276, 1761607.557244428);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726011600', '22', '27260', '성동', 1110130.4349488053, 1762222.7294829495);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726011700', '22', '27260', '사월동', 1110157.914248224, 1760959.876572608);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726011800', '22', '27260', '신매동', 1109157.90885379, 1760548.6872197741);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726011900', '22', '27260', '욱수동', 1108998.4191362157, 1759609.6847139655);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726012000', '22', '27260', '노변동', 1108304.4616031232, 1760783.6817170694);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726012200', '22', '27260', '삼덕동', 1105913.0716783307, 1759913.5833329873);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726012300', '22', '27260', '연호동', 1105772.963168498, 1761227.236042323);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726012400', '22', '27260', '이천동', 1104852.7658472685, 1761308.1630479328);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726012500', '22', '27260', '고모동', 1105838.9461554876, 1763388.3127682386);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726012600', '22', '27260', '가천동', 1107094.6847502608, 1762379.1944374018);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2726012700', '22', '27260', '대흥동', 1106962.980721777, 1760210.878415475);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729010100', '22', '27290', '성당동', 1095257.53471604, 1761331.0369786369);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729010200', '22', '27290', '두류동', 1096156.9959642962, 1762739.552257744);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729010400', '22', '27290', '파호동', 1088114.4435019032, 1761648.7363728946);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729010500', '22', '27290', '호림동', 1089142.999136116, 1760542.445832828);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729010600', '22', '27290', '갈산동', 1090472.0409197954, 1761091.2746971478);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729010700', '22', '27290', '신당동', 1089919.794288347, 1762604.2403627962);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729010800', '22', '27290', '이곡동', 1091033.0252951423, 1762546.9702671869);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729010900', '22', '27290', '장동', 1091856.9168556405, 1760842.9593714098);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729011000', '22', '27290', '장기동', 1092442.4973094086, 1761555.8360686842);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729011100', '22', '27290', '용산동', 1092752.3166599588, 1762735.100364202);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729011200', '22', '27290', '죽전동', 1093600.1816796996, 1762479.6526565175);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729011300', '22', '27290', '감삼동', 1094132.3194129458, 1761987.1398763624);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729011400', '22', '27290', '본리동', 1093446.7423957512, 1760891.8274436146);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729011500', '22', '27290', '상인동', 1093933.8966548142, 1758022.9523923483);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729011600', '22', '27290', '도원동', 1094320.6961886894, 1756885.5029307017);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729011700', '22', '27290', '진천동', 1092705.7177988605, 1757771.8706602852);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729011800', '22', '27290', '유천동', 1091594.6322924239, 1757918.986701808);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729011900', '22', '27290', '대천동', 1091097.8135918742, 1758906.4637767153);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729012000', '22', '27290', '월성동', 1092554.5207184372, 1759400.0338941114);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729012100', '22', '27290', '월암동', 1091152.770848045, 1759682.1764502367);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729012200', '22', '27290', '송현동', 1094958.26931076, 1759644.6745725852);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729012300', '22', '27290', '대곡동', 1092302.7489299835, 1756856.4189935718);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729012400', '22', '27290', '본동', 1093616.0397203546, 1760368.070390141);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2729012500', '22', '27290', '호산동', 1088853.0264257686, 1761823.0733513692);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2771025000', '22', '27710', '화원읍', 1090090.0711175646, 1756586.3567574134);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2771025300', '22', '27710', '논공읍', 1084406.757967831, 1750860.9890879688);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2771025600', '22', '27710', '다사읍', 1087612.1539213057, 1764135.3668580146);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2771025900', '22', '27710', '유가읍', 1087683.1974655443, 1742736.515464344);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2771026200', '22', '27710', '옥포읍', 1086883.1585635154, 1754114.0251179272);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2771026500', '22', '27710', '현풍읍', 1085051.9161702264, 1744254.8779373039);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2771031000', '22', '27710', '가창면', 1103023.021612268, 1752471.5312579602);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2771033000', '22', '27710', '하빈면', 1083404.1598737086, 1766539.2040107811);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2771038000', '22', '27710', '구지면', 1082796.190054116, 1739879.8569443536);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811010100', '23', '28110', '중앙동1가', 922231.3803194498, 1941948.6573150996);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811010200', '23', '28110', '중앙동2가', 922342.3870520975, 1941873.1138155365);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811010300', '23', '28110', '중앙동3가', 922448.763891514, 1941795.664487886);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811010400', '23', '28110', '중앙동4가', 922546.734939266, 1941702.9510689995);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811010500', '23', '28110', '해안동1가', 922227.909568, 1941844.675261);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811010600', '23', '28110', '해안동2가', 922297.3749692432, 1941795.6906424053);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811010700', '23', '28110', '해안동3가', 922365.2688292001, 1941729.5021786);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811010800', '23', '28110', '해안동4가', 922455.7831658331, 1941665.8948816666);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811010900', '23', '28110', '관동1가', 922325.2297845612, 1941971.9323427542);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811011000', '23', '28110', '관동2가', 922497.4090420001, 1941861.897555943);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811011100', '23', '28110', '관동3가', 922608.9319669302, 1941783.6876883714);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811011200', '23', '28110', '항동1가', 921944.3754139252, 1941994.8607740246);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811011300', '23', '28110', '항동2가', 922039.012816, 1941892.949743);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811011400', '23', '28110', '항동3가', 922146.6357045, 1941823.457652);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811011500', '23', '28110', '항동4가', 922244.1391712001, 1941737.0451252);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811011600', '23', '28110', '항동5가', 922338.6416248571, 1941676.029035);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811011700', '23', '28110', '항동6가', 922436.5822299999, 1941580.3071467502);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811011800', '23', '28110', '항동7가', 920970.1973505543, 1939543.8771759772);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811011900', '23', '28110', '송학동1가', 922381.3370232726, 1942049.7213548182);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811012000', '23', '28110', '송학동2가', 922611.6938154463, 1941999.2938874823);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811012100', '23', '28110', '송학동3가', 922712.2950071512, 1941922.872330444);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811012200', '23', '28110', '사동', 922715.6847070365, 1941411.7989196915);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811012300', '23', '28110', '신생동', 922812.0098543093, 1941442.1842408804);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811012400', '23', '28110', '신포동', 922774.8618192738, 1941683.6578616193);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811012500', '23', '28110', '답동', 922978.2631654867, 1941432.6656253838);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811012600', '23', '28110', '신흥동1가', 923208.8046978391, 1941313.1317023672);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811012700', '23', '28110', '신흥동2가', 923466.5706826526, 1941256.4042615062);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811012800', '23', '28110', '신흥동3가', 923184.3937202203, 1939809.0176776724);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811012900', '23', '28110', '선화동', 923696.4646229, 1941069.8187686582);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811013000', '23', '28110', '유동', 923696.5299211807, 1941521.2469685792);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811013100', '23', '28110', '율목동', 923420.7646892086, 1941556.0521768965);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811013200', '23', '28110', '도원동', 923853.498789641, 1941308.0403252114);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811013300', '23', '28110', '내동', 922881.5827891232, 1941943.3089369626);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811013400', '23', '28110', '경동', 923325.5267713139, 1941786.517992962);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811013500', '23', '28110', '용동', 923183.2251502328, 1941902.8697759123);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811013600', '23', '28110', '인현동', 923146.8325219539, 1942095.1071767702);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811013700', '23', '28110', '전동', 922821.0092225133, 1942303.3764324961);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811013800', '23', '28110', '북성동1가', 920965.3161608074, 1942278.720555072);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811013900', '23', '28110', '북성동2가', 922049.057769085, 1942285.7543992281);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811014000', '23', '28110', '북성동3가', 922177.8343162616, 1942227.733486207);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811014100', '23', '28110', '선린동', 922061.9191991714, 1942063.817184895);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811014200', '23', '28110', '송월동1가', 922490.9707163607, 1942632.411912072);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811014300', '23', '28110', '송월동2가', 922131.3744974429, 1942520.3140760276);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811014400', '23', '28110', '송월동3가', 922258.8500178957, 1942461.7930136812);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811014500', '23', '28110', '중산동', 916461.0014734084, 1945271.6988669373);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811014600', '23', '28110', '운남동', 914726.5419877972, 1944139.1581117322);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811014700', '23', '28110', '운서동', 910864.7238074559, 1943879.0786154962);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811014800', '23', '28110', '운북동', 913604.7561789377, 1946443.0620093686);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811014900', '23', '28110', '을왕동', 900930.0131985027, 1939823.9349260484);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811015000', '23', '28110', '남북동', 903698.7785745573, 1939485.128460284);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811015100', '23', '28110', '덕교동', 904381.4325375464, 1937607.004816956);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2811015200', '23', '28110', '무의동', 904774.7148423903, 1932720.9790591246);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2814010100', '23', '28140', '만석동', 922403.7708259803, 1943213.1769797273);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2814010200', '23', '28140', '화수동', 923126.2007229597, 1943026.008599733);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2814010300', '23', '28140', '송현동', 923751.3023360475, 1942549.5899041838);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2814010400', '23', '28140', '화평동', 923165.205277409, 1942570.9859388503);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2814010500', '23', '28140', '창영동', 924128.8285272476, 1941609.8793065005);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2814010600', '23', '28140', '금곡동', 923956.3516134562, 1941841.1006817482);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2814010700', '23', '28140', '송림동', 924501.9475721094, 1942199.7470419114);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2817710100', '23', '28177', '숭의동', 924914.014004081, 1940805.0910340676);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2817710200', '23', '28177', '용현동', 925066.5474500082, 1939744.8933347985);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2817710300', '23', '28177', '학익동', 926020.6788425207, 1938420.1958797872);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2817710400', '23', '28177', '도화동', 926280.7682175945, 1941248.6512860057);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2817710500', '23', '28177', '주안동', 927452.9447255763, 1939834.3960967918);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2817710600', '23', '28177', '관교동', 928597.7273708271, 1938632.6421277819);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2817710700', '23', '28177', '문학동', 927675.9498181484, 1937908.8045475513);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2818510100', '23', '28185', '옥련동', 924975.3176960815, 1936440.6488190854);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2818510200', '23', '28185', '선학동', 928937.9257836897, 1936798.0995778127);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2818510300', '23', '28185', '연수동', 927467.2132921017, 1936093.2267561103);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2818510400', '23', '28185', '청학동', 926226.3639774363, 1936636.2723229984);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2818510500', '23', '28185', '동춘동', 925870.7460589163, 1935041.2576583647);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2818510600', '23', '28185', '송도동', 924302.8769698755, 1932152.8174470076);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2820010100', '23', '28200', '구월동', 930158.8648586036, 1939325.7542182915);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2820010200', '23', '28200', '간석동', 929957.8342697441, 1940941.709005994);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2820010300', '23', '28200', '만수동', 932013.1737881646, 1939923.598769916);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2820010400', '23', '28200', '장수동', 934087.0830717917, 1939681.2422694238);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2820010500', '23', '28200', '서창동', 933736.4394722161, 1937201.8810008077);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2820010600', '23', '28200', '운연동', 935080.500377225, 1938012.7308403756);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2820010700', '23', '28200', '남촌동', 930302.7693321486, 1936624.7305882336);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2820010800', '23', '28200', '수산동', 931479.8676429692, 1937743.077502846);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2820010900', '23', '28200', '도림동', 931628.3603533594, 1935860.8137363268);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2820011000', '23', '28200', '논현동', 931249.1271870957, 1934225.98554101);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2820011100', '23', '28200', '고잔동', 929306.422504468, 1933155.6404169884);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2823710100', '23', '28237', '부평동', 931416.538758422, 1944159.3282062737);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2823710200', '23', '28237', '십정동', 929405.6352471404, 1942091.997263606);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2823710300', '23', '28237', '산곡동', 929538.7368754618, 1945148.2223152225);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2823710400', '23', '28237', '청천동', 929574.5265477288, 1946727.0036468438);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2823710500', '23', '28237', '삼산동', 932801.4799561321, 1946823.826973149);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2823710600', '23', '28237', '갈산동', 931716.8587008046, 1946569.8108215877);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2823710700', '23', '28237', '부개동', 932543.8273907484, 1943795.635782058);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2823710800', '23', '28237', '일신동', 933271.3154372927, 1942874.8630322185);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2823710900', '23', '28237', '구산동', 933907.9828128855, 1942579.8561311343);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2824510100', '23', '28245', '효성동', 929942.8042052647, 1948087.4987691417);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2824510200', '23', '28245', '계산동', 931485.277260837, 1949425.3569229038);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2824510300', '23', '28245', '작전동', 931811.4891159029, 1948158.2633721565);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2824510400', '23', '28245', '서운동', 933855.4147973529, 1948136.9266927447);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2824510500', '23', '28245', '임학동', 932440.1677823034, 1949922.3305754408);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2824510600', '23', '28245', '용종동', 933117.1576363716, 1949461.2633118604);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2824510700', '23', '28245', '병방동', 933076.4278295389, 1950124.1729850264);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911010100', '24', '29110', '대인동', 946777.4634890388, 1684462.3271041366);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911010200', '24', '29110', '금남로5가', 946467.4163454031, 1684332.0383558457);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911010300', '24', '29110', '충장로5가', 946382.1146194714, 1684170.8495520186);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911010400', '24', '29110', '수기동', 946276.6120884586, 1684082.7823909696);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911010500', '24', '29110', '대의동', 947143.3828430971, 1683951.5228414356);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911010600', '24', '29110', '궁동', 947026.2003381645, 1684059.1558634713);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911010700', '24', '29110', '장동', 947369.4619880363, 1683994.8882500941);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911010800', '24', '29110', '동명동', 947618.2784946475, 1684132.0953858474);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911010900', '24', '29110', '계림동', 947161.0275677765, 1685082.5004260975);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911011000', '24', '29110', '산수동', 948198.7407912754, 1684700.226525615);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911011100', '24', '29110', '지산동', 948472.6399206818, 1683953.3368192671);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911011200', '24', '29110', '남동', 947166.6042693448, 1683355.5070629455);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911011300', '24', '29110', '광산동', 946974.7206340804, 1683551.8174770668);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911011400', '24', '29110', '금동', 946961.0545877913, 1683272.1045932488);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911011500', '24', '29110', '호남동', 946494.6051385199, 1683787.179268189);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911011600', '24', '29110', '불로동', 946706.285966172, 1683544.1789410322);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911011700', '24', '29110', '황금동', 946764.188628273, 1683711.5855147413);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911011800', '24', '29110', '서석동', 947601.0638743705, 1683453.660025317);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911011900', '24', '29110', '소태동', 948453.3573288912, 1681374.8698108844);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911012000', '24', '29110', '용연동', 951181.2960195136, 1677831.8370810403);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911012100', '24', '29110', '운림동', 949865.8477490697, 1682092.839896011);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911012200', '24', '29110', '학동', 947777.3969710205, 1682402.7341567662);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911012300', '24', '29110', '월남동', 948557.5962374492, 1678942.074102573);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911012400', '24', '29110', '선교동', 950019.6884752446, 1677313.987842872);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911012500', '24', '29110', '내남동', 948416.0265570419, 1677545.2567650762);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911012600', '24', '29110', '용산동', 947969.066157973, 1680562.826727387);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911012700', '24', '29110', '충장로1가', 946969.7889513089, 1683708.2915957645);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911012800', '24', '29110', '충장로2가', 946845.7786407297, 1683815.0953503512);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911012900', '24', '29110', '충장로3가', 946726.4838394695, 1683897.610497439);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911013000', '24', '29110', '충장로4가', 946582.0917295815, 1683985.0822095359);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911013100', '24', '29110', '금남로1가', 947027.2757004286, 1683796.9278758566);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911013200', '24', '29110', '금남로2가', 946949.5044844118, 1683892.7439843828);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911013300', '24', '29110', '금남로3가', 946834.5485230909, 1684003.5167365454);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2911013400', '24', '29110', '금남로4가', 946719.543029582, 1684129.6065975092);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914010400', '24', '29140', '양동', 945329.327705368, 1684525.2057443976);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914010600', '24', '29140', '농성동', 944283.6153686146, 1684403.2586407806);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914011500', '24', '29140', '광천동', 943543.3808569083, 1685815.4335956783);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914011600', '24', '29140', '유촌동', 941212.42743255, 1685784.1110416087);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914011700', '24', '29140', '덕흥동', 939654.4128603024, 1685838.9319093048);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914011800', '24', '29140', '쌍촌동', 941952.2095006813, 1684195.3715293584);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914011900', '24', '29140', '화정동', 943315.5078928882, 1683777.8274862573);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914012000', '24', '29140', '치평동', 940535.8505025398, 1684229.1011505763);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914012100', '24', '29140', '내방동', 942807.9475249631, 1684551.7936073698);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914012500', '24', '29140', '서창동', 938383.0524440396, 1679487.9183621842);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914012600', '24', '29140', '세하동', 939266.0562129434, 1680761.953253419);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914012700', '24', '29140', '용두동', 937657.9790535723, 1678094.9090038992);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914012800', '24', '29140', '풍암동', 942796.8381130964, 1681089.5173564425);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914012900', '24', '29140', '벽진동', 939412.7236542695, 1682114.1433359282);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914013000', '24', '29140', '금호동', 941427.0892853829, 1681942.4670411411);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914013100', '24', '29140', '마륵동', 940159.9379221245, 1683240.257580572);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914013200', '24', '29140', '매월동', 940935.7470650105, 1680414.7109905363);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2914013300', '24', '29140', '동천동', 941788.6196315804, 1686386.5650252781);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915510100', '24', '29155', '사동', 946475.2991138211, 1683341.0598933338);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915510200', '24', '29155', '구동', 946312.5964075314, 1683568.3293030122);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915510300', '24', '29155', '서동', 945981.0996989091, 1683487.9512838507);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915510400', '24', '29155', '월산동', 944941.1570140494, 1683428.4752360883);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915510500', '24', '29155', '백운동', 945676.3380125106, 1682571.5608861498);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915510600', '24', '29155', '주월동', 944816.8244153258, 1682095.3094649366);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915510700', '24', '29155', '노대동', 945671.295632335, 1678714.0248292105);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915510800', '24', '29155', '진월동', 945104.5668341335, 1680562.4577467376);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915510900', '24', '29155', '덕남동', 945289.2456140579, 1677776.8866443909);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915511000', '24', '29155', '행암동', 944142.2815682074, 1678558.7474333325);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915511100', '24', '29155', '임암동', 942813.5046244523, 1678825.9206163222);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915511200', '24', '29155', '송하동', 943567.8153167678, 1679423.7829572298);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915511300', '24', '29155', '양림동', 946780.1918515404, 1682791.1322499583);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915511400', '24', '29155', '방림동', 947131.1073859887, 1682000.9838103931);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915511500', '24', '29155', '봉선동', 946237.0163838137, 1681658.3119704537);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915511600', '24', '29155', '구소동', 937048.2442492663, 1673504.8292794789);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915511700', '24', '29155', '양촌동', 935466.9656109312, 1674401.7517998905);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915511800', '24', '29155', '도금동', 940203.9436510133, 1675867.687587527);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915511900', '24', '29155', '승촌동', 934651.0639405721, 1673815.671533357);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915512000', '24', '29155', '지석동', 939354.6236915248, 1676614.2392173577);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915512100', '24', '29155', '압촌동', 939189.7884106878, 1677559.0955381994);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915512200', '24', '29155', '화장동', 936494.9239968538, 1676194.0578762868);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915512300', '24', '29155', '칠석동', 939669.298160426, 1675289.8857990236);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915512400', '24', '29155', '석정동', 937642.1066795873, 1677092.4800229496);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915512500', '24', '29155', '신장동', 937837.9351237642, 1673666.464037892);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915512600', '24', '29155', '양과동', 942576.1582253351, 1677131.8972908452);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915512700', '24', '29155', '이장동', 941670.7730936414, 1677390.7175301935);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915512800', '24', '29155', '대지동', 937998.1258245155, 1675732.63101);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915512900', '24', '29155', '원산동', 940709.0681601255, 1678096.2052564162);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2915513000', '24', '29155', '월성동', 936580.5978678216, 1674852.8306777407);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917010100', '24', '29170', '중흥동', 946477.4526937008, 1685969.217330877);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917010200', '24', '29170', '유동', 945864.6714129075, 1684984.9852509417);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917010300', '24', '29170', '누문동', 945891.6993458915, 1684529.3255502935);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917010400', '24', '29170', '북동', 946247.4589328712, 1684721.5009096079);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917010500', '24', '29170', '임동', 945060.7440141763, 1685555.061003135);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917010600', '24', '29170', '신안동', 945367.316962461, 1686003.3526493309);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917010700', '24', '29170', '용봉동', 945610.8952114544, 1687303.7944758292);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917010800', '24', '29170', '동림동', 941802.7809982761, 1687215.1181892108);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917010900', '24', '29170', '운암동', 943659.1434498349, 1686732.489991039);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917011000', '24', '29170', '우산동', 947325.6002541588, 1686674.5244953306);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917011100', '24', '29170', '풍향동', 947751.37784484, 1685643.7571386553);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917011200', '24', '29170', '문흥동', 947437.5358718853, 1687780.540501461);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917011300', '24', '29170', '각화동', 948488.4380664657, 1687451.062959512);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917011400', '24', '29170', '두암동', 948242.7586693187, 1686421.8944394675);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917011500', '24', '29170', '오치동', 946113.2179022385, 1688224.5648028182);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917011600', '24', '29170', '삼각동', 945489.6767154365, 1689581.4686999004);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917011700', '24', '29170', '매곡동', 944678.9965206764, 1688473.6956709195);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917011800', '24', '29170', '충효동', 954937.9949543198, 1687397.1492597114);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917011900', '24', '29170', '덕의동', 953218.2207445863, 1687421.1377481373);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917012000', '24', '29170', '금곡동', 953806.3246106424, 1685544.412772448);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917012100', '24', '29170', '망월동', 950068.6896541511, 1689887.8973415776);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917012200', '24', '29170', '청풍동', 951118.5521715328, 1686738.1409169892);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917012300', '24', '29170', '화암동', 951444.561273197, 1684379.930803557);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917012400', '24', '29170', '장등동', 948457.3466055923, 1691110.6400712677);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917012500', '24', '29170', '운정동', 949615.5613136042, 1692305.1694564067);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917012600', '24', '29170', '본촌동', 943681.803004126, 1691509.7267494064);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917012700', '24', '29170', '일곡동', 944772.7002986859, 1690415.8194709322);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917012800', '24', '29170', '양산동', 943265.5404149126, 1690225.0521881462);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917012900', '24', '29170', '연제동', 942468.9655551113, 1690000.760388829);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917013000', '24', '29170', '신용동', 942212.1954062857, 1690886.9167983073);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917013100', '24', '29170', '용두동', 943081.9491634307, 1691517.337624041);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917013200', '24', '29170', '지야동', 944212.6396247798, 1693062.3160931822);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917013300', '24', '29170', '태령동', 947875.5352716073, 1695079.5274485499);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917013400', '24', '29170', '수곡동', 947301.3740436458, 1694535.3902782318);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917013500', '24', '29170', '효령동', 946744.4300198825, 1694269.493576279);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917013600', '24', '29170', '용전동', 944947.3496439966, 1694021.863977372);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917013700', '24', '29170', '용강동', 946131.1340735072, 1695235.5952856548);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917013800', '24', '29170', '생용동', 945420.84546085, 1692893.0250173716);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917013900', '24', '29170', '월출동', 942393.21504976, 1693837.9615768313);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917014000', '24', '29170', '대촌동', 941331.7858678919, 1693247.8064363746);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2917014100', '24', '29170', '오룡동', 940732.1268010001, 1692552.2184380963);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920010100', '24', '29200', '송정동', 935956.0096019189, 1682769.154662604);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920010200', '24', '29200', '도산동', 935453.0416298744, 1681961.0519380744);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920010400', '24', '29200', '신촌동', 936772.9506501566, 1683212.9446069351);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920010500', '24', '29200', '서봉동', 932061.8161147585, 1684505.0192538628);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920010600', '24', '29200', '운수동', 934720.9170223089, 1684593.9447221141);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920010700', '24', '29200', '선암동', 934061.8947185114, 1683910.7343511798);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920010800', '24', '29200', '소촌동', 935970.4967306358, 1683967.798841665);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920010900', '24', '29200', '우산동', 937262.3201679868, 1684714.0226501168);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920011000', '24', '29200', '황룡동', 935026.6555373636, 1681334.9710224092);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920011100', '24', '29200', '박호동', 931273.1233003628, 1686360.9586731566);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920011200', '24', '29200', '비아동', 938370.5366726802, 1692159.7859454732);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920011300', '24', '29200', '도천동', 938092.6724137808, 1691151.8722723897);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920011400', '24', '29200', '수완동', 938909.2476808158, 1689065.6828802617);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920011500', '24', '29200', '월계동', 939815.4025994455, 1690913.5379144163);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920011600', '24', '29200', '쌍암동', 940599.5341922286, 1691674.4978370075);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920011700', '24', '29200', '산월동', 940682.9140927969, 1689955.598498971);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920011800', '24', '29200', '신창동', 940281.4139759603, 1688694.8125148034);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920011900', '24', '29200', '신가동', 938867.6846058904, 1687655.5700791227);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920012000', '24', '29200', '운남동', 938138.5429417237, 1686810.4494318026);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920012100', '24', '29200', '안청동', 936685.8961696636, 1691411.3214485655);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920012200', '24', '29200', '진곡동', 935065.3275073719, 1690660.1083606628);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920012300', '24', '29200', '장덕동', 937356.9026265604, 1688833.8211635528);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920012400', '24', '29200', '흑석동', 936953.9249730743, 1687667.0354632451);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920012500', '24', '29200', '하남동', 936203.299832259, 1687621.820688389);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920012600', '24', '29200', '장수동', 934917.4794768305, 1687786.9319315264);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920012700', '24', '29200', '산정동', 936472.485770286, 1686479.2868198494);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920012800', '24', '29200', '월곡동', 937239.3792908847, 1686309.5898457258);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920012900', '24', '29200', '등임동', 932917.7942007448, 1688295.2099431306);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920013000', '24', '29200', '산막동', 932918.1667891656, 1689592.9905184458);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920013100', '24', '29200', '고룡동', 934084.3692688225, 1690420.9747161826);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920013200', '24', '29200', '신룡동', 933685.567598057, 1691706.7713008423);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920013300', '24', '29200', '두정동', 932750.8863064732, 1691859.3330115802);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920013400', '24', '29200', '임곡동', 931240.1834185976, 1691825.1106796383);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920013500', '24', '29200', '광산동', 931014.8307280043, 1694172.8050210485);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920013600', '24', '29200', '오산동', 929714.8265276412, 1693241.6259111408);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920013700', '24', '29200', '사호동', 929972.2578944629, 1691546.9775833625);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920013800', '24', '29200', '하산동', 933362.4757737454, 1678470.6487472504);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920013900', '24', '29200', '유계동', 934667.5727271412, 1678296.776930909);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920014000', '24', '29200', '본덕동', 934310.4434409474, 1677050.5926968188);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920014100', '24', '29200', '용봉동', 933530.0059654943, 1675860.666374494);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920014200', '24', '29200', '요기동', 933057.4339318693, 1679417.5431135704);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920014300', '24', '29200', '복룡동', 934556.8352414999, 1679723.246719051);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920014400', '24', '29200', '송대동', 935435.228504407, 1679051.8722814138);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920014500', '24', '29200', '옥동', 932571.9553336583, 1681539.742809184);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920014600', '24', '29200', '월전동', 933845.3688035584, 1680879.3185185343);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920014700', '24', '29200', '장록동', 934223.9478164519, 1682372.1385916953);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920014800', '24', '29200', '송촌동', 934166.3032437996, 1682943.5165137167);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920014900', '24', '29200', '지죽동', 932663.4781659477, 1683096.127476913);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920015000', '24', '29200', '용동', 932008.0959655923, 1682211.4067686854);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920015100', '24', '29200', '용곡동', 931016.6675060749, 1681519.3127334095);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920015200', '24', '29200', '지정동', 928892.9846232341, 1682331.1002498672);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920015300', '24', '29200', '명화동', 929009.4346975917, 1681311.502263365);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920015400', '24', '29200', '동산동', 928526.6241205536, 1680345.3018093766);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920015500', '24', '29200', '연산동', 931910.0452075931, 1680021.3807342807);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920015600', '24', '29200', '도덕동', 927190.1344870431, 1685600.0498362738);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920015700', '24', '29200', '송산동', 928943.2151608833, 1685675.4355960966);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920015800', '24', '29200', '지평동', 929372.0905718774, 1684564.6589816469);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920015900', '24', '29200', '오운동', 926226.0566910492, 1684445.0765440494);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920016000', '24', '29200', '삼거동', 924668.2939011465, 1685299.7958302994);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920016100', '24', '29200', '양동', 923450.543652406, 1684651.4340407618);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920016200', '24', '29200', '내산동', 923553.1316120168, 1682573.2940735936);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920016300', '24', '29200', '대산동', 924652.2392383119, 1682572.0060656874);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920016400', '24', '29200', '송학동', 925162.5845102727, 1680341.458623597);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920016500', '24', '29200', '신동', 926894.3061370101, 1679923.9223130294);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920016600', '24', '29200', '삼도동', 926251.5275691957, 1681301.6719428846);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920016700', '24', '29200', '남산동', 929609.4669312995, 1687232.3067304492);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920016800', '24', '29200', '송치동', 929979.8601453381, 1687893.9367700946);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920016900', '24', '29200', '산수동', 931308.9919001528, 1688341.045282229);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920017000', '24', '29200', '선동', 931534.9997920908, 1689642.769029427);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920017100', '24', '29200', '지산동', 930393.7006465298, 1688470.5338169185);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920017200', '24', '29200', '왕동', 928438.0459936581, 1689707.1824428155);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920017300', '24', '29200', '북산동', 928474.4414538321, 1687360.1028767694);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920017400', '24', '29200', '명도동', 926942.5666970513, 1686648.753524669);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920017500', '24', '29200', '동호동', 925771.8281384278, 1687854.968918681);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920017600', '24', '29200', '덕림동', 924194.8175934319, 1688467.6262000417);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920017700', '24', '29200', '양산동', 925738.3793653792, 1689585.8339025858);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920017800', '24', '29200', '동림동', 926227.096476078, 1690677.2359016258);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('2920020200', '24', '29200', '오선동', 936046.5044883114, 1689910.1550754735);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011010100', '25', '30110', '원동', 994032.6277902192, 1814513.0537947556);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011010200', '25', '30110', '인동', 994379.5854943653, 1813923.9281852616);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011010300', '25', '30110', '효동', 994711.5497180049, 1813219.286793989);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011010400', '25', '30110', '천동', 995151.541089776, 1813215.0150079522);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011010500', '25', '30110', '가오동', 995910.3609978057, 1812250.1209198644);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011010600', '25', '30110', '신흥동', 995144.5770480753, 1813857.6129079727);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011010700', '25', '30110', '판암동', 995929.5398427524, 1813501.5958742627);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011010800', '25', '30110', '삼정동', 997665.3492544813, 1813867.7806653925);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011010900', '25', '30110', '용운동', 996252.6817701816, 1814509.814714727);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011011000', '25', '30110', '대동', 995186.6293092461, 1814757.1450699233);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011011100', '25', '30110', '자양동', 995415.6281688489, 1815518.734290493);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011011200', '25', '30110', '신안동', 994455.757019655, 1814774.5264802387);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011011300', '25', '30110', '소제동', 994549.0847968528, 1815329.8180485647);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011011400', '25', '30110', '가양동', 995132.4847124299, 1816464.377634944);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011011500', '25', '30110', '용전동', 994028.9946733707, 1817338.2076288247);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011011600', '25', '30110', '성남동', 994128.5022661374, 1816341.4215475717);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011011700', '25', '30110', '홍도동', 993351.037611726, 1816689.2055685502);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011011800', '25', '30110', '삼성동', 993135.2922470965, 1815816.4445511617);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011011900', '25', '30110', '정동', 993851.575167026, 1815136.275350198);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011012000', '25', '30110', '중동', 993742.1772325564, 1814877.8016299983);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011012100', '25', '30110', '추동', 997538.8875985709, 1819636.4552425984);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011012200', '25', '30110', '비룡동', 997807.7735768028, 1815995.8907943943);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011012300', '25', '30110', '주산동', 998028.412431815, 1817881.6027043264);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011012500', '25', '30110', '마산동', 998494.6263791757, 1821021.5409133157);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011012600', '25', '30110', '효평동', 997118.6224445625, 1822357.504767412);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011012700', '25', '30110', '직동', 998498.5416560182, 1824222.0132763085);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011012800', '25', '30110', '세천동', 999100.7413061498, 1815554.9867491608);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011012900', '25', '30110', '신상동', 999710.8063451379, 1817139.9993827585);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011013000', '25', '30110', '신하동', 1000283.6987148911, 1818584.398974075);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011013100', '25', '30110', '신촌동', 1000709.0269625789, 1819658.1196898948);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011013200', '25', '30110', '사성동', 1001498.6684090457, 1820548.9776710002);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011013300', '25', '30110', '내탑동', 1002136.166895, 1821771.96681);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011013400', '25', '30110', '오동', 1002810.8672727568, 1824297.0490166494);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011013500', '25', '30110', '주촌동', 1003077.0515531998, 1823357.0470287427);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011013600', '25', '30110', '낭월동', 997123.3592184152, 1809181.5862875883);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011013700', '25', '30110', '대별동', 996226.8861664026, 1809804.8620218758);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011013800', '25', '30110', '이사동', 995103.5588368571, 1809888.3917718523);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011013900', '25', '30110', '대성동', 996561.4888242775, 1810843.8153745984);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011014000', '25', '30110', '장척동', 994468.1839231817, 1806231.0746280001);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011014100', '25', '30110', '소호동', 995424.7346812766, 1807503.7823835532);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011014200', '25', '30110', '구도동', 997306.2250101744, 1808246.5545297302);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011014300', '25', '30110', '삼괴동', 997524.4507141366, 1805991.4789117777);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011014400', '25', '30110', '상소동', 995684.4490917489, 1803489.3353488187);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3011014500', '25', '30110', '하소동', 994643.618725838, 1802423.2819100367);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014010100', '25', '30140', '은행동', 993394.1957804326, 1814723.9036252233);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014010200', '25', '30140', '선화동', 992692.150301106, 1814844.1063686674);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014010300', '25', '30140', '목동', 991844.3754930787, 1815238.80879927);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014010400', '25', '30140', '중촌동', 992077.2160917437, 1815765.9435843346);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014010500', '25', '30140', '대흥동', 993259.8245592955, 1813878.716632641);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014010600', '25', '30140', '문창동', 994251.0706662372, 1813359.7708453808);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014010700', '25', '30140', '석교동', 994790.4698369842, 1812302.7604526633);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014010800', '25', '30140', '호동', 995214.8389758114, 1811798.571613236);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014010900', '25', '30140', '옥계동', 995775.7746011505, 1811207.2852347966);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014011000', '25', '30140', '대사동', 993062.126260022, 1813173.5701371694);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014011100', '25', '30140', '부사동', 993952.3843469409, 1812804.4864780665);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014011200', '25', '30140', '용두동', 991699.8043902824, 1814625.727914461);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3014011300', '25', '30140', '오류동', 991449.8726894209, 1814247.6472922824);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111010100', '26', '31110', '학성동', 1166320.7359524153, 1730348.2654910772);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111010200', '26', '31110', '학산동', 1165716.3728418855, 1730297.6895389652);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111010300', '26', '31110', '복산동', 1165884.734827259, 1731284.6806138216);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111010400', '26', '31110', '북정동', 1165060.514403107, 1730829.664894734);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111010500', '26', '31110', '옥교동', 1165343.8226616923, 1730278.594934566);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111010600', '26', '31110', '성남동', 1164871.7743713588, 1730269.3520436336);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111010700', '26', '31110', '교동', 1164679.8991576997, 1730772.7482565835);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111010800', '26', '31110', '우정동', 1164315.0398545943, 1730554.5584806076);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111010900', '26', '31110', '성안동', 1164413.519093053, 1732760.8550356473);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111011000', '26', '31110', '유곡동', 1162993.5907099468, 1731099.9114577977);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111011100', '26', '31110', '태화동', 1162294.1300253256, 1730134.035031501);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111011200', '26', '31110', '다운동', 1160419.6118480617, 1730840.445690855);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111011300', '26', '31110', '동동', 1167494.2829165792, 1732511.7240353045);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111011400', '26', '31110', '서동', 1167103.6805032662, 1732821.3198942645);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111011500', '26', '31110', '남외동', 1167056.082287946, 1731922.1010734977);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111011600', '26', '31110', '장현동', 1166881.5698362119, 1734133.8642454331);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111011700', '26', '31110', '약사동', 1166362.5374777622, 1732416.5740093125);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3111011800', '26', '31110', '반구동', 1167002.1056473735, 1730719.6707502701);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114010100', '26', '31140', '무거동', 1160114.1217519601, 1729336.879709498);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114010200', '26', '31140', '옥동', 1162394.8358515284, 1728032.2029615599);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114010300', '26', '31140', '두왕동', 1163389.27677542, 1725142.2189179999);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114010400', '26', '31140', '신정동', 1164261.8519543377, 1728535.758632068);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114010500', '26', '31140', '달동', 1165647.418149144, 1728358.203532069);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114010600', '26', '31140', '삼산동', 1166932.2281991688, 1728929.813497283);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114010700', '26', '31140', '여천동', 1167712.9846799094, 1726794.32866357);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114010800', '26', '31140', '야음동', 1166194.9606073643, 1726810.7660254247);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114010900', '26', '31140', '선암동', 1165442.86641966, 1725688.065114889);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114011000', '26', '31140', '상개동', 1164817.9918785433, 1724833.2251700119);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114011100', '26', '31140', '부곡동', 1166580.9828385282, 1724046.9833060568);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114011200', '26', '31140', '고사동', 1168137.660237, 1724120.3642673334);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114011300', '26', '31140', '성암동', 1167631.4158900627, 1722165.8403321872);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114011400', '26', '31140', '황성동', 1168663.056662286, 1720669.196478673);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114011500', '26', '31140', '용연동', 1168936.4609506032, 1721801.286205127);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114011600', '26', '31140', '남화동', 1170435.28897575, 1721333.0910155);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114011700', '26', '31140', '용잠동', 1170173.8070657586, 1723501.4271055178);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114011800', '26', '31140', '장생포동', 1169934.8204417222, 1724678.3972909714);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3114011900', '26', '31140', '매암동', 1170397.104559891, 1725156.7512018464);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3117010100', '26', '31170', '방어동', 1174079.3469214088, 1722674.3945619802);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3117010200', '26', '31170', '화정동', 1174378.2784517726, 1724117.8723457952);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3117010300', '26', '31170', '일산동', 1174866.654883212, 1724421.9652322708);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3117010400', '26', '31170', '전하동', 1174722.3738742252, 1725680.8351139422);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3117010500', '26', '31170', '미포동', 1176093.4765065, 1728624.6015929999);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3117010600', '26', '31170', '주전동', 1177268.7436239754, 1730913.5084608432);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3117010700', '26', '31170', '동부동', 1174749.3776975512, 1729228.9311736277);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3117010800', '26', '31170', '서부동', 1174516.4284199758, 1728256.0808784657);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120010100', '26', '31200', '창평동', 1168570.8363453147, 1736951.903071159);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120010200', '26', '31200', '호계동', 1168167.7227738847, 1738365.1287168968);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120010300', '26', '31200', '매곡동', 1168338.8731119945, 1740094.1904493964);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120010400', '26', '31200', '가대동', 1164028.282210265, 1735948.3289508722);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120010500', '26', '31200', '신천동', 1167512.2899518071, 1739346.9988702838);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120010600', '26', '31200', '중산동', 1167011.2381399728, 1741608.1234711558);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120010700', '26', '31200', '상안동', 1166401.2293400585, 1737825.9985372762);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120010800', '26', '31200', '천곡동', 1165541.3434606534, 1740108.2957945578);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120010900', '26', '31200', '달천동', 1164268.0193801688, 1738890.2733567518);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120011000', '26', '31200', '시례동', 1166897.64665182, 1735292.64910718);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120011100', '26', '31200', '무룡동', 1174414.6525274394, 1736516.3367852436);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120011200', '26', '31200', '구유동', 1177264.4547161858, 1736571.9826302524);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120011300', '26', '31200', '정자동', 1176415.0705136529, 1737420.5694259976);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120011400', '26', '31200', '신명동', 1175827.1432470535, 1740423.1851151735);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120011500', '26', '31200', '대안동', 1173396.2949778037, 1741246.4891282255);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120011600', '26', '31200', '당사동', 1177413.3266305958, 1734170.5262265098);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120011700', '26', '31200', '신현동', 1174662.0732874537, 1735323.4024330864);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120011800', '26', '31200', '산하동', 1175504.3717623143, 1738989.7350541153);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120011900', '26', '31200', '어물동', 1176107.7984285075, 1733064.3138540685);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120012000', '26', '31200', '명촌동', 1168273.675272805, 1730398.5020525614);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120012100', '26', '31200', '진장동', 1168376.099946774, 1731355.876718255);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120012200', '26', '31200', '연암동', 1169245.0741140295, 1733441.6137467409);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120012300', '26', '31200', '효문동', 1169576.7789772179, 1731547.7615533243);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120012400', '26', '31200', '양정동', 1171006.2371976962, 1729206.0095068836);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120012500', '26', '31200', '화봉동', 1169025.4826129982, 1734319.733490899);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120012600', '26', '31200', '송정동', 1168597.4102032671, 1735555.5843455053);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3120012700', '26', '31200', '염포동', 1171839.8636806388, 1727750.3976914687);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171025000', '26', '31710', '온산읍', 1164851.4332018353, 1716510.3864444927);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171025300', '26', '31710', '언양읍', 1148173.0653310684, 1731988.3409127963);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171025600', '26', '31710', '온양읍', 1161226.7835119923, 1715356.5519302574);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171025900', '26', '31710', '범서읍', 1158323.683051841, 1733517.522973596);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171026200', '26', '31710', '청량읍', 1162104.9150879967, 1723504.3748954942);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171026500', '26', '31710', '삼남읍', 1145702.7761448296, 1727982.0414734932);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171031000', '26', '31710', '서생면', 1165619.5214112676, 1709105.372864968);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171034000', '26', '31710', '웅촌면', 1153534.1388602592, 1719625.2701451147);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171036000', '26', '31710', '두동면', 1154982.8105428999, 1742169.8995829702);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171037000', '26', '31710', '두서면', 1149650.7587932884, 1742021.0144100667);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171038000', '26', '31710', '상북면', 1142833.034692776, 1734804.5072984784);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3171040000', '26', '31710', '삼동면', 1149800.407171454, 1724820.6593873964);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611010100', '29', '36110', '반곡동', 982946.3365922321, 1833018.6325434293);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611010200', '29', '36110', '소담동', 982185.9184866742, 1832012.672491);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611010300', '29', '36110', '보람동', 981089.9839835938, 1831208.8836864838);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611010400', '29', '36110', '대평동', 980026.3577401957, 1830478.4165472172);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611010500', '29', '36110', '가람동', 977149.3329032857, 1830097.4442348573);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611010600', '29', '36110', '한솔동', 977792.1514003271, 1831291.3318230887);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611010700', '29', '36110', '나성동', 978488.3770403917, 1832209.8316955946);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611010800', '29', '36110', '새롬동', 977743.3289766822, 1832020.264879863);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611010900', '29', '36110', '다정동', 977070.6846638788, 1833151.8021954247);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611011000', '29', '36110', '어진동', 978680.8292954458, 1833837.74546403);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611011100', '29', '36110', '종촌동', 977424.791026949, 1834006.9848859997);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611011200', '29', '36110', '고운동', 976159.8363337658, 1834877.6847606539);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611011300', '29', '36110', '아름동', 977563.5327868236, 1835494.767107331);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611011400', '29', '36110', '도담동', 978583.5345826623, 1835139.412127919);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611011500', '29', '36110', '산울동', 978129.608157125, 1837419.3068873754);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611011600', '29', '36110', '해밀동', 979329.5393047499, 1836597.1883475836);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611011700', '29', '36110', '합강동', 985512.8640331249, 1835893.108292125);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611011800', '29', '36110', '집현동', 984396.6399918064, 1832835.4771822258);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611025000', '29', '36110', '조치원읍', 981622.821846923, 1844976.0997321224);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611031000', '29', '36110', '연기면', 979032.2528532632, 1838587.4798788074);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611032000', '29', '36110', '연동면', 984848.7108880145, 1839568.1426511684);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611033000', '29', '36110', '부강면', 988767.9192662013, 1836419.1794529832);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611034000', '29', '36110', '금남면', 981289.7386507926, 1828627.546346261);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611035000', '29', '36110', '장군면', 973918.5918437827, 1833783.9706506755);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611036000', '29', '36110', '연서면', 978453.2015746231, 1842278.5003269357);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611037000', '29', '36110', '전의면', 972921.1678742206, 1852747.334357375);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611038000', '29', '36110', '전동면', 977873.0373341581, 1850736.3447887986);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('3611039000', '29', '36110', '소정면', 969932.7487422844, 1857644.3779933662);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111112900', '31', '41111', '파장동', 955276.1827100706, 1923456.1178798373);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111113000', '31', '41111', '정자동', 955681.6634281287, 1921951.8075470007);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111113100', '31', '41111', '이목동', 953970.5974868111, 1924347.8401337697);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111113200', '31', '41111', '율전동', 953014.4875492178, 1922502.9418003128);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111113300', '31', '41111', '천천동', 953714.2799747982, 1922208.5723489888);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111113400', '31', '41111', '영화동', 956717.147909345, 1921400.904296535);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111113500', '31', '41111', '송죽동', 955969.2828109799, 1922756.683902084);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111113600', '31', '41111', '조원동', 957049.962131185, 1922431.5184982265);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111113700', '31', '41111', '연무동', 958061.0228809556, 1921785.7488649192);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111113800', '31', '41111', '상광교동', 957098.2101954402, 1925727.49222059);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111113900', '31', '41111', '하광교동', 957817.4469710363, 1923865.5369820583);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111312600', '31', '41113', '세류동', 956807.9191577265, 1917537.0733025197);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111312700', '31', '41113', '평동', 955254.5602794532, 1917905.788452159);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111312800', '31', '41113', '고색동', 954164.9316195118, 1916833.9209552417);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111312900', '31', '41113', '오목천동', 952664.685169833, 1916218.453596905);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111313000', '31', '41113', '평리동', 954922.074154, 1916257.4817685997);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111313100', '31', '41113', '서둔동', 954545.0068366192, 1918978.4999800257);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111313200', '31', '41113', '구운동', 953275.1251848997, 1920110.0180819954);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111313300', '31', '41113', '탑동', 953484.3061698904, 1919246.3444081729);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111313400', '31', '41113', '금곡동', 951244.5147374267, 1919492.9921621683);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111313500', '31', '41113', '호매실동', 951462.0511643454, 1918668.5623718048);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111313600', '31', '41113', '곡반정동', 958280.5683304119, 1915656.2373432987);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111313700', '31', '41113', '권선동', 957968.0517786572, 1917687.4754302362);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111313800', '31', '41113', '장지동', 956814.4186220968, 1916504.8324960324);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111313900', '31', '41113', '대황교동', 957366.2837798287, 1915139.7851619138);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111314000', '31', '41113', '입북동', 952019.7452674088, 1921637.9677405811);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111314100', '31', '41113', '당수동', 950364.8300155407, 1921347.4101882277);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111512000', '31', '41115', '팔달로1가', 957170.0672479358, 1920256.234381787);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111512100', '31', '41115', '팔달로2가', 957178.5056836572, 1920060.620155171);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111512200', '31', '41115', '팔달로3가', 957095.4004367987, 1919812.0781044976);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111512300', '31', '41115', '남창동', 956953.1337664308, 1920151.5175871847);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111512400', '31', '41115', '영동', 957291.5494576606, 1919803.7116616496);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111512500', '31', '41115', '중동', 957140.5224629575, 1919538.5378852952);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111512600', '31', '41115', '구천동', 957257.1493594501, 1919524.6302236211);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111512700', '31', '41115', '남수동', 957511.4998152802, 1920486.5039016583);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111512800', '31', '41115', '매향동', 957583.4851455808, 1920807.6689345024);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111512900', '31', '41115', '북수동', 957135.4479476286, 1920890.640998788);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111513000', '31', '41115', '신풍동', 956799.3350973973, 1920705.8272304079);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111513100', '31', '41115', '장안동', 956793.950500692, 1920906.6321267968);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111513200', '31', '41115', '교동', 956881.1253809512, 1919370.4680445984);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111513300', '31', '41115', '매교동', 957035.276406652, 1918975.4047291637);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111513400', '31', '41115', '매산로1가', 955812.3597756248, 1918879.4950041475);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111513500', '31', '41115', '매산로2가', 956136.8081258213, 1918898.050260823);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111513600', '31', '41115', '매산로3가', 956421.99192409, 1918943.3875879266);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111513700', '31', '41115', '고등동', 956136.1587261866, 1919527.8784022473);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111513800', '31', '41115', '화서동', 955581.9399434201, 1920365.268671564);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111513900', '31', '41115', '지동', 957862.0406880517, 1920284.6347655985);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111514000', '31', '41115', '우만동', 958523.5554188248, 1920747.649335492);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111514100', '31', '41115', '인계동', 958098.8617505087, 1918999.9602503597);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111710100', '31', '41117', '매탄동', 959878.6740904504, 1918680.4931955142);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111710200', '31', '41117', '원천동', 960545.5015718162, 1919195.1625832838);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111710300', '31', '41117', '이의동', 959968.3136292507, 1922239.4721025487);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111710400', '31', '41117', '하동', 961865.4158615542, 1921495.7178298149);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111710500', '31', '41117', '영통동', 962252.3888040124, 1917216.4391781248);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111710600', '31', '41117', '신동', 959963.0052591708, 1916731.6815142024);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4111710700', '31', '41117', '망포동', 960614.2720954152, 1915949.0489663132);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113110100', '31', '41131', '신흥동', 968424.022783967, 1938126.1292864806);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113110200', '31', '41131', '태평동', 967631.0398349095, 1938634.9370415483);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113110300', '31', '41131', '수진동', 967572.0867385704, 1937705.9774569154);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113110400', '31', '41131', '단대동', 969739.8281439428, 1939497.4628614713);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113110500', '31', '41131', '산성동', 969266.539381907, 1939572.2685005346);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113110600', '31', '41131', '양지동', 970232.7927924762, 1940031.2733861739);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113110700', '31', '41131', '복정동', 967308.6624384751, 1940182.8167597693);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113110800', '31', '41131', '창곡동', 968466.7321966938, 1940912.3022553292);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113110900', '31', '41131', '신촌동', 965055.985641244, 1940061.6130800126);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113111000', '31', '41131', '오야동', 964988.1949955097, 1939547.6465002708);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113111100', '31', '41131', '심곡동', 964657.5959263248, 1939020.298946907);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113111200', '31', '41131', '고등동', 964527.222384667, 1936794.8098974305);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113111300', '31', '41131', '상적동', 962347.2898142295, 1936834.7806289755);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113111400', '31', '41131', '둔전동', 965781.107517, 1936605.980449);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113111500', '31', '41131', '시흥동', 964939.8178426276, 1935840.9347305712);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113111600', '31', '41131', '금토동', 963389.5350001613, 1934613.4544714068);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113111700', '31', '41131', '사송동', 965760.723769559, 1935266.2242832582);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113310100', '31', '41133', '성남동', 967819.5270562955, 1937174.7847509917);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113310300', '31', '41133', '금광동', 970160.4269399728, 1938789.5937379976);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113310400', '31', '41133', '은행동', 970590.9011440454, 1939692.0759560321);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113310500', '31', '41133', '상대원동', 970050.6422679431, 1937643.7577538434);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113310600', '31', '41133', '여수동', 967287.9441754426, 1935599.9867851082);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113310700', '31', '41133', '도촌동', 969169.7022394004, 1935251.316139102);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113310800', '31', '41133', '갈현동', 970871.5734993451, 1935970.1941193102);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113310900', '31', '41133', '하대원동', 968670.4905967355, 1936721.8778695378);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113313200', '31', '41133', '중앙동', 969286.8322773332, 1938074.9274586686);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113510100', '31', '41135', '분당동', 968405.783385972, 1930120.594066254);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113510200', '31', '41135', '수내동', 966829.0842716591, 1929933.4661813874);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113510300', '31', '41135', '정자동', 965967.5851493236, 1929682.7203942048);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113510400', '31', '41135', '율동', 969139.4400552745, 1931734.4067087953);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113510500', '31', '41135', '서현동', 967579.9312119379, 1931460.824679322);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113510600', '31', '41135', '이매동', 967337.1911189939, 1933120.940328655);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113510700', '31', '41135', '야탑동', 967815.6827330617, 1934632.832119466);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113510800', '31', '41135', '판교동', 964270.8953113089, 1932905.0281180395);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113510900', '31', '41135', '삼평동', 965368.9933492242, 1933678.2493207469);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113511000', '31', '41135', '백현동', 965351.0099269014, 1931807.9552233461);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113511100', '31', '41135', '금곡동', 964627.5539633885, 1928920.5723788235);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113511200', '31', '41135', '궁내동', 964506.4117708708, 1930244.181680003);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113511300', '31', '41135', '동원동', 963843.8648296789, 1927950.1500544609);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113511400', '31', '41135', '구미동', 965975.8326711089, 1927248.7355198222);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113511500', '31', '41135', '운중동', 962370.718880125, 1932583.4522912274);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113511600', '31', '41135', '대장동', 961601.7602503044, 1929913.4236169816);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113511700', '31', '41135', '석운동', 959783.8657353846, 1930557.0296095468);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4113511800', '31', '41135', '하산운동', 962588.9909049231, 1931167.5101051924);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115010100', '31', '41150', '의정부동', 960002.7400050228, 1971266.2164378716);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115010200', '31', '41150', '호원동', 959864.4963903324, 1968587.8562689251);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115010300', '31', '41150', '장암동', 960944.5389692592, 1967574.281485498);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115010400', '31', '41150', '신곡동', 961380.4381888978, 1970973.7483123145);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115010500', '31', '41150', '용현동', 963280.1851348011, 1970611.5940532126);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115010600', '31', '41150', '민락동', 964351.4932348519, 1971503.2701384097);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115010700', '31', '41150', '낙양동', 965247.9806660159, 1972883.2342898773);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115010800', '31', '41150', '자일동', 964877.1330617706, 1974221.475266044);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115010900', '31', '41150', '금오동', 961401.0525261109, 1972625.8630566504);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115011000', '31', '41150', '가능동', 959101.6365036186, 1972127.4529872278);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115011100', '31', '41150', '녹양동', 959041.0378042277, 1973422.0303937704);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115011200', '31', '41150', '고산동', 965037.7791064704, 1969860.153394426);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4115011300', '31', '41150', '산곡동', 965055.7167535903, 1968477.8991260142);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4117110100', '31', '41171', '안양동', 948832.3511994834, 1932972.257543546);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4117110200', '31', '41171', '석수동', 947537.3705312635, 1935207.1880284795);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4117110300', '31', '41171', '박달동', 947386.5660042771, 1934074.4977009818);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4117310100', '31', '41173', '비산동', 951125.012921596, 1934016.2896812414);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4117310200', '31', '41173', '관양동', 952720.5812584203, 1933908.4585636936);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4117310300', '31', '41173', '평촌동', 952856.3483751875, 1932118.3615709695);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4117310400', '31', '41173', '호계동', 951789.5733936527, 1931071.7641631798);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119010100', '31', '41190', '원미동', 937236.0899481989, 1944042.4060723817);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119010200', '31', '41190', '심곡동', 936395.82190802, 1943573.7727673752);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119010300', '31', '41190', '춘의동', 936986.7138151292, 1945086.5160592005);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119010400', '31', '41190', '도당동', 936761.9443070639, 1946181.3591396788);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119010500', '31', '41190', '약대동', 935514.0946491148, 1946218.5216481911);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119010600', '31', '41190', '소사동', 937592.7798290048, 1943055.7803852276);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119010700', '31', '41190', '역곡동', 938989.8767949619, 1943402.5070884086);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119010800', '31', '41190', '중동', 935458.7526465608, 1944430.3731838684);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119010900', '31', '41190', '상동', 934217.2857599683, 1944327.2118938933);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119011000', '31', '41190', '소사본동', 937721.6574371244, 1942000.7851594202);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119011100', '31', '41190', '심곡본동', 936319.0133634087, 1942583.032127877);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119011200', '31', '41190', '범박동', 939200.2722341528, 1941590.8767722945);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119011300', '31', '41190', '괴안동', 939163.3338909269, 1942724.8750667046);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119011400', '31', '41190', '송내동', 934891.0611785948, 1942881.364967359);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119011500', '31', '41190', '옥길동', 940065.695448343, 1941306.789117783);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119011600', '31', '41190', '계수동', 938665.878081375, 1940637.5923672498);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119011700', '31', '41190', '오정동', 936997.7589672715, 1947752.6492843502);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119011800', '31', '41190', '여월동', 938075.8921519547, 1946662.8915499945);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119011900', '31', '41190', '작동', 939284.4939685983, 1946301.084306727);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119012000', '31', '41190', '원종동', 938627.8026789777, 1947427.6010359125);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119012100', '31', '41190', '고강동', 939781.0637386634, 1947730.1263368386);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119012200', '31', '41190', '대장동', 936503.3891435595, 1949507.851370833);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119012300', '31', '41190', '삼정동', 935467.0100487738, 1947067.2109612387);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4119012400', '31', '41190', '내동', 936378.303797346, 1947051.6908134418);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4121010100', '31', '41210', '광명동', 942981.9708610133, 1942294.5663388062);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4121010200', '31', '41210', '철산동', 943820.0573672657, 1942511.6606695578);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4121010300', '31', '41210', '하안동', 944417.95393304, 1940147.0706702915);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4121010400', '31', '41210', '소하동', 945273.9929029151, 1938165.775325269);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4121010500', '31', '41210', '노온사동', 942241.735727446, 1938072.9623186213);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4121010600', '31', '41210', '일직동', 945605.705052335, 1935788.8045473935);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4121010700', '31', '41210', '가학동', 943153.5304332552, 1935245.1971152297);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4121010800', '31', '41210', '옥길동', 941289.8224728479, 1941101.387658184);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122010100', '31', '41220', '서정동', 960409.3342998875, 1896652.5677142837);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122010200', '31', '41220', '장당동', 961066.0723446546, 1894463.7133994903);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122010300', '31', '41220', '모곡동', 962215.141887495, 1892910.6081803427);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122010400', '31', '41220', '칠괴동', 963262.0466508368, 1892279.472101808);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122010500', '31', '41220', '칠원동', 964987.294256722, 1892216.1870502601);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122010600', '31', '41220', '도일동', 965151.5846663667, 1895032.6615490709);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122010700', '31', '41220', '가재동', 962939.382658956, 1894019.559814598);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122010800', '31', '41220', '장안동', 962928.4704097693, 1895669.2413017554);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122010900', '31', '41220', '이충동', 961282.892885526, 1895403.0692739226);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122011000', '31', '41220', '지산동', 961444.6617262481, 1897846.274531753);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122011100', '31', '41220', '독곡동', 961380.4764566977, 1898705.3587564765);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122011200', '31', '41220', '신장동', 960154.157594101, 1898041.5240181568);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122011300', '31', '41220', '평택동', 963095.3493534176, 1888188.5574601607);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122011400', '31', '41220', '통복동', 962894.6590272216, 1888679.0122119212);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122011500', '31', '41220', '군문동', 963153.4721440587, 1887537.334977085);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122011600', '31', '41220', '유천동', 965452.3743278136, 1886342.4804493706);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122011700', '31', '41220', '합정동', 964547.2875818938, 1888014.7681139268);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122011800', '31', '41220', '비전동', 964498.9783171037, 1888841.4069993102);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122011900', '31', '41220', '동삭동', 964041.7117510282, 1890350.1638457426);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122012000', '31', '41220', '세교동', 962462.751331826, 1889760.22576132);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122012100', '31', '41220', '지제동', 961070.5859618788, 1891211.9185582993);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122012200', '31', '41220', '신대동', 961322.8980201123, 1889148.9912452253);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122012300', '31', '41220', '소사동', 966803.9120882825, 1887585.8941879373);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122012400', '31', '41220', '용이동', 967792.933635336, 1888910.0925468195);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122012500', '31', '41220', '월곡동', 967614.7545454804, 1891795.2171580927);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122012600', '31', '41220', '청룡동', 966669.08236326, 1891924.4362751257);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122012700', '31', '41220', '죽백동', 966668.92808386, 1890259.3892625682);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122012800', '31', '41220', '고덕동', 959784.7186741313, 1894168.7332160342);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122025000', '31', '41220', '팽성읍', 959726.4640398119, 1884711.2666841818);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122025300', '31', '41220', '안중읍', 949499.0854969237, 1888031.2517016854);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122025600', '31', '41220', '포승읍', 943310.2392978063, 1887690.737037812);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122025900', '31', '41220', '청북읍', 950171.5314562178, 1894233.877077712);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122031000', '31', '41220', '진위면', 963034.3211575266, 1900879.7685839008);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122032000', '31', '41220', '서탄면', 957951.3974777169, 1901456.5675415243);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122033000', '31', '41220', '고덕면', 957980.6092163953, 1893621.0345629493);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122034000', '31', '41220', '오성면', 954317.2524973496, 1889748.6035934722);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4122037000', '31', '41220', '현덕면', 948912.7640617794, 1883419.8716504462);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125010100', '31', '41250', '송내동', 961285.8448504631, 1986868.933492747);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125010200', '31', '41250', '지행동', 961086.8308488321, 1988108.488207272);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125010300', '31', '41250', '생연동', 961034.1987669442, 1989628.6504048477);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125010400', '31', '41250', '광암동', 963799.8681276396, 1988644.890705168);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125010500', '31', '41250', '걸산동', 964999.8565937093, 1991704.6741269096);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125010600', '31', '41250', '보산동', 961208.476065301, 1990843.7451254705);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125010700', '31', '41250', '동두천동', 961070.3024161148, 1992486.6683107011);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125010800', '31', '41250', '안흥동', 959276.7905379959, 1992307.0420490317);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125010900', '31', '41250', '상봉암동', 961214.1201209972, 1994365.85942075);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125011000', '31', '41250', '하봉암동', 961595.9222955006, 1995794.2763398804);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125011100', '31', '41250', '탑동동', 965549.4179672813, 1987625.0574929314);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4125011200', '31', '41250', '상패동', 959534.6534670674, 1989988.1645016423);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127110100', '31', '41271', '일동', 943892.5589236614, 1923886.935503076);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127110200', '31', '41271', '이동', 942788.1071349871, 1923589.4705679563);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127110300', '31', '41271', '사동', 942260.5365154283, 1921845.389127757);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127110400', '31', '41271', '본오동', 943877.2560962323, 1921647.3090426615);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127110500', '31', '41271', '팔곡이동', 945479.0455439741, 1921875.8443544703);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127110600', '31', '41271', '양상동', 942346.8212453205, 1927911.4376122584);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127110700', '31', '41271', '부곡동', 943536.3950664419, 1926129.1208604341);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127110800', '31', '41271', '성포동', 942143.8708958068, 1925117.3679160806);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127110900', '31', '41271', '월피동', 942274.009549308, 1926341.080735684);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127111000', '31', '41271', '팔곡일동', 946181.8596152089, 1923186.727492607);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127111100', '31', '41271', '건건동', 947202.2939526944, 1923384.8724292344);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127111200', '31', '41271', '사사동', 948840.6088318084, 1922346.5686317757);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127111300', '31', '41271', '수암동', 944978.5937473297, 1929622.168307389);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127111400', '31', '41271', '장상동', 944584.5790465894, 1928721.0062577485);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127111500', '31', '41271', '장하동', 943656.4114851144, 1928675.0375869086);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127310100', '31', '41273', '고잔동', 940731.8348018578, 1924856.8820035348);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127310200', '31', '41273', '와동', 940113.6296197405, 1926918.652093265);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127310300', '31', '41273', '신길동', 935229.0771328753, 1926314.3637469287);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127310400', '31', '41273', '성곡동', 932968.9800575458, 1924128.0059170085);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127310500', '31', '41273', '원시동', 936845.1799375188, 1923441.325104239);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127310600', '31', '41273', '목내동', 935597.4190257633, 1923123.3619154822);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127310700', '31', '41273', '초지동', 939077.5701680025, 1923805.3803112998);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127310800', '31', '41273', '원곡동', 937460.6182713701, 1925960.454418857);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127310900', '31', '41273', '선부동', 938720.572796297, 1927367.4572817872);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127311000', '31', '41273', '대부동동', 920420.9043005474, 1916403.8602814951);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127311100', '31', '41273', '대부북동', 917758.7821911335, 1918312.3959847705);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127311200', '31', '41273', '대부남동', 918312.4633343698, 1913806.523086625);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127311300', '31', '41273', '선감동', 923274.2337151921, 1913757.0267627798);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127311400', '31', '41273', '풍도동', 903352.600325061, 1901484.174097661);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4127311500', '31', '41273', '화정동', 940314.8486735603, 1928861.112768168);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128110100', '31', '41281', '주교동', 941037.1625713909, 1962418.6221071433);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128110200', '31', '41281', '원당동', 942932.9772532126, 1964440.6957690094);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128110300', '31', '41281', '신원동', 945540.4036064718, 1963624.9479506607);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128110400', '31', '41281', '원흥동', 944589.617026866, 1960966.7024821101);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128110500', '31', '41281', '도내동', 943835.8698331427, 1958520.6783197564);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128110600', '31', '41281', '성사동', 942149.9801633733, 1961620.2117234387);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128110700', '31', '41281', '북한동', 952992.2595102174, 1961336.8495403917);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128110800', '31', '41281', '효자동', 951741.9151691046, 1963032.0221516415);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128110900', '31', '41281', '지축동', 948846.3018515389, 1961959.8050580919);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128111000', '31', '41281', '오금동', 947332.1161026125, 1963236.2771186235);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128111100', '31', '41281', '삼송동', 946193.0140726697, 1961591.3927224388);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128111200', '31', '41281', '동산동', 946593.3665551943, 1960660.4655199219);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128111300', '31', '41281', '용두동', 945906.9750105534, 1958529.9611408457);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128111400', '31', '41281', '벽제동', 947909.467598664, 1969230.2419211713);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128111500', '31', '41281', '선유동', 947794.3879179966, 1965108.2781590465);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128111600', '31', '41281', '고양동', 947144.6356106631, 1967720.8630998034);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128111700', '31', '41281', '대자동', 945940.3986214828, 1966527.0666510877);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128111800', '31', '41281', '관산동', 943719.3736046338, 1967155.6130493248);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128111900', '31', '41281', '내유동', 942782.3383818859, 1969423.6320693265);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128112000', '31', '41281', '토당동', 939963.6303361771, 1958430.6526582052);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128112100', '31', '41281', '내곡동', 938870.7072076623, 1960345.4729201999);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128112200', '31', '41281', '대장동', 939547.076401757, 1959980.614379859);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128112300', '31', '41281', '화정동', 941192.4079098406, 1960047.2045067123);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128112400', '31', '41281', '강매동', 942099.0947288114, 1956418.075001984);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128112500', '31', '41281', '행주내동', 940361.7037546197, 1956337.2580787647);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128112600', '31', '41281', '행주외동', 939731.7760559401, 1956262.853359083);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128112700', '31', '41281', '신평동', 937170.5269064821, 1958607.606599073);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128112800', '31', '41281', '행신동', 941656.0907747234, 1958141.1683755221);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128112900', '31', '41281', '화전동', 944493.6011697258, 1956353.021818963);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128113000', '31', '41281', '현천동', 943834.9559550645, 1954985.8371993343);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128113100', '31', '41281', '덕은동', 945000.979554023, 1954975.4394993316);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128113200', '31', '41281', '향동동', 946360.6289851471, 1955921.7813391);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128510100', '31', '41285', '식사동', 939392.7189937208, 1964509.9162804524);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128510200', '31', '41285', '중산동', 937063.2272846893, 1965159.75569707);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128510300', '31', '41285', '정발산동', 936344.6906572864, 1963661.1991304036);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128510400', '31', '41285', '장항동', 935256.9195383552, 1960872.5380349462);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128510500', '31', '41285', '마두동', 936952.752254003, 1962603.2351694393);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128510600', '31', '41285', '백석동', 937025.3019802321, 1960788.2731087885);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128510700', '31', '41285', '풍동', 938112.5053382186, 1963292.2816454226);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128510800', '31', '41285', '산황동', 938780.9741879153, 1961505.7068582354);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128510900', '31', '41285', '사리현동', 942017.1926893328, 1966809.2428566588);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128511000', '31', '41285', '지영동', 940874.482381703, 1968697.0666021737);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128511100', '31', '41285', '설문동', 938909.4354600918, 1969153.1325292704);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128511200', '31', '41285', '문봉동', 940245.4285931588, 1967188.5443530697);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128511300', '31', '41285', '성석동', 938017.9901595644, 1967483.8999473543);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128710100', '31', '41287', '일산동', 935793.5956485897, 1965390.420236618);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128710200', '31', '41287', '주엽동', 934881.4999214194, 1963755.6980185101);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128710300', '31', '41287', '탄현동', 935628.2311655531, 1966365.7528112344);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128710400', '31', '41287', '대화동', 933691.4199246232, 1964310.869505129);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128710500', '31', '41287', '덕이동', 933282.6532923912, 1966517.7324021887);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128710600', '31', '41287', '가좌동', 931268.7163305973, 1966261.3321655102);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128710700', '31', '41287', '구산동', 929424.4558541017, 1965599.6988342358);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4128710800', '31', '41287', '법곳동', 930990.5893421919, 1963400.219356414);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4129010100', '31', '41290', '관문동', 955129.6443070385, 1938038.230744231);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4129010200', '31', '41290', '문원동', 956213.4648012624, 1936098.1407286054);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4129010300', '31', '41290', '갈현동', 954222.577180168, 1935217.1019644514);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4129010400', '31', '41290', '막계동', 956360.6682333997, 1937425.210749914);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4129010500', '31', '41290', '과천동', 955906.1769402039, 1939107.3272438722);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4129010600', '31', '41290', '주암동', 958346.5291057416, 1939774.9928403536);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4129010700', '31', '41290', '중앙동', 954824.3943992108, 1937081.1438237925);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4129010800', '31', '41290', '원문동', 955025.8116475554, 1936027.0384672221);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4129010900', '31', '41290', '별양동', 955420.2394367544, 1936407.2965385902);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4129011000', '31', '41290', '부림동', 955541.3850657595, 1937785.9853788149);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4131010100', '31', '41310', '갈매동', 966210.5898043803, 1959639.4023541145);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4131010200', '31', '41310', '사노동', 968144.6157172649, 1959624.3251948946);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4131010300', '31', '41310', '인창동', 967794.1579197188, 1956592.1420991716);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4131010400', '31', '41310', '교문동', 967205.1238858032, 1955302.1836000402);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4131010500', '31', '41310', '수택동', 968568.9837173538, 1955243.9362794275);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4131010600', '31', '41310', '아천동', 966204.8115459314, 1952663.2234402667);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4131010700', '31', '41310', '토평동', 969024.6782197165, 1954111.987590752);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136010100', '31', '41360', '호평동', 977649.3918230326, 1962136.932686176);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136010200', '31', '41360', '평내동', 976748.627868307, 1960805.547359334);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136010300', '31', '41360', '금곡동', 974212.6340818767, 1959338.8661875413);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136010400', '31', '41360', '일패동', 972142.7327553697, 1958027.9127482558);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136010500', '31', '41360', '이패동', 972991.689814373, 1956487.216131002);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136010600', '31', '41360', '삼패동', 973301.2500964495, 1955376.9464487787);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136010800', '31', '41360', '수석동', 971253.6505640786, 1954732.2346772458);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136010900', '31', '41360', '지금동', 970644.8294974443, 1955928.6630856667);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136011000', '31', '41360', '도농동', 969368.4648211874, 1955837.3144840621);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136011100', '31', '41360', '별내동', 966177.7346848446, 1962323.8739697803);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136011200', '31', '41360', '다산동', 970009.5916946067, 1956810.0274142951);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136025000', '31', '41360', '와부읍', 976366.8924439786, 1954731.6084980646);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136025300', '31', '41360', '진접읍', 972780.3348238396, 1969148.989717482);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136025600', '31', '41360', '화도읍', 983435.5562294781, 1961762.423243388);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136025900', '31', '41360', '진건읍', 971628.1208958025, 1961843.1084862787);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136026200', '31', '41360', '오남읍', 974274.3331907172, 1966243.730897929);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136026500', '31', '41360', '퇴계원읍', 968573.4097775244, 1961429.8319909135);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136031000', '31', '41360', '별내면', 966867.4231420449, 1967566.132336526);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136034000', '31', '41360', '수동면', 983769.6821713012, 1968407.547414838);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4136036000', '31', '41360', '조안면', 982995.3917559277, 1951739.3442885536);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137010100', '31', '41370', '오산동', 961798.2246269326, 1905921.1014273125);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137010200', '31', '41370', '부산동', 963400.7026156122, 1906108.0275837374);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137010300', '31', '41370', '원동', 962261.0856634123, 1905018.4564361805);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137010400', '31', '41370', '궐동', 960955.7890315945, 1906752.82289417);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137010500', '31', '41370', '청학동', 960954.3067095253, 1906101.5065686498);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137010600', '31', '41370', '가장동', 958866.17172246, 1906925.1100933694);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137010700', '31', '41370', '금암동', 960020.6096622045, 1908363.6431649998);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137010800', '31', '41370', '수청동', 961193.9655199202, 1907689.641241602);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137010900', '31', '41370', '은계동', 962022.6050577003, 1906974.2264003393);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137011000', '31', '41370', '내삼미동', 960954.3320493429, 1908872.3190219924);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137011100', '31', '41370', '외삼미동', 960611.0409778311, 1910528.6597276956);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137011200', '31', '41370', '양산동', 957959.424564828, 1910701.7104473854);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137011300', '31', '41370', '세교동', 958942.1127617093, 1909887.9465104076);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137011400', '31', '41370', '지곶동', 957875.6939537977, 1908820.9308614444);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137011500', '31', '41370', '서랑동', 956273.5020630507, 1908541.8182320846);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137011600', '31', '41370', '서동', 958866.4323064274, 1905886.8115046595);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137011700', '31', '41370', '벌음동', 958855.5816438968, 1904739.993376649);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137011800', '31', '41370', '두곡동', 959537.6578647848, 1903606.1607616767);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137011900', '31', '41370', '탑동', 959930.6772594168, 1904268.4761557498);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137012000', '31', '41370', '누읍동', 960358.6518727073, 1904664.1154821774);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137012100', '31', '41370', '가수동', 960570.367138485, 1905481.354925424);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137012200', '31', '41370', '고현동', 963082.959900087, 1903961.3482396626);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137012300', '31', '41370', '청호동', 963170.8384227621, 1903614.1190875715);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4137012400', '31', '41370', '갈곶동', 961870.2983920684, 1903657.2595076489);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139010100', '31', '41390', '대야동', 937093.2625059644, 1939138.0379332928);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139010200', '31', '41390', '신천동', 936555.5695457178, 1937932.0586274161);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139010300', '31', '41390', '방산동', 935354.8533735725, 1935724.579195894);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139010400', '31', '41390', '포동', 936004.2838717649, 1934281.7365863111);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139010500', '31', '41390', '미산동', 937233.3822524362, 1935849.4116990769);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139010600', '31', '41390', '은행동', 937811.9921935471, 1937518.0324368752);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139010700', '31', '41390', '안현동', 939170.3541751552, 1936839.9912458);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139010800', '31', '41390', '매화동', 939280.5649384772, 1935474.224037464);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139010900', '31', '41390', '도창동', 939909.750626174, 1934435.2381830257);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139011000', '31', '41390', '금이동', 941219.2068294451, 1933277.4934742928);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139011200', '31', '41390', '과림동', 941002.1027788367, 1938300.3886749954);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139011300', '31', '41390', '계수동', 939278.4042675759, 1939251.4419312056);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139011700', '31', '41390', '화정동', 939425.1541779186, 1929323.3361885305);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139011800', '31', '41390', '능곡동', 939123.6083256719, 1930261.7932249045);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139011900', '31', '41390', '하중동', 938234.2706661249, 1933262.6064804692);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139012000', '31', '41390', '하상동', 939240.7950168692, 1932735.0640582717);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139012100', '31', '41390', '광석동', 939493.0659784361, 1931891.1091316054);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139012200', '31', '41390', '물왕동', 941070.6494334113, 1932009.7245804952);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139012300', '31', '41390', '산현동', 941273.5041970002, 1930747.8611338043);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139012400', '31', '41390', '조남동', 943553.0845536223, 1931032.667024091);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139012500', '31', '41390', '논곡동', 943069.6091492983, 1933037.9551730966);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139012600', '31', '41390', '목감동', 944058.7000241802, 1932455.5523241907);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139012700', '31', '41390', '거모동', 936247.416030744, 1928015.3070397177);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139012800', '31', '41390', '군자동', 937623.6848207745, 1929425.0593624641);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139012900', '31', '41390', '장현동', 938006.2039607612, 1931271.0714284738);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139013000', '31', '41390', '장곡동', 936607.2864737281, 1931465.1176735272);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139013100', '31', '41390', '월곶동', 933957.4728460768, 1931891.9894450195);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139013200', '31', '41390', '정왕동', 931831.0011592843, 1927158.8322562845);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139013300', '31', '41390', '죽율동', 934554.6245609273, 1928398.2591986458);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139013400', '31', '41390', '무지내동', 941605.5124187424, 1935699.7624344567);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4139013500', '31', '41390', '배곧동', 931589.4344310255, 1930857.6760999253);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4141010100', '31', '41410', '당동', 950765.3642722125, 1928255.756172968);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4141010200', '31', '41410', '당정동', 951754.5293860884, 1928464.0748584329);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4141010300', '31', '41410', '부곡동', 950207.2968624526, 1925555.6384173867);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4141010400', '31', '41410', '산본동', 950087.2058809942, 1930273.272249331);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4141010500', '31', '41410', '금정동', 950685.5816185799, 1929562.7487334667);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4141010600', '31', '41410', '둔대동', 946566.5437433514, 1925414.3011343295);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4141010700', '31', '41410', '속달동', 947051.5291987234, 1927008.0107650543);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4141010800', '31', '41410', '대야미동', 948395.2968552895, 1925690.0542041864);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4141010900', '31', '41410', '도마교동', 948700.5500209572, 1924129.480860947);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4143010100', '31', '41430', '고천동', 953287.2865196944, 1927894.0908067594);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4143010200', '31', '41430', '이동', 951849.46397666, 1926091.2706775365);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4143010300', '31', '41430', '삼동', 951543.3804783022, 1924730.8799173355);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4143010400', '31', '41430', '왕곡동', 954379.4198538685, 1927334.264581753);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4143010500', '31', '41430', '오전동', 953469.4512447707, 1928615.3204800151);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4143010600', '31', '41430', '학의동', 956589.5457852465, 1931413.3180810814);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4143010700', '31', '41430', '내손동', 954063.1386007706, 1931802.7723790298);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4143010800', '31', '41430', '청계동', 956301.2212001309, 1933038.5524571228);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4143010900', '31', '41430', '포일동', 954764.5475662245, 1932886.343474069);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4143011000', '31', '41430', '월암동', 951888.9290906645, 1923401.2093339032);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4143011100', '31', '41430', '초평동', 950270.4712792264, 1923826.4797486842);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145010100', '31', '41450', '천현동', 974781.0787361601, 1948096.7367208083);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145010200', '31', '41450', '하산곡동', 975936.5520165637, 1946267.1983392728);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145010300', '31', '41450', '창우동', 976043.8304088855, 1948421.0854569857);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145010400', '31', '41450', '배알미동', 979504.0344046071, 1947429.491591304);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145010500', '31', '41450', '상산곡동', 976395.3275229908, 1943663.7633503838);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145010600', '31', '41450', '신장동', 974441.6161731608, 1948982.8262892675);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145010800', '31', '41450', '덕풍동', 973656.568766488, 1949199.8549603173);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145010900', '31', '41450', '망월동', 972698.140980561, 1952187.4250922643);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145011000', '31', '41450', '풍산동', 972575.165220929, 1950140.6117353346);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145011100', '31', '41450', '미사동', 973921.7540273784, 1952406.229708273);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145011200', '31', '41450', '선동', 971949.3861995555, 1952891.546924);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145011300', '31', '41450', '감북동', 969579.1872790229, 1946761.7488622526);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145011400', '31', '41450', '감일동', 968963.6261908434, 1945744.5045183254);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145011500', '31', '41450', '감이동', 970033.1713424829, 1944193.8520419376);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145011600', '31', '41450', '학암동', 969508.681243225, 1942865.4864448619);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145011700', '31', '41450', '교산동', 973910.5340942685, 1947115.2775891365);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145011800', '31', '41450', '춘궁동', 972887.8539291275, 1947145.7441976054);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145011900', '31', '41450', '하사창동', 973642.5883775464, 1945939.5101449885);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145012000', '31', '41450', '상사창동', 972965.0980248473, 1944632.2672620532);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145012100', '31', '41450', '항동', 972645.9518666555, 1945237.150398788);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145012200', '31', '41450', '초일동', 972022.5687429035, 1948719.7534810004);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145012300', '31', '41450', '초이동', 970786.4788121963, 1948679.4485022507);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4145012400', '31', '41450', '광암동', 971171.6029866845, 1947220.066232343);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146110100', '31', '41461', '김량장동', 973697.4071487063, 1915240.8896481965);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146110200', '31', '41461', '역북동', 972558.8515710834, 1915492.6740935766);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146110300', '31', '41461', '삼가동', 970465.5511808298, 1915861.4740349122);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146110400', '31', '41461', '남동', 973533.8288485287, 1913770.6887094958);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146110500', '31', '41461', '유방동', 973800.9401759589, 1917938.7808661673);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146110600', '31', '41461', '고림동', 975472.8691424677, 1916689.2241310866);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146110700', '31', '41461', '마평동', 975517.4152657667, 1914852.2899400713);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146110800', '31', '41461', '운학동', 976892.0936725063, 1912488.1554687908);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146110900', '31', '41461', '호동', 977303.9876314995, 1911245.0185546305);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146111000', '31', '41461', '해곡동', 979764.7842065181, 1909958.750056853);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146125000', '31', '41461', '포곡읍', 975288.4598085117, 1920559.7184486857);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146125300', '31', '41461', '모현읍', 975074.503791624, 1925911.3131864853);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146125600', '31', '41461', '이동읍', 973926.1223275699, 1907858.5768098866);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146125900', '31', '41461', '남사읍', 969190.1500666009, 1902937.4533813584);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146134000', '31', '41461', '원삼면', 983753.126968146, 1908194.6454525837);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146135000', '31', '41461', '백암면', 989231.615144555, 1905655.810334382);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146136000', '31', '41461', '양지면', 981281.0682460405, 1915723.2092616812);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146310100', '31', '41463', '신갈동', 964928.0938419834, 1919976.36036971);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146310200', '31', '41463', '구갈동', 966203.3372823636, 1919863.6825743618);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146310300', '31', '41463', '상갈동', 965163.4194362406, 1918719.6959376656);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146310400', '31', '41463', '하갈동', 963979.5654710083, 1917754.807626955);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146310500', '31', '41463', '보라동', 965471.3681994746, 1917418.2196383425);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146310600', '31', '41463', '지곡동', 967570.3605985017, 1916261.1202305392);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146310700', '31', '41463', '공세동', 965382.8766213963, 1915666.2777842954);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146310800', '31', '41463', '고매동', 965462.0560351764, 1914052.7402513488);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146310900', '31', '41463', '농서동', 962406.1163984819, 1914516.1523898535);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146311000', '31', '41463', '서천동', 962291.2655989948, 1915822.623483683);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146311100', '31', '41463', '영덕동', 963014.7082376928, 1919380.099114221);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146311200', '31', '41463', '언남동', 966712.7636557076, 1921704.0134392984);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146311300', '31', '41463', '마북동', 966140.9715347668, 1922593.9995090116);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146311400', '31', '41463', '청덕동', 968774.1039267405, 1921700.6387580412);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146311500', '31', '41463', '동백동', 969879.8605243046, 1920914.0574977258);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146311600', '31', '41463', '중동', 969708.4162536863, 1919040.648637097);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146311700', '31', '41463', '상하동', 968290.547244123, 1918479.6826651967);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146311800', '31', '41463', '보정동', 965156.0192920095, 1923643.9173304231);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146510100', '31', '41465', '풍덕천동', 964309.2233141531, 1925217.4663845228);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146510200', '31', '41465', '죽전동', 966209.4833204782, 1925700.5849491574);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146510300', '31', '41465', '동천동', 962841.0138757115, 1927070.9225293156);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146510400', '31', '41465', '고기동', 960447.5786407765, 1928820.1567924025);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146510500', '31', '41465', '신봉동', 961007.9769184501, 1926027.5646306789);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146510600', '31', '41465', '성복동', 961130.7311206332, 1924614.606703045);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4146510700', '31', '41465', '상현동', 962716.3951938599, 1922708.3731956067);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148010100', '31', '41480', '금촌동', 935953.9823959966, 1973785.3527868115);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148010200', '31', '41480', '아동동', 937042.6032441609, 1974059.3128171854);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148010400', '31', '41480', '야동동', 935041.6412710507, 1975454.4981903662);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148010500', '31', '41480', '검산동', 933347.4775713822, 1975935.6297442594);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148010600', '31', '41480', '맥금동', 932048.1125669344, 1975770.4740042638);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148010700', '31', '41480', '교하동', 933635.3620159249, 1972681.3403459853);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148010800', '31', '41480', '야당동', 935335.7299612474, 1968553.3397648565);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148010900', '31', '41480', '다율동', 931273.4648325278, 1970731.236667122);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148011000', '31', '41480', '오도동', 931820.1464239308, 1972313.416692049);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148011100', '31', '41480', '상지석동', 936469.7226764162, 1969897.8413796744);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148011200', '31', '41480', '산남동', 929405.0951506437, 1967037.2933023924);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148011300', '31', '41480', '동패동', 932155.8417258793, 1968152.1877306208);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148011400', '31', '41480', '당하동', 933733.2163689756, 1971595.9908457124);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148011500', '31', '41480', '문발동', 929620.1952209495, 1969307.408613961);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148011600', '31', '41480', '송촌동', 928785.4680865615, 1972325.4702975815);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148011700', '31', '41480', '목동동', 933093.3026426946, 1970020.9779690206);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148011800', '31', '41480', '하지석동', 933573.8295353833, 1973518.2845482128);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148011900', '31', '41480', '서패동', 929178.7008978641, 1968600.93772024);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148012000', '31', '41480', '신촌동', 929259.2929599653, 1970687.423238564);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148012100', '31', '41480', '연다산동', 930445.2916667699, 1971721.0457274802);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148012200', '31', '41480', '와동동', 934340.1216414296, 1970637.501102328);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148012300', '31', '41480', '금릉동', 936745.950105037, 1972815.3455873814);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148025000', '31', '41480', '문산읍', 937202.1035815265, 1985517.317749431);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148025300', '31', '41480', '파주읍', 939967.4572157825, 1981320.65116373);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148025600', '31', '41480', '법원읍', 945415.9712532866, 1984597.5221084247);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148026200', '31', '41480', '조리읍', 940056.7014212823, 1972310.4136705738);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148031000', '31', '41480', '월롱면', 937342.3792559895, 1977349.7909490743);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148032000', '31', '41480', '탄현면', 930713.7684416226, 1977880.8619842648);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148035000', '31', '41480', '광탄면', 944684.8595185707, 1975299.5889791118);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148036000', '31', '41480', '파평면', 942442.4403541762, 1991526.9844364722);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148037000', '31', '41480', '적성면', 949825.7953579283, 1996357.3318251765);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148038000', '31', '41480', '군내면', 931080.2005862003, 1991199.8245866965);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148039000', '31', '41480', '장단면', 930448.644245, 1989544.1146832001);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148040000', '31', '41480', '진동면', 937432.0621675226, 1992090.6432370767);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4148041000', '31', '41480', '진서면', NULL, NULL);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150010100', '31', '41500', '창전동', 995194.280369276, 1920431.3061003194);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150010200', '31', '41500', '관고동', 994318.7025050706, 1920272.8649580702);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150010300', '31', '41500', '중리동', 994860.3882701304, 1919849.2727296331);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150010400', '31', '41500', '증일동', 994076.5358616222, 1918164.1272806427);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150010500', '31', '41500', '율현동', 995146.6666146545, 1917793.2144488145);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150010600', '31', '41500', '진리동', 995844.271313612, 1918931.4545583273);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150010700', '31', '41500', '안흥동', 996304.1563495764, 1920015.8619839349);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150010800', '31', '41500', '갈산동', 996766.7081297899, 1920793.5352788726);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150010900', '31', '41500', '증포동', 995959.5431142087, 1921510.1669987545);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150011000', '31', '41500', '송정동', 994571.4179478565, 1922008.8030751522);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150011100', '31', '41500', '사음동', 992726.0673094859, 1921996.194162059);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150011200', '31', '41500', '단월동', 995738.7322533319, 1913834.1952358917);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150011300', '31', '41500', '대포동', 996257.8145558711, 1912655.2723856466);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150011400', '31', '41500', '고담동', 996650.6450180712, 1916124.1373929107);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150011500', '31', '41500', '장록동', 996273.3797352968, 1917378.6014267076);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150025000', '31', '41500', '장호원읍', 1009505.3093066352, 1903333.6679856721);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150025300', '31', '41500', '부발읍', 1000027.7509934038, 1919221.862288214);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150031000', '31', '41500', '신둔면', 992085.3730452419, 1923425.3816569124);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150032000', '31', '41500', '백사면', 998324.4151211488, 1925063.7452102907);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150033000', '31', '41500', '호법면', 992649.7674840792, 1913813.605915307);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150034000', '31', '41500', '마장면', 988444.5555656424, 1916683.4471186604);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150035000', '31', '41500', '대월면', 999628.4871467601, 1913330.553323222);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150036000', '31', '41500', '모가면', 997088.3212311602, 1908319.5132100736);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150037000', '31', '41500', '설성면', 1002072.604407011, 1904323.8920954394);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4150038000', '31', '41500', '율면', 1003980.9351803716, 1897543.8329235502);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155010100', '31', '41550', '봉산동', 980301.1066685616, 1889759.514215557);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155010200', '31', '41550', '숭인동', 979880.0884695534, 1890104.62144569);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155010300', '31', '41550', '영동', 979843.7318914082, 1889792.320172287);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155010400', '31', '41550', '봉남동', 980017.0252376966, 1889933.6912500316);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155010500', '31', '41550', '구포동', 979776.3062885712, 1890183.9963191205);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155010600', '31', '41550', '동본동', 979698.019416968, 1889857.5748962571);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155010700', '31', '41550', '명륜동', 979899.2750151335, 1890636.4084375077);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155010800', '31', '41550', '옥천동', 979985.7902042172, 1889445.228575116);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155010900', '31', '41550', '낙원동', 979997.3359647449, 1889555.668151667);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155011000', '31', '41550', '창전동', 979680.3259322738, 1889543.4414237018);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155011100', '31', '41550', '성남동', 979709.8116190187, 1889387.3862112996);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155011200', '31', '41550', '신흥동', 979482.7510781732, 1889393.0491718012);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155011300', '31', '41550', '인지동', 979430.610839637, 1889586.0537345286);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155011400', '31', '41550', '금산동', 979435.8702444051, 1890414.5901778773);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155011500', '31', '41550', '연지동', 979619.8961384327, 1890211.8323424596);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155011600', '31', '41550', '대천동', 979546.0481041308, 1890009.9269374472);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155011700', '31', '41550', '서인동', 979497.5128948874, 1889821.7840717817);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155011800', '31', '41550', '석정동', 978882.5477509066, 1890149.424041453);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155011900', '31', '41550', '아양동', 978980.6244576902, 1889765.018512929);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155012000', '31', '41550', '금석동', 979292.0979230462, 1892513.2363934894);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155012100', '31', '41550', '계동', 979293.3590860707, 1887686.6351004422);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155012200', '31', '41550', '옥산동', 977694.7869977207, 1889970.496712434);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155012300', '31', '41550', '사곡동', 979020.7725156923, 1893370.2628899536);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155012400', '31', '41550', '도기동', 979061.7356057359, 1889051.6839941423);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155012500', '31', '41550', '당왕동', 979288.3552277285, 1891132.0620850874);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155012600', '31', '41550', '가사동', 980984.8175793778, 1890586.288309601);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155012700', '31', '41550', '가현동', 980965.9334370825, 1889691.6181760663);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155012800', '31', '41550', '신건지동', 977809.3511905707, 1890701.8391958168);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155012900', '31', '41550', '신소현동', 978280.6822282928, 1891206.5751226807);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155013000', '31', '41550', '신모산동', 977405.0876841818, 1891355.8256797271);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155013100', '31', '41550', '현수동', 980689.0891931696, 1888898.4238985428);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155013200', '31', '41550', '발화동', 980484.1732484531, 1887537.83910334);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155013300', '31', '41550', '중리동', 980261.4740337777, 1886834.5650588532);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155025000', '31', '41550', '공도읍', 971074.0757279199, 1888982.1526963396);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155031000', '31', '41550', '보개면', 982938.4183044853, 1894178.520982529);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155032000', '31', '41550', '금광면', 984980.3702855877, 1887702.0469334899);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155033000', '31', '41550', '서운면', 978257.785479514, 1882454.030738437);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155034000', '31', '41550', '미양면', 975396.2133172682, 1885662.734300732);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155035000', '31', '41550', '대덕면', 976458.6430469381, 1892144.4399434074);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155036000', '31', '41550', '양성면', 974643.8898641779, 1897219.8185234217);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155038000', '31', '41550', '원곡면', 968592.629677534, 1894793.2555330275);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155039000', '31', '41550', '일죽면', 997480.9816908978, 1899743.0850546618);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155040000', '31', '41550', '죽산면', 993189.4011287413, 1895738.181653199);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155041000', '31', '41550', '삼죽면', 988378.2713350446, 1896840.6759324265);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4155042000', '31', '41550', '고삼면', 979447.7799404841, 1898705.1540125448);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157010100', '31', '41570', '북변동', 930104.3493841825, 1958868.3346174157);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157010200', '31', '41570', '걸포동', 930362.2490371952, 1960147.2170851761);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157010300', '31', '41570', '운양동', 928077.0751885888, 1961918.8790806609);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157010400', '31', '41570', '장기동', 926936.4912276911, 1960908.4686817902);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157010500', '31', '41570', '감정동', 928952.5837552877, 1958849.1318575512);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157010600', '31', '41570', '사우동', 931277.9999282826, 1958035.8880219094);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157010700', '31', '41570', '풍무동', 931526.6695552717, 1956619.2483401448);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157010800', '31', '41570', '마산동', 924435.0702854267, 1960157.94782755);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157010900', '31', '41570', '구래동', 922883.1002374188, 1960758.364708593);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157025000', '31', '41570', '통진읍', 920732.8772091706, 1966494.1462188622);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157025300', '31', '41570', '고촌읍', 934782.6242661764, 1956617.307437484);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157025600', '31', '41570', '양촌읍', 922902.3543245358, 1960641.4803218003);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157034000', '31', '41570', '대곶면', 918593.1139049962, 1961653.3868429714);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157035000', '31', '41570', '월곶면', 916957.5569946434, 1969493.0388781985);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4157036000', '31', '41570', '하성면', 923969.8491465513, 1969516.1753437435);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4159011600', '31', '41590', '진안동', 958853.9463963497, 1912915.0430410728);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4159011700', '31', '41590', '병점동', 959136.675637034, 1912122.4381157623);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4159011800', '31', '41590', '능동', 960536.6018703033, 1912259.1036292862);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211010100', '32', '42110', '봉의동', 1020341.6715607868, 1987295.6328178525);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211010200', '32', '42110', '요선동', 1020033.9285765844, 1987001.8826961431);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211010300', '32', '42110', '낙원동', 1019700.0871179653, 1986621.1672840288);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211010400', '32', '42110', '중앙로1가', 1020115.8006142856, 1986929.0971692281);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211010500', '32', '42110', '중앙로2가', 1019882.3880658221, 1986594.1972662986);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211010600', '32', '42110', '중앙로3가', 1019620.8069189776, 1986259.3249402554);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211010700', '32', '42110', '옥천동', 1020389.3547737428, 1987104.6249254572);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211010800', '32', '42110', '조양동', 1020246.951904737, 1986688.316824927);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211010900', '32', '42110', '죽림동', 1019882.165968512, 1986420.320921931);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211011000', '32', '42110', '운교동', 1020433.4767149999, 1986401.7848596545);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211011100', '32', '42110', '약사동', 1019768.3611128563, 1986066.0009666006);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211011200', '32', '42110', '효자동', 1020734.4746806098, 1985805.642593247);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211011300', '32', '42110', '소양로1가', 1019992.9366528657, 1988072.5048283231);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211011400', '32', '42110', '소양로2가', 1019813.3071710067, 1987507.0610306873);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211011500', '32', '42110', '소양로3가', 1019772.1377829467, 1986975.9217707769);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211011600', '32', '42110', '소양로4가', 1019413.4902058472, 1986414.9288169937);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211011700', '32', '42110', '근화동', 1019154.912857336, 1986698.8783049295);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211011800', '32', '42110', '우두동', 1020820.5677254555, 1989413.3637010043);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211011900', '32', '42110', '사농동', 1019667.8781012234, 1990706.735798246);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4211012000', '32', '42110', '후평동', 1021984.7103910733, 1986974.2805140673);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311110100', '33', '43111', '영동', 998778.0194716504, 1849141.4712196316);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311110200', '33', '43111', '북문로1가', 999036.5569989226, 1848601.3610428555);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311110300', '33', '43111', '북문로2가', 999018.2826941618, 1849053.8069463416);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311110400', '33', '43111', '북문로3가', 998953.6732207934, 1849488.2583469567);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311110500', '33', '43111', '남문로1가', 999044.7121982344, 1848019.9234363225);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311110600', '33', '43111', '남문로2가', 999027.1831169365, 1848286.1680340914);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311110700', '33', '43111', '문화동', 999342.6568749171, 1848420.2955667353);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311110800', '33', '43111', '서운동', 999381.5521785251, 1848002.147616849);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311110900', '33', '43111', '서문동', 998688.5653644132, 1848439.4519850765);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311111000', '33', '43111', '남주동', 998711.7774014652, 1848052.307314623);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311111100', '33', '43111', '석교동', 999193.0871289171, 1847682.9676566997);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311111200', '33', '43111', '수동', 999409.7374339859, 1849375.4676555907);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311111700', '33', '43111', '탑동', 999865.6976374447, 1847890.8798393274);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311111800', '33', '43111', '대성동', 999803.3351986611, 1848524.4429148908);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311111900', '33', '43111', '영운동', 1000042.4040964602, 1846773.8305926775);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311112000', '33', '43111', '금천동', 1000336.8665217619, 1847484.6443992874);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311112100', '33', '43111', '용담동', 1000364.1776618882, 1848618.0671005626);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311112200', '33', '43111', '명암동', 1001773.6248322146, 1850369.6062369286);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311112300', '33', '43111', '산성동', 1003757.5696259445, 1850804.6140070544);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311112400', '33', '43111', '용암동', 1000780.1297566064, 1846274.8759297521);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311112500', '33', '43111', '용정동', 1001531.4869264339, 1847741.0337774155);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311112600', '33', '43111', '방서동', 1000392.4929806353, 1845079.4152974265);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311112700', '33', '43111', '평촌동', 999938.809058375, 1843899.83436675);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311112800', '33', '43111', '지북동', 1000751.0421926439, 1844011.9767615926);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311112900', '33', '43111', '운동동', 1002284.6868969013, 1845407.546430825);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311113000', '33', '43111', '월오동', 1003461.8498258435, 1846646.4931643782);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311131000', '33', '43111', '낭성면', 1008948.7522804483, 1847982.986024645);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311132000', '33', '43111', '미원면', 1015348.2634147862, 1850251.5116444465);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311133000', '33', '43111', '가덕면', 1004491.5118544624, 1840021.8360508159);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311134000', '33', '43111', '남일면', 1001371.696581736, 1841815.511687186);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311135000', '33', '43111', '문의면', 1000066.7942594568, 1835172.744101708);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311210100', '33', '43112', '사직동', 997975.4132293634, 1848836.1553337148);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311210200', '33', '43112', '사창동', 996709.9909099931, 1848550.0950464047);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311210300', '33', '43112', '모충동', 998418.463708261, 1847414.8711515607);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311210400', '33', '43112', '산남동', 997246.213239209, 1845883.4873918965);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311210500', '33', '43112', '미평동', 997647.4703892285, 1844963.0163517292);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311210600', '33', '43112', '분평동', 998593.8209925254, 1845761.175043549);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311210700', '33', '43112', '수곡동', 998624.1454493616, 1846617.4462951745);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311210800', '33', '43112', '성화동', 995663.8061169029, 1846199.643595366);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311210900', '33', '43112', '개신동', 996203.5199380716, 1847369.5780629753);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311211000', '33', '43112', '죽림동', 994845.7201971832, 1845680.5839127228);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311211100', '33', '43112', '장성동', 998232.9911031696, 1844223.3853813584);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311211200', '33', '43112', '장암동', 998831.2532608927, 1843442.537305589);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311231000', '33', '43112', '남이면', 994229.2851540862, 1841546.977680955);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311232000', '33', '43112', '현도면', 993700.5193823834, 1832433.2908133026);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311310400', '33', '43113', '운천동', 997839.2229038789, 1850020.0185567182);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311310500', '33', '43113', '신봉동', 997215.6008898161, 1850835.3002127632);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311311300', '33', '43113', '가경동', 994079.62710711, 1847207.832118824);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311311400', '33', '43113', '복대동', 994850.9274532427, 1848327.9874277671);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311311500', '33', '43113', '봉명동', 996487.5372938187, 1849650.2721126135);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311311600', '33', '43113', '송정동', 994993.1676272845, 1849517.1615739458);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311311700', '33', '43113', '강서동', 993169.435295126, 1846909.7312889837);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311311800', '33', '43113', '석곡동', 993513.6753415212, 1845365.3356955284);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311311900', '33', '43113', '휴암동', 991720.225821866, 1846799.9348295166);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311312000', '33', '43113', '신전동', 991315.6238605595, 1845226.2370327646);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311312100', '33', '43113', '현암동', 990405.4082751565, 1844139.8144776141);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311312200', '33', '43113', '동막동', 988662.3965686043, 1844155.0986071778);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311312300', '33', '43113', '수의동', 990147.566344573, 1846305.9803850097);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311312400', '33', '43113', '지동동', 991655.8997407295, 1849590.688740287);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311312500', '33', '43113', '서촌동', 990865.503551338, 1849937.2933575818);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311312600', '33', '43113', '신성동', 992384.0553065714, 1850805.409777312);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311312700', '33', '43113', '평동', 992416.6848332125, 1851372.9665290439);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311312800', '33', '43113', '신대동', 991686.9639555269, 1853223.7875362278);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311312900', '33', '43113', '남촌동', 993013.8597954613, 1851280.8280247499);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311313000', '33', '43113', '내곡동', 993606.600002964, 1851708.7797461015);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311313100', '33', '43113', '상신동', 994080.1110191847, 1852226.3721666196);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311313200', '33', '43113', '원평동', 994533.7610617232, 1852555.3689022856);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311313300', '33', '43113', '문암동', 995432.8633352409, 1852442.9961214678);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311313400', '33', '43113', '송절동', 995778.1442069287, 1851733.3404331978);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311313500', '33', '43113', '화계동', 994846.4453317036, 1851313.2677979723);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311313600', '33', '43113', '외북동', 993692.7390203079, 1851281.0434175075);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311313700', '33', '43113', '향정동', 993354.0134930626, 1850237.2873857184);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311313800', '33', '43113', '비하동', 992955.0341903019, 1848475.8551869348);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311313900', '33', '43113', '석소동', 989333.227431656, 1847207.734717705);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311314000', '33', '43113', '정봉동', 990234.6191190305, 1849884.2780739341);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311314100', '33', '43113', '신촌동', 990198.0208683682, 1850708.01969988);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311325000', '33', '43113', '오송읍', 984191.235013511, 1847107.7442853749);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311331000', '33', '43113', '강내면', 987555.5658478903, 1845006.5258194292);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311332000', '33', '43113', '옥산면', 988087.499583212, 1853448.6503679263);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311410100', '33', '43114', '우암동', 998724.9422211646, 1850268.2423257742);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311410200', '33', '43114', '내덕동', 998825.7079475677, 1851200.634616074);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311410300', '33', '43114', '율량동', 999426.5188845083, 1852025.2067113104);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311410400', '33', '43114', '사천동', 997688.9096140489, 1852386.6199799876);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311410500', '33', '43114', '주성동', 1000104.0269607087, 1853114.5723986668);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311410600', '33', '43114', '주중동', 998948.5860125793, 1853774.7155159055);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311410700', '33', '43114', '정상동', 997042.2867955468, 1853808.4171581478);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311410800', '33', '43114', '정하동', 996854.6063027303, 1852998.9809366332);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311410900', '33', '43114', '정북동', 996644.2757134108, 1854235.103611632);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311411000', '33', '43114', '오동동', 997754.8918672753, 1854772.2173713234);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311411100', '33', '43114', '외남동', 998593.3580470616, 1855683.6501561943);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311411200', '33', '43114', '외평동', 998766.2030997999, 1856214.9401179664);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311411300', '33', '43114', '외하동', 998240.9376152945, 1857211.0643347534);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311425000', '33', '43114', '내수읍', 1003912.244467027, 1856804.0755833434);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311425300', '33', '43114', '오창읍', 993984.7759790268, 1858942.7828995145);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4311431000', '33', '43114', '북이면', 1003839.5046533332, 1861010.7451234858);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313010100', '33', '43130', '성내동', 1038773.6324892383, 1885923.1925369715);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313010200', '33', '43130', '성남동', 1038808.7557502289, 1885617.9103773648);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313010300', '33', '43130', '성서동', 1038467.3034946988, 1885936.7769360465);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313010400', '33', '43130', '충인동', 1038464.8405306865, 1886231.4888395355);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313010500', '33', '43130', '교현동', 1038814.252209827, 1886448.9532068628);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313010600', '33', '43130', '용산동', 1039043.8585596731, 1885065.6358593483);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313010700', '33', '43130', '호암동', 1038498.1903780485, 1884047.3541011072);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313010800', '33', '43130', '직동', 1040747.6257531375, 1882979.4456766644);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313010900', '33', '43130', '단월동', 1036124.3851990559, 1883306.0910040187);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313011000', '33', '43130', '풍동', 1036492.8406452503, 1881773.5436135342);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313011100', '33', '43130', '가주동', 1034603.9050787811, 1882001.9829169707);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313011200', '33', '43130', '용관동', 1034125.5996758642, 1883814.4502207155);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313011300', '33', '43130', '용두동', 1034042.6729062235, 1885105.6117763664);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313011400', '33', '43130', '달천동', 1035545.1468839683, 1884773.2717547258);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313011500', '33', '43130', '봉방동', 1037128.8858816663, 1886401.5641500035);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313011600', '33', '43130', '칠금동', 1036863.8138093494, 1887348.1994844011);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313011800', '33', '43130', '연수동', 1038829.258283984, 1887690.747785074);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313011900', '33', '43130', '목행동', 1037534.1564759837, 1890468.4223808632);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313012000', '33', '43130', '용탄동', 1040470.6643713812, 1890652.9825235233);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313012100', '33', '43130', '종민동', 1043438.4004326761, 1888830.0336831275);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313012200', '33', '43130', '안림동', 1040759.5421683232, 1886216.473386984);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313012300', '33', '43130', '목벌동', 1044141.4278009795, 1885246.9528155238);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313012400', '33', '43130', '충의동', 1038272.1720710978, 1886266.2287124838);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313012500', '33', '43130', '지현동', 1038445.9202290501, 1885135.1171323732);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313012700', '33', '43130', '문화동', 1037696.5352741486, 1885751.1018776526);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313012800', '33', '43130', '금릉동', 1037619.2415789238, 1888198.2748547376);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313025000', '33', '43130', '주덕읍', 1025235.5876795538, 1886969.2969868684);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313031000', '33', '43130', '살미면', 1042606.3491285737, 1878514.0918443892);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313032500', '33', '43130', '수안보면', 1044777.3754900547, 1872612.9016278856);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4313033500', '33', '43130', '대소원면', 1030281.1430974063, 1885407.071368202);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413110100', '34', '44131', '대흥동', 968609.9776455923, 1867813.8809006216);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413110200', '34', '44131', '성황동', 968996.7295316892, 1868483.2735941194);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413110300', '34', '44131', '문화동', 968912.3817084798, 1868001.2109125745);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413110400', '34', '44131', '사직동', 968643.5303678402, 1867089.5597857318);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413110500', '34', '44131', '영성동', 968929.8178389126, 1867051.2574144541);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413110600', '34', '44131', '오룡동', 968826.1183536851, 1867508.521064098);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413110700', '34', '44131', '원성동', 969681.4485980693, 1867528.87130687);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413110800', '34', '44131', '구성동', 970084.1753091057, 1866479.7305949032);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413110900', '34', '44131', '청수동', 969068.5099223882, 1866055.1119392044);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413111000', '34', '44131', '삼룡동', 970510.6574525263, 1865118.8600952679);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413111100', '34', '44131', '청당동', 969291.5163368625, 1864945.1966960952);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413111200', '34', '44131', '유량동', 971236.806481399, 1868549.624879757);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413111300', '34', '44131', '봉명동', 967566.7541004075, 1867903.870700801);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413111400', '34', '44131', '다가동', 968072.1526330283, 1866860.0686361233);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413111500', '34', '44131', '용곡동', 968016.9153561974, 1865798.7936644817);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413111600', '34', '44131', '신방동', 966902.9371964935, 1864380.629666525);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413111700', '34', '44131', '쌍용동', 967226.6447541408, 1867221.8315444367);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4413111800', '34', '44131', '신부동', 969668.614139882, 1869929.5867878997);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511110100', '35', '45111', '중앙동1가', 967693.1892555575, 1757841.7135341337);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511110200', '35', '45111', '중앙동2가', 967812.9329582856, 1757900.0193125594);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511110300', '35', '45111', '중앙동3가', 967962.8478226382, 1757965.4763089824);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511110400', '35', '45111', '중앙동4가', 967920.5087976371, 1757662.3941368728);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511110500', '35', '45111', '경원동1가', 968164.081438516, 1757993.3761064282);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511110600', '35', '45111', '경원동2가', 968343.403596196, 1758011.2808160824);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511110700', '35', '45111', '경원동3가', 968340.4211991493, 1758313.045663184);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511110800', '35', '45111', '풍남동1가', 968476.036691469, 1758065.3447816533);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511110900', '35', '45111', '풍남동2가', 968606.2284823778, 1758110.5881619328);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511111000', '35', '45111', '풍남동3가', 968679.9874052786, 1757808.873560142);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511111100', '35', '45111', '전동', 968224.2876029302, 1757527.4896424734);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511111200', '35', '45111', '전동3가', 967888.2046002088, 1757489.9254897092);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511111300', '35', '45111', '다가동1가', 967662.3317706209, 1757653.462067741);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511111400', '35', '45111', '다가동2가', 967585.0053740569, 1757554.8305792836);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511111500', '35', '45111', '다가동3가', 967521.6340626283, 1757899.9222062365);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511111600', '35', '45111', '다가동4가', 967368.71863188, 1758225.6868459755);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511111700', '35', '45111', '고사동', 967755.1906303691, 1758250.1418786212);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511111800', '35', '45111', '교동', 969040.3281773055, 1757434.4851744687);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511111900', '35', '45111', '태평동', 967367.9873859781, 1758690.5206319254);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511112000', '35', '45111', '중노송동', 968848.851648416, 1758840.5190782356);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511112100', '35', '45111', '남노송동', 969049.2192122854, 1758225.524548213);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511112200', '35', '45111', '동완산동', 967873.5465745826, 1757072.415457526);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511112300', '35', '45111', '서완산동1가', 967330.3279401538, 1757130.1352760077);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511112400', '35', '45111', '서완산동2가', 966985.6126903754, 1757079.0042513304);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511112500', '35', '45111', '동서학동', 968940.2265575159, 1756792.8490861128);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511112600', '35', '45111', '서서학동', 968253.2998902397, 1756444.1074119692);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511112700', '35', '45111', '중화산동1가', 966825.1100448061, 1757555.0340039409);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511112800', '35', '45111', '중화산동2가', 965835.3123127011, 1757920.0461208974);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511112900', '35', '45111', '서신동', 965332.886059607, 1759425.5529922503);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511113000', '35', '45111', '석구동', 966343.7952159067, 1752490.509892865);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511113100', '35', '45111', '원당동', 964743.1308099673, 1751629.2649223611);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511113200', '35', '45111', '평화동1가', 967235.8297057041, 1755646.7923403312);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511113300', '35', '45111', '평화동2가', 966654.0899968973, 1754698.533716537);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511113400', '35', '45111', '평화동3가', 965832.8922616661, 1753716.2331360157);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511113500', '35', '45111', '중인동', 963115.5141320393, 1752253.7434041176);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511113600', '35', '45111', '용복동', 961835.463710728, 1753523.9392026686);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511113700', '35', '45111', '삼천동1가', 965708.5053871516, 1755714.1944887138);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511113800', '35', '45111', '삼천동2가', 963946.8729281195, 1754457.8429167846);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511113900', '35', '45111', '삼천동3가', 962234.5229235644, 1755708.1697904419);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511114000', '35', '45111', '효자동1가', 965936.1551050907, 1756718.6184845965);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4511114100', '35', '45111', '효자동2가', 964335.3041485694, 1757293.3507007584);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611010100', '36', '46110', '용당동', 899065.7081219931, 1646120.82682198);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611010200', '36', '46110', '산정동', 898265.6605296984, 1645534.8695508589);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611010300', '36', '46110', '연산동', 897918.049212749, 1647448.670849855);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611010400', '36', '46110', '대성동', 897802.4238664301, 1645482.5127138044);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611010500', '36', '46110', '양동', 897603.8372918452, 1645250.1475647585);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611010600', '36', '46110', '북교동', 897397.7141419392, 1644904.3021725898);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611010700', '36', '46110', '남교동', 897676.2311437124, 1644935.44851376);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611010800', '36', '46110', '호남동', 898242.3059741394, 1644966.5119894932);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611010900', '36', '46110', '대안동', 897979.5661427822, 1644753.854511337);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611011000', '36', '46110', '창평동', 897908.3706365674, 1644869.4581416703);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611011100', '36', '46110', '명륜동', 898018.7552812502, 1644613.1290994282);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611011200', '36', '46110', '죽동', 897753.6527457818, 1644648.6504073874);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611011300', '36', '46110', '무안동', 897935.9317157343, 1644407.496599231);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611011400', '36', '46110', '측후동', 897755.2732225545, 1644420.9008368913);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611011500', '36', '46110', '상락동1가', 898202.482618923, 1644434.4086154357);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611011600', '36', '46110', '상락동2가', 898082.5163995888, 1644471.6992850932);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611011700', '36', '46110', '복만동', 898034.6110907792, 1644266.6592279994);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611011800', '36', '46110', '동명동', 898577.3596210743, 1644415.9734869278);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611011900', '36', '46110', '광동1가', 898439.1310953792, 1644277.9413571032);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611012000', '36', '46110', '광동2가', 898366.754344875, 1644343.2589949584);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611012100', '36', '46110', '광동3가', 898319.6910956665, 1644438.7333941427);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611012200', '36', '46110', '영해동1가', 898128.6670665002, 1644058.983656012);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611012300', '36', '46110', '영해동2가', 898031.6598105681, 1644138.2289209089);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611012400', '36', '46110', '행복동1가', 898191.2862467429, 1644125.5710428143);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611012500', '36', '46110', '행복동2가', 898089.1747508002, 1644216.1640503749);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611012600', '36', '46110', '축복동1가', 898363.8171295468, 1644217.4580781863);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611012700', '36', '46110', '축복동2가', 898289.2974677857, 1644293.863829929);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611012800', '36', '46110', '축복동3가', 898235.3699259999, 1644360.416716);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611012900', '36', '46110', '보광동1가', 898308.7616067451, 1644172.9024382734);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611013000', '36', '46110', '보광동2가', 898240.8530076767, 1644213.219359059);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611013100', '36', '46110', '보광동3가', 898155.9387372256, 1644270.4594130963);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611013200', '36', '46110', '유달동', 897435.1135080857, 1644080.019801086);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611013300', '36', '46110', '대의동1가', 897947.0018667905, 1644167.9125692553);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611013400', '36', '46110', '대의동2가', 897806.7318855998, 1644195.4736901645);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611013500', '36', '46110', '대의동3가', 897588.3714439474, 1644142.432994);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611013600', '36', '46110', '중앙동1가', 897865.3711673333, 1644090.8836184288);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611013700', '36', '46110', '중앙동2가', 897750.7852472131, 1644088.274029787);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611013800', '36', '46110', '중앙동3가', 897562.0139345608, 1644063.086310805);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611013900', '36', '46110', '만호동', 897957.7158626426, 1643978.4547696994);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611014000', '36', '46110', '수강동1가', 898070.055205125, 1644007.8061899252);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611014100', '36', '46110', '수강동2가', 897990.45999868, 1644082.8154172);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611014200', '36', '46110', '해안동1가', 897781.7607780526, 1643670.106699974);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611014300', '36', '46110', '해안동2가', 897687.4756400002, 1643678.508397355);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611014400', '36', '46110', '해안동3가', 897635.7364344582, 1643618.7694931251);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611014500', '36', '46110', '해안동4가', 897506.5343525833, 1643540.6314004166);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611014600', '36', '46110', '항동', 897933.7884266111, 1643830.591081242);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611014700', '36', '46110', '중동1가', 897803.8648520615, 1643940.0512435543);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611014800', '36', '46110', '중동2가', 897683.4124007366, 1643929.8327496054);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611014900', '36', '46110', '유동', 897709.6393361195, 1643797.141390776);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611015000', '36', '46110', '금동1가', 897814.2221393783, 1643890.2057843516);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611015100', '36', '46110', '금동2가', 897676.3457940527, 1643874.8402514998);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611015200', '36', '46110', '경동1가', 897752.4740281311, 1644010.7898701965);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611015300', '36', '46110', '경동2가', 897553.1081281365, 1644016.4283351817);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611015400', '36', '46110', '서산동', 897318.75774831, 1643719.0978126402);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611015500', '36', '46110', '금화동', 897326.2827545205, 1643543.9585831296);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611015600', '36', '46110', '온금동', 897004.1980423802, 1643845.719902251);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611015700', '36', '46110', '죽교동', 897108.8957044737, 1645216.2295721206);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611015800', '36', '46110', '상동', 901346.3992271278, 1646080.1559157022);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611015900', '36', '46110', '용해동', 899756.5294466428, 1646440.5513975553);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611016000', '36', '46110', '석현동', 901645.7411978197, 1648180.196116618);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611016100', '36', '46110', '달동', 893338.5128684492, 1642479.21259051);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611016200', '36', '46110', '율도동', 892519.7071417348, 1645706.7413715366);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611016300', '36', '46110', '대양동', 900800.8807234863, 1649442.1584694504);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4611016400', '36', '46110', '옥암동', 903025.6742391256, 1646490.2415037737);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613010100', '36', '46130', '종화동', 1022559.7367678421, 1638396.5861213736);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613010200', '36', '46130', '수정동', 1022764.8732254723, 1638811.9731378683);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613010300', '36', '46130', '공화동', 1022271.3922676023, 1639201.3377981768);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613010400', '36', '46130', '관문동', 1022151.6355082827, 1638731.965083914);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613010500', '36', '46130', '고소동', 1022006.6115833987, 1638413.416851207);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613010600', '36', '46130', '동산동', 1021875.2011221991, 1638973.4370150508);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613010700', '36', '46130', '중앙동', 1021751.0180603687, 1638356.1939846273);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613010800', '36', '46130', '교동', 1021255.2906396269, 1638419.873173076);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613010900', '36', '46130', '군자동', 1021500.5969739313, 1638748.3221462318);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613011000', '36', '46130', '충무동', 1021149.3390942698, 1638722.7779047794);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613011100', '36', '46130', '연등동', 1020900.535822864, 1639658.466908024);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613011200', '36', '46130', '광무동', 1020619.5061622045, 1639185.0489504037);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613011300', '36', '46130', '서교동', 1020816.8809369212, 1638617.1577534052);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613011400', '36', '46130', '봉강동', 1020396.9981146367, 1638527.7420006131);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613011500', '36', '46130', '봉산동', 1020403.9450098367, 1637861.4616017335);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613011600', '36', '46130', '남산동', 1021007.0281326929, 1638039.2931616562);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613011700', '36', '46130', '국동', 1019847.7644512085, 1637489.1483810137);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613011800', '36', '46130', '신월동', 1018911.18823645, 1636726.7429461312);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613011900', '36', '46130', '여서동', 1018807.8009511366, 1639530.282390731);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613012000', '36', '46130', '문수동', 1018617.5974262425, 1640176.4954266073);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613012100', '36', '46130', '오림동', 1019750.8549571098, 1640526.2965575194);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613012200', '36', '46130', '미평동', 1018851.0541291004, 1641554.823015174);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613012300', '36', '46130', '둔덕동', 1018130.6182378309, 1642090.6181130458);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613012400', '36', '46130', '오천동', 1023238.3365706883, 1644390.0472346316);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613012500', '36', '46130', '만흥동', 1021690.3900950823, 1642445.053793325);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613012600', '36', '46130', '덕충동', 1021841.9629450634, 1639888.703834741);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613012700', '36', '46130', '경호동', 1020204.1376681901, 1635555.1419088605);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613012800', '36', '46130', '학동', 1014900.6407548185, 1640918.357793002);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613012900', '36', '46130', '학용동', 1015968.8103782666, 1641351.8200817334);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613013000', '36', '46130', '안산동', 1013635.9060656457, 1640374.2298175844);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613013100', '36', '46130', '소호동', 1013676.8524370879, 1638473.6761433668);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613013200', '36', '46130', '시전동', 1016392.3641661053, 1640778.8689060002);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613013300', '36', '46130', '신기동', 1015786.8991131997, 1640748.9767076767);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613013400', '36', '46130', '웅천동', 1016309.6104635533, 1639297.6979832728);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613013500', '36', '46130', '선원동', 1014041.7001908943, 1641742.9150019402);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613013600', '36', '46130', '여천동', 1015262.912663832, 1642442.216740639);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613013700', '36', '46130', '화장동', 1013143.2836986416, 1642242.9599979308);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613013800', '36', '46130', '주삼동', 1014481.9524966663, 1644075.1394997619);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613013900', '36', '46130', '봉계동', 1015710.1986532402, 1643541.5946549012);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613014000', '36', '46130', '해산동', 1012988.9065667037, 1645056.1122997308);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613014100', '36', '46130', '화치동', 1013444.4627908497, 1647805.2831696765);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613014200', '36', '46130', '월하동', 1015275.8845275694, 1645841.088938819);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613014300', '36', '46130', '평여동', 1015672.3814104848, 1646390.0294316667);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613014400', '36', '46130', '중흥동', 1017006.3827642405, 1648713.2905961387);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613014500', '36', '46130', '적량동', 1018703.7590430911, 1650762.9770237273);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613014600', '36', '46130', '월내동', 1020843.9605666897, 1650955.264189138);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613014700', '36', '46130', '묘도동', 1019592.6251983858, 1654221.8297640209);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613014800', '36', '46130', '낙포동', 1023273.0845715937, 1651018.7949880937);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613014900', '36', '46130', '신덕동', 1024315.520026585, 1647450.0007283315);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613015000', '36', '46130', '상암동', 1021600.8567316093, 1648360.2086058462);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613015100', '36', '46130', '호명동', 1020393.9814059981, 1645907.6804097302);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613025000', '36', '46130', '돌산읍', 1023550.2290954991, 1629525.4525054945);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613031000', '36', '46130', '소라면', 1010288.5963838462, 1643207.6441896788);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613032000', '36', '46130', '율촌면', 1007432.8395390001, 1651308.716290992);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613033000', '36', '46130', '화양면', 1009142.1043049415, 1633237.544776075);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613034000', '36', '46130', '남면', 1024486.5954970232, 1613333.6096589265);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613035000', '36', '46130', '화정면', 1009984.5383968285, 1624110.425728413);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4613036000', '36', '46130', '삼산면', 981967.1515684915, 1569404.3853221168);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615010100', '36', '46150', '삼거동', 993400.2430259143, 1665432.7985752285);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615010200', '36', '46150', '와룡동', 995946.9858561821, 1662524.865763154);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615010300', '36', '46150', '영동', 998325.3521859642, 1662120.4841318103);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615010400', '36', '46150', '옥천동', 997863.3181103639, 1661912.5949553987);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615010500', '36', '46150', '행동', 998412.8598954937, 1662325.1356289117);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615010600', '36', '46150', '금곡동', 998093.7788326627, 1662254.1230654737);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615010700', '36', '46150', '매곡동', 998509.3670685877, 1663041.37811933);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615010800', '36', '46150', '석현동', 998207.8694049389, 1664187.9261567546);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615010900', '36', '46150', '가곡동', 998471.3799554481, 1665013.6487180204);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615011000', '36', '46150', '용당동', 999536.8463549139, 1664439.69926532);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615011100', '36', '46150', '조곡동', 999830.9466431813, 1661861.433097612);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615011200', '36', '46150', '생목동', 1000653.2554167535, 1661799.2959852275);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615011300', '36', '46150', '덕암동', 1000705.6046443545, 1661293.3593756019);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615011400', '36', '46150', '연향동', 1001806.3606114022, 1661025.4982616797);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615011500', '36', '46150', '풍덕동', 999997.4224633568, 1660776.1867797598);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615011600', '36', '46150', '남정동', 999021.2114953763, 1660677.8373602368);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615011700', '36', '46150', '인제동', 998754.0697484739, 1661123.2264351994);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615011800', '36', '46150', '저전동', 998358.5907601747, 1661634.450062202);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615011900', '36', '46150', '장천동', 998986.244198649, 1661625.2115545035);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615012000', '36', '46150', '남내동', 998650.2968548174, 1662127.993428406);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615012100', '36', '46150', '중앙동', 998614.7803753074, 1662352.5778083561);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615012200', '36', '46150', '동외동', 998833.1849662251, 1662531.764035911);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615012300', '36', '46150', '교량동', 1000064.1853749354, 1657272.891948251);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615012400', '36', '46150', '대룡동', 999423.1239866741, 1657001.5538584304);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615012500', '36', '46150', '홍내동', 1000294.6061632752, 1658191.7535066349);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615012600', '36', '46150', '오천동', 999832.9724967906, 1659305.3357071488);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615012700', '36', '46150', '덕월동', 998764.5247899984, 1659202.6805629798);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615012800', '36', '46150', '야흥동', 998221.9559064192, 1657714.1290578754);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615012900', '36', '46150', '인월동', 998391.2715286596, 1655303.6658583041);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615013000', '36', '46150', '안풍동', 999754.4566167222, 1655047.9892514152);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615013100', '36', '46150', '대대동', 1000564.0139679307, 1655400.9602308865);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615013200', '36', '46150', '왕지동', 1002663.9239829198, 1664184.2458383378);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615013300', '36', '46150', '조례동', 1002101.1739531629, 1662531.4700625914);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615025000', '36', '46150', '승주읍', 988166.47463764, 1669632.3692475054);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615031000', '36', '46150', '해룡면', 1004048.9986015861, 1657538.2289741326);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615032000', '36', '46150', '서면', 999268.0265518336, 1668244.98731168);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615033000', '36', '46150', '황전면', 996060.4214023707, 1680615.3014314247);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615034000', '36', '46150', '월등면', 990098.9502715381, 1677006.268062479);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615035000', '36', '46150', '주암면', 977668.2795455927, 1675497.681286136);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615036000', '36', '46150', '송광면', 977637.6114098208, 1665221.7287175502);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615037000', '36', '46150', '외서면', 979283.6486851155, 1658178.5140984184);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615038000', '36', '46150', '낙안면', 986059.0407395626, 1656961.6239909697);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615039000', '36', '46150', '별량면', 994845.4322222859, 1652295.3770257127);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4615040000', '36', '46150', '상사면', 994378.4637401787, 1659508.370515351);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617010100', '36', '46170', '토계동', 929411.0643275479, 1669569.7070928945);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617010200', '36', '46170', '송월동', 928321.7961079389, 1669489.3327617294);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617010300', '36', '46170', '안창동', 925902.6039259636, 1668562.6869248357);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617010400', '36', '46170', '삼영동', 927475.5648460248, 1668054.9855062114);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617010500', '36', '46170', '교동', 928120.9002851149, 1671043.3987166507);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617010600', '36', '46170', '서내동', 928304.7382014252, 1671166.5636545669);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617010700', '36', '46170', '산정동', 928381.0302751515, 1671496.4207192766);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617010800', '36', '46170', '경현동', 927443.1871076042, 1671488.5300114027);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617010900', '36', '46170', '보산동', 926314.7164568246, 1670267.6047719736);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617011000', '36', '46170', '금계동', 928362.0001389378, 1670894.6847734605);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617011100', '36', '46170', '금성동', 928562.8329152717, 1670748.0583552036);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617011200', '36', '46170', '남내동', 928832.2880360332, 1670889.8462728176);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617011300', '36', '46170', '과원동', 928519.0025349715, 1671378.9826714294);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617011400', '36', '46170', '성북동', 928816.5497082858, 1671448.0844231239);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617011500', '36', '46170', '중앙동', 928805.3222861945, 1671135.0028513854);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617011600', '36', '46170', '대호동', 928651.6126979652, 1672881.4443914026);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617011700', '36', '46170', '송촌동', 929388.8745588538, 1674154.2413663105);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617011800', '36', '46170', '석현동', 930394.5668395447, 1673367.87429315);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617011900', '36', '46170', '청동', 929589.7354264584, 1672561.749011292);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617012000', '36', '46170', '남외동', 928963.5929368698, 1670604.257580383);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617012100', '36', '46170', '죽림동', 929213.9512372719, 1670763.2694462838);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617012200', '36', '46170', '삼도동', 929569.5285624394, 1670702.388201853);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617012300', '36', '46170', '영산동', 928127.8453076956, 1667453.0411389985);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617012400', '36', '46170', '용산동', 928752.8317603248, 1666689.6114513576);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617012500', '36', '46170', '관정동', 931342.6537574161, 1666532.6809662743);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617012600', '36', '46170', '평산동', 931696.8187794703, 1666018.634575451);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617012700', '36', '46170', '부덕동', 929674.1660325178, 1665547.2844809133);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617012800', '36', '46170', '이창동', 928002.6023844199, 1667048.8658097247);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617012900', '36', '46170', '대기동', 928737.2303421844, 1665292.1975403454);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617013000', '36', '46170', '운곡동', 926546.7935961693, 1666373.1948843962);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617013100', '36', '46170', '동수동', 925419.3841770446, 1665391.382672275);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617013200', '36', '46170', '오량동', 923708.0741191359, 1665336.1050859513);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617013300', '36', '46170', '진포동', 924952.6792343571, 1666988.8329440863);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617013400', '36', '46170', '빛가람동', 935027.4828168041, 1669487.90699308);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617025000', '36', '46170', '남평읍', 940879.9670438677, 1671276.7087332737);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617031000', '36', '46170', '세지면', 929810.5700236282, 1659876.8809313173);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617032000', '36', '46170', '왕곡면', 924945.0370076909, 1663382.8938638587);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617033000', '36', '46170', '반남면', 922914.6581514964, 1657641.8534409252);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617034000', '36', '46170', '공산면', 917932.6917192688, 1661864.127355515);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617035000', '36', '46170', '동강면', 913752.0578836392, 1660164.779372408);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617036000', '36', '46170', '다시면', 921321.1901227487, 1668861.8214918778);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617037000', '36', '46170', '문평면', 919473.6362120358, 1673705.6539522763);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617038000', '36', '46170', '노안면', 929150.9976390579, 1676422.5245190035);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617039000', '36', '46170', '금천면', 932605.7306046096, 1670414.39763146);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617040000', '36', '46170', '산포면', 936742.8020532593, 1671120.016776315);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617042000', '36', '46170', '다도면', 939167.1688959311, 1661485.0928667565);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4617043000', '36', '46170', '봉황면', 934172.2072410892, 1662468.7663238903);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623010100', '36', '46230', '황금동', 1011941.1987923089, 1657436.2676667455);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623010200', '36', '46230', '황길동', 1014211.3515385009, 1657918.5707102986);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623010300', '36', '46230', '도이동', 1016201.2220275912, 1659343.1114912743);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623010400', '36', '46230', '성황동', 1015608.0519442919, 1661393.8931759077);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623010500', '36', '46230', '중군동', 1015935.0694004648, 1663304.450945043);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623010600', '36', '46230', '중동', 1017723.4652264598, 1660632.4610493316);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623010700', '36', '46230', '마동', 1018354.7990059109, 1661501.0553960416);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623010800', '36', '46230', '광영동', 1020203.9451580101, 1662980.0480419316);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623010900', '36', '46230', '태인동', 1022948.2438679746, 1661032.7131346343);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623011000', '36', '46230', '금호동', 1021301.2341623622, 1659643.783245526);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623025000', '36', '46230', '광양읍', 1008125.1293038141, 1663650.3417126527);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623031000', '36', '46230', '봉강면', 1006649.2960951547, 1669782.4098984613);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623032000', '36', '46230', '옥룡면', 1010395.9448231392, 1670779.6380959584);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623033000', '36', '46230', '옥곡면', 1017315.011943103, 1666288.715724475);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623034000', '36', '46230', '진상면', 1018976.6450182039, 1670726.4437669162);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623035000', '36', '46230', '진월면', 1023357.9572603849, 1667347.5944728956);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4623036000', '36', '46230', '다압면', 1017186.748837661, 1679448.3805602302);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671025000', '36', '46710', '담양읍', 952965.740276314, 1702818.0179107229);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671031000', '36', '46710', '봉산면', 950569.4069866852, 1697546.981460609);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671032000', '36', '46710', '고서면', 952216.6586219459, 1691937.3206772546);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671033500', '36', '46710', '가사문학면', 958376.1202245302, 1685068.791131579);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671034000', '36', '46710', '창평면', 955214.3110397127, 1693727.5231396097);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671035000', '36', '46710', '대덕면', 959031.6492743095, 1693881.1142627455);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671036000', '36', '46710', '무정면', 957761.6402095224, 1699246.0660996623);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671037000', '36', '46710', '금성면', 957436.449718505, 1705914.399347728);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671038000', '36', '46710', '용면', 953837.9236101848, 1709760.6153887275);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671039000', '36', '46710', '월산면', 949939.4745198489, 1706549.809817727);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671040000', '36', '46710', '수북면', 948285.7240727117, 1700671.4993304557);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4671041000', '36', '46710', '대전면', 944988.2980970867, 1698036.3215460682);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4672025000', '36', '46720', '곡성읍', 981200.1980978971, 1698601.8768324864);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4672031000', '36', '46720', '오곡면', 983749.8319909113, 1694831.2816875833);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4672032000', '36', '46720', '삼기면', 975041.8091575124, 1691486.7323048774);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4672033000', '36', '46720', '석곡면', 977046.8219491928, 1683088.6769549337);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4672034000', '36', '46720', '목사동면', 980933.1522690395, 1679526.1427997337);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4672035000', '36', '46720', '죽곡면', 984575.7504108953, 1684652.0868231005);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4672036000', '36', '46720', '고달면', 986062.1758214479, 1699533.8738354375);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4672037000', '36', '46720', '옥과면', 967391.3474910387, 1698863.7174967588);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4672038000', '36', '46720', '입면', 972923.1719106304, 1700577.794317285);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4672039000', '36', '46720', '겸면', 970464.642917885, 1695646.6912454572);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4672040000', '36', '46720', '오산면', 965572.9859520119, 1693784.137586938);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4673025000', '36', '46730', '구례읍', 996108.5864471678, 1689830.3009979993);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4673031000', '36', '46730', '문척면', 999103.0487710754, 1687518.706551951);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4673032000', '36', '46730', '간전면', 1005719.6579247948, 1685552.2494708437);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4673033000', '36', '46730', '토지면', 1004661.597014222, 1691044.7831867223);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4673034000', '36', '46730', '마산면', 998901.9806540104, 1691806.3876462523);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4673035000', '36', '46730', '광의면', 995817.6977210568, 1695696.0744456921);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4673036000', '36', '46730', '용방면', 993712.8385956498, 1695034.9884602083);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4673037000', '36', '46730', '산동면', 995222.1311833635, 1702284.3016248217);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4677025000', '36', '46770', '고흥읍', 979732.5079339872, 1623625.908960694);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711110100', '37', '47111', '상도동', 1167170.0330521457, 1781252.4966589578);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711110200', '37', '47111', '대도동', 1167895.427139891, 1781728.5036629532);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711110300', '37', '47111', '해도동', 1168587.9678516933, 1782228.0010535219);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711110400', '37', '47111', '송도동', 1168994.2822015595, 1783513.4042065167);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711110500', '37', '47111', '청림동', 1172060.6595251118, 1779199.5867950208);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711110600', '37', '47111', '일월동', 1173040.5885256047, 1779259.8148385475);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711110800', '37', '47111', '송내동', 1168695.2452866668, 1780127.0214156667);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711110900', '37', '47111', '괴동동', 1168954.018615911, 1779447.2814845773);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711111000', '37', '47111', '동촌동', 1170264.3719978668, 1779331.5688488667);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711111100', '37', '47111', '장흥동', 1168661.4233107339, 1777696.707772968);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711111200', '37', '47111', '인덕동', 1171306.0432750839, 1778296.1936672207);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711111300', '37', '47111', '호동', 1169755.477787377, 1777792.168741208);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711111400', '37', '47111', '효자동', 1165376.0449961904, 1780535.252281949);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711111500', '37', '47111', '지곡동', 1163930.317725719, 1782590.9072107282);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711111600', '37', '47111', '대잠동', 1165939.1349191177, 1781461.7763027207);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711111700', '37', '47111', '이동', 1165412.7507947546, 1783035.0064195616);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711125000', '37', '47111', '구룡포읍', 1185307.807645822, 1778814.4669493637);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711125300', '37', '47111', '연일읍', 1165229.1904119777, 1779464.4776371617);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711125600', '37', '47111', '오천읍', 1172144.6622550946, 1775712.1566005063);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711131000', '37', '47111', '대송면', 1167704.2816041494, 1776491.4100929361);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711132000', '37', '47111', '동해면', 1177166.5930125907, 1779291.7285665146);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711133000', '37', '47111', '장기면', 1180523.2112585052, 1769096.452224126);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711135000', '37', '47111', '호미곶면', 1185675.028099392, 1787437.1304953257);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711310100', '37', '47113', '대흥동', 1167726.1251179718, 1783866.692412705);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711310200', '37', '47113', '신흥동', 1167848.0506945336, 1784167.8597828834);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711310300', '37', '47113', '남빈동', 1168070.0348265474, 1783791.718584188);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711310400', '37', '47113', '상원동', 1168085.1677005577, 1784038.0205096605);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711310500', '37', '47113', '여천동', 1168280.064026314, 1784110.3926964973);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711310600', '37', '47113', '중앙동', 1168235.974948855, 1783952.511593759);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711310700', '37', '47113', '덕산동', 1168083.5632004929, 1784374.4511772143);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711310800', '37', '47113', '덕수동', 1168054.9039936112, 1784718.4010713135);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711310900', '37', '47113', '대신동', 1168204.5190342471, 1784983.9902476447);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711311000', '37', '47113', '동빈1가', 1168484.965687359, 1784807.5713454122);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711311100', '37', '47113', '동빈2가', 1168405.490621733, 1784259.3666871896);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711311200', '37', '47113', '학산동', 1168438.2063477675, 1785526.368988841);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711311300', '37', '47113', '항구동', 1168879.056939947, 1785717.177184022);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711311400', '37', '47113', '득량동', 1166503.3758501448, 1782604.0078248328);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711311500', '37', '47113', '학잠동', 1166556.046540619, 1782919.2046993885);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711311600', '37', '47113', '죽도동', 1167680.618363618, 1782875.7196991986);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711311700', '37', '47113', '용흥동', 1167143.4248872113, 1783627.0251419945);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711311800', '37', '47113', '우현동', 1167342.8419866187, 1785836.6762007093);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711311900', '37', '47113', '창포동', 1168182.8542212, 1786804.1252544196);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711312000', '37', '47113', '두호동', 1169270.781836777, 1786751.4802089762);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711312100', '37', '47113', '장성동', 1169702.138370273, 1788414.7288877394);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711312200', '37', '47113', '양덕동', 1170854.4742635614, 1789093.1360351492);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711312300', '37', '47113', '환호동', 1171076.921070056, 1787678.7762235182);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711312400', '37', '47113', '여남동', 1172106.091200372, 1788048.6351945868);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711325000', '37', '47113', '흥해읍', 1166790.568666627, 1791850.8112028094);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711331000', '37', '47113', '신광면', 1158421.7363896023, 1794410.9030479868);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711332000', '37', '47113', '청하면', 1166332.0452297025, 1800816.1617491778);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711333000', '37', '47113', '송라면', 1167014.4086299366, 1805728.5586914201);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711334000', '37', '47113', '기계면', 1152223.5319206233, 1788182.0094594667);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711335000', '37', '47113', '죽장면', 1145620.6473362863, 1801296.684757282);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4711336000', '37', '47113', '기북면', 1150734.7412540112, 1794757.013788673);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713010100', '37', '47130', '동부동', 1154621.3234673257, 1762394.0588524868);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713010200', '37', '47130', '서부동', 1154290.2553905456, 1762481.8040308177);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713010300', '37', '47130', '북부동', 1154564.8675187223, 1762690.8612980049);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713010400', '37', '47130', '성동동', 1155118.1453407735, 1762562.2597265374);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713010500', '37', '47130', '황오동', 1155339.5891441246, 1762034.409598548);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713010600', '37', '47130', '노동동', 1154616.9909438698, 1762033.242396697);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713010700', '37', '47130', '노서동', 1154080.4242713547, 1761896.172361901);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713010800', '37', '47130', '성건동', 1154164.7916094908, 1762947.2223026762);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713010900', '37', '47130', '사정동', 1154184.2500187675, 1761110.978709461);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713011000', '37', '47130', '황남동', 1154607.9134716603, 1761175.2067359108);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713011100', '37', '47130', '교동', 1154937.372244313, 1760361.1342876784);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713011200', '37', '47130', '인왕동', 1155552.851016606, 1761135.498915759);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713011300', '37', '47130', '탑동', 1154821.7523032972, 1759596.6623270295);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713011400', '37', '47130', '충효동', 1151383.5826170756, 1762249.488334762);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713011500', '37', '47130', '서악동', 1152552.6877344286, 1760024.4589005774);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713011600', '37', '47130', '효현동', 1151010.4919720823, 1759670.1476426332);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713011700', '37', '47130', '광명동', 1148496.2604904552, 1760106.1738971828);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713011800', '37', '47130', '동방동', 1159077.4654451588, 1758353.3791686327);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713011900', '37', '47130', '도지동', 1159925.3390167456, 1757115.1428768197);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713012000', '37', '47130', '남산동', 1157653.713480465, 1756690.2576526033);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713012100', '37', '47130', '배반동', 1157674.1016025466, 1759570.4948450297);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713012200', '37', '47130', '구황동', 1156427.4057152912, 1761632.6476952946);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713012300', '37', '47130', '보문동', 1158355.0984152793, 1761158.6529005757);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713012400', '37', '47130', '황성동', 1155009.9314670516, 1764791.1828693245);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713012500', '37', '47130', '용강동', 1155913.8490511551, 1765153.6660038384);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713012600', '37', '47130', '동천동', 1156005.9209782523, 1763015.035421935);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713012700', '37', '47130', '평동', 1159412.6775214742, 1755288.5719816857);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713012800', '37', '47130', '조양동', 1160859.9146933565, 1755223.483350165);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713012900', '37', '47130', '시동', 1160523.6770590057, 1752895.4824338898);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713013000', '37', '47130', '시래동', 1162982.7272319482, 1754369.2629736755);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713013100', '37', '47130', '구정동', 1162852.0966249704, 1755283.6029243811);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713013200', '37', '47130', '마동', 1163848.481184362, 1755767.4221058656);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713013300', '37', '47130', '하동', 1163750.2510155672, 1757549.6711520222);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713013400', '37', '47130', '진현동', 1165288.2937418004, 1755487.4644309427);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713013500', '37', '47130', '천군동', 1161123.7352520998, 1760098.8708238443);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713013600', '37', '47130', '신평동', 1161435.3002664922, 1762292.7596005232);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713013700', '37', '47130', '덕동', 1164466.036503303, 1761802.708581121);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713013800', '37', '47130', '암곡동', 1163919.6474356153, 1764783.8830259955);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713013900', '37', '47130', '황용동', 1167214.7469155916, 1760525.92871975);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713014000', '37', '47130', '북군동', 1159080.151876532, 1763799.118397352);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713014100', '37', '47130', '손곡동', 1161825.1196822196, 1764037.4684380875);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713014200', '37', '47130', '율동', 1152291.978924927, 1757828.1623366368);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713014300', '37', '47130', '배동', 1154329.435187993, 1757449.9728281966);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713014400', '37', '47130', '석장동', 1152584.0622245863, 1763909.055707703);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713025000', '37', '47130', '감포읍', 1180279.699017593, 1757577.50402518);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4713025300', '37', '47130', '안강읍', 1153934.0034168905, 1778336.4607322596);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812110100', '38', '48121', '북동', 1102010.2534312012, 1697327.1021408755);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812110200', '38', '48121', '중동', 1102306.6440684104, 1696910.907802112);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812110300', '38', '48121', '서상동', 1101949.530411111, 1696696.561526478);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812110400', '38', '48121', '소답동', 1102473.040794905, 1697165.363724459);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812110500', '38', '48121', '도계동', 1103519.322432322, 1696515.4440710912);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812110600', '38', '48121', '동정동', 1101330.085165965, 1697087.606595723);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812110700', '38', '48121', '소계동', 1100018.539903549, 1696440.6442439028);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812110800', '38', '48121', '용동', 1109441.7937739287, 1694613.7557909286);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812111200', '38', '48121', '덕정동', 1103871.096173, 1693448.472154);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812111400', '38', '48121', '서곡동', 1104719.658187, 1695890.4651374999);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812111600', '38', '48121', '봉림동', 1106453.0876534118, 1695850.2478694269);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812111700', '38', '48121', '퇴촌동', 1108303.1283945, 1695441.7464885002);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812111800', '38', '48121', '명곡동', 1104326.4923027928, 1695948.0418233445);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812111900', '38', '48121', '반계동', 1101146.191945838, 1695032.5339317839);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812112000', '38', '48121', '사화동', 1103157.0055474166, 1694613.710569333);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812112100', '38', '48121', '차용동', 1103090.1227864667, 1693728.715639);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812112200', '38', '48121', '내리동', NULL, NULL);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812112400', '38', '48121', '명서동', 1104219.6309442979, 1695214.7783149004);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812112500', '38', '48121', '사림동', 1107644.23870921, 1694965.833711213);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812112700', '38', '48121', '봉곡동', 1105847.9589335609, 1695239.9865414028);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812112900', '38', '48121', '팔용동', 1101703.563252617, 1695508.581812506);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812125000', '38', '48121', '동읍', 1106627.5464792782, 1701933.0361737236);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812131000', '38', '48121', '북면', 1100393.2931695974, 1704531.4436399017);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812132000', '38', '48121', '대산면', 1109696.3789837766, 1705708.7054656222);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812310100', '38', '48123', '토월동', 1109653.9304205715, 1693452.4343889998);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812310200', '38', '48123', '사파정동', 1109928.6981645, 1692235.1389642998);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812310300', '38', '48123', '가음정동', 1107969.8389616113, 1691234.3568722224);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812310400', '38', '48123', '외동', 1107197.2598987601, 1691347.2622580803);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812310500', '38', '48123', '대방동', 1110049.6070843602, 1691541.4664861995);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812310600', '38', '48123', '남산동', 1109005.5445044283, 1689971.152016586);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812310700', '38', '48123', '삼정자동', 1110087.961693, 1690192.606797);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812310800', '38', '48123', '천선동', 1109163.1966212408, 1688287.3225701842);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812310900', '38', '48123', '불모산동', 1111756.4904504346, 1688771.375193855);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812311000', '38', '48123', '안민동', 1108471.2172185886, 1688588.7271787706);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812311100', '38', '48123', '내동', 1106048.9536797784, 1692319.314660679);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812311200', '38', '48123', '남지동', 1107191.1632632175, 1689306.5265590434);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812311300', '38', '48123', '상복동', 1106230.5654892002, 1689633.4175799);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812311400', '38', '48123', '완암동', 1105330.6811413749, 1690357.0739205);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812311500', '38', '48123', '창곡동', 1104621.0313725716, 1690553.4178237144);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812311700', '38', '48123', '적현동', 1100628.0628903334, 1689784.0963549998);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812311800', '38', '48123', '양곡동', 1102965.0927265382, 1689725.3340191871);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812311900', '38', '48123', '반송동', 1106731.0576360002, 1694526.2337706666);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812312000', '38', '48123', '귀산동', 1101333.4557177837, 1685911.4555030046);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812312100', '38', '48123', '귀곡동', 1100043.1897113794, 1686996.889428966);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812312200', '38', '48123', '귀현동', 1100882.0273865, 1688772.7175375);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812312300', '38', '48123', '신촌동', 1103441.9321155718, 1690880.8546010463);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812312400', '38', '48123', '반지동', 1105645.3931542, 1694598.2639871347);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812312500', '38', '48123', '중앙동', 1106918.8245978896, 1692908.3027267528);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812312600', '38', '48123', '반림동', 1106589.1135667292, 1694052.9152009375);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812312700', '38', '48123', '상남동', 1107855.5334768598, 1692052.3599453103);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812312800', '38', '48123', '성주동', 1110022.976318804, 1689622.0799465075);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812312900', '38', '48123', '웅남동', 1104969.816078722, 1691132.305976884);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812313000', '38', '48123', '사파동', 1109190.7539658379, 1692850.0368581435);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812313100', '38', '48123', '가음동', 1108994.500811105, 1690843.2846052577);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812313200', '38', '48123', '성산동', 1106857.3194371527, 1690193.6809544028);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812313300', '38', '48123', '남양동', 1109597.4382664543, 1690900.1153567026);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812313400', '38', '48123', '용지동', 1107539.84109525, 1693682.41242025);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812313500', '38', '48123', '용호동', 1107688.0699355463, 1694202.7539087532);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812313600', '38', '48123', '신월동', 1108468.7293861974, 1693221.3689688246);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812313700', '38', '48123', '대원동', 1104733.2302331491, 1693465.6138682333);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812313800', '38', '48123', '두대동', 1105394.9465193334, 1693971.2221569999);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812313900', '38', '48123', '삼동동', 1105059.864074, 1693213.2142685);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812314100', '38', '48123', '퇴촌동', 1106850.2538390001, 1694877.286205);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812510100', '38', '48125', '가포동', 1097727.6588331005, 1686362.6894207296);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812510200', '38', '48125', '교방동', 1096914.9280697966, 1691323.2790252273);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812510300', '38', '48125', '교원동', 1097367.7123411184, 1691443.437000377);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812510400', '38', '48125', '남성동', 1097999.4169348867, 1690317.1468721211);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812510500', '38', '48125', '대내동', 1096224.5844603123, 1688013.0455816092);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812510600', '38', '48125', '대성동1가', 1096610.5743544286, 1689054.9506829742);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812510700', '38', '48125', '대성동2가', 1096718.6450644901, 1689226.3223268162);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812510800', '38', '48125', '대외동', 1096360.0349324066, 1688204.9964484232);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812510900', '38', '48125', '대창동', 1096022.182723375, 1688408.6471406827);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812511000', '38', '48125', '덕동동', 1098235.8697277615, 1683318.4980293568);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812511100', '38', '48125', '동성동', 1098096.9560431188, 1690532.733760987);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812511200', '38', '48125', '두월동1가', 1096617.661237783, 1688583.0824350433);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812511300', '38', '48125', '두월동2가', 1096555.0474264084, 1688450.631057368);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812511400', '38', '48125', '두월동3가', 1096501.2325042975, 1688289.659327513);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812511500', '38', '48125', '문화동', 1096227.5010484874, 1688561.4555531123);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812511600', '38', '48125', '반월동', 1096533.2099477449, 1688810.621819431);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812511700', '38', '48125', '부림동', 1097629.838911338, 1690548.3320001578);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812511800', '38', '48125', '산호동', 1098504.8998727126, 1691668.8000377703);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812511900', '38', '48125', '상남동', 1097840.434628898, 1691326.546617974);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812512000', '38', '48125', '서성동', 1097476.27834717, 1690262.1370062672);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812512100', '38', '48125', '성호동', 1097390.3045751585, 1690986.197479258);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812512200', '38', '48125', '수성동', 1097774.4485303843, 1690408.4921370957);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812512300', '38', '48125', '신월동', 1096448.4136861276, 1689058.3521478642);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812512400', '38', '48125', '신창동', 1096501.2621554567, 1688567.9678353998);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812512500', '38', '48125', '신포동1가', 1097603.2065766759, 1689727.2016586307);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812512600', '38', '48125', '신포동2가', 1097703.8154061558, 1690055.2995152036);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812512700', '38', '48125', '신흥동', 1096922.650041492, 1689267.8050347404);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812512800', '38', '48125', '완월동', 1096550.7570484658, 1689717.5228484366);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812512900', '38', '48125', '월남동1가', 1096723.6786656873, 1688556.4644485414);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812513000', '38', '48125', '월남동2가', 1096718.295732776, 1688372.9229990004);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812513100', '38', '48125', '월남동3가', 1096547.8552869803, 1688228.252298423);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812513200', '38', '48125', '월남동4가', 1096453.0015152593, 1687978.1074532776);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812513300', '38', '48125', '월남동5가', 1096429.3341395375, 1687827.3715849698);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812513400', '38', '48125', '월영동', 1096291.7643128166, 1687762.9681175759);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812513500', '38', '48125', '월포동', 1096893.8136906358, 1688826.2974002433);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812513600', '38', '48125', '예곡동', 1095049.60484987, 1686818.926960099);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812513700', '38', '48125', '오동동', 1098292.2395587289, 1690740.0206422112);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812513800', '38', '48125', '우산동', 1095868.5942893696, 1685026.673438685);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812513900', '38', '48125', '유록동', 1096166.947689909, 1688265.934743273);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812514000', '38', '48125', '자산동', 1096891.809898838, 1690346.850187037);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812514100', '38', '48125', '장군동1가', 1096668.7758904453, 1688962.1134402459);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812514200', '38', '48125', '장군동2가', 1096800.14512275, 1689181.0599743945);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812514300', '38', '48125', '장군동3가', 1096889.7026337057, 1689449.127728263);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812514400', '38', '48125', '장군동4가', 1096932.9174354982, 1689677.2671966252);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812514500', '38', '48125', '장군동5가', 1097048.9389037662, 1689994.5203339607);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812514600', '38', '48125', '중성동', 1097807.4831322853, 1690886.234122099);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812514700', '38', '48125', '중앙동1가', 1096754.0375316723, 1688821.0870904354);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812514800', '38', '48125', '중앙동2가', 1097115.0375256164, 1689332.7532236944);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812514900', '38', '48125', '중앙동3가', 1097231.0249126796, 1689848.6040850973);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812515000', '38', '48125', '창동', 1097805.0346827542, 1690643.3025844966);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812515100', '38', '48125', '창포동1가', 1096713.293486, 1688203.1342256665);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812515200', '38', '48125', '창포동2가', 1096619.553405275, 1688130.8567830496);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812515300', '38', '48125', '창포동3가', 1096544.9963233331, 1687943.7606885121);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812515400', '38', '48125', '청계동', 1096283.0489664727, 1688225.1393653788);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812515500', '38', '48125', '추산동', 1097489.5824628747, 1690678.2611423838);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812515600', '38', '48125', '평화동', 1096395.5831457842, 1688550.7109160172);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812515700', '38', '48125', '화영동', 1095995.065986485, 1688219.0360498792);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812515800', '38', '48125', '해운동', 1096624.048102907, 1687664.9857056404);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812515900', '38', '48125', '현동', 1095915.2300890805, 1683629.9486624645);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812516000', '38', '48125', '홍문동', 1096434.8485015319, 1688174.0425728732);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812531000', '38', '48125', '구산면', 1098561.1527888726, 1678384.3726919421);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812532000', '38', '48125', '진동면', 1090619.64342497, 1680555.079728372);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812533000', '38', '48125', '진북면', 1087923.1284582748, 1683046.171293581);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812534000', '38', '48125', '진전면', 1083048.1168169056, 1680602.989838547);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812710100', '38', '48127', '구암동', 1099673.7195406966, 1695671.2961072659);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812710200', '38', '48127', '두척동', 1095297.5997666826, 1694290.9132623773);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812710300', '38', '48127', '봉암동', 1100075.3102644281, 1691947.1141644);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812710400', '38', '48127', '석전동', 1097560.2375566592, 1693360.3753721877);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812710500', '38', '48127', '양덕동', 1098776.943214817, 1693371.5905472892);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812710600', '38', '48127', '합성동', 1098726.5485340054, 1694482.2516987359);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812710700', '38', '48127', '회성동', 1096537.209960316, 1693607.6769773534);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812710800', '38', '48127', '회원동', 1097375.8789156957, 1692109.1508105323);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812725000', '38', '48127', '내서읍', 1092026.1171453102, 1694525.5548692052);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812910100', '38', '48129', '동상동', 1105267.367766, 1685023.383367);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812910200', '38', '48129', '도천동', 1105231.3771586667, 1684869.0906128334);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812910300', '38', '48129', '도만동', 1105232.8826655, 1684520.730889);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812910400', '38', '48129', '신흥동', 1105409.5393690001, 1684215.1207335);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812910500', '38', '48129', '현동', 1105316.3572574283, 1685313.7309815239);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812910700', '38', '48129', '태평동', 1106126.967180534, 1683977.1519030244);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812910800', '38', '48129', '충의동', 1105902.0764233917, 1683948.9445468457);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812910900', '38', '48129', '무송동', 1106151.7270455773, 1683877.125027654);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812911000', '38', '48129', '인의동', 1105776.3546226667, 1683855.0200522218);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812911100', '38', '48129', '숭인동', 1105633.8859064, 1683918.4595068202);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812911200', '38', '48129', '대영동', 1105633.1053708333, 1683867.0996860834);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812911300', '38', '48129', '남빈동', NULL, NULL);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812911500', '38', '48129', '제황산동', 1106384.7987946568, 1684313.9393569278);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812911600', '38', '48129', '속천동', 1106524.8926097818, 1683660.924743218);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812911700', '38', '48129', '대죽동', 1106447.9206445182, 1683596.3189356553);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812911800', '38', '48129', '안곡동', 1106822.254926169, 1680806.7654153977);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812911900', '38', '48129', '수송동', 1105335.0786694174, 1684604.738491351);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812912000', '38', '48129', '회현동', 1105383.6681617226, 1684511.2549225548);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812912100', '38', '48129', '익선동', 1105436.8726536823, 1684433.795262254);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812912200', '38', '48129', '창선동', 1105490.1837695616, 1684411.130149474);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812912300', '38', '48129', '대천동', 1105562.4806565556, 1684419.0535530553);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812912400', '38', '48129', '광화동', 1105601.6984826033, 1684273.6574383676);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812912500', '38', '48129', '통신동', 1105725.408666, 1684400.1493674286);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812912600', '38', '48129', '중앙동', 1105785.3835792104, 1684430.5639800522);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812912700', '38', '48129', '부흥동', 1105888.1560856001, 1684124.5200259998);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812912800', '38', '48129', '중평동', 1105664.8035145078, 1684193.1060138731);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812912900', '38', '48129', '근화동', 1105731.603685769, 1684124.3011377435);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812913000', '38', '48129', '송죽동', NULL, NULL);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812913100', '38', '48129', '화천동', 1105821.466788535, 1684674.9381144438);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812913200', '38', '48129', '송학동', 1105809.5429531054, 1684606.0225002456);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812913300', '38', '48129', '대흥동', 1105767.9091222533, 1684549.887015944);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812913400', '38', '48129', '평안동', 1105621.2604454642, 1684508.80702175);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812913500', '38', '48129', '충무동', 1106196.487515787, 1684670.4052658717);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812913600', '38', '48129', '인사동', 1106335.2377618102, 1684499.478756088);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812913700', '38', '48129', '여좌동', 1105941.637747883, 1685249.9516209464);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812913800', '38', '48129', '태백동', 1106492.6047857832, 1685429.3793414403);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812913900', '38', '48129', '경화동', 1107860.1105564332, 1685212.333668328);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812914000', '38', '48129', '석동', 1109516.1493273252, 1685145.2302022555);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812914100', '38', '48129', '이동', 1108978.7828258881, 1684609.8145266732);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812914200', '38', '48129', '자은동', 1110022.465978467, 1684288.0116026876);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812914300', '38', '48129', '덕산동', 1109546.0155073905, 1684032.0682793276);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812914400', '38', '48129', '풍호동', 1109809.04360903, 1683297.5200951227);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812914500', '38', '48129', '장천동', 1109806.7770918584, 1682179.611786679);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812914600', '38', '48129', '행암동', 1109536.1889894868, 1680782.429341085);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812914700', '38', '48129', '북부동', 1113575.1781999606, 1680871.8402264896);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812914800', '38', '48129', '성내동', 1114020.2775136344, 1680375.0590074304);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812914900', '38', '48129', '서중동', 1113605.7517148785, 1680289.8734782606);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812915000', '38', '48129', '남문동', 1114500.6058493063, 1679549.8156497458);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812915100', '38', '48129', '제덕동', 1113339.4435055668, 1679224.9015054184);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812915200', '38', '48129', '수도동', 1113658.590279229, 1677321.6054573236);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812915300', '38', '48129', '연도동', 1115667.5606364706, 1675200.6890767356);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812915400', '38', '48129', '명동', 1111391.384509743, 1678415.3814696658);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812915500', '38', '48129', '죽곡동', 1111471.6033024096, 1680180.6968107694);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812915600', '38', '48129', '원포동', 1109643.956414512, 1679627.560822726);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812915700', '38', '48129', '남양동', 1116708.1536380742, 1680889.2056970864);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812915800', '38', '48129', '마천동', 1117118.623897997, 1681986.4158166577);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812915900', '38', '48129', '소사동', 1116320.3492156498, 1682189.7937413915);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812916000', '38', '48129', '대장동', 1116485.0397018366, 1683557.5160163916);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812916100', '38', '48129', '두동', 1118022.667347595, 1680897.2188563715);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812916200', '38', '48129', '청안동', 1118214.9569953454, 1679343.5214837978);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812916300', '38', '48129', '안골동', 1118519.07120724, 1678593.504837731);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812916400', '38', '48129', '용원동', 1119988.0205696104, 1679021.3548613733);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4812916500', '38', '48129', '가주동', 1121778.0890186275, 1680665.3723141518);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817010100', '38', '48170', '망경동', 1053080.0753556648, 1687630.8669418127);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817010200', '38', '48170', '주약동', 1053674.4343092127, 1686653.8316956158);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817010300', '38', '48170', '강남동', 1053477.4650581153, 1687817.7690257188);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817010400', '38', '48170', '칠암동', 1053932.008289975, 1687687.7719217064);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817010500', '38', '48170', '본성동', 1052942.080759158, 1688616.7397451773);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817010600', '38', '48170', '동성동', 1053269.206323078, 1688693.5354213743);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817010700', '38', '48170', '남성동', 1052425.9950769998, 1688334.0667505006);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817010800', '38', '48170', '인사동', 1052223.9083475685, 1688592.955428664);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817010900', '38', '48170', '대안동', 1053222.6947761178, 1688956.9447328493);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817011000', '38', '48170', '평안동', 1053058.564023682, 1689274.8287985758);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817011100', '38', '48170', '중안동', 1052869.3013656521, 1688873.3565185992);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817011200', '38', '48170', '계동', 1052880.9582769014, 1689179.0339151956);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817011300', '38', '48170', '봉곡동', 1052321.094956551, 1688954.4592807256);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817011400', '38', '48170', '상봉동', 1052218.818788602, 1689505.9976673715);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817011500', '38', '48170', '봉래동', 1053144.897693758, 1689639.9329749541);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817011600', '38', '48170', '수정동', 1053320.4226677208, 1689294.4953735166);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817011700', '38', '48170', '장대동', 1053528.666770847, 1688856.3473979943);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817011800', '38', '48170', '옥봉동', 1053884.0160241097, 1689066.3468005662);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817011900', '38', '48170', '상대동', 1055715.4958106233, 1687617.9048386454);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817012000', '38', '48170', '하대동', 1056495.046184658, 1688511.2928485565);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817012100', '38', '48170', '상평동', 1055803.0649134237, 1686692.670418012);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817012200', '38', '48170', '초전동', 1055846.498615258, 1690160.3934060854);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817012300', '38', '48170', '장재동', 1054590.7832531398, 1691105.9908865516);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817012400', '38', '48170', '하촌동', 1053294.2500013993, 1691401.71127507);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817012500', '38', '48170', '신안동', 1051710.6840664777, 1687652.5934610786);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817012600', '38', '48170', '평거동', 1050853.244386611, 1686314.6496168163);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817012700', '38', '48170', '이현동', 1051060.9609016937, 1688522.1983535432);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817012800', '38', '48170', '유곡동', 1051099.0119247807, 1689420.9632148466);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817012900', '38', '48170', '판문동', 1049177.923860759, 1687346.516093648);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817013000', '38', '48170', '귀곡동', 1046808.6689732, 1685564.1838526);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817013100', '38', '48170', '가좌동', 1055267.690928353, 1684693.587357111);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817013200', '38', '48170', '호탄동', 1056116.3880636648, 1685485.2806532069);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817013700', '38', '48170', '충무공동', 1058616.7382566845, 1686797.2833787461);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817025000', '38', '48170', '문산읍', 1061133.0639357488, 1685321.783676868);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817031000', '38', '48170', '내동면', 1050180.454649698, 1683509.892878607);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817032000', '38', '48170', '정촌면', 1055496.504645073, 1681438.2386346762);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817033000', '38', '48170', '금곡면', 1062608.9477628868, 1679394.1590437745);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817035000', '38', '48170', '진성면', 1066642.3866394826, 1687378.8960641464);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817036000', '38', '48170', '일반성면', 1071256.7093934678, 1685766.3291300144);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817037000', '38', '48170', '이반성면', 1075402.9387096793, 1685998.029170527);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817038000', '38', '48170', '사봉면', 1070263.0009990379, 1689225.3363824827);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817039000', '38', '48170', '지수면', 1069043.1196702328, 1693697.2926183317);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817040000', '38', '48170', '대곡면', 1061225.6975406045, 1696227.3190423814);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817041000', '38', '48170', '금산면', 1059210.420056719, 1690814.9290620957);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817042000', '38', '48170', '집현면', 1053853.0360644143, 1694625.6493443649);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817043000', '38', '48170', '미천면', 1055720.281864762, 1700963.0170366568);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817044000', '38', '48170', '명석면', 1047768.8491223329, 1694985.00642345);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817045000', '38', '48170', '대평면', 1042743.274643892, 1690242.3076343713);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4817046000', '38', '48170', '수곡면', 1039104.5804402328, 1689133.2900363675);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822010100', '38', '48220', '도천동', 1083395.7759052648, 1649802.8549817677);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822010200', '38', '48220', '서호동', 1084004.7096475547, 1650144.0388038934);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822010300', '38', '48220', '명정동', 1083809.1298156485, 1650554.3512988524);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822010400', '38', '48220', '항남동', 1084352.6986674774, 1650107.3638582332);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822010500', '38', '48220', '중앙동', 1084431.468648501, 1650415.507224917);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822010600', '38', '48220', '문화동', 1084263.3776038734, 1650642.9930859103);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822010700', '38', '48220', '태평동', 1084627.9027597415, 1650715.878612463);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822010800', '38', '48220', '동호동', 1084973.1028153987, 1650245.1171597077);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822010900', '38', '48220', '정량동', 1085222.3727835203, 1650674.5563226456);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822011000', '38', '48220', '북신동', 1084814.7965029161, 1651392.7053794935);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822011100', '38', '48220', '무전동', 1085012.8084906577, 1651827.8113407441);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822011200', '38', '48220', '평림동', 1081608.467976663, 1651597.201432452);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822011300', '38', '48220', '인평동', 1081650.1132365137, 1650009.199650823);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822011400', '38', '48220', '당동', 1083046.8904051005, 1649373.7557973217);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822011500', '38', '48220', '미수동', 1082593.4872282508, 1648465.690207057);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822011600', '38', '48220', '봉평동', 1083850.6469621304, 1648699.8781989352);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822011700', '38', '48220', '도남동', 1084510.3584740695, 1648512.191159069);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822025000', '38', '48220', '산양읍', 1081408.510491855, 1644623.6555397136);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822031000', '38', '48220', '용남면', 1087019.9619182262, 1654595.841943123);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822033000', '38', '48220', '도산면', 1077799.1026905375, 1657112.1939208517);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('4822034000', '38', '48220', '광도면', 1083285.9188079967, 1657383.8531098282);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011010100', '39', '50110', '일도일동', 909694.200859305, 1502750.4952031057);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011010200', '39', '50110', '일도이동', 910706.2737098557, 1502219.3906971961);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011010300', '39', '50110', '이도일동', 909690.1189261265, 1501976.0979363853);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011010400', '39', '50110', '이도이동', 910564.3972661716, 1500941.5540943411);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011010500', '39', '50110', '삼도일동', 908925.2902882989, 1501644.2812620434);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011010600', '39', '50110', '삼도이동', 909109.1833918457, 1502543.0396770965);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011010700', '39', '50110', '건입동', 910488.1043188797, 1503042.771733021);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011010800', '39', '50110', '용담일동', 908491.8672897454, 1502233.404624035);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011010900', '39', '50110', '용담이동', 907807.3644379547, 1502225.5314669698);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011011000', '39', '50110', '용담삼동', 907370.2178591583, 1503055.4700862542);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011011100', '39', '50110', '화북일동', 913261.6457049927, 1503542.1695149697);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011011200', '39', '50110', '화북이동', 912917.6845791899, 1501908.6899623426);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011011300', '39', '50110', '삼양일동', 915665.5902591889, 1504185.1437564928);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011011400', '39', '50110', '삼양이동', 914892.2476456136, 1503700.3098749444);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011011500', '39', '50110', '삼양삼동', 914237.6754245594, 1504105.560849754);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011011600', '39', '50110', '봉개동', 916247.5364473143, 1499586.742873641);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011011700', '39', '50110', '아라일동', 911274.8005433854, 1498130.664992212);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011011800', '39', '50110', '아라이동', 911585.2336907213, 1499480.0863044504);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011011900', '39', '50110', '오라일동', 908745.554374171, 1500855.5234069796);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011012000', '39', '50110', '오라이동', 908052.5285973864, 1499039.8894508556);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011012100', '39', '50110', '오라삼동', 907618.1936253448, 1500884.6882802828);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011012200', '39', '50110', '노형동', 904890.7840319711, 1499337.129077272);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011012300', '39', '50110', '외도일동', 900526.1047309756, 1500022.3970631405);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011012400', '39', '50110', '외도이동', 900642.4891549795, 1500707.5967354113);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011012500', '39', '50110', '이호일동', 903082.7349123815, 1501337.441307382);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011012600', '39', '50110', '이호이동', 903415.7339786089, 1500538.793596282);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011012700', '39', '50110', '도두일동', 904219.0366509563, 1501710.1779733205);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011012800', '39', '50110', '도두이동', 905835.7541188928, 1501402.610044447);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011012900', '39', '50110', '도남동', 909547.0302838202, 1500605.9372449385);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011013000', '39', '50110', '도련일동', 915060.1271369328, 1502215.2264687466);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011013100', '39', '50110', '도련이동', 915710.4734983041, 1502824.046308523);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011013200', '39', '50110', '용강동', 915139.1092626072, 1498343.2921226916);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011013300', '39', '50110', '회천동', 917609.0183228644, 1500907.161946022);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011013400', '39', '50110', '오등동', 909737.4317082874, 1497610.6267834725);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011013500', '39', '50110', '월평동', 914057.3205761737, 1497837.102270868);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011013600', '39', '50110', '영평동', 913460.9436163864, 1498961.0739903764);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011013700', '39', '50110', '연동', 906411.2182209056, 1499849.2885243564);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011013800', '39', '50110', '도평동', 902483.1204337331, 1499173.5085415589);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011013900', '39', '50110', '해안동', 903587.1058430597, 1496208.9220303106);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011014000', '39', '50110', '내도동', 901691.3143642533, 1500585.4842871516);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011025000', '39', '50110', '한림읍', 885428.1224963762, 1490552.255319728);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011025300', '39', '50110', '애월읍', 895424.1102453615, 1496314.9946229048);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011025600', '39', '50110', '구좌읍', 936710.3142378331, 1503961.653889393);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011025900', '39', '50110', '조천읍', 921921.7896589137, 1503260.3876775831);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011031000', '39', '50110', '한경면', 879839.0561567394, 1482397.486286431);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011032000', '39', '50110', '추자면', 889969.726056711, 1552043.5905108484);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5011033000', '39', '50110', '우도면', 949320.9496239151, 1501911.6100584082);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013010100', '39', '50130', '서귀동', 912739.0356561921, 1473368.2122694529);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013010200', '39', '50130', '법환동', 908025.058104712, 1472560.0984580356);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013010300', '39', '50130', '서호동', 908544.5752701539, 1474399.4503958665);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013010400', '39', '50130', '호근동', 909830.2565782935, 1474389.0245543004);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013010500', '39', '50130', '동홍동', 913327.6774619896, 1474657.6053615594);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013010600', '39', '50130', '서홍동', 911824.1517110713, 1474695.9027076107);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013010700', '39', '50130', '상효동', 916043.2470132726, 1477335.433727336);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013010800', '39', '50130', '하효동', 917898.3685756727, 1474512.5245586939);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013010900', '39', '50130', '신효동', 917134.3503230419, 1475185.6807673804);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013011000', '39', '50130', '보목동', 916230.9282529, 1472843.133532277);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013011100', '39', '50130', '토평동', 914818.9934367051, 1475876.476147291);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013011200', '39', '50130', '중문동', 900072.4047513901, 1474386.0162614607);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013011300', '39', '50130', '회수동', 901567.8327393667, 1475133.65234862);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013011400', '39', '50130', '대포동', 901044.3175650435, 1473491.8596797339);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013011500', '39', '50130', '월평동', 903309.3363243906, 1473173.3453484473);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013011600', '39', '50130', '강정동', 906035.2152087151, 1473449.8131460128);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013011700', '39', '50130', '도순동', 904417.2063412864, 1474198.1083555853);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013011800', '39', '50130', '하원동', 903133.8662055436, 1474762.4610054872);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013011900', '39', '50130', '색달동', 898767.7273788926, 1475165.811609189);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013012000', '39', '50130', '상예동', 896381.6755879915, 1474593.149558792);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013012100', '39', '50130', '하예동', 895726.2416019236, 1472687.7728039578);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013012200', '39', '50130', '영남동', 907041.8375352001, 1477636.347078);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013025000', '39', '50130', '대정읍', 883325.6418451824, 1473395.2422990438);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013025300', '39', '50130', '남원읍', 924321.6644293151, 1477971.0911176065);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013025900', '39', '50130', '성산읍', 943148.797092059, 1492352.740792227);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013031000', '39', '50130', '안덕면', 890936.1128950528, 1474903.9438007465);
INSERT INTO `area_eupmyundong` (`code`, `sido_code`, `sigungu_code`, `name`, `axis_x`, `axis_y`) VALUES
	('5013032000', '39', '50130', '표선면', 935220.2890181838, 1483467.8557157398);
/*!40000 ALTER TABLE `area_eupmyundong` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `area_sido` (
  `code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '시/도 코드',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '시/도 이름',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `area_sido`;
/*!40000 ALTER TABLE `area_sido` DISABLE KEYS */;
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('11', '서울특별시');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('21', '부산광역시');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('22', '대구광역시');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('23', '인천광역시');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('24', '광주광역시');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('25', '대전광역시');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('26', '울산광역시');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('29', '세종특별자치시');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('31', '경기도');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('32', '강원도');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('33', '충청북도');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('34', '충청남도');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('35', '전라북도');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('36', '전라남도');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('37', '경상북도');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('38', '경상남도');
INSERT INTO `area_sido` (`code`, `name`) VALUES
	('39', '제주특별자치도');
/*!40000 ALTER TABLE `area_sido` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `area_sigungu` (
  `code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '시/군/구 코드',
  `sido_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '소속 시/도 코드',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '시/군/구 이름',
  PRIMARY KEY (`code`),
  UNIQUE KEY `UK_area_sigungu` (`sido_code`,`code`),
  CONSTRAINT `FK_area_sigungu_sido_code` FOREIGN KEY (`sido_code`) REFERENCES `area_sido` (`code`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `area_sigungu`;
/*!40000 ALTER TABLE `area_sigungu` DISABLE KEYS */;
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('11110', '11', '종로구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('11140', '11', '중구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('11170', '11', '용산구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('11200', '11', '성동구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('11215', '11', '광진구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('11230', '11', '동대문구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('11260', '11', '중랑구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('11290', '11', '성북구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26110', '21', '중구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26140', '21', '서구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26170', '21', '동구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26200', '21', '영도구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26230', '21', '부산진구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26260', '21', '동래구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26290', '21', '남구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26320', '21', '북구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26350', '21', '해운대구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26380', '21', '사하구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26410', '21', '금정구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26440', '21', '강서구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26470', '21', '연제구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('26500', '21', '수영구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('27110', '22', '중구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('27140', '22', '동구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('27170', '22', '서구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('27200', '22', '남구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('27230', '22', '북구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('27260', '22', '수성구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('27290', '22', '달서구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('27710', '22', '달성군');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('28110', '23', '중구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('28140', '23', '동구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('28177', '23', '미추홀구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('28185', '23', '연수구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('28200', '23', '남동구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('28237', '23', '부평구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('28245', '23', '계양구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('29110', '24', '동구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('29140', '24', '서구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('29155', '24', '남구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('29170', '24', '북구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('29200', '24', '광산구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('30110', '25', '동구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('30140', '25', '중구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('31110', '26', '중구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('31140', '26', '남구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('31170', '26', '동구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('31200', '26', '북구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('31710', '26', '울주군');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('36110', '29', '');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41111', '31', '수원시 장안구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41113', '31', '수원시 권선구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41115', '31', '수원시 팔달구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41117', '31', '수원시 영통구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41131', '31', '성남시 수정구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41133', '31', '성남시 중원구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41135', '31', '성남시 분당구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41150', '31', '의정부시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41171', '31', '안양시 만안구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41173', '31', '안양시 동안구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41190', '31', '부천시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41210', '31', '광명시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41220', '31', '평택시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41250', '31', '동두천시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41271', '31', '안산시 상록구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41273', '31', '안산시 단원구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41281', '31', '고양시 덕양구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41285', '31', '고양시 일산동구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41287', '31', '고양시 일산서구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41290', '31', '과천시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41310', '31', '구리시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41360', '31', '남양주시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41370', '31', '오산시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41390', '31', '시흥시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41410', '31', '군포시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41430', '31', '의왕시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41450', '31', '하남시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41461', '31', '용인시 처인구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41463', '31', '용인시 기흥구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41465', '31', '용인시 수지구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41480', '31', '파주시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41500', '31', '이천시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41550', '31', '안성시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41570', '31', '김포시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('41590', '31', '화성시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('42110', '32', '춘천시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('43111', '33', '청주시 상당구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('43112', '33', '청주시 서원구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('43113', '33', '청주시 흥덕구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('43114', '33', '청주시 청원구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('43130', '33', '충주시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('44131', '34', '천안시 동남구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('45111', '35', '전주시 완산구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('46110', '36', '목포시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('46130', '36', '여수시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('46150', '36', '순천시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('46170', '36', '나주시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('46230', '36', '광양시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('46710', '36', '담양군');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('46720', '36', '곡성군');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('46730', '36', '구례군');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('46770', '36', '고흥군');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('47111', '37', '포항시 남구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('47113', '37', '포항시 북구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('47130', '37', '경주시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('48121', '38', '창원시 의창구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('48123', '38', '창원시 성산구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('48125', '38', '창원시 마산합포구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('48127', '38', '창원시 마산회원구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('48129', '38', '창원시 진해구');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('48170', '38', '진주시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('48220', '38', '통영시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('50110', '39', '제주시');
INSERT INTO `area_sigungu` (`code`, `sido_code`, `name`) VALUES
	('50130', '39', '서귀포시');
/*!40000 ALTER TABLE `area_sigungu` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cart` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `consumer_id` int(10) unsigned zerofill NOT NULL COMMENT '구매자 id',
  `sales_product_id` bigint(20) unsigned zerofill NOT NULL COMMENT '등록된 상품 id',
  `coupon_id` bigint(20) unsigned zerofill DEFAULT NULL COMMENT '적용한 쿠폰 id, 같은 쿠폰이 중복 적용되지 않도록 unique 처리',
  `qty` smallint unsigned NOT NULL DEFAULT '1' COMMENT '상품 개수',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `UK_cart_coupon_id` (`coupon_id`),
  KEY `FK_cart_consumer_id` (`consumer_id`),
  KEY `FK_cart_sales_product_id` (`sales_product_id`),
  CONSTRAINT `FK_cart_consumer_id` FOREIGN KEY (`consumer_id`) REFERENCES `member_consumer` (`uid`) ON DELETE CASCADE,
  CONSTRAINT `FK_cart_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`uid`),
  CONSTRAINT `FK_cart_sales_product_id` FOREIGN KEY (`sales_product_id`) REFERENCES `sales_product` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`uid`, `consumer_id`, `sales_product_id`, `coupon_id`, `qty`) VALUES
	(00000000000000000017, 0000000002, 00000000000000000007, NULL, 1);
INSERT INTO `cart` (`uid`, `consumer_id`, `sales_product_id`, `coupon_id`, `qty`) VALUES
	(00000000000000000019, 0000000002, 00000000000000000011, NULL, 1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

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

DELETE FROM `coupon`;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `member_admin` (
  `uid` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '이메일, 로그인 id',
  `pwd` varbinary(64) NOT NULL COMMENT '로그인 비밀번호',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '이름',
  `contact` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '연락처',
  `unread_noti_count` tinyint unsigned NOT NULL DEFAULT '0',
  `reg_time` datetime NOT NULL DEFAULT (now()) COMMENT '등록 시간',
  `last_access_time` datetime NOT NULL DEFAULT (now()) COMMENT '마지막 접속 시간',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `member_admin`;
/*!40000 ALTER TABLE `member_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_admin` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `member_consumer` (
  `uid` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '이메일, 로그인 id',
  `pwd` varbinary(64) NOT NULL COMMENT '로그인 비밀번호',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '이름',
  `level` tinyint(3) unsigned zerofill NOT NULL DEFAULT '000' COMMENT '120: 최우수, 110: 우수, 100: normal, 0: prepare',
  `eupmyundong_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '소비자가 위치한 법정동의 코드',
  `address1` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '기본 주소',
  `address2` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '상세 주소',
  `contact` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '전화 연락처',
  `unread_noti_count` tinyint unsigned NOT NULL DEFAULT '0',
  `total_buy_count` int unsigned NOT NULL DEFAULT '0' COMMENT '총 구매 횟수',
  `total_buy_cost` bigint unsigned NOT NULL DEFAULT '0' COMMENT '총 구매 비용',
  `reg_time` datetime NOT NULL DEFAULT (now()) COMMENT '등록 시간',
  `last_access_time` datetime NOT NULL DEFAULT (now()) COMMENT '마지막 접속 시간',
  `deny_time` datetime DEFAULT NULL COMMENT '관리자에 의해 차단된 시간',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `member_consumer`;
/*!40000 ALTER TABLE `member_consumer` DISABLE KEYS */;
INSERT INTO `member_consumer` (`uid`, `email`, `pwd`, `name`, `level`, `eupmyundong_code`, `address1`, `address2`, `contact`, `unread_noti_count`, `total_buy_count`, `total_buy_cost`, `reg_time`, `last_access_time`, `deny_time`) VALUES
	(0000000001, 'consumer3@pickmeup.com', _binary 0x2F53145ABC4D930A3960DDF1C80EC2E36F3D1BDCF7FA6FC8F1D69A8C3FAD56B7A05E1099DF42C4F2C9180D91E9AB252548708BC1FB6986E7FC382B9889991484, '김상동', 000, '4119010900', '경기도 부천시 상일로 72', '1837동 703호', '01048485959', 10, 10, 98491, '2022-02-05 07:46:16', '2022-02-05 07:46:16', NULL);
INSERT INTO `member_consumer` (`uid`, `email`, `pwd`, `name`, `level`, `eupmyundong_code`, `address1`, `address2`, `contact`, `unread_noti_count`, `total_buy_count`, `total_buy_cost`, `reg_time`, `last_access_time`, `deny_time`) VALUES
	(0000000002, 'consumer1@pickmeup.com', _binary 0xD6F1BEC314D7033C7C754F1D53F425A2CB3C104019D21E5CF171D0665B09EDBC6D558F213075D869793C5B0C9FDF7EC0E1503BC6E0572A6F66D1DDB0B2C5485A, '이중동', 000, '4119010800', '경기도 부천시 계남로 195', '설악마을 307동 603호', '01012123434', 0, 2, 31920, '2022-02-05 07:48:43', '2022-02-05 07:48:43', NULL);
INSERT INTO `member_consumer` (`uid`, `email`, `pwd`, `name`, `level`, `eupmyundong_code`, `address1`, `address2`, `contact`, `unread_noti_count`, `total_buy_count`, `total_buy_cost`, `reg_time`, `last_access_time`, `deny_time`) VALUES
	(0000000003, 'consumer2@pickmeup.com', _binary 0xCF283CAF9E1E543EC10417F1F0714CDEDFACD902794C980FF2FBAB1F37F1BA952CCE9389CADE74ED74DF33708040CF0B42FBFCF6D742083C1A36EBD0B8C3933F, '박부평', 000, '2823710100', '인천 부평구 경원대로1367번길 42-12 (뉴 롯데 케슬)', '601호', '01023234545', 0, 0, 0, '2022-02-05 07:54:16', '2022-02-05 07:54:16', NULL);
INSERT INTO `member_consumer` (`uid`, `email`, `pwd`, `name`, `level`, `eupmyundong_code`, `address1`, `address2`, `contact`, `unread_noti_count`, `total_buy_count`, `total_buy_cost`, `reg_time`, `last_access_time`, `deny_time`) VALUES
	(0000000004, 'nam@naver.com', _binary 0xC0406C025A329927DBC5E3AEF2B73BA7AB8C5D2579C5A9CD078672E43B2E7F26BDAC8CAC6C836CE45E927045B85B89709D56FDDA55CF88FAE3DD00D3F141B819, '남기덕', 000, '1111010100', '경기도', '구리시', '01015347777', 0, 0, 0, '2022-02-06 03:30:29', '2022-02-06 03:30:29', NULL);
INSERT INTO `member_consumer` (`uid`, `email`, `pwd`, `name`, `level`, `eupmyundong_code`, `address1`, `address2`, `contact`, `unread_noti_count`, `total_buy_count`, `total_buy_cost`, `reg_time`, `last_access_time`, `deny_time`) VALUES
	(0000000005, 'ljm170@naver.com', _binary 0x225441B09B30DB57581BB3FCC3F0343213108D5EFD4699AD106E718EF33665FAD134DFC7849F0F88A08066D2C0AA059A49D354C764CB3934ECA46BDAB9EBACAC, '이종민', 000, '1111010100', '서울시', '성북구', '01020446199', 0, 0, 0, '2022-02-08 05:44:34', '2022-02-08 05:44:34', NULL);
/*!40000 ALTER TABLE `member_consumer` ENABLE KEYS */;

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

DELETE FROM `member_seller`;
/*!40000 ALTER TABLE `member_seller` DISABLE KEYS */;
INSERT INTO `member_seller` (`uid`, `email`, `pwd`, `name`, `level`, `owner_name`, `eupmyundong_code`, `address1`, `address2`, `tele_contact`, `company_classification`, `company_code`, `company_name`, `unread_noti_count`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `reg_time`, `last_access_time`, `deny_time`) VALUES
	(0000000001, 'seller1@pickmeup.com', _binary 0x884A286CE17807EA32BC0C079FA5EE85F0BA0DE73851005C24FA3E567D8A420E6290F2E9FE71760F5D72F8B2ABE9FAB0321B31D964068107B8C430DA4A09B6C3, '노마진마트 중동점', 000, '김자희', '4119010800', '경기 부천시 중동로155번길 45', '노마진마트 중동점', '032-654-2861', 1, '375-87-00088', '(주)노마진마트', 10, 11, 4.6, 5, '2022-02-05 06:53:12', '2022-02-05 06:53:12', NULL);
INSERT INTO `member_seller` (`uid`, `email`, `pwd`, `name`, `level`, `owner_name`, `eupmyundong_code`, `address1`, `address2`, `tele_contact`, `company_classification`, `company_code`, `company_name`, `unread_noti_count`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `reg_time`, `last_access_time`, `deny_time`) VALUES
	(0000000002, 'seller2@pickmeup.com', _binary 0xE15FEEE9012D396F4523C884AA235D1F6DAB6512AFC18B93497F66E6DAF39E9E0313B8D8F2658A542F6BA9C8033CD639427E9F1AD124DB9909506005BF8170B0, '한아름마트 부평점', 000, '백용수', '2823710100', '인천광역시 부평구 부평5동', '한아름마트', '032-526-1991', 0, '137-12-68794', '(주)한아름마트', 1, 1, NULL, 0, '2022-02-05 07:04:19', '2022-02-05 07:04:19', NULL);
INSERT INTO `member_seller` (`uid`, `email`, `pwd`, `name`, `level`, `owner_name`, `eupmyundong_code`, `address1`, `address2`, `tele_contact`, `company_classification`, `company_code`, `company_name`, `unread_noti_count`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `reg_time`, `last_access_time`, `deny_time`) VALUES
	(0000000017, 'abc', _binary 0xFDDB73640C8500F5EA2EC412A2098F2299A223993253B127B4C56686679C3B90AA35A7CBD70F29E2129222BC3DF3A3A39E0AB0B134780450F4231C237F4886FF, '진마트', 000, '남', '1111012600', '서울 종로구 종로 1 (종로1가, 교보생명빌딩)', '11', '011', 0, '123456', '남', 0, 0, NULL, 0, '2022-02-14 00:19:58', '2022-02-14 00:19:58', NULL);
/*!40000 ALTER TABLE `member_seller` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `notification_admin` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned zerofill NOT NULL COMMENT '알림을 받은 관리자 id',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '알림의 메시지 내용',
  `target_type` tinyint unsigned NOT NULL COMMENT '알림이 가리키는 대상의 타입. 1: order, 2: review, 3: product, 4: sales_page, 5: sales_product',
  `target_id` bigint(20) unsigned zerofill NOT NULL COMMENT '알림이 가리키는 대상의 id',
  `source_type` tinyint unsigned NOT NULL COMMENT '알림을 발생시킨 멤버의 타입. 1: admin, 2: consumer, 3: seller',
  `source_id` int(10) unsigned zerofill NOT NULL COMMENT '알림을 발생시킨 멤버의 id',
  `reg_time` datetime NOT NULL DEFAULT (now()),
  PRIMARY KEY (`uid`),
  KEY `FK_notification_admin_admin_id` (`admin_id`),
  CONSTRAINT `FK_notification_admin_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `member_admin` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='관리자가 직접 삭제하거나, 관리자 계정이 삭제되면 함께 삭제된다.';

DELETE FROM `notification_admin`;
/*!40000 ALTER TABLE `notification_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_admin` ENABLE KEYS */;

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

DELETE FROM `notification_consumer`;
/*!40000 ALTER TABLE `notification_consumer` DISABLE KEYS */;
INSERT INTO `notification_consumer` (`uid`, `consumer_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000426, 0000000001, '[칠레산] 생블루베리 310g가 준비되었습니다.', 1, 00000000000000000018, 3, 0000000001, '2022-02-14 02:03:34');
INSERT INTO `notification_consumer` (`uid`, `consumer_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000427, 0000000001, '[칠레산] 생블루베리 310g가 픽업 완료되었습니다.', 1, 00000000000000000018, 3, 0000000001, '2022-02-14 02:03:41');
INSERT INTO `notification_consumer` (`uid`, `consumer_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000428, 0000000001, '소프트 필라델피아 크림치즈 플레인 200g가 준비되었습니다.', 1, 00000000000000000017, 3, 0000000001, '2022-02-14 02:04:20');
INSERT INTO `notification_consumer` (`uid`, `consumer_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000429, 0000000001, '농심 신라면 120gx5입가 준비되었습니다.', 1, 00000000000000000016, 3, 0000000001, '2022-02-14 02:04:26');
INSERT INTO `notification_consumer` (`uid`, `consumer_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000430, 0000000001, '소프트 필라델피아 크림치즈 플레인 200g가 픽업 완료되었습니다.', 1, 00000000000000000017, 3, 0000000001, '2022-02-14 02:06:00');
INSERT INTO `notification_consumer` (`uid`, `consumer_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000431, 0000000001, '[칠레산] 생블루베리 310g가 준비되었습니다.', 1, 00000000000000000022, 3, 0000000001, '2022-02-14 12:43:40');
INSERT INTO `notification_consumer` (`uid`, `consumer_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000432, 0000000001, '농심 신라면 120gx5입가 준비되었습니다.', 1, 00000000000000000021, 3, 0000000001, '2022-02-14 12:43:43');
INSERT INTO `notification_consumer` (`uid`, `consumer_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000433, 0000000001, '[칠레산] 생블루베리 310g가 픽업 완료되었습니다.', 1, 00000000000000000022, 3, 0000000001, '2022-02-14 12:44:15');
INSERT INTO `notification_consumer` (`uid`, `consumer_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000434, 0000000001, '농심 신라면 120gx5입가 픽업 완료되었습니다.', 1, 00000000000000000021, 3, 0000000001, '2022-02-14 12:44:18');
INSERT INTO `notification_consumer` (`uid`, `consumer_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000435, 0000000001, '농심 신라면 120gx5입가 픽업 완료되었습니다.', 1, 00000000000000000016, 3, 0000000001, '2022-02-14 12:44:21');
/*!40000 ALTER TABLE `notification_consumer` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `notification_seller` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) unsigned zerofill NOT NULL COMMENT '알림을 받은 판매자 id',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '알림의 메시지 내용',
  `target_type` tinyint unsigned NOT NULL COMMENT '알림이 가리키는 대상의 타입. 1: order, 2: review, 3: product, 4: sales_page, 5: sales_product',
  `target_id` bigint(20) unsigned zerofill NOT NULL COMMENT '알림이 가리키는 대상의 id',
  `source_type` tinyint unsigned NOT NULL COMMENT '알림을 발생시킨 멤버의 타입. 1: admin, 2: consumer, 3: seller',
  `source_id` int(10) unsigned zerofill NOT NULL COMMENT '알림을 발생시킨 멤버의 id',
  `reg_time` datetime NOT NULL DEFAULT (now()),
  PRIMARY KEY (`uid`),
  KEY `FK_notification_seller_seller_id` (`seller_id`),
  CONSTRAINT `FK_notification_seller_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `member_seller` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='판매자가 직접 삭제하거나, 판매자 계정이 삭제되면 함께 삭제된다.';

DELETE FROM `notification_seller`;
/*!40000 ALTER TABLE `notification_seller` DISABLE KEYS */;
INSERT INTO `notification_seller` (`uid`, `seller_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000024, 0000000001, '후기: 김상동님께서 농심 신라면 120gx5입의 후기를 남겼습니다.', 2, 00000000000000000012, 2, 0000000001, '2022-02-14 00:49:12');
INSERT INTO `notification_seller` (`uid`, `seller_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000025, 0000000001, '새로운 주문: 김상동님께서 농심 신라면 120gx5입를 2개 주문하셨습니다.', 1, 00000000000000000016, 2, 0000000001, '2022-02-14 01:55:22');
INSERT INTO `notification_seller` (`uid`, `seller_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000026, 0000000001, '새로운 주문: 김상동님께서 소프트 필라델피아 크림치즈 플레인 200g를 3개 주문하셨습니다.', 1, 00000000000000000017, 2, 0000000001, '2022-02-14 01:55:22');
INSERT INTO `notification_seller` (`uid`, `seller_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000027, 0000000001, '새로운 주문: 김상동님께서 [칠레산] 생블루베리 310g를 2개 주문하셨습니다.', 1, 00000000000000000018, 2, 0000000001, '2022-02-14 01:57:02');
INSERT INTO `notification_seller` (`uid`, `seller_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000028, 0000000001, '후기: 김상동님께서 소프트 필라델피아 크림치즈 플레인 200g의 후기를 남겼습니다.', 2, 00000000000000000013, 2, 0000000001, '2022-02-14 02:09:09');
INSERT INTO `notification_seller` (`uid`, `seller_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000029, 0000000002, '주문 취소: 이중동님께서 CJ 햇반 210g 36개 1박스 2개 주문을 취소하셨습니다.', 1, 00000000000000000003, 2, 0000000002, '2022-02-14 02:31:44');
INSERT INTO `notification_seller` (`uid`, `seller_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000030, 0000000001, '새로운 주문: 김상동님께서 [칠레산] 생블루베리 310g를 1개 주문하셨습니다.', 1, 00000000000000000019, 2, 0000000001, '2022-02-14 12:37:46');
INSERT INTO `notification_seller` (`uid`, `seller_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000031, 0000000001, '새로운 주문: 김상동님께서 소프트 필라델피아 크림치즈 플레인 200g를 4개 주문하셨습니다.', 1, 00000000000000000020, 2, 0000000001, '2022-02-14 12:37:46');
INSERT INTO `notification_seller` (`uid`, `seller_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000032, 0000000001, '새로운 주문: 김상동님께서 농심 신라면 120gx5입를 1개 주문하셨습니다.', 1, 00000000000000000021, 2, 0000000001, '2022-02-14 12:37:46');
INSERT INTO `notification_seller` (`uid`, `seller_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000033, 0000000001, '새로운 주문: 김상동님께서 [칠레산] 생블루베리 310g를 2개 주문하셨습니다.', 1, 00000000000000000022, 2, 0000000001, '2022-02-14 12:40:52');
INSERT INTO `notification_seller` (`uid`, `seller_id`, `message`, `target_type`, `target_id`, `source_type`, `source_id`, `reg_time`) VALUES
	(00000000000000000034, 0000000001, '후기: 김상동님께서 농심 신라면 120gx5입의 후기를 남겼습니다.', 2, 00000000000000000014, 2, 0000000001, '2022-02-14 12:46:11');
/*!40000 ALTER TABLE `notification_seller` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `order` (
  `uid` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '판매자 id',
  `purchase_payment_id` bigint(20) unsigned zerofill NOT NULL COMMENT '결제의 id. payment와 order는 1:N의 관계(여러개의 order는 하나의 payment에 속한다)',
  `consumer_id` int(10) unsigned zerofill DEFAULT NULL COMMENT '구매자 id',
  `seller_id` int(10) unsigned zerofill DEFAULT NULL COMMENT '판매자 id',
  `seller_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '판매자의 이름',
  `sales_product_id` bigint(20) unsigned zerofill DEFAULT NULL COMMENT '구매한 상품에 대한 id. 구매 내역에서 클릭할 때 구매한 페이지로 이동하기 위해 사용',
  `sales_page_id` bigint(20) unsigned zerofill DEFAULT NULL COMMENT '상품을 구매한 판매 페이지의 id',
  `product_id` bigint(20) unsigned zerofill DEFAULT NULL COMMENT '상품 id',
  `product_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '구매한 상품의 이름 / 상품 페이지가 삭제되어도 이름을 표기하기 위함',
  `product_price` int unsigned NOT NULL COMMENT '주문할 때 원래 가격',
  `product_discount_rate` tinyint unsigned NOT NULL COMMENT '주문할 때의 기본 할인율',
  `receive_method` tinyint unsigned NOT NULL COMMENT '수령 방법. 0: 직접 픽업, 1: 일반 배송, 2: 당일 배송',
  `delivery_fee` smallint unsigned DEFAULT NULL COMMENT '배송비',
  `together_delivery_order_id` bigint(20) unsigned zerofill DEFAULT NULL COMMENT '합배송비를 담당하는 주문의 id. 만약 해당 주문이 취소될 경우 이를 참조하고 있는 주문들 중 가장 높은 배송비를 가진 주문으로 재 설정한다.',
  `qty` smallint unsigned NOT NULL COMMENT '구매 갯수',
  `state` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '주문 진행 상태. 0: 장바구니, 10: 결제 대기, 20: 결제 완료, 30: 상품 준비, 40: 상품 준비 완료, 50: 배송 준비, 60: 배송중, 100: 수취 완료, 110: 후기 대기, 120: 거래 완료, 130: 반품 신청중, 140: 반품 진행중, 150: 반품 완료, 160: 취소 신청, 170: 취소중, 180: 취소 완료',
  `coupon_discount` mediumint unsigned DEFAULT NULL COMMENT '구매할 때 적용한 일반 쿠폰의 할인액수',
  `reg_time` datetime NOT NULL DEFAULT (now()),
  PRIMARY KEY (`uid`),
  KEY `FK_order_purchase_payment_id` (`purchase_payment_id`),
  KEY `FK_order_seller_id` (`seller_id`),
  KEY `FK_order_consumer_id` (`consumer_id`),
  KEY `FK_order_product_id` (`product_id`),
  KEY `FK_order_sales_product_id` (`sales_product_id`),
  KEY `FK_order_together_delivery_order_id` (`together_delivery_order_id`),
  KEY `FK_order_sales_page_id` (`sales_page_id`),
  CONSTRAINT `FK_order_consumer_id` FOREIGN KEY (`consumer_id`) REFERENCES `member_consumer` (`uid`),
  CONSTRAINT `FK_order_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`uid`),
  CONSTRAINT `FK_order_purchase_payment_id` FOREIGN KEY (`purchase_payment_id`) REFERENCES `purchase_payment` (`uid`),
  CONSTRAINT `FK_order_sales_page_id` FOREIGN KEY (`sales_page_id`) REFERENCES `sales_page` (`uid`),
  CONSTRAINT `FK_order_sales_product_id` FOREIGN KEY (`sales_product_id`) REFERENCES `sales_product` (`uid`),
  CONSTRAINT `FK_order_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `member_seller` (`uid`),
  CONSTRAINT `FK_order_together_delivery_order_id` FOREIGN KEY (`together_delivery_order_id`) REFERENCES `order` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='삭제 안함 / 상품 하나하나의 주문에 대한 정보(결제 내역안에 다수의 상품 주문들이 속한다)';

DELETE FROM `order`;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000001, 00000000000000000001, 0000000002, 0000000002, '한아름마트 부평점', 00000000000000000004, 00000000000000000001, 00000000000000000015, '[오뚜기] 진라면 순한맛 120g*5입', 3100, 0, 0, NULL, NULL, 2, 0, NULL, '2022-02-11 02:23:16');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000002, 00000000000000000001, 0000000002, 0000000001, '노마진마트 중동점', 00000000000000000009, 00000000000000000005, 00000000000000000001, '[칠레산] 생블루베리 310g', 7980, 0, 0, NULL, NULL, 2, 20, NULL, '2022-02-11 02:23:16');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000003, 00000000000000000003, 0000000002, 0000000002, '한아름마트 부평점', 00000000000000000007, 00000000000000000003, 00000000000000000004, 'CJ 햇반 210g 36개 1박스', 40900, 20, 0, NULL, NULL, 2, 30, NULL, '2022-02-11 03:54:41');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000004, 00000000000000000003, 0000000002, 0000000001, '노마진마트 중동점', 00000000000000000009, 00000000000000000005, 00000000000000000001, '[칠레산] 생블루베리 310g', 7980, 0, 0, NULL, NULL, 2, 20, NULL, '2022-02-11 03:54:41');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000005, 00000000000000000004, 0000000002, 0000000002, '한아름마트 부평점', 00000000000000000006, 00000000000000000002, 00000000000000000003, '유기농 무안 황토 꿀고구마 특상 5kg', 17800, 5, 0, NULL, NULL, 3, 0, NULL, '2022-02-11 05:24:52');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000006, 00000000000000000004, 0000000002, 0000000002, '한아름마트 부평점', 00000000000000000007, 00000000000000000003, 00000000000000000004, 'CJ 햇반 210g 36개 1박스', 40900, 20, 0, NULL, NULL, 3, 0, NULL, '2022-02-11 05:24:52');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000007, 00000000000000000008, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000011, 00000000000000000007, 00000000000000000007, '농심 신라면 120gx5입', 3780, 5, 0, NULL, NULL, 2, 100, NULL, '2022-02-11 08:33:36');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000008, 00000000000000000009, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000011, 00000000000000000007, 00000000000000000007, '농심 신라면 120gx5입', 3780, 5, 0, NULL, NULL, 2, 100, NULL, '2022-02-11 08:35:18');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000009, 00000000000000000018, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000014, 00000000000000000008, 00000000000000000009, '오뚜기 진라면 순한맛 120g*5입', 3100, 0, 0, NULL, NULL, 2, 30, NULL, '2022-02-11 09:35:15');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000010, 00000000000000000018, 0000000001, 0000000002, '한아름마트 부평점', 00000000000000000001, 00000000000000000001, 00000000000000000006, '[농심] 신라면 120gx5입', 3680, 0, 0, NULL, NULL, 1, 0, NULL, '2022-02-11 09:35:15');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000011, 00000000000000000019, 0000000001, 0000000002, '한아름마트 부평점', 00000000000000000001, 00000000000000000001, 00000000000000000006, '[농심] 신라면 120gx5입', 3680, 0, 0, NULL, NULL, 2, 0, NULL, '2022-02-12 13:06:40');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000012, 00000000000000000020, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000020, 00000000000000000009, 00000000000000000023, '[한국야쿠르트] 거꾸로먹는 야쿠르트 (110ml*4입)', 2400, 0, 0, NULL, NULL, 3, 20, NULL, '2022-02-13 03:12:10');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000013, 00000000000000000020, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000011, 00000000000000000007, 00000000000000000007, '농심 신라면 120gx5입', 3780, 5, 0, NULL, NULL, 4, 100, NULL, '2022-02-13 03:12:10');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000014, 00000000000000000020, 0000000001, 0000000002, '한아름마트 부평점', 00000000000000000004, 00000000000000000001, 00000000000000000015, '[오뚜기] 진라면 순한맛 120g*5입', 3100, 0, 0, NULL, NULL, 1, 20, NULL, '2022-02-13 03:12:10');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000015, 00000000000000000021, 0000000002, 0000000001, '노마진마트 중동점', 00000000000000000020, 00000000000000000009, 00000000000000000023, '[한국야쿠르트] 거꾸로먹는 야쿠르트 (110ml*4입)', 2400, 0, 0, NULL, NULL, 1, 30, NULL, '2022-02-13 07:47:01');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000016, 00000000000000000022, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000011, 00000000000000000007, 00000000000000000007, '농심 신라면 120gx5입', 3780, 5, 0, NULL, NULL, 2, 20, NULL, '2022-02-14 01:55:22');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000017, 00000000000000000022, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000158, 00000000000000000013, 00000000000000000018, '소프트 필라델피아 크림치즈 플레인 200g', 5590, 0, 0, NULL, NULL, 3, 100, NULL, '2022-02-14 01:55:22');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000018, 00000000000000000023, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000009, 00000000000000000005, 00000000000000000001, '[칠레산] 생블루베리 310g', 7980, 0, 0, NULL, NULL, 2, 20, NULL, '2022-02-14 01:57:02');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000019, 00000000000000000024, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000009, 00000000000000000005, 00000000000000000001, '[칠레산] 생블루베리 310g', 7980, 0, 0, NULL, NULL, 1, 0, NULL, '2022-02-14 12:37:46');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000020, 00000000000000000024, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000158, 00000000000000000013, 00000000000000000018, '소프트 필라델피아 크림치즈 플레인 200g', 5590, 0, 0, NULL, NULL, 4, 0, NULL, '2022-02-14 12:37:46');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000021, 00000000000000000024, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000011, 00000000000000000007, 00000000000000000007, '농심 신라면 120gx5입', 3780, 5, 0, NULL, NULL, 1, 100, NULL, '2022-02-14 12:37:46');
INSERT INTO `order` (`uid`, `purchase_payment_id`, `consumer_id`, `seller_id`, `seller_name`, `sales_product_id`, `sales_page_id`, `product_id`, `product_name`, `product_price`, `product_discount_rate`, `receive_method`, `delivery_fee`, `together_delivery_order_id`, `qty`, `state`, `coupon_discount`, `reg_time`) VALUES
	(00000000000000000022, 00000000000000000025, 0000000001, 0000000001, '노마진마트 중동점', 00000000000000000009, 00000000000000000005, 00000000000000000001, '[칠레산] 생블루베리 310g', 7980, 0, 0, NULL, NULL, 2, 20, NULL, '2022-02-14 12:40:52');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

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

DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000001, 0000000001, '[칠레산] 생블루베리 310g', '1,2,3', 500, 501, '총 용량 : 310g', 7980, 0, 1, 4, NULL, 0, '2022-02-05 07:23:32', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000002, 0000000001, '꿀고구마 무안 황토 꿀고구마 특상 5kg', '1,2,3,4', 400, 401, '전남 무안 국내산', 18000, 6, 10, 0, NULL, 0, '2022-02-05 07:28:19', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000003, 0000000002, '유기농 무안 황토 꿀고구마 특상 5kg', '1,2,3', 400, 401, '무안의 유기농 꿀고구마!', 17800, 5, 31, 0, NULL, 0, '2022-02-05 07:32:27', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000004, 0000000002, 'CJ 햇반 210g 36개 1박스', '1', 100, 101, '지금 사면 20% 저렴하게', 40900, 20, 70, 0, NULL, 0, '2022-02-05 07:38:21', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000005, 0000000002, '서울우유 슈레드 모짜렐라치즈 1kg', '', 600, 603, NULL, 12980, 0, 20, 0, NULL, 0, '2022-02-05 07:41:22', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000006, 0000000002, '[농심] 신라면 120gx5입', '1', 1000, 1001, '개당 736원', 3680, 0, 34, 0, NULL, 0, '2022-02-05 08:02:02', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000007, 0000000001, '농심 신라면 120gx5입', '1', 1000, 1001, '개당 718원', 3780, 5, 4, 5, 4.75, 4, '2022-02-05 08:06:11', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000008, 0000000001, '오뚜기 진라면 매운맛 120g*5입', '1', 1000, 1001, '개당 620원', 3100, 0, 15, 0, NULL, 0, '2022-02-05 08:08:33', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000009, 0000000001, '오뚜기 진라면 순한맛 120g*5입', '1', 1000, 1001, '개당 620원', 3100, 0, 15, 0, NULL, 0, '2022-02-05 08:08:51', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000010, 0000000001, '농심 얼큰한 너구리 라면 (120gx5입)', '1', 1000, 1001, '개당 718원', 3780, 5, 15, 0, NULL, 0, '2022-02-05 08:14:40', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000011, 0000000001, '팔도 꼬꼬면 라면 5입', '1', 1000, 1001, '개당 876원', 4380, 0, 0, 0, NULL, 0, '2022-02-05 08:17:37', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000012, 0000000002, '[팔도] 꼬꼬면 라면 5입', '1', 1000, 1001, '개당 876원', 4380, 0, 0, 0, NULL, 0, '2022-02-05 08:18:32', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000013, 0000000002, '[농심] 얼큰한 너구리 라면 (120gx5입)', '1', 1000, 1001, '개당 736원', 3680, 0, 5, 0, NULL, 0, '2022-02-05 08:21:37', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000014, 0000000002, '[오뚜기] 진라면 매운맛 120g*5입', '1', 1000, 1001, '개당 620원', 3100, 0, 15, 0, NULL, 0, '2022-02-05 08:23:22', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000015, 0000000002, '[오뚜기] 진라면 순한맛 120g*5입', '1', 1000, 1001, '개당 620원', 3100, 0, 22, 1, NULL, 0, '2022-02-05 08:23:31', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000016, 0000000002, '치즈', '1', 600, 603, NULL, 5000, 0, 10, 0, NULL, 0, '2022-02-10 01:04:54', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000017, 0000000002, '치즈', '1', 600, 603, NULL, 5000, 0, 10, 0, NULL, 0, '2022-02-10 01:05:02', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000018, 0000000001, '소프트 필라델피아 크림치즈 플레인 200g', '1', 600, 603, NULL, 5590, 0, 3, 1, 4, 1, '2022-02-10 04:15:10', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000019, 0000000001, '상하 체다 슬라이스 20매(360g) ★10매추가증정★', '1', 600, 603, NULL, 4880, 0, 10, 0, NULL, 0, '2022-02-10 04:19:49', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000020, 0000000001, '[서울우유] 짜요짜요 포도맛 240g', '1', 600, 602, NULL, 2180, 0, 10, 0, NULL, 0, '2022-02-10 04:23:09', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000021, 0000000001, '[피코크] 그릭 요거트 450g', '1', 600, 602, NULL, 4280, 0, 10, 0, NULL, 0, '2022-02-10 04:23:49', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000022, 0000000001, '비피더스 명장 기획(140ml*12) 1680ml', '1', 600, 602, NULL, 2980, 0, 10, 0, NULL, 0, '2022-02-10 04:35:10', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000023, 0000000001, '[한국야쿠르트] 거꾸로먹는 야쿠르트 (110ml*4입)', '1', 600, 602, NULL, 2400, 0, 7, 1, NULL, 0, '2022-02-10 04:37:35', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000024, 0000000001, '서울 비요뜨 초코링 (143g*4입)', '1', 600, 602, NULL, 2400, 0, 10, 0, NULL, 0, '2022-02-10 04:38:16', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000025, 0000000001, '[21년산] 바른고을 의성진쌀 10kg', '1', 100, 101, NULL, 34900, 0, 0, 0, NULL, 0, '2022-02-10 04:41:17', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000026, 0000000001, '[21년산] 한눈에 반한 쌀 10kg', '1', 100, 101, NULL, 45900, 0, 0, 0, NULL, 0, '2022-02-10 04:42:40', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000027, 0000000001, '[21년산] 임금님표 이천쌀 10kg', '1', 100, 101, NULL, 45900, 0, 0, 0, NULL, 0, '2022-02-10 04:51:43', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000028, 0000000001, '[21년산] 명품 철원 오대쌀 4kg', '1', 100, 101, NULL, 21900, 0, 0, 0, NULL, 0, '2022-02-10 04:52:04', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000029, 0000000001, '[21년산] 철원 오대쌀 10kg', '1', 100, 101, NULL, 43900, 0, 0, 0, NULL, 0, '2022-02-10 04:52:28', NULL, '2022-02-14 02:50:38');
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000030, 0000000001, '찹쌀 4kg', '1', 100, 102, NULL, 12800, 0, 0, 0, NULL, 0, '2022-02-10 04:55:07', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000031, 0000000001, '이맛쌀 현미6kg', '1', 100, 102, NULL, 16800, 0, 0, 0, NULL, 0, '2022-02-10 04:55:25', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000032, 0000000001, '미호현미4kg', '1', 100, 102, NULL, 12800, 0, 0, 0, NULL, 0, '2022-02-10 04:55:46', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000033, 0000000001, '불릴필요없는 찰흑미4kg', '1', 100, 102, NULL, 16800, 0, 0, 0, NULL, 0, '2022-02-10 04:56:40', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000034, 0000000001, '동진 찹쌀 2kg', '1', 100, 102, NULL, 12800, 0, 0, 0, NULL, 0, '2022-02-10 04:58:02', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000035, 0000000001, '불릴필요없는 현미2kg', '1', 100, 102, NULL, 8980, 0, 0, 0, NULL, 0, '2022-02-10 04:58:31', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000036, 0000000001, '96시간 숙성하여 맛이 깊고 부드러운 찰흑미1kg', '1', 100, 102, NULL, 6980, 0, 0, 0, NULL, 0, '2022-02-10 04:58:56', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000037, 0000000001, '[노브랜드] 혼합 9곡 4kg', '1', 100, 103, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-10 05:01:16', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000038, 0000000001, '패밀리 혼합15곡 4kg', '1', 100, 103, NULL, 16800, 0, 0, 0, NULL, 0, '2022-02-10 05:01:41', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000039, 0000000001, '이마트몰 96시간숙성한부드러운 찰오곡밥800g', '1', 100, 103, NULL, 7980, 0, 0, 0, NULL, 0, '2022-02-10 05:01:58', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000040, 0000000001, '무농약 찰기많은 혼합8곡 2kg', '1', 100, 103, NULL, 15980, 0, 0, 0, NULL, 0, '2022-02-10 05:02:17', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000041, 0000000001, '누구나 뚝딱 건강을 담은 통곡물밥상 2kg', '1', 100, 103, NULL, 17800, 0, 0, 0, NULL, 0, '2022-02-10 05:02:39', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000042, 0000000001, '곤드레 건강밥1kg', '1', 100, 103, NULL, 7980, 0, 0, 0, NULL, 0, '2022-02-10 05:03:30', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000043, 0000000001, '[노브랜드] 리얼 데일리너츠 400g (20g*20개입)', '1', 100, 104, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-10 05:05:13', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000044, 0000000001, '하루견과 시그니처 오리지널 22g 18입', '1', 100, 104, NULL, 10800, 0, 0, 0, NULL, 0, '2022-02-10 05:05:38', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000045, 0000000001, '매일견과블루베리20g*23봉', '1', 100, 104, NULL, 9086, 5, 0, 0, NULL, 0, '2022-02-10 05:06:09', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000046, 0000000001, '한우 앞다리 다짐육 1등급 (100g) (팩)', '1', 200, 201, NULL, 5880, 5, 0, 0, NULL, 0, '2022-02-10 05:08:25', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000047, 0000000001, '[냉동] 한우 목심 바로구이 300g', '1', 200, 201, NULL, 20000, 5, 0, 0, NULL, 0, '2022-02-10 05:09:13', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000048, 0000000001, '[냉동] 한우 설도 샤브샤브 1등급 (250g)', '1', 200, 201, NULL, 20000, 5, 0, 0, NULL, 0, '2022-02-10 05:09:27', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000049, 0000000001, '한우 설도 시즈닝 스테이크 (100g)', '1', 200, 201, NULL, 7200, 5, 0, 0, NULL, 0, '2022-02-10 05:10:00', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000050, 0000000001, '[노브랜드][냉동] 삼겹살 바로구이 (1,000g)', '1', 200, 202, NULL, 12900, 5, 0, 0, NULL, 0, '2022-02-10 05:11:23', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000051, 0000000001, '[노브랜드][냉동] 돼지 목심 바로구이 (1,000g)', '1', 200, 202, NULL, 10900, 0, 0, 0, NULL, 0, '2022-02-10 05:12:23', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000052, 0000000001, '[국산의힘][냉동] 얼룩도야지 두툼 삼겹살 (350g)', '1', 200, 202, NULL, 7184, 0, 0, 0, NULL, 0, '2022-02-10 05:12:57', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000053, 0000000001, '[국산의힘][냉동] 얼룩도야지 목심 (350g)', '1', 200, 202, NULL, 7184, 0, 0, 0, NULL, 0, '2022-02-10 05:16:03', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000054, 0000000001, '[노브랜드][냉동] 닭가슴살 (1,000g)', '1', 200, 202, NULL, 5900, 0, 0, 0, NULL, 0, '2022-02-10 05:17:19', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000055, 0000000001, '[노브랜드][냉동] 닭안심 (1,000g)', '1', 200, 203, NULL, 5900, 0, 0, 0, NULL, 0, '2022-02-10 05:18:15', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000056, 0000000001, '대림 사조안심 닭가슴살 블랙페퍼 100g', '1', 200, 203, NULL, 1980, 0, 0, 0, NULL, 0, '2022-02-10 05:19:11', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000057, 0000000001, 'CJ 더건강한 닭가슴살 직화 통살구이 100g', '1', 200, 203, NULL, 2980, 0, 0, 0, NULL, 0, '2022-02-10 05:19:46', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000058, 0000000001, '난이생생 계란 15개입 (왕란, 1020g)', '1', 200, 204, NULL, 5780, 0, 0, 0, NULL, 0, '2022-02-10 05:20:51', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000059, 0000000001, '파머스픽 1+ 등급란 10개입 특란', '1', 200, 204, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-10 05:21:23', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000060, 0000000001, '파머스픽 1등급란 15개입 특란', '1', 200, 204, NULL, 5980, 0, 0, 0, NULL, 0, '2022-02-10 05:21:40', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000061, 0000000001, '동물복지 유정란 15개입 (대란, 780g)', '1', 200, 204, NULL, 7980, 0, 0, 0, NULL, 0, '2022-02-10 05:22:04', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000062, 0000000001, '[냉동][노르웨이] 썸씽스페셜 훈제연어 (180g)', '1', 300, 301, NULL, 1780, 0, 0, 0, NULL, 0, '2022-02-10 05:31:13', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000063, 0000000001, '[냉동][노르웨이] 손질한 고등어살 (900g)', '1', 300, 301, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-10 05:31:30', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000064, 0000000001, '[냉장][노르웨이] 자반 고등어 (특, 1손)', '1', 300, 301, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-10 05:31:44', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000065, 0000000001, '[냉장][대만] 꽁치 과메기 (200g/팩)', '1', 300, 301, NULL, 17980, 0, 0, 0, NULL, 0, '2022-02-10 05:32:10', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000066, 0000000001, '[해동][대만] 오징어 (대, 마리)', '1', 300, 301, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-10 05:33:26', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000067, 0000000001, '[해동][아르헨티나] 손질 오징어 (특, 마리)', '1', 300, 301, NULL, 2224, 13, 0, 0, NULL, 0, '2022-02-10 05:33:44', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000068, 0000000001, '[냉동][베트남] 절단 낙지 (500g)', '1', 300, 301, NULL, 2224, 13, 0, 0, NULL, 0, '2022-02-10 05:35:21', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000069, 0000000001, '[냉동][미국/대한민국] 손질 오징어 (500g)', '1', 300, 301, NULL, 9880, 13, 0, 0, NULL, 0, '2022-02-10 06:23:10', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000070, 0000000001, '[생물][국산] 손질 바지락 (200g/봉)', '1', 300, 301, NULL, 2180, 13, 0, 0, NULL, 0, '2022-02-10 06:25:02', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000071, 0000000001, '[생물][국산] 손질 바지락 (1kg/봉)', '1', 300, 301, NULL, 9980, 13, 0, 0, NULL, 0, '2022-02-10 06:25:28', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000072, 0000000001, '[생물][국산] 손질 바지락 (1kg/봉)', '1', 300, 301, NULL, 9980, 13, 0, 0, NULL, 0, '2022-02-10 06:26:14', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000073, 0000000001, '[생물][국산] 손질 바지락 (1kg/봉)', '1', 300, 303, NULL, 9980, 13, 0, 0, NULL, 0, '2022-02-10 06:27:38', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000074, 0000000001, '흙당근 1kg', '1', 400, 401, NULL, 2980, 13, 0, 0, NULL, 0, '2022-02-10 06:29:30', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000075, 0000000001, '우엉대(절단) 400g', '1', 400, 401, NULL, 2980, 13, 0, 0, NULL, 0, '2022-02-10 06:29:45', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000076, 0000000001, '친환경 당근 한뿌리 180g', '1', 400, 401, NULL, 1980, 13, 0, 0, NULL, 0, '2022-02-10 06:30:05', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000077, 0000000001, '애호박(개)', '1', 400, 402, NULL, 1980, 13, 0, 0, NULL, 0, '2022-02-10 06:31:22', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000078, 0000000001, '친환경 백오이 3입/봉 (250g)', '1', 400, 402, NULL, 4980, 0, 0, 0, NULL, 0, '2022-02-10 06:32:32', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000079, 0000000001, '파머스픽 파프리카(L3입/봉)', '1', 400, 403, NULL, 5980, 0, 0, 0, NULL, 0, '2022-02-10 06:34:05', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000080, 0000000001, '베트남건고추110g', '1', 400, 403, NULL, 5980, 0, 0, 0, NULL, 0, '2022-02-10 06:34:21', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000081, 0000000001, '밀양 청양고추 150g', '1', 400, 403, NULL, 1980, 0, 0, 0, NULL, 0, '2022-02-10 06:34:38', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000082, 0000000001, '친환경 가계 절약 양파 1kg', '1', 400, 404, NULL, 3280, 0, 0, 0, NULL, 0, '2022-02-10 06:35:49', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000083, 0000000001, '양파 1.8kg', '1', 400, 404, NULL, 3280, 0, 0, 0, NULL, 0, '2022-02-10 06:36:04', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000084, 0000000001, 'A)파머스픽 흙대파(봉)', '1', 400, 404, NULL, 2580, 0, 0, 0, NULL, 0, '2022-02-10 06:36:18', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000085, 0000000001, '겨울시금치(팩)', '1', 400, 405, NULL, 2980, 0, 0, 0, NULL, 0, '2022-02-10 06:38:02', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000086, 0000000001, '쑥갓 150g', '1', 400, 405, NULL, 2180, 0, 0, 0, NULL, 0, '2022-02-10 06:45:58', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000087, 0000000001, '[국산의힘] 해남 세발나물 200g', '1', 400, 405, NULL, 1680, 0, 0, 0, NULL, 0, '2022-02-10 06:46:16', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000088, 0000000001, '부추 450g', '1', 400, 406, NULL, 4980, 0, 0, 0, NULL, 0, '2022-02-10 07:34:41', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000089, 0000000001, '로메인', '1', 400, 406, NULL, 2480, 0, 0, 0, NULL, 0, '2022-02-10 07:35:07', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000090, 0000000001, '아삭이상추', '1', 400, 406, NULL, 1984, 0, 0, 0, NULL, 0, '2022-02-10 07:35:26', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000091, 0000000001, '알배기', '1', 400, 407, NULL, 1984, 0, 0, 0, NULL, 0, '2022-02-10 07:36:30', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000092, 0000000001, '제주에서 길러낸 무 1kg이상 1개(봉)', '1', 400, 407, NULL, 1880, 0, 0, 0, NULL, 0, '2022-02-10 07:38:23', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000093, 0000000001, '[칠레산] 생블루베리 310g', '1', 500, 501, NULL, 7980, 0, 0, 0, NULL, 0, '2022-02-10 07:39:45', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000094, 0000000001, '완숙토마토 5~8입/팩 (1.2kg)', '1', 500, 501, NULL, 78, 0, 0, 0, NULL, 0, '2022-02-10 07:41:24', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000095, 0000000001, '완숙토마토 5~8입/팩 (1.2kg)', '1', 500, 501, NULL, 7900, 0, 0, 0, NULL, 0, '2022-02-10 07:42:31', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000096, 0000000001, '[미국산] 레몬 9~15입/봉 (1.4kg내외)', '1', 500, 501, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-10 07:42:53', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000097, 0000000001, '[미국산] 냉동 블루베리 1.5kg/봉', '1', 500, 501, NULL, 14800, 0, 0, 0, NULL, 0, '2022-02-10 07:43:47', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000098, 0000000001, '[필리핀산] 델몬트 컷파인애플 540g', '1', 500, 501, NULL, 7680, 0, 0, 0, NULL, 0, '2022-02-10 07:44:02', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000099, 0000000001, '[페루산] 요리하기 좋은 반쪽 아보카도 1kg (500gx2개입)', '1', 500, 501, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-10 07:44:48', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000100, 0000000001, '크리스피 리얼칩스 5믹스 180g', '1', 500, 503, NULL, 4130, 0, 0, 0, NULL, 0, '2022-02-10 07:46:30', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000101, 0000000001, '건망고 슬라이스 250g', '1', 500, 503, NULL, 7900, 0, 0, 0, NULL, 0, '2022-02-10 07:46:48', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000102, 0000000001, '농심 백산수 2L* 6입(무라벨)', '1', 700, 701, NULL, 5880, 0, 0, 0, NULL, 0, '2022-02-10 07:48:23', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000103, 0000000001, '[롯데] 아이시스 8.0 2L', '1', 700, 701, NULL, 680, 0, 0, 0, NULL, 0, '2022-02-10 07:50:03', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000104, 0000000001, '코카콜라제로 1.5LX2', '1', 700, 701, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-10 07:50:53', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000105, 0000000001, '코카콜라제로 1.5LX2', '1', 700, 702, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-10 07:50:59', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000106, 0000000001, '코크제로+스프라이트 제로 1.5*2', '1', 700, 702, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-10 07:51:51', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000107, 0000000001, '서울우유 아침에주스 오렌지 1.8L', '1', 700, 702, NULL, 4280, 0, 0, 0, NULL, 0, '2022-02-10 07:53:14', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000108, 0000000001, '[웅진] 뉴 초록매실 1.5L', '1', 700, 702, NULL, 2262, 0, 0, 0, NULL, 0, '2022-02-10 07:58:23', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000109, 0000000001, '(쓱배송) [맥심] 카누 마일드 로스트 아메리카노 미니 150입', '1', 700, 704, NULL, 28950, 0, 0, 0, NULL, 0, '2022-02-10 08:00:03', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000110, 0000000001, '(쓱배송) [맥심] 화이트골드 커피믹스 250입', '1', 700, 704, NULL, 30900, 0, 0, 0, NULL, 0, '2022-02-10 08:12:19', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000111, 0000000001, '(쓱배송) [맥심] 모카골드 마일드 커피믹스 250입', '1', 700, 704, NULL, 30900, 0, 0, 0, NULL, 0, '2022-02-10 08:12:44', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000112, 0000000001, '분다버그 진저비어 375ml', '1', 700, 705, NULL, 2580, 0, 0, 0, NULL, 0, '2022-02-10 08:16:36', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000113, 0000000001, '[CJ] 스팸 클래식 200g', '1', 800, 801, NULL, 4480, 0, 0, 0, NULL, 0, '2022-02-10 08:20:27', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000114, 0000000001, '[Dole]파인애플슬라이스439g', '1', 800, 802, NULL, 2980, 0, 0, 0, NULL, 0, '2022-02-10 08:24:07', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000115, 0000000001, '[노브랜드]한입쏙쏙비엔나 550g', '1', 800, 803, NULL, 4980, 0, 0, 0, NULL, 0, '2022-02-10 08:25:18', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000116, 0000000001, '[노브랜드]한입쏙쏙비엔나 550g', '1', 800, 803, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-10 08:26:13', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000117, 0000000001, '[나뚜루] 녹차 아이스크림 파인트 474ml', '1', 800, 804, NULL, 5800, 0, 0, 0, NULL, 0, '2022-02-10 08:28:54', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000118, 0000000001, '롯데 찰떡아이스90ml*5', '1', 800, 804, NULL, 4000, 0, 0, 0, NULL, 0, '2022-02-10 08:29:22', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000119, 0000000001, '[롯데] 셀렉션 아이스크림 500ml', '1', 800, 804, NULL, 4000, 0, 0, 0, NULL, 0, '2022-02-10 08:29:41', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000120, 0000000001, '풀무원 톡톡 포기김치 1.5kg', '1', 900, 901, NULL, 14700, 0, 0, 0, NULL, 0, '2022-02-10 08:31:33', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000121, 0000000001, '노브랜드 별미맛김치1.9kg', '1', 900, 901, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-10 08:32:19', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000122, 0000000001, '피코크 조선호텔특제육수 포기김치 4kg', '1', 900, 901, NULL, 30800, 0, 0, 0, NULL, 0, '2022-02-10 08:33:09', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000123, 0000000001, '노브랜드 정성담은 양념깻잎 200g', '1', 900, 902, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-10 08:34:24', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000124, 0000000001, '[피코크] 명란 한스푼 130g', '1', 900, 902, NULL, 6680, 0, 0, 0, NULL, 0, '2022-02-10 08:35:24', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000125, 0000000001, '[한성] 오징어젓갈', '1', 900, 902, NULL, 7980, 0, 0, 0, NULL, 0, '2022-02-10 08:36:00', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000126, 0000000001, '피코크 숯불고등어구이107g', '1', 900, 903, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-10 08:37:36', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000127, 0000000001, 'CJ 비비고 메추리알장조림 170g', '1', 900, 903, NULL, 2980, 0, 0, 0, NULL, 0, '2022-02-10 08:38:04', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000128, 0000000001, 'CJ 다담 순두부찌개양념130g', '1', 1100, 1101, NULL, 2380, 0, 0, 0, NULL, 0, '2022-02-10 08:43:38', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000129, 0000000001, 'CJ 다담 강된장찌개양념130g', '1', 1100, 1101, NULL, 2380, 0, 0, 0, NULL, 0, '2022-02-10 08:44:38', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000130, 0000000001, '[청정원] 태양초 찰고추장 1kg', '1', 1100, 1101, NULL, 15300, 0, 0, 0, NULL, 0, '2022-02-10 08:45:26', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000131, 0000000001, '[노브랜드] 홈스타일 크림 스파게티 소스 400g', '1', 1100, 1102, NULL, 1780, 0, 0, 0, NULL, 0, '2022-02-10 08:46:55', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000132, 0000000001, '청정원 파스타소스 600g(토마토)', '1', 1100, 1102, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-10 08:47:49', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000133, 0000000001, '청정원 파스타소스 600g(로제)', '1', 1100, 1102, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-10 08:48:32', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000134, 0000000001, '[곰표] 중력 밀가루 1kg', '1', 1100, 1103, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-10 08:50:28', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000135, 0000000001, '노브랜드 감자맛전분99.9 350g', '1', 1100, 1103, NULL, 1980, 0, 0, 0, NULL, 0, '2022-02-10 08:56:24', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000136, 0000000001, '데체코 올리브오일500ml', '1', 1100, 1104, NULL, 11900, 0, 0, 0, NULL, 0, '2022-02-10 08:57:39', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000137, 0000000001, '노브랜드 올리브유 1L', '1', 1100, 1104, NULL, 7980, 0, 0, 0, NULL, 0, '2022-02-10 08:58:09', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000138, 0000000001, '백설 고소함가득참기름430ml(캔)', '1', 1100, 1104, NULL, 5480, 0, 0, 0, NULL, 0, '2022-02-10 08:58:44', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000139, 0000000001, '백설 고소함가득참기름430ml(캔)', '1', 1100, 1105, NULL, 5480, 0, 0, 0, NULL, 0, '2022-02-10 08:59:24', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000140, 0000000001, '[오뚜기] 향긋한 들기름 320ml', '1', 1100, 1105, NULL, 14980, 0, 0, 0, NULL, 0, '2022-02-10 09:00:05', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000141, 0000000001, '[오뚜기] 향긋한 들기름 320ml', '1', 1100, 1105, NULL, 14980, 0, 0, 0, NULL, 0, '2022-02-10 09:00:10', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000142, 0000000001, '오뚜기 고추맛기름80ml', '1', 1100, 1105, NULL, 1980, 0, 0, 0, NULL, 0, '2022-02-10 09:01:10', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000143, 0000000001, '노브랜드 감자칩 오리지날 110g', '1', 1200, 1201, NULL, 1980, 0, 0, 0, NULL, 0, '2022-02-10 09:04:11', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000144, 0000000001, '★3,880→2,980(2/3~2/16)[농심] 새우깡 400g', '1', 1200, 1201, NULL, 2980, 0, 0, 0, NULL, 0, '2022-02-10 09:04:32', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000145, 0000000001, '[롯데] 꼬깔콘 군옥수수맛 67g', '1', 1200, 1201, NULL, 1000, 0, 0, 0, NULL, 0, '2022-02-10 09:04:50', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000146, 0000000001, '켈로그 콘푸로스트 600g', '1', 1200, 1202, NULL, 6580, 0, 0, 0, NULL, 0, '2022-02-10 09:05:54', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000147, 0000000001, '켈로그 고소한 현미 그래놀라 500g', '1', 1200, 1202, NULL, 5780, 0, 0, 0, NULL, 0, '2022-02-10 09:06:43', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000148, 0000000001, '[피코크] 리얼다크초콜릿 아몬드 바크씬 260g', '1', 1200, 1203, NULL, 6980, 0, 0, 0, NULL, 0, '2022-02-10 09:09:59', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000149, 0000000001, '[크라운] 땅콩카라멜 324g', '1', 1200, 1204, NULL, 4320, 0, 0, 0, NULL, 0, '2022-02-10 09:13:58', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000150, 0000000001, '피코크 무설탕 레몬 캔디 40g', '1', 1200, 1204, NULL, 4320, 0, 0, 0, NULL, 0, '2022-02-10 09:14:16', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000151, 0000000001, '크라운 마이쮸 포도사과 284g', '1', 1200, 1204, NULL, 3840, 0, 0, 0, NULL, 0, '2022-02-10 09:14:54', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000152, 0000000001, '질러 부드러운 육포 150g (30g*5)', '1', 1200, 1205, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-10 09:16:35', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000153, 0000000001, '노브랜드 군밤 100g*4입', '1', 1200, 1205, NULL, 6980, 0, 0, 0, NULL, 0, '2022-02-10 09:17:06', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000154, 0000000001, '진주햄 천하장사 건강하닭 504g', '1', 1200, 1205, NULL, 6980, 0, 0, 0, NULL, 0, '2022-02-10 09:17:27', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000155, 0000000001, '피코크 에이 클래스 우유 2.3L (1A등급)(남양유업)', '1', 600, 601, NULL, 4960, 0, 0, 0, NULL, 0, '2022-02-10 09:19:00', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000156, 0000000001, '[서울우유] 서울우유 2.3L', '1', 600, 601, NULL, 6350, 0, 0, 0, NULL, 0, '2022-02-10 09:19:22', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000157, 0000000001, '[매일] 우유 오리지널 후레쉬팩 900ML*2', '1', 600, 601, NULL, 4980, 0, 0, 0, NULL, 0, '2022-02-10 09:19:41', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000158, 0000000002, '[21년산] 이맛쌀 20kg', '1', 100, 101, NULL, 50900, 0, 0, 0, NULL, 0, '2022-02-11 01:17:16', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000159, 0000000002, '[21년산] 바른고을 의성진쌀 10kg', '1', 100, 101, NULL, 34900, 0, 0, 0, NULL, 0, '2022-02-11 01:41:20', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000160, 0000000002, '[21년산] 명품 당진 삼광쌀 4kg', '1', 100, 101, NULL, 16900, 0, 0, 0, NULL, 0, '2022-02-11 01:42:08', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000161, 0000000002, '찹쌀 4kg', '1', 100, 102, NULL, 12800, 0, 0, 0, NULL, 0, '2022-02-11 04:37:16', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000162, 0000000002, '찰현미4kg', '1', 100, 102, NULL, 11040, 0, 0, 0, NULL, 0, '2022-02-11 04:37:55', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000163, 0000000002, '[노브랜드] 혼합 9곡 4kg', '1', 100, 103, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-11 04:40:53', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000164, 0000000002, '패밀리 혼합15곡 4kg', '1', 100, 103, NULL, 16800, 0, 0, 0, NULL, 0, '2022-02-11 04:41:27', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000165, 0000000002, '매일견과블루베리20g*23봉', '1', 100, 104, NULL, 9086, 0, 0, 0, NULL, 0, '2022-02-11 04:42:50', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000166, 0000000002, '[노브랜드] 리얼 데일리너츠 400g (20g*20개입)', '1', 100, 104, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-11 04:43:23', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000167, 0000000002, '[노브랜드][냉동] 한우 불고기 (500g)', '1', 200, 201, NULL, 20980, 0, 0, 0, NULL, 0, '2022-02-11 04:44:52', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000168, 0000000002, '한우 국거리 1등급 (100g) (팩)', '1', 200, 201, NULL, 5880, 0, 0, 0, NULL, 0, '2022-02-11 04:45:21', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000169, 0000000002, '국내산 두툼 칼집 삼겹살 (100g)', '1', 200, 202, NULL, 2480, 0, 0, 0, NULL, 0, '2022-02-11 04:46:25', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000170, 0000000002, '국내산 돈목심 구이용 (100g)', '1', 200, 202, NULL, 2280, 0, 0, 0, NULL, 0, '2022-02-11 04:46:48', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000171, 0000000002, '[노브랜드][냉동] 닭가슴살 (1,000g)', '1', 200, 203, NULL, 5900, 0, 0, 0, NULL, 0, '2022-02-11 04:48:03', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000172, 0000000002, '[노브랜드][냉동] 닭안심 (1,000g)', '1', 200, 203, NULL, 5900, 0, 0, 0, NULL, 0, '2022-02-11 04:48:46', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000173, 0000000002, '신선한 계란 30개입 (특란, 1800g)', '1', 200, 204, NULL, 6380, 0, 0, 0, NULL, 0, '2022-02-11 04:50:00', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000174, 0000000002, '하얀계란 30개입 대란', '1', 200, 204, NULL, 6480, 0, 0, 0, NULL, 0, '2022-02-11 04:50:12', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000175, 0000000002, '[국산] 제주은갈치 (대,해동)', '1', 300, 301, NULL, 4980, 0, 0, 0, NULL, 0, '2022-02-11 04:52:05', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000176, 0000000002, '[냉장][노르웨이] 생연어 (필렛) (100g)', '1', 300, 301, NULL, 3180, 0, 0, 0, NULL, 0, '2022-02-11 04:52:36', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000177, 0000000002, '[해동][대만] 오징어 (대, 마리)', '1', 300, 302, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-11 04:53:52', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000178, 0000000002, '[해동][국산] 손질 오징어 (특, 마리)', '1', 300, 302, NULL, 6280, 0, 0, 0, NULL, 0, '2022-02-11 04:54:11', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000179, 0000000002, '[국산의힘] 고흥 미역 150g', '1', 300, 304, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-11 04:56:52', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000180, 0000000002, '[노브랜드] 도시락 김 100g (5g*20)', '1', 300, 304, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-11 04:57:20', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000181, 0000000002, '봄소리 봄동 500g', '1', 400, 401, NULL, 3280, 0, 0, 0, NULL, 0, '2022-02-11 05:09:05', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000182, 0000000002, '친환경 겨울 시금치 200g', '1', 400, 401, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-11 05:09:24', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000183, 0000000002, '애호박(개)', '1', 400, 402, NULL, 1980, 0, 0, 0, NULL, 0, '2022-02-11 05:10:16', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000184, 0000000002, '백오이 (5입/봉)', '1', 400, 402, NULL, 5480, 0, 0, 0, NULL, 0, '2022-02-11 05:10:36', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000185, 0000000002, '청양고추(봉)', '1', 400, 403, NULL, 1980, 0, 0, 0, NULL, 0, '2022-02-11 05:22:11', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000186, 0000000002, '파머스픽 파프리카(L3입/봉)', '1', 400, 403, NULL, 5980, 0, 0, 0, NULL, 0, '2022-02-11 05:22:50', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000187, 0000000002, '깐양파 450g', '1', 400, 404, NULL, 2480, 0, 0, 0, NULL, 0, '2022-02-11 05:23:57', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000188, 0000000002, '[하루채소] 양파 1입/봉 (300g내외)', '1', 400, 404, NULL, 990, 0, 0, 0, NULL, 0, '2022-02-11 05:24:20', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000189, 0000000002, '유채 150g', '1', 400, 405, NULL, 1980, 0, 0, 0, NULL, 0, '2022-02-11 05:25:51', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000190, 0000000002, '부추 450g', '1', 400, 405, NULL, 4980, 0, 0, 0, NULL, 0, '2022-02-11 05:26:04', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000191, 0000000002, '청경채 300g', '1', 400, 406, NULL, 1984, 0, 0, 0, NULL, 0, '2022-02-11 05:27:35', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000192, 0000000002, '반반상추 200g', '1', 400, 406, NULL, 1984, 0, 0, 0, NULL, 0, '2022-02-11 05:27:48', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000193, 0000000002, '제주에서 길러낸 무 1kg이상 1개(봉)', '1', 400, 407, NULL, 1880, 0, 0, 0, NULL, 0, '2022-02-11 05:28:53', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000194, 0000000002, '알배추(1통)', '1', 400, 407, NULL, 2864, 0, 0, 0, NULL, 0, '2022-02-11 05:29:12', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000195, 0000000002, '완숙토마토 5~8입/팩 (1.2kg)', '1', 500, 501, NULL, 7900, 0, 0, 0, NULL, 0, '2022-02-11 05:34:44', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000196, 0000000002, '[페루산] 냉동 애플망고 1.5kg', '1', 500, 502, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-11 06:10:09', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000197, 0000000002, '[페루산] 냉동 애플망고 1.5kg', '1', 500, 502, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-11 06:10:29', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000198, 0000000002, '[냉동] 유기농 블루베리 700g', '1', 500, 502, NULL, 11980, 0, 0, 0, NULL, 0, '2022-02-11 06:10:49', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000199, 0000000002, '크리스피 리얼칩스 5믹스 180g', '1', 500, 503, NULL, 4130, 0, 0, 0, NULL, 0, '2022-02-11 06:12:26', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000200, 0000000002, '건망고 슬라이스 250g', '1', 500, 503, NULL, 7900, 0, 0, 0, NULL, 0, '2022-02-11 06:12:50', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000201, 0000000002, '크리스피 리얼칩스 5믹스 180g', '1', 500, 503, NULL, 7900, 0, 0, 0, NULL, 0, '2022-02-11 06:13:07', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000202, 0000000002, '크리스피 리얼칩스 5믹스 180g', '1', 500, 503, NULL, 7900, 0, 0, 0, NULL, 0, '2022-02-11 06:13:07', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000203, 0000000002, '피코크 에이 클래스 우유 900ml (1A등급)(매일유업)', '1', 600, 601, NULL, 2080, 0, 0, 0, NULL, 0, '2022-02-11 07:25:24', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000204, 0000000002, '[서울우유] 후레쉬 밀크 기획(900ml*2) 1800ml', '1', 600, 601, NULL, 2080, 0, 0, 0, NULL, 0, '2022-02-11 07:26:27', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000205, 0000000002, '[피코크] 그릭 요거트 450g', '1', 600, 602, NULL, 4280, 0, 0, 0, NULL, 0, '2022-02-11 07:56:12', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000206, 0000000002, '비피더스 명장 기획(140ml*12/점포별 구성 상이함) 1680ml', '1', 600, 602, NULL, 2980, 0, 0, 0, NULL, 0, '2022-02-11 07:56:57', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000207, 0000000002, '소와나무 체다치즈클래식204g', '1', 600, 603, NULL, 2980, 0, 0, 0, NULL, 0, '2022-02-11 07:57:52', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000208, 0000000002, '삼다수 330ml', '1', 700, 701, NULL, 390, 0, 0, 0, NULL, 0, '2022-02-11 08:04:24', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000209, 0000000002, '딸기퐁당 배도라지 농축액 스틱 21포 1+1', '1', 700, 701, NULL, 39900, 0, 0, 0, NULL, 0, '2022-02-11 08:04:43', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000210, 0000000002, '코카콜라제로 215ml*12', '1', 700, 701, NULL, 7380, 0, 0, 0, NULL, 0, '2022-02-11 08:06:55', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000211, 0000000002, '코카콜라제로 215ml*12', '1', 700, 702, NULL, 7380, 0, 0, 0, NULL, 0, '2022-02-11 08:07:07', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000212, 0000000002, '코카콜라 215ml 12입', '1', 700, 702, NULL, 7380, 0, 0, 0, NULL, 0, '2022-02-11 08:07:28', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000213, 0000000002, '서울우유 아침에주스 오렌지 1.8L', '1', 700, 703, NULL, 4280, 0, 0, 0, NULL, 0, '2022-02-11 08:08:30', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000214, 0000000002, '피코크 블렌디드 딸기 870ml', '1', 700, 703, NULL, 7980, 0, 0, 0, NULL, 0, '2022-02-11 08:08:49', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000215, 0000000002, '[피코크] 콜드브루아메리카노(390ml×6)', '1', 700, 704, NULL, 7680, 0, 0, 0, NULL, 0, '2022-02-11 08:19:29', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000216, 0000000002, '[맥심]카누 미니 다크 로스트 아메리카노 100입', '1', 700, 704, NULL, 20390, 0, 0, 0, NULL, 0, '2022-02-11 08:19:55', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000217, 0000000002, '동원참치 살코기 라이트스탠다드(135g×8) 1080g', '1', 800, 801, NULL, 15980, 0, 0, 0, NULL, 0, '2022-02-11 08:28:54', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000218, 0000000002, '사조 자연산골뱅이 400g', '1', 800, 801, NULL, 10280, 0, 0, 0, NULL, 0, '2022-02-11 08:29:17', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000219, 0000000002, '티아시아 게살푸팟퐁커리 전자레인지용 170g', '1', 800, 802, NULL, 3480, 0, 0, 0, NULL, 0, '2022-02-11 08:30:35', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000220, 0000000002, '티아시아 치킨 마크니 커리 전자레인지용 170g', '1', 800, 802, NULL, 3480, 0, 0, 0, NULL, 0, '2022-02-11 08:31:06', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000221, 0000000002, '노브랜드 오리지널숯불닭꼬치 560 g', '1', 800, 803, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-11 08:32:18', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000222, 0000000002, '올반 명란군만두 630g(315g*2입)', '1', 800, 803, NULL, 8380, 0, 0, 0, NULL, 0, '2022-02-11 08:32:58', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000223, 0000000002, '빼빼로바 아몬드아이스크림 4입', '1', 800, 804, NULL, 2400, 0, 0, 0, NULL, 0, '2022-02-11 08:34:43', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000224, 0000000002, '빼빼로바 아몬드아이스크림 4입', '1', 800, 804, NULL, 2400, 0, 0, 0, NULL, 0, '2022-02-11 08:34:59', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000225, 0000000002, '[빙그레] 더 엑설런트 오리지널 800ml', '1', 800, 804, NULL, 2400, 0, 0, 0, NULL, 0, '2022-02-11 08:35:19', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000226, 0000000002, '[빙그레] 더 엑설런트 오리지널 800ml', '1', 800, 804, NULL, 5980, 0, 0, 0, NULL, 0, '2022-02-11 08:35:34', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000227, 0000000002, '[종가집] 오래오래맛있는총각김치 1.5kg', '1', 900, 901, NULL, 14900, 0, 0, 0, NULL, 0, '2022-02-11 08:37:49', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000228, 0000000002, 'CJ비비고 총각김치 1.5KG', '1', 900, 901, NULL, 16500, 0, 0, 0, NULL, 0, '2022-02-11 08:38:11', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000229, 0000000002, '[한성] 토굴숙성 광천 새우젓 250g', '1', 900, 902, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-11 08:39:25', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000230, 0000000002, '[피코크] 명란 한스푼 130g', '1', 900, 902, NULL, 6680, 0, 0, 0, NULL, 0, '2022-02-11 08:39:40', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000231, 0000000002, '[풀무원] 올바른 또띠아 우유(대) 225g', '1', 1000, 1002, NULL, 3400, 0, 0, 0, NULL, 0, '2022-02-11 08:44:15', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000232, 0000000002, '[오뚜기] 프레스코 스파게티 500g', '1', 1000, 1002, NULL, 2680, 0, 0, 0, NULL, 0, '2022-02-11 08:44:30', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000233, 0000000002, '[노브랜드] 칼국수 생면 1kg', '1', 1000, 1002, NULL, 3180, 0, 0, 0, NULL, 0, '2022-02-11 08:45:26', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000234, 0000000002, 'CJ 다담 순두부찌개양념130g', '1', 1101, 1001, NULL, 2380, 0, 0, 0, NULL, 0, '2022-02-11 08:47:19', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000235, 0000000002, '[청정원] 순창 조개멸치된장 450g', '1', 1101, 1001, NULL, 6500, 0, 0, 0, NULL, 0, '2022-02-11 08:47:56', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000236, 0000000002, '[청정원] 순창 조개멸치된장 450g', '1', 1100, 1101, NULL, 6500, 0, 0, 0, NULL, 0, '2022-02-11 08:48:13', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000237, 0000000002, 'CJ 다담 순두부찌개양념130g', '1', 1100, 1101, NULL, 2380, 0, 0, 0, NULL, 0, '2022-02-11 08:49:07', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000238, 0000000002, '[피코크] 씻어나온 국산 고춧가루 200g', '1', 1100, 1103, NULL, 11800, 0, 0, 0, NULL, 0, '2022-02-11 08:50:31', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000239, 0000000002, '노브랜드 고춧가루 1kg', '1', 1100, 1103, NULL, 12800, 0, 0, 0, NULL, 0, '2022-02-11 08:51:12', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000240, 0000000002, 'Coosur 카놀라오일1L', '1', 1100, 1104, NULL, 3280, 0, 0, 0, NULL, 0, '2022-02-11 08:53:54', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000241, 0000000002, '모니니 포도씨오일1L', '1', 1100, 1104, NULL, 9980, 0, 0, 0, NULL, 0, '2022-02-11 08:54:14', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000242, 0000000002, 'CJ백설 100% 통들깨 들기름 160ml', '1', 1100, 1105, NULL, 8380, 0, 0, 0, NULL, 0, '2022-02-11 08:57:01', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000243, 0000000002, '[피코크] 국산 들깨로 짜낸 들기름 250ml', '1', 1100, 1105, NULL, 22800, 0, 0, 0, NULL, 0, '2022-02-11 08:57:15', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000244, 0000000002, '★3,840→2,980(2/3~2/16)[롯데] 칙촉 180g', '1', 1200, 1201, NULL, 2980, 0, 0, 0, NULL, 0, '2022-02-11 09:00:31', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000245, 0000000002, '오리온 초코송이 36g*2번들', '1', 1200, 1201, NULL, 1120, 0, 0, 0, NULL, 0, '2022-02-11 09:01:01', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000246, 0000000002, '동서 포스트 그래놀라 크랜베리 570g', '1', 1200, 1202, NULL, 6180, 0, 0, 0, NULL, 0, '2022-02-11 09:02:05', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000247, 0000000002, '동서 포스트 코코볼 570g', '1', 1200, 1202, NULL, 4580, 0, 0, 0, NULL, 0, '2022-02-11 09:02:23', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000248, 0000000002, '한국마즈_몰티져스 밀크 312g', '1', 1200, 1203, NULL, 6900, 0, 0, 0, NULL, 0, '2022-02-11 09:04:25', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000249, 0000000002, '롯데 ABC초코쿠키 152g', '1', 1200, 1203, NULL, 1980, 0, 0, 0, NULL, 0, '2022-02-11 09:09:16', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000250, 0000000002, '[롯데] 애니타임 밀크민트 185g', '1', 1200, 1204, NULL, 3980, 0, 0, 0, NULL, 0, '2022-02-11 09:11:03', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000251, 0000000002, '[오리온] 통아몬드 90g', '1', 1200, 1204, NULL, 1580, 0, 0, 0, NULL, 0, '2022-02-11 09:11:25', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000252, 0000000002, '곤약 쫀디기 200g', '1', 1200, 1205, NULL, 3480, 0, 0, 0, NULL, 0, '2022-02-11 09:12:33', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000253, 0000000002, '노브랜드 간식소시지 560g', '1', 1200, 1205, NULL, 5180, 10, 0, 0, NULL, 0, '2022-02-11 09:13:26', NULL, NULL);
INSERT INTO `product` (`uid`, `seller_id`, `name`, `images`, `category1`, `category2`, `additional_desc`, `price`, `discount_rate`, `stock_count`, `sell_count`, `avg_feedback_point`, `feedback_count`, `reg_time`, `last_mod_time`, `deny_time`) VALUES
	(00000000000000000261, 0000000002, '오뚜기 칼국수 건면 900g', '1', 1000, 1004, '', 3000, 10, 30, 0, NULL, 0, '2022-02-14 12:51:35', NULL, NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

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

DELETE FROM `purchase_payment`;
/*!40000 ALTER TABLE `purchase_payment` DISABLE KEYS */;
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000001, 0000000002, 0, '이종민', '010-2044-6199', '배송시 연락부탁드려요', NULL, '2022-02-11 02:23:16', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000003, 0000000002, 0, '이종민', '010-2044-6199', '배송시 연락부탁드려요', NULL, '2022-02-11 03:54:41', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000004, 0000000002, 0, '이종민', '010-2044-6199', '배송시 연락부탁드려요', NULL, '2022-02-11 05:24:52', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000008, 0000000001, 0, '김상동', '01048485959', '', NULL, '2022-02-11 08:33:36', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000009, 0000000001, 0, '김상동', '01048485959', '', NULL, '2022-02-11 08:35:18', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000018, 0000000001, 0, '김상동', '01048485959', '', NULL, '2022-02-11 09:35:15', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000019, 0000000001, 0, '김상동', '01048485959', '', NULL, '2022-02-12 13:06:40', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000020, 0000000001, 0, '김상동', '01048485959', '', NULL, '2022-02-13 03:12:10', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000021, 0000000002, 0, '이중동', '01012123434', '', NULL, '2022-02-13 07:47:01', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000022, 0000000001, 0, '김상동', '01048485959', '', NULL, '2022-02-14 01:55:22', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000023, 0000000001, 0, '김상동', '01048485959', '', NULL, '2022-02-14 01:57:02', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000024, 0000000001, 0, '김상동', '01048485959', '', NULL, '2022-02-14 12:37:46', 0, '{}');
INSERT INTO `purchase_payment` (`uid`, `consumer_id`, `receive_method`, `receiver_name`, `receiver_contact`, `receiver_comment`, `delivery_address`, `payment_time`, `payment_method`, `payment_details_json`) VALUES
	(00000000000000000025, 0000000001, 0, '김상동', '01048485959', '', NULL, '2022-02-14 12:40:52', 0, '{}');
/*!40000 ALTER TABLE `purchase_payment` ENABLE KEYS */;

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

DELETE FROM `review`;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`uid`, `seller_id`, `consumer_id`, `order_id`, `sales_page_id`, `product_name`, `content`, `images`, `review_point`, `reg_time`) VALUES
	(00000000000000000001, 0000000001, 0000000001, 00000000000000000007, 00000000000000000007, '농심 신라면 120gx5입', '최고에요!', '1,2,3,4,5', 5.0, '2022-02-12 15:22:04');
INSERT INTO `review` (`uid`, `seller_id`, `consumer_id`, `order_id`, `sales_page_id`, `product_name`, `content`, `images`, `review_point`, `reg_time`) VALUES
	(00000000000000000002, 0000000001, 0000000001, 00000000000000000008, 00000000000000000007, '농심 신라면 120gx5입', '유통기한도 길고 좋습니다. 잘 먹을게요.', '1', 5.0, '2022-02-13 06:48:16');
INSERT INTO `review` (`uid`, `seller_id`, `consumer_id`, `order_id`, `sales_page_id`, `product_name`, `content`, `images`, `review_point`, `reg_time`) VALUES
	(00000000000000000012, 0000000001, 0000000001, 00000000000000000013, 00000000000000000007, '농심 신라면 120gx5입', '품질 좋아요', '1,2', 4.0, '2022-02-14 00:48:58');
INSERT INTO `review` (`uid`, `seller_id`, `consumer_id`, `order_id`, `sales_page_id`, `product_name`, `content`, `images`, `review_point`, `reg_time`) VALUES
	(00000000000000000013, 0000000001, 0000000001, 00000000000000000017, 00000000000000000013, '소프트 필라델피아 크림치즈 플레인 200g', '맛있어요~!', '1', 4.0, '2022-02-14 02:09:09');
INSERT INTO `review` (`uid`, `seller_id`, `consumer_id`, `order_id`, `sales_page_id`, `product_name`, `content`, `images`, `review_point`, `reg_time`) VALUES
	(00000000000000000014, 0000000001, 0000000001, 00000000000000000021, 00000000000000000007, '농심 신라면 120gx5입', '맛있게 먹고 있습니다!', '1,2', 5.0, '2022-02-14 12:46:11');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;

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

DELETE FROM `review_reply`;
/*!40000 ALTER TABLE `review_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_reply` ENABLE KEYS */;

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

DELETE FROM `sales_page`;
/*!40000 ALTER TABLE `sales_page` DISABLE KEYS */;
INSERT INTO `sales_page` (`uid`, `seller_id`, `name`, `content`, `click_count`, `is_pickup_able`, `is_able_normal_delivery`, `normal_delivery_corp_id`, `normal_delivery_fee`, `normal_delivery_fee_qty`, `is_able_oneday_delivery`, `oneday_delivery_corp_id`, `onday_delivery_fee`, `onday_delivery_fee_qty`, `reg_time`, `last_mod_time`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `is_disable`, `deny_time`) VALUES
	(00000000000000000001, 0000000002, '라면 모음', _binary 0xEB868DEC8BAC2C20EC98A4EB9A9CEAB8B02C20ED8C94EB8F8420EB9DBCEBA9B420EBAAA8EC9D8C20EC84A4EBAA857E, 87, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-05 08:26:09', NULL, 1, NULL, 0, 0, NULL);
INSERT INTO `sales_page` (`uid`, `seller_id`, `name`, `content`, `click_count`, `is_pickup_able`, `is_able_normal_delivery`, `normal_delivery_corp_id`, `normal_delivery_fee`, `normal_delivery_fee_qty`, `is_able_oneday_delivery`, `oneday_delivery_corp_id`, `onday_delivery_fee`, `onday_delivery_fee_qty`, `reg_time`, `last_mod_time`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `is_disable`, `deny_time`) VALUES
	(00000000000000000002, 0000000002, '유기농 무안 황토 꿀고구마 특상 5kg', _binary 0xEC9CA0EAB8B0EB868D20EBACB4EC958820ED99A9ED86A020EABF80EAB3A0EAB5ACEBA78820ED8AB9EC838120356B6720EC84A4EBAA857E, 151, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-05 08:27:25', NULL, 0, NULL, 0, 0, NULL);
INSERT INTO `sales_page` (`uid`, `seller_id`, `name`, `content`, `click_count`, `is_pickup_able`, `is_able_normal_delivery`, `normal_delivery_corp_id`, `normal_delivery_fee`, `normal_delivery_fee_qty`, `is_able_oneday_delivery`, `oneday_delivery_corp_id`, `onday_delivery_fee`, `onday_delivery_fee_qty`, `reg_time`, `last_mod_time`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `is_disable`, `deny_time`) VALUES
	(00000000000000000003, 0000000002, 'CJ 햇반 210g 36개 1박스', _binary 0x434A20ED9687EBB0982032313067203336EAB09C2031EBB095EC8AA420EC84A4EBAA857E, 19, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-05 08:27:40', NULL, 0, NULL, 0, 0, NULL);
INSERT INTO `sales_page` (`uid`, `seller_id`, `name`, `content`, `click_count`, `is_pickup_able`, `is_able_normal_delivery`, `normal_delivery_corp_id`, `normal_delivery_fee`, `normal_delivery_fee_qty`, `is_able_oneday_delivery`, `oneday_delivery_corp_id`, `onday_delivery_fee`, `onday_delivery_fee_qty`, `reg_time`, `last_mod_time`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `is_disable`, `deny_time`) VALUES
	(00000000000000000004, 0000000002, '서울우유 슈레드 모짜렐라치즈 1kg', _binary 0xEC849CEC9AB8EC9AB0EC9CA020EC8A88EBA088EB939C20EBAAA8ECA79CEBA090EB9DBCECB998ECA68820316B6720EC84A4EBAA857E, 4, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-05 08:28:06', NULL, 0, NULL, 0, 0, NULL);
INSERT INTO `sales_page` (`uid`, `seller_id`, `name`, `content`, `click_count`, `is_pickup_able`, `is_able_normal_delivery`, `normal_delivery_corp_id`, `normal_delivery_fee`, `normal_delivery_fee_qty`, `is_able_oneday_delivery`, `oneday_delivery_corp_id`, `onday_delivery_fee`, `onday_delivery_fee_qty`, `reg_time`, `last_mod_time`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `is_disable`, `deny_time`) VALUES
	(00000000000000000005, 0000000001, '[칠레산] 생블루베리 310g', _binary 0x5BECB9A0EBA088EC82B05D20EC839DEBB894EBA3A8EBB2A0EBA6AC203331306720EC84A4EBAA857E, 16, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-05 08:28:49', NULL, 4, NULL, 0, 0, NULL);
INSERT INTO `sales_page` (`uid`, `seller_id`, `name`, `content`, `click_count`, `is_pickup_able`, `is_able_normal_delivery`, `normal_delivery_corp_id`, `normal_delivery_fee`, `normal_delivery_fee_qty`, `is_able_oneday_delivery`, `oneday_delivery_corp_id`, `onday_delivery_fee`, `onday_delivery_fee_qty`, `reg_time`, `last_mod_time`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `is_disable`, `deny_time`) VALUES
	(00000000000000000006, 0000000001, '꿀고구마 무안 황토 꿀고구마 특상 5kg', _binary 0xEABF80EAB3A0EAB5ACEBA78820EBACB4EC958820ED99A9ED86A020EABF80EAB3A0EAB5ACEBA78820ED8AB9EC838120356B6720EC84A4EBAA857E, 0, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-05 08:29:02', NULL, 0, NULL, 0, 0, NULL);
INSERT INTO `sales_page` (`uid`, `seller_id`, `name`, `content`, `click_count`, `is_pickup_able`, `is_able_normal_delivery`, `normal_delivery_corp_id`, `normal_delivery_fee`, `normal_delivery_fee_qty`, `is_able_oneday_delivery`, `oneday_delivery_corp_id`, `onday_delivery_fee`, `onday_delivery_fee_qty`, `reg_time`, `last_mod_time`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `is_disable`, `deny_time`) VALUES
	(00000000000000000007, 0000000001, '농심 라면 모음', _binary 0xEB868DEC8BAC20EB9DBCEBA9B420EBAAA8EC9D8C20EC84A4EBAA857E, 178, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-05 08:29:42', NULL, 5, 4.75, 4, 0, NULL);
INSERT INTO `sales_page` (`uid`, `seller_id`, `name`, `content`, `click_count`, `is_pickup_able`, `is_able_normal_delivery`, `normal_delivery_corp_id`, `normal_delivery_fee`, `normal_delivery_fee_qty`, `is_able_oneday_delivery`, `oneday_delivery_corp_id`, `onday_delivery_fee`, `onday_delivery_fee_qty`, `reg_time`, `last_mod_time`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `is_disable`, `deny_time`) VALUES
	(00000000000000000008, 0000000001, '오뚜기 라면 모음', _binary 0xEC98A4EB9A9CEAB8B020EB9DBCEBA9B420EBAAA8EC9D8C20EC84A4EBAA857E, 14, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-05 08:30:03', NULL, 0, NULL, 0, 0, NULL);
INSERT INTO `sales_page` (`uid`, `seller_id`, `name`, `content`, `click_count`, `is_pickup_able`, `is_able_normal_delivery`, `normal_delivery_corp_id`, `normal_delivery_fee`, `normal_delivery_fee_qty`, `is_able_oneday_delivery`, `oneday_delivery_corp_id`, `onday_delivery_fee`, `onday_delivery_fee_qty`, `reg_time`, `last_mod_time`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `is_disable`, `deny_time`) VALUES
	(00000000000000000009, 0000000001, '노마진 판매 페이지', _binary 0xEB85B8EBA788ECA784EC9D9820ED8C90EBA7A420ED8E98EC9DB4ECA78020EC9E85EB8B88EB8BA42E, 352, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-10 15:09:27', NULL, 1, NULL, 0, 0, NULL);
INSERT INTO `sales_page` (`uid`, `seller_id`, `name`, `content`, `click_count`, `is_pickup_able`, `is_able_normal_delivery`, `normal_delivery_corp_id`, `normal_delivery_fee`, `normal_delivery_fee_qty`, `is_able_oneday_delivery`, `oneday_delivery_corp_id`, `onday_delivery_fee`, `onday_delivery_fee_qty`, `reg_time`, `last_mod_time`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `is_disable`, `deny_time`) VALUES
INSERT INTO `sales_page` (`uid`, `seller_id`, `name`, `content`, `click_count`, `is_pickup_able`, `is_able_normal_delivery`, `normal_delivery_corp_id`, `normal_delivery_fee`, `normal_delivery_fee_qty`, `is_able_oneday_delivery`, `oneday_delivery_corp_id`, `onday_delivery_fee`, `onday_delivery_fee_qty`, `reg_time`, `last_mod_time`, `total_sell_count`, `avg_feedback_point`, `total_feedback_count`, `is_disable`, `deny_time`) VALUES
/*!40000 ALTER TABLE `sales_page` ENABLE KEYS */;

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

DELETE FROM `sales_product`;
/*!40000 ALTER TABLE `sales_product` DISABLE KEYS */;
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000001, 00000000000000000001, 00000000000000000006, 0000000002);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000002, 00000000000000000001, 00000000000000000013, 0000000002);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000003, 00000000000000000001, 00000000000000000014, 0000000002);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000004, 00000000000000000001, 00000000000000000015, 0000000002);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000005, 00000000000000000001, 00000000000000000012, 0000000002);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000006, 00000000000000000002, 00000000000000000003, 0000000002);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000007, 00000000000000000003, 00000000000000000004, 0000000002);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000008, 00000000000000000004, 00000000000000000005, 0000000002);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000009, 00000000000000000005, 00000000000000000001, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000010, 00000000000000000006, 00000000000000000002, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000011, 00000000000000000007, 00000000000000000007, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000012, 00000000000000000007, 00000000000000000010, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000013, 00000000000000000008, 00000000000000000008, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000014, 00000000000000000008, 00000000000000000009, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000016, 00000000000000000009, 00000000000000000019, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000017, 00000000000000000009, 00000000000000000020, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000018, 00000000000000000009, 00000000000000000021, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000019, 00000000000000000009, 00000000000000000022, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000020, 00000000000000000009, 00000000000000000023, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000021, 00000000000000000009, 00000000000000000024, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000022, 00000000000000000009, 00000000000000000025, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000023, 00000000000000000009, 00000000000000000026, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000024, 00000000000000000009, 00000000000000000027, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000025, 00000000000000000009, 00000000000000000028, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000026, 00000000000000000009, 00000000000000000029, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000027, 00000000000000000009, 00000000000000000030, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000028, 00000000000000000009, 00000000000000000031, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000029, 00000000000000000009, 00000000000000000032, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000030, 00000000000000000009, 00000000000000000033, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000031, 00000000000000000009, 00000000000000000034, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000032, 00000000000000000009, 00000000000000000035, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000033, 00000000000000000009, 00000000000000000036, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000034, 00000000000000000009, 00000000000000000037, 0000000001);
INSERT INTO `sales_product` (`uid`, `sales_page_id`, `product_id`, `seller_id`) VALUES
	(00000000000000000035, 00000000000000000009, 00000000000000000038, 0000000001);
/*!40000 ALTER TABLE `sales_product` ENABLE KEYS */;


