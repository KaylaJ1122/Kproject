-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.5.4-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- jua 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `jua` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jua`;

-- 테이블 jua.k_auth 구조 내보내기
CREATE TABLE IF NOT EXISTS `k_auth` (
  `u_id` varchar(50) NOT NULL DEFAULT '',
  `u_auth` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`u_id`,`u_auth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 jua.k_auth:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `k_auth` DISABLE KEYS */;
INSERT INTO `k_auth` (`u_id`, `u_auth`) VALUES
	('aaa1234', 'ROLE_USER'),
	('ggg', 'ROLE_USER');
/*!40000 ALTER TABLE `k_auth` ENABLE KEYS */;

-- 테이블 jua.k_product 구조 내보내기
CREATE TABLE IF NOT EXISTS `k_product` (
  `p_id` int(11) NOT NULL,
  `p_name` int(11) DEFAULT NULL,
  `p_price` int(11) DEFAULT NULL,
  `p_detail` int(11) DEFAULT NULL,
  `p_photo` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 jua.k_product:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `k_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `k_product` ENABLE KEYS */;

-- 테이블 jua.k_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `k_user` (
  `u_id` varchar(50) NOT NULL,
  `u_password` varchar(200) DEFAULT NULL,
  `u_name` varchar(100) DEFAULT NULL,
  `u_birth` varchar(100) DEFAULT NULL,
  `u_email` varchar(100) DEFAULT NULL,
  `u_phone` varchar(100) DEFAULT NULL,
  `u_gender` varchar(100) DEFAULT NULL,
  `u_isAccountNonExpired` tinyint(4) DEFAULT NULL,
  `u_isAccountNonLocked` tinyint(4) DEFAULT NULL,
  `u_isCredentialNonExpired` tinyint(4) DEFAULT NULL,
  `u_isEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 jua.k_user:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `k_user` DISABLE KEYS */;
INSERT INTO `k_user` (`u_id`, `u_password`, `u_name`, `u_birth`, `u_email`, `u_phone`, `u_gender`, `u_isAccountNonExpired`, `u_isAccountNonLocked`, `u_isCredentialNonExpired`, `u_isEnabled`) VALUES
	('aaa1234', '$2a$10$gcrnw2bf2R2ea2iXmPUo3eKY2F8COwxu/ukptY93cZsa19WkL.KUC', '에이에이', '19990513', 'adsaff@gmail.com', '01056428965', '남', 1, 1, 1, 1),
	('ggg', '$2a$10$N5eYfM/m3hv1CxMnNC1ezuPbF7Bq3zSNvtG7apfcGNF5Nvc/MZDIe', 'ggg', '124', 'ggg1234@gmail.com', 'gg', '여', 1, 1, 1, 1);
/*!40000 ALTER TABLE `k_user` ENABLE KEYS */;

-- 테이블 jua.spring_session 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 jua.spring_session:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `spring_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `spring_session` ENABLE KEYS */;

-- 테이블 jua.spring_session_attributes 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 jua.spring_session_attributes:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `spring_session_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spring_session_attributes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
