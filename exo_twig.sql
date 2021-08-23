-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2021 at 08:29 PM
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auto`
--

INSERT INTO `auto` (`id`, `marque`, `modele`, `puissance`, `prix`, `pays`, `image`) VALUES
(203, 'Marque n° 1', 'Modele n° 1', 672, 65918, '3', 'https://via.placeholder.com/150'),
(204, 'Marque n° 2', 'Modele n° 2', 734, 80898, '0', 'https://via.placeholder.com/150'),
(205, 'Marque n° 3', 'Modele n° 3', 560, 43137, '2', 'https://via.placeholder.com/150'),
(206, 'Marque n° 4', 'Modele n° 4', 644, 74138, '2', 'https://via.placeholder.com/150'),
(207, 'Marque n° 5', 'Modele n° 5', 737, 98423, '1', 'https://via.placeholder.com/150'),
(208, 'Marque n° 6', 'Modele n° 6', 695, 12608, '1', 'https://via.placeholder.com/150'),
(209, 'Marque n° 7', 'Modele n° 7', 311, 36985, '2', 'https://via.placeholder.com/150'),
(210, 'Marque n° 8', 'Modele n° 8', 891, 48462, '4', 'https://via.placeholder.com/150'),
(211, 'Marque n° 9', 'Modele n° 9', 714, 54958, '3', 'https://via.placeholder.com/150'),
(212, 'Marque n° 10', 'Modele n° 10', 829, 78039, '1', 'https://via.placeholder.com/150'),
(213, 'Marque n° 11', 'Modele n° 11', 306, 11237, '2', 'https://via.placeholder.com/150'),
(214, 'Marque n° 12', 'Modele n° 12', 655, 89590, '1', 'https://via.placeholder.com/150'),
(215, 'Marque n° 13', 'Modele n° 13', 454, 42984, '0', 'https://via.placeholder.com/150'),
(216, 'Marque n° 14', 'Modele n° 14', 566, 20314, '3', 'https://via.placeholder.com/150'),
(217, 'Marque n° 15', 'Modele n° 15', 595, 39897, '0', 'https://via.placeholder.com/150'),
(218, 'Marque n° 16', 'Modele n° 16', 864, 96276, '3', 'https://via.placeholder.com/150'),
(219, 'Marque n° 17', 'Modele n° 17', 646, 8049, '1', 'https://via.placeholder.com/150'),
(220, 'Marque n° 18', 'Modele n° 18', 120, 28593, '1', 'https://via.placeholder.com/150'),
(221, 'Marque n° 19', 'Modele n° 19', 685, 33162, '0', 'https://via.placeholder.com/150'),
(222, 'Marque n° 20', 'Modele n° 20', 523, 74526, '4', 'https://via.placeholder.com/150'),
(223, 'Marque n° 21', 'Modele n° 21', 556, 64894, '4', 'https://via.placeholder.com/150'),
(224, 'Marque n° 22', 'Modele n° 22', 704, 52542, '4', 'https://via.placeholder.com/150'),
(225, 'Marque n° 23', 'Modele n° 23', 463, 79805, '0', 'https://via.placeholder.com/150'),
(226, 'Marque n° 24', 'Modele n° 24', 797, 42989, '1', 'https://via.placeholder.com/150'),
(227, 'Marque n° 25', 'Modele n° 25', 819, 60844, '2', 'https://via.placeholder.com/150'),
(228, 'Marque n° 26', 'Modele n° 26', 279, 96184, '3', 'https://via.placeholder.com/150'),
(229, 'Marque n° 27', 'Modele n° 27', 318, 73277, '4', 'https://via.placeholder.com/150'),
(230, 'Marque n° 28', 'Modele n° 28', 673, 30332, '0', 'https://via.placeholder.com/150'),
(231, 'Marque n° 29', 'Modele n° 29', 327, 57728, '0', 'https://via.placeholder.com/150'),
(232, 'Marque n° 30', 'Modele n° 30', 579, 10827, '1', 'https://via.placeholder.com/150'),
(233, 'Marque n° 31', 'Modele n° 31', 407, 7678, '4', 'https://via.placeholder.com/150'),
(234, 'Marque n° 32', 'Modele n° 32', 672, 78959, '1', 'https://via.placeholder.com/150'),
(235, 'Marque n° 33', 'Modele n° 33', 973, 41558, '1', 'https://via.placeholder.com/150'),
(236, 'Marque n° 34', 'Modele n° 34', 419, 24737, '3', 'https://via.placeholder.com/150'),
(237, 'Marque n° 35', 'Modele n° 35', 184, 76858, '4', 'https://via.placeholder.com/150'),
(238, 'Marque n° 36', 'Modele n° 36', 284, 66714, '4', 'https://via.placeholder.com/150'),
(239, 'Marque n° 37', 'Modele n° 37', 284, 48804, '2', 'https://via.placeholder.com/150'),
(240, 'Marque n° 38', 'Modele n° 38', 776, 80341, '0', 'https://via.placeholder.com/150'),
(241, 'Marque n° 39', 'Modele n° 39', 829, 70319, '2', 'https://via.placeholder.com/150'),
(242, 'Marque n° 40', 'Modele n° 40', 152, 89482, '0', 'https://via.placeholder.com/150'),
(243, 'Marque n° 41', 'Modele n° 41', 946, 81097, '0', 'https://via.placeholder.com/150'),
(244, 'Marque n° 42', 'Modele n° 42', 959, 75832, '1', 'https://via.placeholder.com/150'),
(245, 'Marque n° 43', 'Modele n° 43', 902, 12566, '3', 'https://via.placeholder.com/150'),
(246, 'Marque n° 44', 'Modele n° 44', 121, 22086, '4', 'https://via.placeholder.com/150'),
(247, 'Marque n° 45', 'Modele n° 45', 439, 68996, '1', 'https://via.placeholder.com/150'),
(248, 'Marque n° 46', 'Modele n° 46', 938, 93584, '2', 'https://via.placeholder.com/150'),
(249, 'Marque n° 47', 'Modele n° 47', 685, 56385, '1', 'https://via.placeholder.com/150'),
(250, 'Marque n° 48', 'Modele n° 48', 643, 17011, '1', 'https://via.placeholder.com/150'),
(251, 'Marque n° 49', 'Modele n° 49', 895, 86319, '2', 'https://via.placeholder.com/150'),
(252, 'Marque n° 50', 'Modele n° 50', 543, 77831, '2', 'https://via.placeholder.com/150'),
(253, 'Marque n° 51', 'Modele n° 51', 836, 60731, '2', 'https://via.placeholder.com/150'),
(254, 'Marque n° 52', 'Modele n° 52', 740, 21032, '4', 'https://via.placeholder.com/150'),
(255, 'Marque n° 53', 'Modele n° 53', 910, 75595, '1', 'https://via.placeholder.com/150'),
(256, 'Marque n° 54', 'Modele n° 54', 139, 86496, '2', 'https://via.placeholder.com/150'),
(257, 'Marque n° 55', 'Modele n° 55', 117, 16270, '2', 'https://via.placeholder.com/150'),
(258, 'Marque n° 56', 'Modele n° 56', 844, 52846, '3', 'https://via.placeholder.com/150'),
(259, 'Marque n° 57', 'Modele n° 57', 637, 71276, '1', 'https://via.placeholder.com/150'),
(260, 'Marque n° 58', 'Modele n° 58', 168, 6121, '2', 'https://via.placeholder.com/150'),
(261, 'Marque n° 59', 'Modele n° 59', 889, 12062, '1', 'https://via.placeholder.com/150'),
(262, 'Marque n° 60', 'Modele n° 60', 250, 58810, '1', 'https://via.placeholder.com/150'),
(263, 'Marque n° 61', 'Modele n° 61', 597, 15177, '2', 'https://via.placeholder.com/150'),
(264, 'Marque n° 62', 'Modele n° 62', 231, 23352, '4', 'https://via.placeholder.com/150'),
(265, 'Marque n° 63', 'Modele n° 63', 617, 50240, '2', 'https://via.placeholder.com/150'),
(266, 'Marque n° 64', 'Modele n° 64', 665, 44216, '3', 'https://via.placeholder.com/150'),
(267, 'Marque n° 65', 'Modele n° 65', 324, 98870, '4', 'https://via.placeholder.com/150'),
(268, 'Marque n° 66', 'Modele n° 66', 883, 17183, '3', 'https://via.placeholder.com/150'),
(269, 'Marque n° 67', 'Modele n° 67', 532, 86596, '2', 'https://via.placeholder.com/150'),
(270, 'Marque n° 68', 'Modele n° 68', 843, 49993, '4', 'https://via.placeholder.com/150'),
(271, 'Marque n° 69', 'Modele n° 69', 312, 39737, '3', 'https://via.placeholder.com/150'),
(272, 'Marque n° 70', 'Modele n° 70', 830, 20241, '2', 'https://via.placeholder.com/150'),
(273, 'Marque n° 71', 'Modele n° 71', 604, 83170, '3', 'https://via.placeholder.com/150'),
(274, 'Marque n° 72', 'Modele n° 72', 958, 81293, '3', 'https://via.placeholder.com/150'),
(275, 'Marque n° 73', 'Modele n° 73', 828, 31959, '1', 'https://via.placeholder.com/150'),
(276, 'Marque n° 74', 'Modele n° 74', 503, 40274, '0', 'https://via.placeholder.com/150'),
(277, 'Marque n° 75', 'Modele n° 75', 540, 34252, '0', 'https://via.placeholder.com/150'),
(278, 'Marque n° 76', 'Modele n° 76', 935, 14189, '0', 'https://via.placeholder.com/150'),
(279, 'Marque n° 77', 'Modele n° 77', 629, 51187, '3', 'https://via.placeholder.com/150'),
(280, 'Marque n° 78', 'Modele n° 78', 888, 20714, '2', 'https://via.placeholder.com/150'),
(281, 'Marque n° 79', 'Modele n° 79', 220, 53458, '3', 'https://via.placeholder.com/150'),
(282, 'Marque n° 80', 'Modele n° 80', 554, 53380, '0', 'https://via.placeholder.com/150'),
(283, 'Marque n° 81', 'Modele n° 81', 365, 42979, '3', 'https://via.placeholder.com/150'),
(284, 'Marque n° 82', 'Modele n° 82', 410, 70944, '4', 'https://via.placeholder.com/150'),
(285, 'Marque n° 83', 'Modele n° 83', 807, 45368, '4', 'https://via.placeholder.com/150'),
(286, 'Marque n° 84', 'Modele n° 84', 914, 22575, '0', 'https://via.placeholder.com/150'),
(287, 'Marque n° 85', 'Modele n° 85', 380, 89178, '4', 'https://via.placeholder.com/150'),
(288, 'Marque n° 86', 'Modele n° 86', 823, 33055, '4', 'https://via.placeholder.com/150'),
(289, 'Marque n° 87', 'Modele n° 87', 792, 13806, '3', 'https://via.placeholder.com/150'),
(290, 'Marque n° 88', 'Modele n° 88', 575, 30372, '3', 'https://via.placeholder.com/150'),
(291, 'Marque n° 89', 'Modele n° 89', 815, 32700, '3', 'https://via.placeholder.com/150'),
(292, 'Marque n° 90', 'Modele n° 90', 979, 65008, '2', 'https://via.placeholder.com/150'),
(293, 'Marque n° 91', 'Modele n° 91', 472, 51323, '0', 'https://via.placeholder.com/150'),
(294, 'Marque n° 92', 'Modele n° 92', 592, 63794, '3', 'https://via.placeholder.com/150'),
(295, 'Marque n° 93', 'Modele n° 93', 377, 78325, '3', 'https://via.placeholder.com/150'),
(296, 'Marque n° 94', 'Modele n° 94', 989, 36210, '0', 'https://via.placeholder.com/150'),
(297, 'Marque n° 95', 'Modele n° 95', 834, 38652, '1', 'https://via.placeholder.com/150'),
(298, 'Marque n° 96', 'Modele n° 96', 291, 41773, '0', 'https://via.placeholder.com/150'),
(299, 'Marque n° 97', 'Modele n° 97', 553, 62976, '3', 'https://via.placeholder.com/150'),
(300, 'Marque n° 98', 'Modele n° 98', 702, 62313, '0', 'https://via.placeholder.com/150'),
(301, 'Marque n° 99', 'Modele n° 99', 859, 40414, '2', 'https://via.placeholder.com/150');

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
('DoctrineMigrations\\Version20210820075858', '2021-08-20 08:00:39', 176);

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
  `date_naiss` date DEFAULT NULL,
  `contrat` tinyint(1) NOT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stagiaire`
