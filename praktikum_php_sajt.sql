-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 06:42 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum_php_sajt`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `idAgent` int(11) NOT NULL,
  `description` varchar(300) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idType` int(11) DEFAULT NULL,
  `linkLinkedin` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'profil.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`idAgent`, `description`, `idUser`, `idType`, `linkLinkedin`, `image`) VALUES
(1, 'Lorem ipsum dolor sit amet, aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, 'https://www.linkedin.com/', '1591623124_person_1.jpg'),
(2, 'Lorem ipsum dolor sit amet, aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 1, 'https://www.linkedin.com/', 'person_2.jpg'),
(3, 'Lorem ipsum dolor sit amet, aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 3, 2, 'https://www.linkedin.com/', 'person_3.jpg'),
(5, 'Lorem ipsum dolor sit amet, aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 14, 1, 'https://www.linkedin.com/', '1591734718_profile-img.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `agent_visit`
--

CREATE TABLE `agent_visit` (
  `idAgentVisit` int(11) NOT NULL,
  `idVisit` int(11) NOT NULL,
  `idAgent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent_visit`
--

INSERT INTO `agent_visit` (`idAgentVisit`, `idVisit`, `idAgent`) VALUES
(1, 2, 1),
(2, 3, 2),
(4, 10, 1),
(5, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idCategory` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idCategory`, `category`) VALUES
(1, 'sell'),
(2, 'rent');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `idCity` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `idCountry` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`idCity`, `city`, `idCountry`) VALUES
(1, 'Belgrade', 1),
(2, 'Novi Sad', 1),
(3, 'Niš', 1),
(4, 'Subotica', 1),
(5, 'Smederevo', 1),
(6, 'Sarajevo', 2),
(7, 'Banja Luka', 2),
(8, 'Mostar', 2),
(9, 'Bijeljina', 2),
(10, 'Split', 5),
(11, 'Zadar', 5),
(12, 'Dubrovnik', 5),
(13, 'Podgorica', 3),
(14, 'Budva', 3),
(15, 'Herceg Novi', 3),
(16, 'Sofia', 6),
(17, 'Varna', 6),
(18, 'Plovdiv', 6),
(19, 'Athens', 4),
(20, 'Thessaloniki', 4);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `idContact` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(80) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`idContact`, `firstName`, `lastName`, `email`, `subject`, `message`, `date`, `seen`) VALUES
(1, 'Pera', 'Peric', 'pera@gmail.com', 'Proba mejl', 'proba slanja mejla', '2020-05-30 20:54:59', 1),
(2, 'Nemanja', 'Maksimovic', 'nemanjamaksimovic13081999@gmail.com', 'Proba', 'Neki tekst', '2020-05-31 12:59:57', 1),
(3, 'Marko', 'Markovic', 'marko.markovic@gmail.com', 'Slanje mejla', 'Neki tekst.', '2020-06-11 10:47:30', 0),
(4, 'Jovan', 'Jovanovic', 'jovan.jovanovic@gmail.com', 'Slanje mejla', 'Neki tekst, neki tekst.', '2020-06-11 10:48:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `idCountry` int(11) NOT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`idCountry`, `country`) VALUES
(2, 'Bosnia and Herzegovina'),
(6, 'Bulgaria'),
(5, 'Croatia'),
(4, 'Greece'),
(3, 'Montenegro'),
(1, 'Serbia');

-- --------------------------------------------------------

--
-- Table structure for table `documentation`
--

CREATE TABLE `documentation` (
  `idDocumentation` int(11) NOT NULL,
  `documentation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documentation`
--

INSERT INTO `documentation` (`idDocumentation`, `documentation`) VALUES
(1, 'registered'),
(2, 'unregistered'),
(3, 'under construction');

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `idFeature` int(11) NOT NULL,
  `feature` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`idFeature`, `feature`) VALUES
(1, 'pool'),
(2, 'pantry'),
(3, 'balcony'),
(4, 'storage'),
(5, 'back yard'),
(6, 'garage'),
(7, 'intercom'),
(8, 'basement'),
(9, 'phone'),
(10, 'internet');

-- --------------------------------------------------------

--
-- Table structure for table `feature_real_estate`
--

CREATE TABLE `feature_real_estate` (
  `idFeatureRealEstate` int(11) NOT NULL,
  `idFeature` int(11) NOT NULL,
  `idRealEstate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feature_real_estate`
--

INSERT INTO `feature_real_estate` (`idFeatureRealEstate`, `idFeature`, `idRealEstate`) VALUES
(1, 8, 2),
(2, 1, 2),
(25, 3, 28),
(26, 6, 28),
(27, 7, 28),
(28, 9, 28),
(29, 10, 28),
(48, 7, 35),
(49, 9, 35),
(50, 10, 35),
(52, 9, 36),
(53, 10, 36),
(54, 3, 36),
(55, 6, 36),
(56, 7, 36);

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `idFloor` int(11) NOT NULL,
  `floor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`idFloor`, `floor`) VALUES
(5, '1'),
(14, '10'),
(15, '11'),
(16, '12'),
(17, '13'),
(18, '14'),
(19, '15'),
(20, '16'),
(21, '17'),
(22, '18'),
(23, '19'),
(6, '2'),
(24, '20'),
(25, '21'),
(26, '22'),
(27, '23'),
(28, '24'),
(29, '25'),
(30, '26'),
(31, '27'),
(32, '28'),
(33, '29'),
(7, '3'),
(34, '30'),
(8, '4'),
(9, '5'),
(10, '6'),
(11, '7'),
(12, '8'),
(13, '9'),
(1, 'basement'),
(2, 'ground floor'),
(4, 'higher ground floor'),
(35, 'loft'),
(3, 'lower ground floor');

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `idFloors` int(11) NOT NULL,
  `idRealEstate` int(11) NOT NULL,
  `idFloor` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`idFloors`, `idRealEstate`, `idFloor`) VALUES
(1, 4, 4),
(2, 28, 5),
(5, 35, 6),
(6, 36, 10);

-- --------------------------------------------------------

--
-- Table structure for table `floor_status`
--

CREATE TABLE `floor_status` (
  `idFloorStatus` int(11) NOT NULL,
  `floor_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `floor_status`
--

INSERT INTO `floor_status` (`idFloorStatus`, `floor_status`) VALUES
(1, 'ground floor'),
(2, 'floor');

-- --------------------------------------------------------

--
-- Table structure for table `heating`
--

CREATE TABLE `heating` (
  `idHeating` int(11) NOT NULL,
  `heating` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `heating`
--

INSERT INTO `heating` (`idHeating`, `heating`) VALUES
(1, 'central heating'),
(2, 'electric power'),
(3, 'storey heating'),
(4, 'floor heating'),
(5, 'storage heater'),
(6, 'heat pump');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `idImage` int(11) NOT NULL,
  `src` varchar(200) NOT NULL,
  `src_medium` varchar(150) NOT NULL,
  `src_thumbnail` varchar(150) NOT NULL,
  `idRealEstate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`idImage`, `src`, `src_medium`, `src_thumbnail`, `idRealEstate`) VALUES
(1, 'slika1.jpg', 'slika1.jpg', 'slika1.jpg', 1),
(2, 'slika2.jpg', 'slika2.jpg', 'slika2.jpg', 2),
(3, 'slika3.jpg', 'slika3.jpg', 'slika3.jpg', 3),
(4, 'slika4.jpg', 'slika4.jpg', 'slika4.jpg', 4),
(28, '1590594959_image1.jpg', '1590594959_medium_image1.jpg', '1590594959_thumbnail_image1.jpg', 28),
(29, '1590594959_image2.jpg', '1590594959_medium_image2.jpg', '1590594959_thumbnail_image2.jpg', 28),
(30, '1590594960_image3.jpg', '1590594960_medium_image3.jpg', '1590594960_thumbnail_image3.jpg', 28),
(31, '1590594960_image4.jpg', '1590594960_medium_image4.jpg', '1590594960_thumbnail_image4.jpg', 28),
(32, '1590605528_image1.jpg', '1590605528_medium_image1.jpg', '1590605528_thumbnail_image1.jpg', 35),
(33, '1590605528_image2.jpg', '1590605528_medium_image2.jpg', '1590605528_thumbnail_image2.jpg', 35),
(34, '1590605528_image3.jpg', '1590605528_medium_image3.jpg', '1590605528_thumbnail_image3.jpg', 35),
(38, '1590855975_image1.jpg', '1590855975_medium_image1.jpg', '1590855975_thumbnail_image1.jpg', 36),
(44, '1590856685_image2.jpg', '1590856685_medium_image2.jpg', '1590856685_thumbnail_image2.jpg', 36),
(45, '1590856685_image3.jpg', '1590856685_medium_image3.jpg', '1590856685_thumbnail_image3.jpg', 36),
(46, '1590856685_image4.jpg', '1590856685_medium_image4.jpg', '1590856685_thumbnail_image4.jpg', 36),
(47, '1590856685_image5.jpg', '1590856685_medium_image5.jpg', '1590856685_thumbnail_image5.jpg', 36);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `idNav` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `link` varchar(150) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`idNav`, `text`, `link`, `position`) VALUES
(1, 'Home', 'index.php?page=home', 1),
(2, 'Buy', 'index.php?page=properties&type=buy', 2),
(3, 'Rent', 'index.php?page=properties&type=rent', 3),
(4, 'Sell', 'index.php?page=sell', 4),
(5, 'Contact', 'index.php?page=contact', 5),
(6, 'Author', 'index.php?page=author', 6),
(7, 'Login', ' ', 7),
(8, 'Sing up', 'index.php?page=register', 8),
(9, 'profile', '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `number_of_floors`
--

CREATE TABLE `number_of_floors` (
  `idNumberOfFloors` int(11) NOT NULL,
  `idRealEstate` int(11) NOT NULL,
  `number_of_floors` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `number_of_floors`
--

INSERT INTO `number_of_floors` (`idNumberOfFloors`, `idRealEstate`, `number_of_floors`) VALUES
(1, 1, 3),
(2, 3, 2),
(3, 4, 4),
(5, 28, 5),
(12, 35, 8),
(13, 36, 12);

-- --------------------------------------------------------

--
-- Table structure for table `outcome`
--

CREATE TABLE `outcome` (
  `idOutcome` int(11) NOT NULL,
  `outcome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outcome`
--

INSERT INTO `outcome` (`idOutcome`, `outcome`) VALUES
(1, 'sold'),
(2, 'rented'),
(3, 'unsuccessfully');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `idPrice` int(11) NOT NULL,
  `idRealEstate` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`idPrice`, `idRealEstate`, `price`, `date`) VALUES
(1, 2, '120000.00', '2020-05-18 13:52:04'),
(2, 4, '200000.00', '2020-05-18 13:52:16'),
(3, 3, '250000.00', '2020-05-18 13:52:32'),
(4, 1, '250000.00', '2020-05-22 13:13:25'),
(5, 2, '100000.00', '2020-05-22 13:32:49'),
(6, 2, '80000.00', '2020-05-22 14:11:23'),
(7, 28, '230000.00', '2020-05-27 18:14:52'),
(8, 35, '650.00', '2020-05-27 20:52:08'),
(9, 36, '600.00', '2020-05-30 17:17:07'),
(11, 36, '700.00', '2020-05-30 17:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `idPropertyType` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`idPropertyType`, `type`) VALUES
(1, 'Apartment'),
(2, 'House'),
(3, 'Apartment in house'),
(4, 'Shop'),
(5, 'Office space');

-- --------------------------------------------------------

--
-- Table structure for table `real_estate`
--

CREATE TABLE `real_estate` (
  `idRealEstate` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(200) NOT NULL,
  `size` float NOT NULL,
  `bedrooms` int(2) NOT NULL,
  `bathrooms` int(2) NOT NULL,
  `year_built` year(4) NOT NULL,
  `idPropertyType` int(11) NOT NULL,
  `idCity` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `idHeating` int(11) NOT NULL,
  `idRooms` int(11) NOT NULL,
  `idDocumentation` int(11) NOT NULL,
  `idFloorStatus` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `approved` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `real_estate`
--

INSERT INTO `real_estate` (`idRealEstate`, `title`, `description`, `address`, `size`, `bedrooms`, `bathrooms`, `year_built`, `idPropertyType`, `idCity`, `idCategory`, `idHeating`, `idRooms`, `idDocumentation`, `idFloorStatus`, `idUser`, `date`, `approved`, `deleted`) VALUES
(1, 'House for Sale in Belgrade', 'The interior of the house is focused around a large central hallway serving as the main avenue of traffic and entrance area to the adjacent rooms. The hallway flows into a large, wide staircase that provides the main means of egress.', 'Bulevar Oslobođenja', 535, 3, 4, 2005, 2, 1, 1, 2, 11, 1, 2, 4, '2020-05-18 14:30:43', 1, 0),
(2, 'House for Sale in Zemun', 'The interior of the house is focused around a large central hallway serving as the main avenue of traffic and entrance area to the adjacent rooms. The hallway flows into a large, wide staircase that provides the main means of egress.', 'Prvomajska', 54, 1, 1, 2003, 2, 1, 1, 1, 4, 1, 1, 13, '2020-05-18 14:30:43', 1, 0),
(3, 'House for Sale Slavija', 'The interior of the house is focused around a large central hallway serving as the main avenue of traffic and entrance area to the adjacent rooms. The hallway flows into a large, wide staircase that provides the main means of egress.', 'Deligradska', 1690, 3, 3, 1924, 2, 1, 1, 1, 11, 1, 2, 4, '2020-05-18 14:30:43', 1, 0),
(4, 'Apartment for Sale in Slavija, Belgrade', 'The interior of the apartment is focused around a large central hallway serving as the main avenue of traffic and entrance area to the adjacent rooms. The hallway flows into a large, wide staircase that provides the main means of egress.', 'Kralja Milutina', 96, 3, 1, 1936, 1, 1, 1, 2, 7, 2, 2, 13, '2020-05-18 14:30:43', 1, 0),
(28, 'Apartment for sale', 'The interior of the apartment is focused around a large central hallway serving as the main avenue of traffic and entrance area to the adjacent rooms. The hallway flows into a large, wide staircase that provides the main means of egress.', 'Cara Dušana', 98, 2, 1, 2019, 1, 1, 1, 3, 6, 1, 2, 4, '2020-05-27 17:55:58', 1, 1),
(35, 'Apartment for rent', 'The interior of the apartment is focused around a large central hallway serving as the main avenue of traffic and entrance area to the adjacent rooms. The hallway flows into a large, wide staircase that provides the main means of egress.', 'Bulevar kralja Aleksandra', 86, 2, 1, 2019, 1, 1, 2, 1, 6, 1, 2, 13, '2020-05-27 20:52:08', 1, 0),
(36, 'Apartment for rent in Belgrade', 'The interior of the apartment is focused around a large central hallway serving as the main avenue of traffic and entrance area to the adjacent rooms. The hallway flows into a large, wide staircase that provides the main means of egress.', 'Jurija Gagarina', 85, 2, 1, 2018, 1, 1, 2, 4, 7, 1, 2, 4, '2020-05-30 17:17:07', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `idRole` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`idRole`, `role`) VALUES
(1, 'user'),
(2, 'admin'),
(3, 'agent');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `idRooms` int(11) NOT NULL,
  `rooms` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`idRooms`, `rooms`) VALUES
(1, '0.5'),
(2, '1.0'),
(3, '1.5'),
(4, '2.0'),
(5, '2.5'),
(6, '3.0'),
(7, '3.5'),
(8, '4.0'),
(9, '4.5'),
(11, '5+'),
(10, '5.0');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `idType` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`idType`, `type`) VALUES
(2, 'Buying Agent'),
(1, 'Selling Agent');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `idRole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `firstName`, `lastName`, `password`, `phone`, `email`, `date`, `idRole`) VALUES
(1, 'Marko', 'Marković', 'fdc242f86ffc866597894f944a9e0ff4', '+38132343223', 'marko.markovic@gmail.com', '2020-05-18 16:00:28', 3),
(2, 'Nenad', 'Jovanović', 'dcd931149bcc7ae8e989f136d075cd91', '+38132343223', 'nenad.jovanovic@gmail.com', '2020-05-18 16:00:28', 3),
(3, 'Jovan', 'Stanković', '7061b8a844e1e4f325a2ea8e55040944', '+381 323 432 23', 'jovan.stankovic@gmail.com', '2020-05-18 16:00:28', 3),
(4, 'Pera', 'Perić', 'e24478e7a6f2c283c8dbcd1381baf1c6', '12345678', 'pera@gmail.com', '2020-05-21 18:14:08', 1),
(13, 'Mika', 'Mikic', 'e24478e7a6f2c283c8dbcd1381baf1c6', '0574839453', 'mika@gmail.com', '2020-05-22 11:53:05', 1),
(14, 'Nikola', 'Nikolic', 'e4ecf52ce03b22faa3115fff64e2fae8', '06423423423', 'nikola.nikolic@gmail.com', '2020-06-09 17:42:51', 3),
(15, 'Mica', 'Micic', '1fc30f27de8da75c77673325a52d58ba', '0631231231', 'micko@gmail.com', '2021-06-09 17:41:01', 1),
(16, 'Nikola', 'Brzovan', '0474dd0668570096451f2a9b36deb9fc', '06312312311', 'brzi@gmail.com', '2021-06-09 17:43:02', 2);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `idVisit` int(11) NOT NULL,
  `dateVisit` date NOT NULL,
  `time` time NOT NULL,
  `idUser` int(11) NOT NULL,
  `idRealEstate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`idVisit`, `dateVisit`, `time`, `idUser`, `idRealEstate`) VALUES
(2, '2020-06-05', '11:30:00', 4, 35),
(3, '2020-07-03', '17:50:00', 13, 1),
(10, '2020-07-04', '11:00:00', 4, 35),
(11, '2020-07-04', '11:00:00', 4, 35),
(12, '2020-06-25', '11:00:00', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `visit_outcome`
--

CREATE TABLE `visit_outcome` (
  `idVisitOutcome` int(11) NOT NULL,
  `idAgentVisit` int(11) NOT NULL,
  `idOutcome` int(11) NOT NULL,
  `outcomeDescription` varchar(250) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit_outcome`
--

INSERT INTO `visit_outcome` (`idVisitOutcome`, `idAgentVisit`, `idOutcome`, `outcomeDescription`, `date`) VALUES
(5, 1, 3, 'Apartment was not rented', '2020-06-09 18:53:34'),
(6, 4, 3, 'Apartment was rented', '2020-06-09 19:47:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`idAgent`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idType` (`idType`);

--
-- Indexes for table `agent_visit`
--
ALTER TABLE `agent_visit`
  ADD PRIMARY KEY (`idAgentVisit`),
  ADD KEY `idAgent` (`idAgent`),
  ADD KEY `idVisit` (`idVisit`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`idCity`),
  ADD KEY `idCountry` (`idCountry`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`idContact`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`idCountry`),
  ADD UNIQUE KEY `country` (`country`);

--
-- Indexes for table `documentation`
--
ALTER TABLE `documentation`
  ADD PRIMARY KEY (`idDocumentation`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`idFeature`);

--
-- Indexes for table `feature_real_estate`
--
ALTER TABLE `feature_real_estate`
  ADD PRIMARY KEY (`idFeatureRealEstate`),
  ADD KEY `idRealEstate` (`idRealEstate`),
  ADD KEY `idFeature` (`idFeature`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`idFloor`),
  ADD UNIQUE KEY `name` (`floor`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`idFloors`),
  ADD KEY `idFloor` (`idFloor`),
  ADD KEY `idRealEstate` (`idRealEstate`);

--
-- Indexes for table `floor_status`
--
ALTER TABLE `floor_status`
  ADD PRIMARY KEY (`idFloorStatus`);

--
-- Indexes for table `heating`
--
ALTER TABLE `heating`
  ADD PRIMARY KEY (`idHeating`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`idImage`),
  ADD KEY `idRealEstate` (`idRealEstate`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`idNav`);

--
-- Indexes for table `number_of_floors`
--
ALTER TABLE `number_of_floors`
  ADD PRIMARY KEY (`idNumberOfFloors`),
  ADD KEY `idRealEstate` (`idRealEstate`);

--
-- Indexes for table `outcome`
--
ALTER TABLE `outcome`
  ADD PRIMARY KEY (`idOutcome`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`idPrice`),
  ADD KEY `idRealEstate` (`idRealEstate`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`idPropertyType`);

--
-- Indexes for table `real_estate`
--
ALTER TABLE `real_estate`
  ADD PRIMARY KEY (`idRealEstate`),
  ADD KEY `idCategory` (`idPropertyType`),
  ADD KEY `idPropertyType` (`idCategory`),
  ADD KEY `idHeating` (`idHeating`),
  ADD KEY `idRooms` (`idRooms`),
  ADD KEY `idDocumentation` (`idDocumentation`),
  ADD KEY `idFloors` (`idFloorStatus`),
  ADD KEY `idCity` (`idCity`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`idRooms`),
  ADD UNIQUE KEY `rooms` (`rooms`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idType`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idRole` (`idRole`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`idVisit`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idRealEstate` (`idRealEstate`);

--
-- Indexes for table `visit_outcome`
--
ALTER TABLE `visit_outcome`
  ADD PRIMARY KEY (`idVisitOutcome`),
  ADD KEY `idVisitAgent` (`idAgentVisit`),
  ADD KEY `idOutcome` (`idOutcome`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `idAgent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `agent_visit`
--
ALTER TABLE `agent_visit`
  MODIFY `idAgentVisit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `idCity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `idContact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `idCountry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `documentation`
--
ALTER TABLE `documentation`
  MODIFY `idDocumentation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `idFeature` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feature_real_estate`
--
ALTER TABLE `feature_real_estate`
  MODIFY `idFeatureRealEstate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `idFloor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `idFloors` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `floor_status`
--
ALTER TABLE `floor_status`
  MODIFY `idFloorStatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `heating`
--
ALTER TABLE `heating`
  MODIFY `idHeating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `idImage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `idNav` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `number_of_floors`
--
ALTER TABLE `number_of_floors`
  MODIFY `idNumberOfFloors` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `outcome`
--
ALTER TABLE `outcome`
  MODIFY `idOutcome` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `idPrice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `property_type`
--
ALTER TABLE `property_type`
  MODIFY `idPropertyType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `real_estate`
--
ALTER TABLE `real_estate`
  MODIFY `idRealEstate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `idRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `idRooms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `idVisit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `visit_outcome`
--
ALTER TABLE `visit_outcome`
  MODIFY `idVisitOutcome` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`idType`) REFERENCES `type` (`idType`),
  ADD CONSTRAINT `agent_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Constraints for table `agent_visit`
--
ALTER TABLE `agent_visit`
  ADD CONSTRAINT `agent_visit_ibfk_1` FOREIGN KEY (`idVisit`) REFERENCES `visit` (`idVisit`),
  ADD CONSTRAINT `agent_visit_ibfk_2` FOREIGN KEY (`idAgent`) REFERENCES `agent` (`idAgent`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`idCountry`) REFERENCES `country` (`idCountry`);

--
-- Constraints for table `feature_real_estate`
--
ALTER TABLE `feature_real_estate`
  ADD CONSTRAINT `feature_real_estate_ibfk_1` FOREIGN KEY (`idFeature`) REFERENCES `feature` (`idFeature`),
  ADD CONSTRAINT `feature_real_estate_ibfk_2` FOREIGN KEY (`idRealEstate`) REFERENCES `real_estate` (`idRealEstate`);

--
-- Constraints for table `floors`
--
ALTER TABLE `floors`
  ADD CONSTRAINT `floors_ibfk_1` FOREIGN KEY (`idFloor`) REFERENCES `floor` (`idFloor`),
  ADD CONSTRAINT `floors_ibfk_2` FOREIGN KEY (`idRealEstate`) REFERENCES `real_estate` (`idRealEstate`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`idRealEstate`) REFERENCES `real_estate` (`idRealEstate`);

--
-- Constraints for table `number_of_floors`
--
ALTER TABLE `number_of_floors`
  ADD CONSTRAINT `number_of_floors_ibfk_1` FOREIGN KEY (`idRealEstate`) REFERENCES `real_estate` (`idRealEstate`);

--
-- Constraints for table `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `price_ibfk_1` FOREIGN KEY (`idRealEstate`) REFERENCES `real_estate` (`idRealEstate`);

--
-- Constraints for table `real_estate`
--
ALTER TABLE `real_estate`
  ADD CONSTRAINT `real_estate_ibfk_1` FOREIGN KEY (`idPropertyType`) REFERENCES `property_type` (`idPropertyType`),
  ADD CONSTRAINT `real_estate_ibfk_10` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`),
  ADD CONSTRAINT `real_estate_ibfk_4` FOREIGN KEY (`idHeating`) REFERENCES `heating` (`idHeating`),
  ADD CONSTRAINT `real_estate_ibfk_5` FOREIGN KEY (`idRooms`) REFERENCES `rooms` (`idRooms`),
  ADD CONSTRAINT `real_estate_ibfk_6` FOREIGN KEY (`idDocumentation`) REFERENCES `documentation` (`idDocumentation`),
  ADD CONSTRAINT `real_estate_ibfk_7` FOREIGN KEY (`idCategory`) REFERENCES `category` (`idCategory`),
  ADD CONSTRAINT `real_estate_ibfk_8` FOREIGN KEY (`idFloorStatus`) REFERENCES `floor_status` (`idFloorStatus`),
  ADD CONSTRAINT `real_estate_ibfk_9` FOREIGN KEY (`idCity`) REFERENCES `city` (`idCity`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`);

--
-- Constraints for table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`),
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`idRealEstate`) REFERENCES `real_estate` (`idRealEstate`);

--
-- Constraints for table `visit_outcome`
--
ALTER TABLE `visit_outcome`
  ADD CONSTRAINT `visit_outcome_ibfk_1` FOREIGN KEY (`idAgentVisit`) REFERENCES `agent_visit` (`idAgentVisit`),
  ADD CONSTRAINT `visit_outcome_ibfk_2` FOREIGN KEY (`idOutcome`) REFERENCES `outcome` (`idOutcome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
