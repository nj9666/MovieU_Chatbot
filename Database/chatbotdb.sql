-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2020 at 08:50 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbotdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `messagetbl`
--

DROP TABLE IF EXISTS `messagetbl`;
CREATE TABLE IF NOT EXISTS `messagetbl` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `message` varchar(250) NOT NULL,
  `return_msg` varchar(250) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messagetbl`
--

INSERT INTO `messagetbl` (`mid`, `message`, `return_msg`) VALUES
(1, 'hi', 'hi'),
(2, 'hi', 'Hello'),
(3, 'hi', 'Hi There, :)'),
(4, 'hay', 'Hay There,'),
(5, 'hello', 'Hola!!!'),
(6, 'hello', 'Yes, How can I Help you?'),
(7, 'how are you', 'I\'m Fine, and I Hope you also fine'),
(8, 'Movie', '1. Avtar<br>2. Avengers : End Game<br>3. Jurassic World<br>4. Dark Night<br>5. Zodiac'),
(9, 'Current new Movie', '1. Laxmi Bomb<br>2. Khudahafiz<br>3. Yaara<br>4. Night come for us<br>5. Tennet'),
(10, 'Latest Movie', '1. Fantasy Islan<br>2. Lost Girl<br>3. The Girl next to the door<br>4. KGF<br>5. Lost in Space'),
(11, 'Web series', '1. Scam 1992 : Harshad Mehta<br>2. Asur<br>3. Mirzapur S2<br>4. Kota Factory<br>5. Flamess'),
(12, 'Family Movie', '1. Hum sath sath hain<br>2. Himatwala<br>3. Hum apke hain koun<br>4. Sholay<br>5. Bagbaan'),
(13, 'Animation movie', '1. Motu Patlu<br>2. Chhota Bheem<br>3. Doraemon<br>4. Chinchan<br>5. Pokemon'),
(14, 'Adventure Movie', '1. Jounry to the west<br>2. Man vs Wild<br>3. King Kong<br>4. Jaurasic Park<br>5. Jumanji'),
(15, 'Adult Movie', '1. Wrong Turns<br>2. American Pies<br>3. Journey<br>4. Sherlock Holmes<br>5. Shaw'),
(16, 'Sci-Fi Movie', '1. Interstellar<br>2. Dr. Starnge<br>2. Iron Man<br>4. Martian<br>5. After Earth'),
(17, 'Gujrati Movie', '1. Chello Divad<br>2. Passport<br>3. Papa tmne ny smjay<br>4. Love ni bhavy<br>5. RomCom'),
(18, 'Hindi Movie ', '1. Sooryavansham<br>2. Baaghi 3<br>3. Bahubali<br>4. Sanam Teri kasam<br>5. Chotta Chetan'),
(19, 'South', '1. Geeta Govindam<br>2. ISmart Shankar<br>3. Janta Garage<br>4. Sketch<br>5. Yevadu<br>'),
(20, 'Hollywood', '1. Fast & Furion<br>2. Mehanic Resurticon<br>3. Incapsatoion<br>4. Lucy<br>5. Baby day out<br>'),
(21, 'Marathi', '1. Zingat<br>2. Dhadak<br>3. Sairat<br>4. Mauli<br>5 Hirkani'),
(22, 'Action', '1. Avtar<br>2. Avengers : End Game<br>3. Jurassic World<br>4. Dark Night<br>5. Zodiac'),
(23, 'Horror movie', '1. The NUN<br>2. Conjuring<br>3. mama<br>4. IT<br>5. us'),
(24, 'what you can do', 'I Can find Top movies for you<br>Enter movie Genres Or category');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
