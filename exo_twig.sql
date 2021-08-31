-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 31, 2021 at 05:52 PM
-- Server version: 5.7.24
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
-- Database: `exo_twig`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto`
--

CREATE TABLE `auto` (
  `id` int(11) NOT NULL,
  `marque` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modele` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puissance` int(11) NOT NULL,
  `prix` double NOT NULL,
  `pays` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auto`
--

INSERT INTO `auto` (`id`, `marque`, `modele`, `puissance`, `prix`, `pays`, `image`, `category_id`) VALUES
(1, 'Marque n° 1', 'Modele 1', 382, 19130, '4', '1630314735.png', 1),
(2, 'Marque n° 2', 'Modele 2', 533, 88358, '0', '1630314837.png', 2),
(3, 'Marque n° 3', 'Modele 3', 119, 99677, '1', NULL, 1),
(4, 'Marque n° 4', 'Modele 4', 587, 47516, '1', NULL, 3),
(5, 'Marque n° 5', 'Modele 5', 996, 53337, '1', NULL, 2),
(6, 'Marque n° 6', 'Modele 6', 892, 83052, '2', NULL, 2),
(7, 'Marque n° 7', 'Modele 7', 888, 99501, '0', '1629876379.png', 1),
(8, 'Marque n° 8', 'Modele 8', 896, 47327, '0', '1629876379.png', 1),
(9, 'Marque n° 9', 'Modele 9', 480, 39364, '1', '1629882976.jpg', 2),
(10, 'Marque n° 10', 'Modele 10', 841, 75995, '1', '1629883351.png', 2),
(11, 'Marque n° 11', 'Modele 11', 387, 87939, '1', '1629883351.png', 2),
(12, 'Marque n° 12', 'Modele 12', 416, 45223, '3', '1629876379.png', 2),
(13, 'Marque n° 13', 'Modele 13', 919, 28933, '1', '1629876379.png', 3),
(14, 'Marque n° 14', 'Modele 14', 903, 15128, '4', '1629882976.jpg', 1),
(15, 'Marque n° 15', 'Modele 15', 945, 40754, '4', '1629883351.png', 1),
(16, 'Marque n° 16', 'Modele 16', 1000, 81732, '4', '1629876379.png', 1),
(17, 'Marque n° 17', 'Modele 17', 466, 66186, '1', '1629882976.jpg', 3),
(18, 'Marque n° 18', 'Modele 18', 183, 66039, '2', '1629882976.jpg', 1),
(19, 'Marque n° 19', 'Modele 19', 587, 61013, '3', '1629876379.png', 2),
(20, 'Marque n° 20', 'Modele 20', 247, 32839, '0', '1629883351.png', 3),
(21, 'Marque n° 21', 'Modele 21', 287, 81830, '3', '1629883351.png', 2),
(22, 'Marque n° 22', 'Modele 22', 341, 31406, '3', '1629883351.png', 3),
(23, 'Marque n° 23', 'Modele 23', 919, 53804, '4', '1629876379.png', 3),
(24, 'Marque n° 24', 'Modele 24', 144, 16365, '1', '1629883351.png', 3),
(25, 'Marque n° 25', 'Modele 25', 148, 32821, '1', '1629882976.jpg', 1),
(26, 'Marque n° 26', 'Modele 26', 883, 32055, '3', '1629883351.png', 1),
(27, 'Marque n° 27', 'Modele 27', 396, 96556, '0', '1629876379.png', 3),
(28, 'Marque n° 28', 'Modele 28', 328, 95892, '3', '1629876379.png', 3),
(29, 'Marque n° 29', 'Modele 29', 853, 9790, '3', '1629882976.jpg', 1),
(30, 'Marque n° 30', 'Modele 30', 533, 16846, '3', '1629883351.png', 1),
(31, 'Marque n° 31', 'Modele 31', 908, 32797, '2', '1629882976.jpg', 2),
(32, 'Marque n° 32', 'Modele 32', 605, 41336, '0', '1629883351.png', 1),
(33, 'Marque n° 33', 'Modele 33', 284, 24456, '0', '1629883351.png', 3),
(34, 'Marque n° 34', 'Modele 34', 300, 42738, '0', '1629882976.jpg', 2),
(35, 'Marque n° 35', 'Modele 35', 290, 80896, '0', '1629876379.png', 3),
(36, 'Marque n° 36', 'Modele 36', 154, 52143, '4', '1629882976.jpg', 3),
(37, 'Marque n° 37', 'Modele 37', 269, 78526, '3', '1629876379.png', 3),
(38, 'Marque n° 38', 'Modele 38', 204, 95763, '1', '1629883351.png', 1),
(39, 'Marque n° 39', 'Modele 39', 150, 31512, '1', '1629876379.png', 2),
(40, 'Marque n° 40', 'Modele 40', 506, 10009, '0', '1629882976.jpg', 1),
(41, 'Marque n° 41', 'Modele 41', 831, 56490, '1', '1629882976.jpg', 2),
(42, 'Marque n° 42', 'Modele 42', 696, 98515, '0', '1629876379.png', 2),
(43, 'Marque n° 43', 'Modele 43', 924, 39240, '1', '1629883351.png', 2),
(44, 'Marque n° 44', 'Modele 44', 600, 27814, '0', '1629882976.jpg', 3),
(45, 'Marque n° 45', 'Modele 45', 918, 94841, '3', '1629883351.png', 1),
(46, 'Marque n° 46', 'Modele 46', 980, 70666, '2', '1629882976.jpg', 3),
(47, 'Marque n° 47', 'Modele 47', 624, 20758, '2', '1629883351.png', 3),
(48, 'Marque n° 48', 'Modele 48', 175, 36384, '3', '1629883351.png', 1),
(49, 'Marque n° 49', 'Modele 49', 172, 71723, '1', '1629882976.jpg', 3),
(50, 'Marque n° 50', 'Modele 50', 121, 92723, '4', '1629876379.png', 2),
(51, 'Marque n° 51', 'Modele 51', 687, 17195, '4', '1629882976.jpg', 2),
(52, 'Marque n° 52', 'Modele 52', 496, 54233, '2', '1629882976.jpg', 1),
(53, 'Marque n° 53', 'Modele 53', 769, 23640, '2', '1629883351.png', 1),
(54, 'Marque n° 54', 'Modele 54', 411, 8616, '4', '1629883351.png', 3),
(55, 'Marque n° 55', 'Modele 55', 887, 67210, '3', '1629883351.png', 3),
(56, 'Marque n° 56', 'Modele 56', 164, 10362, '1', '1629883351.png', 3),
(57, 'Marque n° 57', 'Modele 57', 332, 74336, '4', '1629882976.jpg', 1),
(58, 'Marque n° 58', 'Modele 58', 316, 66788, '4', '1629882976.jpg', 1),
(59, 'Marque n° 59', 'Modele 59', 702, 39298, '3', '1629882976.jpg', 2),
(60, 'Marque n° 60', 'Modele 60', 542, 35512, '1', '1629876379.png', 1),
(61, 'Marque n° 61', 'Modele 61', 374, 21627, '1', '1629883351.png', 1),
(62, 'Marque n° 62', 'Modele 62', 672, 49795, '3', '1629883351.png', 3),
(63, 'Marque n° 63', 'Modele 63', 796, 64955, '1', '1629883351.png', 2),
(64, 'Marque n° 64', 'Modele 64', 354, 43120, '2', '1629882976.jpg', 1),
(65, 'Marque n° 65', 'Modele 65', 470, 72112, '3', '1629876379.png', 1),
(66, 'Marque n° 66', 'Modele 66', 426, 59825, '1', '1629876379.png', 2),
(67, 'Marque n° 67', 'Modele 67', 369, 40398, '2', '1629882976.jpg', 3),
(68, 'Marque n° 68', 'Modele 68', 713, 97628, '3', '1629882976.jpg', 3),
(69, 'Marque n° 69', 'Modele 69', 768, 39856, '0', '1629883351.png', 2),
(70, 'Marque n° 70', 'Modele 70', 904, 82829, '0', '1629882976.jpg', 1),
(71, 'Marque n° 71', 'Modele 71', 142, 67605, '1', '1629883351.png', 3),
(72, 'Marque n° 72', 'Modele 72', 978, 97953, '2', '1629883351.png', 2),
(73, 'Marque n° 73', 'Modele 73', 769, 54954, '2', '1629876379.png', 3),
(74, 'Marque n° 74', 'Modele 74', 816, 27063, '3', '1629882976.jpg', 2),
(75, 'Marque n° 75', 'Modele 75', 988, 40253, '0', '1629876379.png', 1),
(76, 'Marque n° 76', 'Modele 76', 407, 87678, '2', '1629883351.png', 1),
(77, 'Marque n° 77', 'Modele 77', 209, 80544, '3', '1629883351.png', 1),
(78, 'Marque n° 78', 'Modele 78', 720, 52898, '0', '1629876379.png', 1),
(79, 'Marque n° 79', 'Modele 79', 184, 51648, '0', '1629882976.jpg', 3),
(80, 'Marque n° 80', 'Modele 80', 584, 94609, '1', '1629876379.png', 3),
(81, 'Marque n° 81', 'Modele 81', 289, 90787, '1', '1629876379.png', 1),
(82, 'Marque n° 82', 'Modele 82', 835, 52973, '2', '1629883351.png', 2),
(83, 'Marque n° 83', 'Modele 83', 885, 35956, '2', '1629876379.png', 3),
(84, 'Marque n° 84', 'Modele 84', 487, 52634, '3', '1629883351.png', 2),
(85, 'Marque n° 85', 'Modele 85', 183, 73293, '4', '1629883351.png', 1),
(86, 'Marque n° 86', 'Modele 86', 643, 83662, '2', '1629883351.png', 1),
(87, 'Marque n° 87', 'Modele 87', 198, 34876, '4', '1629883351.png', 3),
(88, 'Marque n° 88', 'Modele 88', 573, 75218, '0', '1629883351.png', 3),
(89, 'Marque n° 89', 'Modele 89', 771, 26470, '1', '1629882976.jpg', 2),
(90, 'Marque n° 90', 'Modele 90', 243, 53609, '1', '1629883351.png', 3),
(91, 'Marque n° 91', 'Modele 91', 316, 25767, '3', '1629883351.png', 1),
(92, 'Marque n° 92', 'Modele 92', 750, 96682, '0', '1629882976.jpg', 1),
(93, 'Marque n° 93', 'Modele 93', 399, 64269, '4', '1629876379.png', 2),
(94, 'Marque n° 94', 'Modele 94', 863, 66834, '4', '1629876379.png', 2),
(95, 'Marque n° 95', 'Modele 95', 579, 62170, '2', '1629882976.jpg', 2),
(96, 'Marque n° 96', 'Modele 96', 646, 17467, '4', '1629882976.jpg', 2),
(97, 'Marque n° 97', 'Modele 97', 637, 12434, '1', '1629882976.jpg', 3),
(98, 'Marque n° 98', 'Modele 98', 192, 85250, '0', '1629876379.png', 2),
(99, 'Marque n° 99', 'Modele 99', 331, 27796, '0', '1629883351.png', 1),
(100, 'ZEZE', 'ZEZE', 2, 11, 'ZEZ', '1630261557.png', 1),
(101, 'ZEZE', 'ZEZE', 4, 54, 'ZEZ', '1630262716.jpg', 1),
(102, 'ZEZE', 'ZEZE', 5, 54, 'ZEZ', '', 1),
(103, 'ZEZE', 'ZEZE', 4, 54, 'ZEZ', '1630327611.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`) VALUES
(1, 'Sport', '2021-08-27 19:42:32'),
(2, 'Luxe', '2021-08-27 19:42:32'),
(3, 'Neuve', '2021-08-27 19:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210819125137', '2021-08-19 19:44:03', 58),
('DoctrineMigrations\\Version20210820075858', '2021-08-20 08:00:39', 176),
('DoctrineMigrations\\Version20210827184543', '2021-08-27 18:53:17', 210),
('DoctrineMigrations\\Version20210830125705', '2021-08-30 12:57:54', 229),
('DoctrineMigrations\\Version20210831134742', '2021-08-31 13:47:55', 226);

-- --------------------------------------------------------

--
-- Table structure for table `stagiaire`
--

CREATE TABLE `stagiaire` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diplome` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_naiss` date NOT NULL,
  `contrat` tinyint(1) NOT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stagiaire`
--

INSERT INTO `stagiaire` (`id`, `nom`, `prenom`, `telephone`, `adresse`, `diplome`, `date_naiss`, `contrat`, `photo`, `description`) VALUES
(105, 'Nom n° 1', 'Modele n° 1', 'n° 1', 'Adresse n° 1', '1', '2000-01-01', 1, NULL, NULL),
(106, 'Nom n° 2', 'Modele n° 2', 'n° 2', 'Adresse n° 2', '0', '2000-01-01', 0, NULL, NULL),
(107, 'Nom n° 3', 'Modele n° 3', 'n° 3', 'Adresse n° 3', '1', '2000-01-01', 1, NULL, NULL),
(108, 'Nom n° 4', 'Modele n° 4', 'n° 4', 'Adresse n° 4', '0', '2000-01-01', 0, NULL, NULL),
(109, 'Nom n° 5', 'Modele n° 5', 'n° 5', 'Adresse n° 5', '0', '2000-01-01', 0, NULL, NULL),
(110, 'Nom n° 6', 'Modele n° 6', 'n° 6', 'Adresse n° 6', '1', '2000-01-01', 0, NULL, NULL),
(111, 'Nom n° 7', 'Modele n° 7', 'n° 7', 'Adresse n° 7', '0', '2000-01-01', 0, NULL, NULL),
(112, 'Nom n° 8', 'Modele n° 8', 'n° 8', 'Adresse n° 8', '0', '2000-01-01', 0, NULL, NULL),
(113, 'Nom n° 9', 'Modele n° 9', 'n° 9', 'Adresse n° 9', '0', '2000-01-01', 1, NULL, NULL),
(114, 'Nom n° 10', 'Modele n° 10', 'n° 10', 'Adresse n° 10', '1', '2000-01-01', 1, NULL, NULL),
(115, 'Nom n° 11', 'Modele n° 11', 'n° 11', 'Adresse n° 11', '0', '2000-01-01', 0, NULL, NULL),
(116, 'Nom n° 12', 'Modele n° 12', 'n° 12', 'Adresse n° 12', '1', '2000-01-01', 0, NULL, NULL),
(117, 'Nom n° 13', 'Modele n° 13', 'n° 13', 'Adresse n° 13', '1', '2000-01-01', 0, NULL, NULL),
(118, 'Nom n° 14', 'Modele n° 14', 'n° 14', 'Adresse n° 14', '1', '2000-01-01', 1, NULL, NULL),
(119, 'Nom n° 15', 'Modele n° 15', 'n° 15', 'Adresse n° 15', '1', '2000-01-01', 0, NULL, NULL),
(120, 'Nom n° 16', 'Modele n° 16', 'n° 16', 'Adresse n° 16', '0', '2000-01-01', 0, NULL, NULL),
(121, 'Nom n° 17', 'Modele n° 17', 'n° 17', 'Adresse n° 17', '1', '2000-01-01', 0, NULL, NULL),
(122, 'Nom n° 18', 'Modele n° 18', 'n° 18', 'Adresse n° 18', '0', '2000-01-01', 0, NULL, NULL),
(123, 'Nom n° 19', 'Modele n° 19', 'n° 19', 'Adresse n° 19', '0', '2000-01-01', 1, NULL, NULL),
(124, 'Nom n° 20', 'Modele n° 20', 'n° 20', 'Adresse n° 20', '0', '2000-01-01', 1, NULL, NULL),
(125, 'Nom n° 21', 'Modele n° 21', 'n° 21', 'Adresse n° 21', '1', '2000-01-01', 0, NULL, NULL),
(126, 'Nom n° 22', 'Modele n° 22', 'n° 22', 'Adresse n° 22', '0', '2000-01-01', 1, NULL, NULL),
(127, 'Nom n° 23', 'Modele n° 23', 'n° 23', 'Adresse n° 23', '1', '2000-01-01', 0, NULL, NULL),
(128, 'Nom n° 24', 'Modele n° 24', 'n° 24', 'Adresse n° 24', '0', '2000-01-01', 0, NULL, NULL),
(129, 'Nom n° 25', 'Modele n° 25', 'n° 25', 'Adresse n° 25', '1', '2000-01-01', 0, NULL, NULL),
(130, 'Nom n° 26', 'Modele n° 26', 'n° 26', 'Adresse n° 26', '1', '2000-01-01', 0, NULL, NULL),
(131, 'Nom n° 27', 'Modele n° 27', 'n° 27', 'Adresse n° 27', '1', '2000-01-01', 1, NULL, NULL),
(132, 'Nom n° 28', 'Modele n° 28', 'n° 28', 'Adresse n° 28', '1', '2000-01-01', 1, NULL, NULL),
(133, 'Nom n° 29', 'Modele n° 29', 'n° 29', 'Adresse n° 29', '1', '2000-01-01', 0, NULL, NULL),
(134, 'Nom n° 30', 'Modele n° 30', 'n° 30', 'Adresse n° 30', '0', '2000-01-01', 0, NULL, NULL),
(135, 'Nom n° 31', 'Modele n° 31', 'n° 31', 'Adresse n° 31', '0', '2000-01-01', 0, NULL, NULL),
(136, 'Nom n° 32', 'Modele n° 32', 'n° 32', 'Adresse n° 32', '1', '2000-01-01', 0, NULL, NULL),
(137, 'Nom n° 33', 'Modele n° 33', 'n° 33', 'Adresse n° 33', '0', '2000-01-01', 1, NULL, NULL),
(138, 'Nom n° 34', 'Modele n° 34', 'n° 34', 'Adresse n° 34', '0', '2000-01-01', 0, NULL, NULL),
(139, 'Nom n° 35', 'Modele n° 35', 'n° 35', 'Adresse n° 35', '1', '2000-01-01', 1, NULL, NULL),
(140, 'Nom n° 36', 'Modele n° 36', 'n° 36', 'Adresse n° 36', '1', '2000-01-01', 0, NULL, NULL),
(141, 'Nom n° 37', 'Modele n° 37', 'n° 37', 'Adresse n° 37', '0', '2000-01-01', 1, NULL, NULL),
(142, 'Nom n° 38', 'Modele n° 38', 'n° 38', 'Adresse n° 38', '0', '2000-01-01', 1, NULL, NULL),
(143, 'Nom n° 39', 'Modele n° 39', 'n° 39', 'Adresse n° 39', '1', '2000-01-01', 0, NULL, NULL),
(144, 'Nom n° 40', 'Modele n° 40', 'n° 40', 'Adresse n° 40', '1', '2000-01-01', 1, NULL, NULL),
(145, 'Nom n° 41', 'Modele n° 41', 'n° 41', 'Adresse n° 41', '1', '2000-01-01', 0, NULL, NULL),
(146, 'Nom n° 42', 'Modele n° 42', 'n° 42', 'Adresse n° 42', '0', '2000-01-01', 0, NULL, NULL),
(147, 'Nom n° 43', 'Modele n° 43', 'n° 43', 'Adresse n° 43', '0', '2000-01-01', 0, NULL, NULL),
(148, 'Nom n° 44', 'Modele n° 44', 'n° 44', 'Adresse n° 44', '0', '2000-01-01', 0, NULL, NULL),
(149, 'Nom n° 45', 'Modele n° 45', 'n° 45', 'Adresse n° 45', '0', '2000-01-01', 1, NULL, NULL),
(150, 'Nom n° 46', 'Modele n° 46', 'n° 46', 'Adresse n° 46', '1', '2000-01-01', 0, NULL, NULL),
(151, 'Nom n° 47', 'Modele n° 47', 'n° 47', 'Adresse n° 47', '0', '2000-01-01', 0, NULL, NULL),
(152, 'Nom n° 48', 'Modele n° 48', 'n° 48', 'Adresse n° 48', '0', '2000-01-01', 1, NULL, NULL),
(153, 'Nom n° 49', 'Modele n° 49', 'n° 49', 'Adresse n° 49', '0', '2000-01-01', 1, NULL, NULL),
(154, 'Nom n° 50', 'Modele n° 50', 'n° 50', 'Adresse n° 50', '0', '2000-01-01', 1, NULL, NULL),
(155, 'Nom n° 51', 'Modele n° 51', 'n° 51', 'Adresse n° 51', '0', '2000-01-01', 0, NULL, NULL),
(156, 'Nom n° 52', 'Modele n° 52', 'n° 52', 'Adresse n° 52', '1', '2000-01-01', 1, NULL, NULL),
(157, 'Nom n° 53', 'Modele n° 53', 'n° 53', 'Adresse n° 53', '0', '2000-01-01', 1, NULL, NULL),
(158, 'Nom n° 54', 'Modele n° 54', 'n° 54', 'Adresse n° 54', '0', '2000-01-01', 1, NULL, NULL),
(159, 'Nom n° 55', 'Modele n° 55', 'n° 55', 'Adresse n° 55', '1', '2000-01-01', 0, NULL, NULL),
(160, 'Nom n° 56', 'Modele n° 56', 'n° 56', 'Adresse n° 56', '1', '2000-01-01', 0, NULL, NULL),
(161, 'Nom n° 57', 'Modele n° 57', 'n° 57', 'Adresse n° 57', '0', '2000-01-01', 1, NULL, NULL),
(162, 'Nom n° 58', 'Modele n° 58', 'n° 58', 'Adresse n° 58', '0', '2000-01-01', 1, NULL, NULL),
(163, 'Nom n° 59', 'Modele n° 59', 'n° 59', 'Adresse n° 59', '0', '2000-01-01', 1, NULL, NULL),
(164, 'Nom n° 60', 'Modele n° 60', 'n° 60', 'Adresse n° 60', '1', '2000-01-01', 0, NULL, NULL),
(165, 'Nom n° 61', 'Modele n° 61', 'n° 61', 'Adresse n° 61', '0', '2000-01-01', 0, NULL, NULL),
(166, 'Nom n° 62', 'Modele n° 62', 'n° 62', 'Adresse n° 62', '1', '2000-01-01', 0, NULL, NULL),
(167, 'Nom n° 63', 'Modele n° 63', 'n° 63', 'Adresse n° 63', '1', '2000-01-01', 0, NULL, NULL),
(168, 'Nom n° 64', 'Modele n° 64', 'n° 64', 'Adresse n° 64', '1', '2000-01-01', 0, NULL, NULL),
(169, 'Nom n° 65', 'Modele n° 65', 'n° 65', 'Adresse n° 65', '0', '2000-01-01', 0, NULL, NULL),
(170, 'Nom n° 66', 'Modele n° 66', 'n° 66', 'Adresse n° 66', '0', '2000-01-01', 0, NULL, NULL),
(171, 'Nom n° 67', 'Modele n° 67', 'n° 67', 'Adresse n° 67', '1', '2000-01-01', 1, NULL, NULL),
(172, 'Nom n° 68', 'Modele n° 68', 'n° 68', 'Adresse n° 68', '0', '2000-01-01', 0, NULL, NULL),
(173, 'Nom n° 69', 'Modele n° 69', 'n° 69', 'Adresse n° 69', '0', '2000-01-01', 0, NULL, NULL),
(174, 'Nom n° 70', 'Modele n° 70', 'n° 70', 'Adresse n° 70', '0', '2000-01-01', 1, NULL, NULL),
(175, 'Nom n° 71', 'Modele n° 71', 'n° 71', 'Adresse n° 71', '0', '2000-01-01', 1, NULL, NULL),
(176, 'Nom n° 72', 'Modele n° 72', 'n° 72', 'Adresse n° 72', '0', '2000-01-01', 0, NULL, NULL),
(177, 'Nom n° 73', 'Modele n° 73', 'n° 73', 'Adresse n° 73', '1', '2000-01-01', 0, NULL, NULL),
(178, 'Nom n° 74', 'Modele n° 74', 'n° 74', 'Adresse n° 74', '0', '2000-01-01', 0, NULL, NULL),
(179, 'Nom n° 75', 'Modele n° 75', 'n° 75', 'Adresse n° 75', '1', '2000-01-01', 0, NULL, NULL),
(180, 'Nom n° 76', 'Modele n° 76', 'n° 76', 'Adresse n° 76', '1', '2000-01-01', 0, NULL, NULL),
(181, 'Nom n° 77', 'Modele n° 77', 'n° 77', 'Adresse n° 77', '1', '2000-01-01', 0, NULL, NULL),
(182, 'Nom n° 78', 'Modele n° 78', 'n° 78', 'Adresse n° 78', '1', '2000-01-01', 1, NULL, NULL),
(183, 'Nom n° 79', 'Modele n° 79', 'n° 79', 'Adresse n° 79', '1', '2000-01-01', 0, NULL, NULL),
(184, 'Nom n° 80', 'Modele n° 80', 'n° 80', 'Adresse n° 80', '1', '2000-01-01', 1, NULL, NULL),
(185, 'Nom n° 81', 'Modele n° 81', 'n° 81', 'Adresse n° 81', '0', '2000-01-01', 1, NULL, NULL),
(186, 'Nom n° 82', 'Modele n° 82', 'n° 82', 'Adresse n° 82', '0', '2000-01-01', 1, NULL, NULL),
(187, 'Nom n° 83', 'Modele n° 83', 'n° 83', 'Adresse n° 83', '0', '2000-01-01', 1, NULL, NULL),
(188, 'Nom n° 84', 'Modele n° 84', 'n° 84', 'Adresse n° 84', '1', '2000-01-01', 0, NULL, NULL),
(189, 'Nom n° 85', 'Modele n° 85', 'n° 85', 'Adresse n° 85', '0', '2000-01-01', 0, NULL, NULL),
(190, 'Nom n° 86', 'Modele n° 86', 'n° 86', 'Adresse n° 86', '1', '2000-01-01', 0, NULL, NULL),
(191, 'Nom n° 87', 'Modele n° 87', 'n° 87', 'Adresse n° 87', '1', '2000-01-01', 1, NULL, NULL),
(192, 'Nom n° 88', 'Modele n° 88', 'n° 88', 'Adresse n° 88', '0', '2000-01-01', 0, NULL, NULL),
(193, 'Nom n° 89', 'Modele n° 89', 'n° 89', 'Adresse n° 89', '0', '2000-01-01', 0, NULL, NULL),
(194, 'Nom n° 90', 'Modele n° 90', 'n° 90', 'Adresse n° 90', '1', '2000-01-01', 1, NULL, NULL),
(195, 'Nom n° 91', 'Modele n° 91', 'n° 91', 'Adresse n° 91', '1', '2000-01-01', 1, NULL, NULL),
(196, 'Nom n° 92', 'Modele n° 92', 'n° 92', 'Adresse n° 92', '0', '2000-01-01', 1, NULL, NULL),
(197, 'Nom n° 93', 'Modele n° 93', 'n° 93', 'Adresse n° 93', '1', '2000-01-01', 0, NULL, NULL),
(198, 'Nom n° 94', 'Modele n° 94', 'n° 94', 'Adresse n° 94', '0', '2000-01-01', 1, NULL, NULL),
(199, 'Nom n° 95', 'Modele n° 95', 'n° 95', 'Adresse n° 95', '1', '2000-01-01', 1, NULL, NULL),
(200, 'Nom n° 96', 'Modele n° 96', 'n° 96', 'Adresse n° 96', '1', '2000-01-01', 0, NULL, NULL),
(201, 'Nom n° 97', 'Modele n° 97', 'n° 97', 'Adresse n° 97', '0', '2000-01-01', 1, NULL, NULL),
(202, 'Nom n° 98', 'Modele n° 98', 'n° 98', 'Adresse n° 98', '1', '2000-01-01', 0, NULL, NULL),
(203, 'Nom n° 99', 'Modele n° 99', 'n° 99', 'Adresse n° 99', '1', '2000-01-01', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `roles`) VALUES
(5, 'admin', 'admin@gmail.com', '$2y$13$Lm/Dd6HEhV0P2oqUFOkiCO9mQOGTN9ZrXpXujHXs/cydJ4EvcdOQy', 'ROLE_ADMIN'),
(6, 'user', 'user@gmail.com', '$2y$13$.uVu6637fGsKG1URYE3LqOJKPfa1K.93w7HHEAa2W8pw4DFv.nuvS', 'ROLE_USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_66BA25FA12469DE2` (`category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `stagiaire`
--
ALTER TABLE `stagiaire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto`
--
ALTER TABLE `auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stagiaire`
--
ALTER TABLE `stagiaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auto`
--
ALTER TABLE `auto`
  ADD CONSTRAINT `FK_66BA25FA12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
