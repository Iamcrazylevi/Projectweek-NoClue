-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server versie:                5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Versie:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Databasestructuur van coronahulp wordt geschreven
CREATE DATABASE IF NOT EXISTS `coronahulp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `coronahulp`;

-- Structuur van  tabel coronahulp.action wordt geschreven
CREATE TABLE IF NOT EXISTS `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `scale` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel coronahulp.action: ~5 rows (ongeveer)
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
REPLACE INTO `action` (`id`, `name`, `filename`, `scale`) VALUES
	(0, 'Boodschappen doen', 'boodschappendoen.svg', 1),
	(1, 'Fietsen', 'fietsen.svg', 1),
	(2, 'Hardlopen', 'hardlopen.svg', 1),
	(3, 'Hond uitlaten', 'honduitlaten.svg', 1),
	(4, 'Wandelen', 'wandelen.svg', 1);
/*!40000 ALTER TABLE `action` ENABLE KEYS */;

-- Structuur van  tabel coronahulp.admin wordt geschreven
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel coronahulp.admin: ~2 rows (ongeveer)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
REPLACE INTO `admin` (`id`, `username`, `password`) VALUES
	(1, 'admin', 'e64b78fc3bc91bcbc7dc232ba8ec59e0'),
	(2, 'axel', 'Admin123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Structuur van  tabel coronahulp.poi wordt geschreven
CREATE TABLE IF NOT EXISTS `poi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) NOT NULL,
  `description` text NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `action_id` int(10) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel coronahulp.poi: ~7 rows (ongeveer)
/*!40000 ALTER TABLE `poi` DISABLE KEYS */;
REPLACE INTO `poi` (`id`, `sender_id`, `description`, `lat`, `lng`, `action_id`, `date`) VALUES
	(0, 0, 'Ik zit thuis in quarantaine en kan de deur niet uit. Wie wil mij helpen met de boodschappen?', 52.0729, 5.09806, 0, '2021-02-15 14:20:54'),
	(1, 1, 'Ik zou graag met iemand willen wandelen.', 52.0739, 5.10137, 4, '2021-02-15 14:21:54'),
	(2, 2, 'Wie zou (tegen betaling) voor mij boodschappen willen doen?', 52.078, 5.10153, 0, '2021-02-15 14:22:17'),
	(3, 3, 'Ik heb eergisteren een nieuwe kunstheup gekregen. Zou iemand mij kunnen helpen met boodschappen doen?', 52.0809, 5.14666, 0, '2021-02-15 14:22:47'),
	(4, 4, 'Alleen de hond uitlaten is saai. Wie loopt met ons mee?', 52.0653, 5.13368, 3, '2021-02-15 14:23:16'),
	(5, 1, 'Ben aan het revalideren. Het advies is om veel te fietsen. Wie doet mee?', 52.0798, 5.09294, 1, '2021-02-17 11:58:28'),
	(6, 1, 'test', 52.0707, 5.07783, 4, '2021-02-17 12:01:09');
/*!40000 ALTER TABLE `poi` ENABLE KEYS */;

-- Structuur van  tabel coronahulp.sender wordt geschreven
CREATE TABLE IF NOT EXISTS `sender` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel coronahulp.sender: ~5 rows (ongeveer)
/*!40000 ALTER TABLE `sender` DISABLE KEYS */;
REPLACE INTO `sender` (`id`, `name`) VALUES
	(0, 'Gerard van de Burg'),
	(1, 'Angela van Grinsven'),
	(2, 'Ella Verhoeven'),
	(3, 'Corrie van der Tak'),
	(4, 'Heino Fels');
/*!40000 ALTER TABLE `sender` ENABLE KEYS */;

-- Structuur van  tabel coronahulp.users wordt geschreven
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel coronahulp.users: ~3 rows (ongeveer)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `username`, `email`, `password`) VALUES
	(1, 'max', 'max@glu.nl', 'e64b78fc3bc91bcbc7dc232ba8ec59e0'),
	(2, 'axel', 'axeldegier@outlook.com', 'fa03eb688ad8aa1db593d33dabd89bad'),
	(3, 'levi', '532600@student.glu.nl', '8e07dafd13495561db9063ebe4db4b27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