--

INSERT INTO `stagiaire` (`id`, `nom`, `prenom`, `telephone`, `adresse`, `diplome`, `date_naiss`, `contrat`, `photo`, `description`) VALUES
(6, 'Jean-Bernard', 'Le Pecno', '0123456789', '5 rue jean macé', 'Bac+10 pole emploi', '2016-01-01', 1, 'erer', 'erer'),
(7, 'Le Gaulois', 'Provençal', 'sloubi1', 'Pays de Galles', 'Combat de fenouil', '2017-01-01', 1, NULL, 'Jeune homme quelque peu naïf mais montrant de très bonnes capacités mathématiques'),
(8, 'Nom n° 3', 'Modele n° 3', 'n° 3', 'Adresse n° 3', '0', '2000-01-01', 1, NULL, NULL),
(10, 'Nom n° 5', 'Modele n° 5', 'n° 5', 'Adresse n° 5', '0', '2000-01-01', 1, NULL, NULL),
(11, 'Nom n° 6', 'Modele n° 6', 'n° 6', 'Adresse n° 6', '0', '2000-01-01', 1, NULL, NULL),
(12, 'Nom n° 7', 'Modele n° 7', 'n° 7', 'Adresse n° 7', '1', '2000-01-01', 0, NULL, NULL),
(13, 'Nom n° 8', 'Modele n° 8', 'n° 8', 'Adresse n° 8', '1', '2000-01-01', 0, NULL, NULL),
(14, 'Nom n° 9', 'Modele n° 9', 'n° 9', 'Adresse n° 9', '1', '2000-01-01', 1, NULL, NULL),
(15, 'Nom n° 10', 'Modele n° 10', 'n° 10', 'Adresse n° 10', '1', '2000-01-01', 0, NULL, NULL),
(16, 'Nom n° 11', 'Modele n° 11', 'n° 11', 'Adresse n° 11', '1', '2000-01-01', 1, NULL, NULL),
(17, 'Nom n° 12', 'Modele n° 12', 'n° 12', 'Adresse n° 12', '0', '2000-01-01', 0, NULL, NULL),
(18, 'Nom n° 13', 'Modele n° 13', 'n° 13', 'Adresse n° 13', '1', '2000-01-01', 1, NULL, NULL),
(19, 'Nom n° 14', 'Modele n° 14', 'n° 14', 'Adresse n° 14', '0', '2000-01-01', 1, NULL, NULL),
(20, 'Nom n° 15', 'Modele n° 15', 'n° 15', 'Adresse n° 15', '0', '2000-01-01', 1, NULL, NULL),
(21, 'Nom n° 16', 'Modele n° 16', 'n° 16', 'Adresse n° 16', '1', '2000-01-01', 0, NULL, NULL),
(22, 'Nom n° 17', 'Modele n° 17', 'n° 17', 'Adresse n° 17', '1', '2000-01-01', 0, NULL, NULL),
(23, 'Nom n° 18', 'Modele n° 18', 'n° 18', 'Adresse n° 18', '0', '2000-01-01', 0, NULL, NULL),
(24, 'Nom n° 19', 'Modele n° 19', 'n° 19', 'Adresse n° 19', '0', '2000-01-01', 0, NULL, NULL),
(25, 'Nom n° 20', 'Modele n° 20', 'n° 20', 'Adresse n° 20', '0', '2000-01-01', 0, NULL, NULL),
(26, 'Nom n° 21', 'Modele n° 21', 'n° 21', 'Adresse n° 21', '0', '2000-01-01', 1, NULL, NULL),
(27, 'Nom n° 22', 'Modele n° 22', 'n° 22', 'Adresse n° 22', '1', '2000-01-01', 0, NULL, NULL),
(28, 'Nom n° 23', 'Modele n° 23', 'n° 23', 'Adresse n° 23', '0', '2000-01-01', 0, NULL, NULL),
(29, 'Nom n° 24', 'Modele n° 24', 'n° 24', 'Adresse n° 24', '1', '2000-01-01', 1, NULL, NULL),
(30, 'Nom n° 25', 'Modele n° 25', 'n° 25', 'Adresse n° 25', '0', '2000-01-01', 0, NULL, NULL),
(31, 'Nom n° 26', 'Modele n° 26', 'n° 26', 'Adresse n° 26', '1', '2000-01-01', 1, NULL, NULL),
(32, 'Nom n° 27', 'Modele n° 27', 'n° 27', 'Adresse n° 27', '1', '2000-01-01', 1, NULL, NULL),
(33, 'Nom n° 28', 'Modele n° 28', 'n° 28', 'Adresse n° 28', '1', '2000-01-01', 1, NULL, NULL),
(34, 'Nom n° 29', 'Modele n° 29', 'n° 29', 'Adresse n° 29', '0', '2000-01-01', 0, NULL, NULL),
(35, 'Nom n° 30', 'Modele n° 30', 'n° 30', 'Adresse n° 30', '1', '2000-01-01', 0, NULL, NULL),
(36, 'Nom n° 31', 'Modele n° 31', 'n° 31', 'Adresse n° 31', '1', '2000-01-01', 0, NULL, NULL),
(37, 'Nom n° 32', 'Modele n° 32', 'n° 32', 'Adresse n° 32', '1', '2000-01-01', 1, NULL, NULL),
(38, 'Nom n° 33', 'Modele n° 33', 'n° 33', 'Adresse n° 33', '1', '2000-01-01', 1, NULL, NULL),
(39, 'Nom n° 34', 'Modele n° 34', 'n° 34', 'Adresse n° 34', '0', '2000-01-01', 0, NULL, NULL),
(40, 'Nom n° 35', 'Modele n° 35', 'n° 35', 'Adresse n° 35', '0', '2000-01-01', 0, NULL, NULL),
(41, 'Nom n° 36', 'Modele n° 36', 'n° 36', 'Adresse n° 36', '1', '2000-01-01', 0, NULL, NULL),
(42, 'Nom n° 37', 'Modele n° 37', 'n° 37', 'Adresse n° 37', '1', '2000-01-01', 0, NULL, NULL),
(43, 'Nom n° 38', 'Modele n° 38', 'n° 38', 'Adresse n° 38', '0', '2000-01-01', 1, NULL, NULL),
(44, 'Nom n° 39', 'Modele n° 39', 'n° 39', 'Adresse n° 39', '0', '2000-01-01', 0, NULL, NULL),
(45, 'Nom n° 40', 'Modele n° 40', 'n° 40', 'Adresse n° 40', '0', '2000-01-01', 0, NULL, NULL),
(46, 'Nom n° 41', 'Modele n° 41', 'n° 41', 'Adresse n° 41', '0', '2000-01-01', 0, NULL, NULL),
(47, 'Nom n° 42', 'Modele n° 42', 'n° 42', 'Adresse n° 42', '0', '2000-01-01', 0, NULL, NULL),
(48, 'Nom n° 43', 'Modele n° 43', 'n° 43', 'Adresse n° 43', '0', '2000-01-01', 1, NULL, NULL),
(49, 'Nom n° 44', 'Modele n° 44', 'n° 44', 'Adresse n° 44', '0', '2000-01-01', 0, NULL, NULL),
(50, 'Nom n° 45', 'Modele n° 45', 'n° 45', 'Adresse n° 45', '0', '2000-01-01', 0, NULL, NULL),
(51, 'Nom n° 46', 'Modele n° 46', 'n° 46', 'Adresse n° 46', '1', '2000-01-01', 0, NULL, NULL),
(52, 'Nom n° 47', 'Modele n° 47', 'n° 47', 'Adresse n° 47', '0', '2000-01-01', 0, NULL, NULL),
(53, 'Nom n° 48', 'Modele n° 48', 'n° 48', 'Adresse n° 48', '1', '2000-01-01', 0, NULL, NULL),
(54, 'Nom n° 49', 'Modele n° 49', 'n° 49', 'Adresse n° 49', '0', '2000-01-01', 0, NULL, NULL),
(55, 'Nom n° 50', 'Modele n° 50', 'n° 50', 'Adresse n° 50', '0', '2000-01-01', 0, NULL, NULL),
(56, 'Nom n° 51', 'Modele n° 51', 'n° 51', 'Adresse n° 51', '0', '2000-01-01', 1, NULL, NULL),
(57, 'Nom n° 52', 'Modele n° 52', 'n° 52', 'Adresse n° 52', '0', '2000-01-01', 0, NULL, NULL),
(58, 'Nom n° 53', 'Modele n° 53', 'n° 53', 'Adresse n° 53', '0', '2000-01-01', 0, NULL, NULL),
(59, 'Nom n° 54', 'Modele n° 54', 'n° 54', 'Adresse n° 54', '1', '2000-01-01', 1, NULL, NULL),
(60, 'Nom n° 55', 'Modele n° 55', 'n° 55', 'Adresse n° 55', '1', '2000-01-01', 0, NULL, NULL),
(61, 'Nom n° 56', 'Modele n° 56', 'n° 56', 'Adresse n° 56', '1', '2000-01-01', 0, NULL, NULL),
(62, 'Nom n° 57', 'Modele n° 57', 'n° 57', 'Adresse n° 57', '0', '2000-01-01', 0, NULL, NULL),
(63, 'Nom n° 58', 'Modele n° 58', 'n° 58', 'Adresse n° 58', '0', '2000-01-01', 0, NULL, NULL),
(64, 'Nom n° 59', 'Modele n° 59', 'n° 59', 'Adresse n° 59', '1', '2000-01-01', 0, NULL, NULL),
(65, 'Nom n° 60', 'Modele n° 60', 'n° 60', 'Adresse n° 60', '1', '2000-01-01', 0, NULL, NULL),
(66, 'Nom n° 61', 'Modele n° 61', 'n° 61', 'Adresse n° 61', '0', '2000-01-01', 1, NULL, NULL),
(67, 'Nom n° 62', 'Modele n° 62', 'n° 62', 'Adresse n° 62', '1', '2000-01-01', 0, NULL, NULL),
(68, 'Nom n° 63', 'Modele n° 63', 'n° 63', 'Adresse n° 63', '0', '2000-01-01', 1, NULL, NULL),
(69, 'Nom n° 64', 'Modele n° 64', 'n° 64', 'Adresse n° 64', '1', '2000-01-01', 0, NULL, NULL),
(70, 'Nom n° 65', 'Modele n° 65', 'n° 65', 'Adresse n° 65', '1', '2000-01-01', 0, NULL, NULL),
(71, 'Nom n° 66', 'Modele n° 66', 'n° 66', 'Adresse n° 66', '1', '2000-01-01', 0, NULL, NULL),
(72, 'Nom n° 67', 'Modele n° 67', 'n° 67', 'Adresse n° 67', '1', '2000-01-01', 0, NULL, NULL),
(73, 'Nom n° 68', 'Modele n° 68', 'n° 68', 'Adresse n° 68', '1', '2000-01-01', 1, NULL, NULL),
(74, 'Nom n° 69', 'Modele n° 69', 'n° 69', 'Adresse n° 69', '0', '2000-01-01', 0, NULL, NULL),
(75, 'Nom n° 70', 'Modele n° 70', 'n° 70', 'Adresse n° 70', '1', '2000-01-01', 1, NULL, NULL),
(76, 'Nom n° 71', 'Modele n° 71', 'n° 71', 'Adresse n° 71', '1', '2000-01-01', 0, NULL, NULL),
(77, 'Nom n° 72', 'Modele n° 72', 'n° 72', 'Adresse n° 72', '0', '2000-01-01', 1, NULL, NULL),
(78, 'Nom n° 73', 'Modele n° 73', 'n° 73', 'Adresse n° 73', '1', '2000-01-01', 0, NULL, NULL),
(79, 'Nom n° 74', 'Modele n° 74', 'n° 74', 'Adresse n° 74', '0', '2000-01-01', 1, NULL, NULL),
(80, 'Nom n° 75', 'Modele n° 75', 'n° 75', 'Adresse n° 75', '1', '2000-01-01', 0, NULL, NULL),
(81, 'Nom n° 76', 'Modele n° 76', 'n° 76', 'Adresse n° 76', '0', '2000-01-01', 1, NULL, NULL),
(82, 'Nom n° 77', 'Modele n° 77', 'n° 77', 'Adresse n° 77', '1', '2000-01-01', 0, NULL, NULL),
(83, 'Nom n° 78', 'Modele n° 78', 'n° 78', 'Adresse n° 78', '0', '2000-01-01', 1, NULL, NULL),
(84, 'Nom n° 79', 'Modele n° 79', 'n° 79', 'Adresse n° 79', '0', '2000-01-01', 1, NULL, NULL),
(85, 'Nom n° 80', 'Modele n° 80', 'n° 80', 'Adresse n° 80', '1', '2000-01-01', 0, NULL, NULL),
(86, 'Nom n° 81', 'Modele n° 81', 'n° 81', 'Adresse n° 81', '0', '2000-01-01', 0, NULL, NULL),
(87, 'Nom n° 82', 'Modele n° 82', 'n° 82', 'Adresse n° 82', '0', '2000-01-01', 0, NULL, NULL),
(88, 'Nom n° 83', 'Modele n° 83', 'n° 83', 'Adresse n° 83', '0', '2000-01-01', 0, NULL, NULL),
(89, 'Nom n° 84', 'Modele n° 84', 'n° 84', 'Adresse n° 84', '1', '2000-01-01', 1, NULL, NULL),
(90, 'Nom n° 85', 'Modele n° 85', 'n° 85', 'Adresse n° 85', '1', '2000-01-01', 0, NULL, NULL),
(91, 'Nom n° 86', 'Modele n° 86', 'n° 86', 'Adresse n° 86', '0', '2000-01-01', 1, NULL, NULL),
(92, 'Nom n° 87', 'Modele n° 87', 'n° 87', 'Adresse n° 87', '0', '2000-01-01', 1, NULL, NULL),
(93, 'Nom n° 88', 'Modele n° 88', 'n° 88', 'Adresse n° 88', '0', '2000-01-01', 0, NULL, NULL),
(94, 'Nom n° 89', 'Modele n° 89', 'n° 89', 'Adresse n° 89', '1', '2000-01-01', 0, NULL, NULL),
(95, 'Nom n° 90', 'Modele n° 90', 'n° 90', 'Adresse n° 90', '0', '2000-01-01', 1, NULL, NULL),
(96, 'Nom n° 91', 'Modele n° 91', 'n° 91', 'Adresse n° 91', '0', '2000-01-01', 1, NULL, NULL),
(97, 'Nom n° 92', 'Modele n° 92', 'n° 92', 'Adresse n° 92', '0', '2000-01-01', 1, NULL, NULL),
(98, 'Nom n° 93', 'Modele n° 93', 'n° 93', 'Adresse n° 93', '0', '2000-01-01', 0, NULL, NULL),
(99, 'Nom n° 94', 'Modele n° 94', 'n° 94', 'Adresse n° 94', '0', '2000-01-01', 1, NULL, NULL),
(100, 'Nom n° 95', 'Modele n° 95', 'n° 95', 'Adresse n° 95', '0', '2000-01-01', 1, NULL, NULL),
(101, 'Nom n° 96', 'Modele n° 96', 'n° 96', 'Adresse n° 96', '1', '2000-01-01', 1, NULL, NULL),
(102, 'Nom n° 97', 'Modele n° 97', 'n° 97', 'Adresse n° 97', '0', '2000-01-01', 1, NULL, NULL),
(103, 'Nom n° 98', 'Modele n° 98', 'n° 98', 'Adresse n° 98', '0', '2000-01-01', 1, NULL, NULL),
(104, 'Nom n° 99', 'Modele n° 99', 'n° 99', 'Adresse n° 99', '1', '2000-01-01', 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto`
--
ALTER TABLE `auto`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto`
--
ALTER TABLE `auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `stagiaire`
--
ALTER TABLE `stagiaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
