-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 17 Décembre 2013 à 16:04
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `etunote`
--
CREATE DATABASE IF NOT EXISTS `etunote` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `etunote`;

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE IF NOT EXISTS `etudiants` (
  `id` int(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `age` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `age`) VALUES
(0, 'zeaf', 'df', 55),
(1, 'Mehdi', 'Salim', 22),
(2, 'Himeur', 'Katia', 22),
(3, 'Moustakbal ', 'Jihane', 22),
(4, 'El', 'Frihmat', 22),
(5, 'CAM00048.jpg', '', 22),
(6, 'SAID', 'Maroua', 22),
(7, 'CAM00050.jpg', '', 22),
(8, 'Chttou', 'Soukaina', 22),
(9, 'Billel', 'REMKI', 22),
(10, 'Ghandri', 'Naoufel', 22),
(11, 'Bouchentouf', 'Abdelhafid', 22),
(12, 'CAM00056.jpg', '', 22),
(13, 'CAM00057.jpg', '', 22),
(14, 'Ouhsine', 'Souhail', 22),
(15, 'CAM00060.jpg', '', 22),
(16, 'CAM00063[1].jpg', '', 22),
(17, 'CAM00064[1].jpg', '', 22),
(18, 'JEBALI', 'Souhail', 22),
(28, 'Ben yahia', 'Wided', 22);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exercices` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` int(11) NOT NULL,
  `maj` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cours` (`prenom`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=304 ;

--
-- Contenu de la table `notes`
--

INSERT INTO `notes` (`id`, `nom`, `prenom`, `exercices`, `note`, `maj`) VALUES
(1, 'CAM00083.jpg', 'Langages Hypermédias', 'machin', 12, '2013-01-28 07:38:49'),
(2, 'CAM00083.jpg', 'Langages Hypermédias', 'machin', 12, '2013-01-28 07:39:38'),
(3, 'CAM00083.jpg', 'Langages Hypermédias', 'machin', 12, '2013-01-28 07:40:06'),
(4, 'CAM00083.jpg', 'Langages Hypermédias', 'machin', 2, '2013-01-28 07:40:26'),
(5, 'CAM00083.jpg', 'Langages Hypermédias', 'truc', 100, '2013-01-28 07:50:23'),
(6, 'CAM00084.jpg', 'Langages Hypermédias', 'truc', 12, '2013-01-28 07:55:16'),
(7, 'CAM00083.jpg', 'Langages Hypermédias', '1.1', 1, '2013-01-28 08:10:07'),
(8, 'CAM00083.jpg', 'Langages Hypermédias', '1.2', 2, '2013-01-28 08:14:34'),
(9, 'CAM00083.jpg', 'Langages Hypermédias', 'bug', 1, '2013-01-28 08:20:48'),
(10, 'CAM00083.jpg', 'Langages Hypermédias', 'bug', 1, '2013-01-28 08:22:18'),
(11, 'Rachid Trahim', 'Langages Hypermédias', 'config svn', 6, '2013-01-28 09:43:51'),
(12, 'Rachid Trahim', 'Langages Hypermédias', 'configuration bdd', 4, '2013-01-29 09:03:44'),
(13, 'Rachid Trahim', 'Langages Hypermédias', 'afficher trombino', 4, '2013-01-29 09:07:41'),
(14, 'Rachid Trahim', 'Langages Hypermédias', 'gestion note', 5, '2013-01-29 09:09:14'),
(15, 'Rachid Trahim', 'Langages Hypermédias', 'appli AJAX', 4, '2013-01-29 09:16:23'),
(16, 'Rachid Trahim', 'Langages Hypermédias', 'appli valide', 3, '2013-01-29 09:18:24'),
(17, 'Rachid Trahim', 'Langages Hypermédias', 'ergonomie', 2, '2013-01-29 09:19:18'),
(18, 'Kaoutar Raiss', 'Langages Hypermédias', 'config svn', 6, '2013-01-29 09:28:19'),
(19, 'Kaoutar Raiss', 'Langages Hypermédias', 'configuration bdd', 3, '2013-01-29 09:28:58'),
(20, 'Kaoutar Raiss', 'Langages Hypermédias', 'afficher trombino', 5, '2013-01-29 09:29:31'),
(21, 'Kaoutar Raiss', 'Langages Hypermédias', 'gestion note', 3, '2013-01-29 09:31:06'),
(22, 'Kaoutar Raiss', 'Langages Hypermédias', 'appli AJAX', 2, '2013-01-29 09:33:23'),
(23, 'Kaoutar Raiss', 'Langages Hypermédias', 'appli valide', 0, '2013-01-29 09:35:32'),
(24, 'Kaoutar Raiss', 'Langages Hypermédias', 'ergonomie', 1, '2013-01-29 09:35:46'),
(25, 'ASSERRAR Mehdi', 'Langages Hypermédias', 'Config svn', 6, '2013-01-29 09:37:22'),
(26, 'ASSERRAR Mehdi', 'Langages Hypermédias', 'Config bdd', 3, '2013-01-29 09:38:46'),
(27, 'ASSERRAR Mehdi', 'Langages Hypermédias', 'gestion note', 3, '2013-01-29 09:39:47'),
(28, 'ASSERRAR Mehdi', 'Langages Hypermédias', 'afficher trombino', 5, '2013-01-29 09:41:00'),
(29, 'ASSERRAR Mehdi', 'Langages Hypermédias', 'appli AJAX', 0, '2013-01-29 09:42:03'),
(30, 'ASSERRAR Mehdi', 'Langages Hypermédias', 'appli valide', 0, '2013-01-29 09:42:12'),
(31, 'ASSERRAR Mehdi', 'Langages Hypermédias', 'ergonomie', 1, '2013-01-29 09:42:49'),
(32, 'Nadir GHARZAL', 'Langages Hypermédias', 'config svn', 6, '2013-01-29 09:44:16'),
(33, 'Nadir GHARZAL', 'Langages Hypermédias', 'config bdd', 3, '2013-01-29 09:45:34'),
(34, 'Nadir GHARZAL', 'Langages Hypermédias', 'afficher trombino', 5, '2013-01-29 09:46:51'),
(35, 'Nadir GHARZAL', 'Langages Hypermédias', 'gestion note', 5, '2013-01-29 09:49:53'),
(36, 'Nadir GHARZAL', 'Langages Hypermédias', 'appli AJAX', 2, '2013-01-29 09:51:41'),
(37, 'Nadir GHARZAL', 'Langages Hypermédias', 'appli valide', 0, '2013-01-29 09:52:40'),
(38, 'Nadir GHARZAL', 'Langages Hypermédias', 'ergonomie', 1, '2013-01-29 09:52:54'),
(39, 'Hajar Morchid', 'Langages Hypermédias', 'config svn', 6, '2013-01-29 09:54:08'),
(40, 'Hajar Morchid', 'Langages Hypermédias', 'config bdd', 4, '2013-01-29 09:56:06'),
(41, 'Hajar Morchid', 'Langages Hypermédias', 'afficher trombino', 5, '2013-01-29 09:57:54'),
(42, 'Hajar Morchid', 'Langages Hypermédias', 'gestion note', 5, '2013-01-29 09:58:09'),
(43, 'Hajar Morchid', 'Langages Hypermédias', 'appli AJAX', 3, '2013-01-29 09:59:29'),
(44, 'Hajar Morchid', 'Langages Hypermédias', 'appli valide', 0, '2013-01-29 10:01:12'),
(45, 'Hajar Morchid', 'Langages Hypermédias', 'ergonomie', 2, '2013-01-29 10:01:39'),
(46, 'Rachid Trahim', 'Langages Hypermédias', 'config svn', -1, '2013-02-05 10:46:37'),
(47, 'Rachid Trahim', 'Langages Hypermédias', 'ergonomie', 1, '2013-02-05 10:46:56'),
(48, 'Kaoutar Raiss', 'Langages Hypermédias', 'config svn', -1, '2013-02-05 10:47:14'),
(49, 'Kaoutar Raiss', 'Langages Hypermédias', 'ergonomie', 1, '2013-02-05 10:47:36'),
(50, 'ASSERRAR Mehdi', 'Langages Hypermédias', 'Config svn', -1, '2013-02-05 10:48:01'),
(52, 'Nadir GHARZAL', 'Langages Hypermédias', 'config svn', -1, '2013-02-05 10:48:36'),
(53, 'Hajar Morchid', 'Langages Hypermédias', 'config svn', -1, '2013-02-05 10:49:58'),
(54, 'Hajar Morchid', 'Langages Hypermédias', 'ergonomie', 1, '2013-02-05 10:50:20'),
(55, 'Ouerdia Amirat', 'Langages Hypermédias', 'config svn', 5, '2013-02-05 10:50:45'),
(56, 'Ouerdia Amirat', 'Langages Hypermédias', 'config bdd', 4, '2013-02-05 10:52:33'),
(57, 'Ouerdia Amirat', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-05 10:54:08'),
(58, 'Ouerdia Amirat', 'Langages Hypermédias', 'gestion note', 3, '2013-02-05 10:56:11'),
(59, 'Ouerdia Amirat', 'Langages Hypermédias', 'appli AJAX', 4, '2013-02-05 10:57:24'),
(60, 'Ouerdia Amirat', 'Langages Hypermédias', 'appli valide', 0, '2013-02-05 10:58:02'),
(61, 'Ouerdia Amirat', 'Langages Hypermédias', 'ergonomie', 2, '2013-02-05 10:58:15'),
(62, 'Ouerdia Amirat', 'Langages Hypermédias', 'appli AJAX', -1, '2013-02-05 10:58:51'),
(63, 'houda ganouch', 'Langages Hypermédias', 'config svn', 5, '2013-02-05 11:00:05'),
(64, 'houda ganouch', 'Langages Hypermédias', 'config bdd', 4, '2013-02-05 11:01:16'),
(65, 'houda ganouch', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-05 11:02:00'),
(66, 'houda ganouch', 'Langages Hypermédias', 'gestion note', 3, '2013-02-05 11:03:59'),
(67, 'houda ganouch', 'Langages Hypermédias', 'appli AJAX', 2, '2013-02-06 16:45:23'),
(68, 'houda ganouch', 'Langages Hypermédias', 'appli valide', 0, '2013-02-06 16:45:40'),
(69, 'houda ganouch', 'Langages Hypermédias', 'ergonomie', 1, '2013-02-06 16:46:15'),
(70, 'Mecheddal Amel', 'Langages Hypermédias', 'config svn', 4, '2013-02-06 16:47:40'),
(71, 'Mecheddal Amel', 'Langages Hypermédias', 'config bdd', 4, '2013-02-06 16:48:15'),
(72, 'Mecheddal Amel', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-06 16:49:35'),
(73, 'Mecheddal Amel', 'Langages Hypermédias', 'gestion note', 3, '2013-02-06 16:50:39'),
(74, 'Mecheddal Amel', 'Langages Hypermédias', 'appli AJAX', 3, '2013-02-06 16:51:01'),
(75, 'Mecheddal Amel', 'Langages Hypermédias', 'appli valide', 0, '2013-02-06 16:51:14'),
(76, 'Mecheddal Amel', 'Langages Hypermédias', 'ergonomie', 1, '2013-02-06 16:51:28'),
(77, 'Xinxin YU', 'Langages Hypermédias', 'config svn', 5, '2013-02-06 16:53:36'),
(78, 'Xinxin YU', 'Langages Hypermédias', 'config bdd', 4, '2013-02-06 16:53:48'),
(79, 'Xinxin YU', 'Langages Hypermédias', 'config bdd', -1, '2013-02-06 16:54:06'),
(80, 'Xinxin YU', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-06 16:54:31'),
(81, 'Xinxin YU', 'Langages Hypermédias', 'gestion note', 5, '2013-02-06 16:56:39'),
(82, 'Xinxin YU', 'Langages Hypermédias', 'appli AJAX', 4, '2013-02-06 16:56:58'),
(83, 'Xinxin YU', 'Langages Hypermédias', 'visualisation des notes', 2, '2013-02-06 17:01:51'),
(84, 'Xinxin YU', 'Langages Hypermédias', 'appli valide', 3, '2013-02-06 17:02:49'),
(85, 'Xinxin YU', 'Langages Hypermédias', 'ergonomie', 2, '2013-02-06 17:03:01'),
(86, 'Amzil Zakaria', 'Langages Hypermédias', 'config svn', 5, '2013-02-06 17:03:50'),
(87, 'Amzil Zakaria', 'Langages Hypermédias', 'config bdd', 4, '2013-02-06 17:04:22'),
(88, 'Amzil Zakaria', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-06 17:05:29'),
(89, 'Amzil Zakaria', 'Langages Hypermédias', 'gestion note', 3, '2013-02-06 17:06:27'),
(90, 'Amzil Zakaria', 'Langages Hypermédias', 'appli AJAX', 0, '2013-02-06 17:07:35'),
(91, 'Amzil Zakaria', 'Langages Hypermédias', 'appli valide', 0, '2013-02-06 17:07:51'),
(92, 'Amzil Zakaria', 'Langages Hypermédias', 'ergonomie', 1, '2013-02-06 17:08:15'),
(93, 'halima kennouche', 'Langages Hypermédias', 'config svn', 5, '2013-02-06 17:09:14'),
(94, 'halima kennouche', 'Langages Hypermédias', 'config bdd', 4, '2013-02-06 17:09:42'),
(95, 'halima kennouche', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-06 17:10:45'),
(96, 'halima kennouche', 'Langages Hypermédias', 'gestion note', 4, '2013-02-06 17:11:58'),
(97, 'halima kennouche', 'Langages Hypermédias', 'appli AJAX', 2, '2013-02-06 17:13:09'),
(98, 'halima kennouche', 'Langages Hypermédias', 'appli valide', 0, '2013-02-06 17:13:50'),
(99, 'halima kennouche', 'Langages Hypermédias', 'ergonomie', 2, '2013-02-06 17:15:59'),
(100, 'Kahina Meftahi', 'Langages Hypermédias', 'config svn', 5, '2013-02-06 17:16:43'),
(101, 'Kahina Meftahi', 'Langages Hypermédias', 'config bdd', 4, '2013-02-06 17:16:55'),
(102, 'Kahina Meftahi', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-06 17:18:28'),
(103, 'Kahina Meftahi', 'Langages Hypermédias', 'gestion note', 5, '2013-02-06 17:19:12'),
(104, 'Kahina Meftahi', 'Langages Hypermédias', 'appli AJAX', 4, '2013-02-06 17:20:21'),
(105, 'Kahina Meftahi', 'Langages Hypermédias', 'appli valide', 0, '2013-02-06 17:21:41'),
(106, 'Kahina Meftahi', 'Langages Hypermédias', 'ergonomie', 3, '2013-02-06 17:21:58'),
(107, 'Halima Hammouda', 'Langages Hypermédias', 'config svn', 5, '2013-02-06 17:22:48'),
(108, 'Halima Hammouda', 'Langages Hypermédias', 'config bdd', 5, '2013-02-06 17:22:55'),
(109, 'Halima Hammouda', 'Langages Hypermédias', 'afficher trombino', 4, '2013-02-06 17:24:23'),
(110, 'Halima Hammouda', 'Langages Hypermédias', 'gestion note', 5, '2013-02-06 17:25:02'),
(111, 'Halima Hammouda', 'Langages Hypermédias', 'appli AJAX', 3, '2013-02-06 17:26:16'),
(112, 'Halima Hammouda', 'Langages Hypermédias', 'appli valide', 0, '2013-02-06 17:26:27'),
(113, 'Halima Hammouda', 'Langages Hypermédias', 'ergonomie', 2, '2013-02-06 17:26:38'),
(114, 'irnatene fahem', 'Langages Hypermédias', 'config svn', 5, '2013-02-06 17:27:13'),
(115, 'irnatene fahem', 'Langages Hypermédias', 'config bdd', 5, '2013-02-06 17:27:21'),
(116, 'Halima Hammouda', 'Langages Hypermédias', 'config bdd', -1, '2013-02-06 17:28:53'),
(117, 'irnatene fahem', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-06 17:29:02'),
(118, 'irnatene fahem', 'Langages Hypermédias', 'config bdd', -1, '2013-02-06 17:29:14'),
(119, 'irnatene fahem', 'Langages Hypermédias', 'gestion note', 5, '2013-02-06 17:30:42'),
(120, 'irnatene fahem', 'Langages Hypermédias', 'appli AJAX', 3, '2013-02-06 17:32:21'),
(121, 'irnatene fahem', 'Langages Hypermédias', 'appli valide', 0, '2013-02-06 17:32:37'),
(122, 'irnatene fahem', 'Langages Hypermédias', 'ergonomie', 2, '2013-02-06 17:33:01'),
(123, 'houda msakem', 'Langages Hypermédias', 'config svn', 5, '2013-02-06 17:33:55'),
(124, 'houda msakem', 'Langages Hypermédias', 'config bdd', 4, '2013-02-06 17:34:05'),
(125, 'houda msakem', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-06 17:35:38'),
(126, 'houda msakem', 'Langages Hypermédias', 'gestion note', 5, '2013-02-06 17:36:15'),
(127, 'houda msakem', 'Langages Hypermédias', 'appli AJAX', 5, '2013-02-06 17:37:06'),
(128, 'houda msakem', 'Langages Hypermédias', 'appli valide', 2, '2013-02-06 17:39:25'),
(129, 'houda msakem', 'Langages Hypermédias', 'visualisation des notes', 2, '2013-02-06 17:39:41'),
(130, 'houda msakem', 'Langages Hypermédias', 'ergonomie', 3, '2013-02-06 17:39:55'),
(131, 'Diaa Bouabdallah', 'Langages Hypermédias', 'config svn', 4, '2013-02-06 17:40:34'),
(132, 'Diaa Bouabdallah', 'Langages Hypermédias', 'config bdd', 3, '2013-02-06 17:40:45'),
(133, 'Diaa Bouabdallah', 'Langages Hypermédias', 'config bdd', -1, '2013-02-06 17:42:04'),
(134, 'Diaa Bouabdallah', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-06 17:45:22'),
(135, 'Diaa Bouabdallah', 'Langages Hypermédias', 'gestion note', 4, '2013-02-06 17:45:59'),
(136, 'Diaa Bouabdallah', 'Langages Hypermédias', 'appli AJAX', 0, '2013-02-06 17:47:17'),
(137, 'Diaa Bouabdallah', 'Langages Hypermédias', 'appli valide', 0, '2013-02-06 17:48:33'),
(138, 'Diaa Bouabdallah', 'Langages Hypermédias', 'ergonomie', 3, '2013-02-06 17:48:46'),
(139, 'rachid nait mammar', 'Langages Hypermédias', 'config svn', 5, '2013-02-06 17:49:52'),
(140, 'rachid nait mammar', 'Langages Hypermédias', 'config bdd', 4, '2013-02-06 17:50:00'),
(141, 'rachid nait mammar', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-06 17:52:06'),
(142, 'rachid nait mammar', 'Langages Hypermédias', 'gestion note', 5, '2013-02-06 17:52:39'),
(143, 'rachid nait mammar', 'Langages Hypermédias', 'appli AJAX', 6, '2013-02-06 17:55:27'),
(144, 'rachid nait mammar', 'Langages Hypermédias', 'appli valide', 3, '2013-02-06 17:55:59'),
(145, 'rachid nait mammar', 'Langages Hypermédias', 'appli valide', -1, '2013-02-06 17:56:18'),
(146, 'rachid nait mammar', 'Langages Hypermédias', 'ergonomie', 3, '2013-02-06 17:56:36'),
(147, 'Amin Ben hassine', 'Langages Hypermédias', 'config svn', 5, '2013-02-06 17:57:20'),
(148, 'Amin Ben hassine', 'Langages Hypermédias', 'config bdd', 5, '2013-02-06 17:57:27'),
(149, 'Amin Ben hassine', 'Langages Hypermédias', 'config bdd', -1, '2013-02-06 17:57:34'),
(150, 'Amin Ben hassine', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-06 17:59:10'),
(151, 'Amin Ben hassine', 'Langages Hypermédias', 'gestion note', 5, '2013-02-06 17:59:45'),
(152, 'Amin Ben hassine', 'Langages Hypermédias', 'appli AJAX', 5, '2013-02-06 18:00:54'),
(153, 'Amin Ben hassine', 'Langages Hypermédias', 'visualisation des notes', 4, '2013-02-06 18:03:10'),
(154, 'Amin Ben hassine', 'Langages Hypermédias', 'appli valide', 2, '2013-02-06 18:03:27'),
(155, 'Amin Ben hassine', 'Langages Hypermédias', 'ergonomie', 2, '2013-02-06 18:03:35'),
(156, 'Amin Ben hassine', 'Langages Hypermédias', 'ergonomie', 3, '2013-02-06 18:03:44'),
(157, 'Amin Ben hassine', 'Langages Hypermédias', 'ergonomie', -2, '2013-02-06 18:03:53'),
(158, 'Mehdi Fechtali', 'Langages Hypermédias', 'config svn', 5, '2013-02-06 18:07:06'),
(159, 'Mehdi Fechtali', 'Langages Hypermédias', 'config bdd', 4, '2013-02-06 18:07:16'),
(160, 'Mehdi Fechtali', 'Langages Hypermédias', 'afficher trombino', 5, '2013-02-06 18:07:30'),
(161, 'Mehdi Fechtali', 'Langages Hypermédias', 'gestion note', 5, '2013-02-06 18:08:48'),
(162, 'Mehdi Fechtali', 'Langages Hypermédias', 'gestion note', -1, '2013-02-06 18:10:11'),
(163, 'Mehdi Fechtali', 'Langages Hypermédias', 'appli AJAX', 3, '2013-02-06 18:12:12'),
(164, 'Mehdi Fechtali', 'Langages Hypermédias', 'appli valide', 0, '2013-02-06 18:12:52'),
(165, 'Mehdi Fechtali', 'Langages Hypermédias', 'ergonomie', 3, '2013-02-06 18:13:04'),
(166, 'Rachid Trahim', 'Rencontres Médias', 'Tweet SVG : d - i - c', 3, '2013-02-24 09:38:56'),
(167, 'Rachid Trahim', 'Rencontres Médias', 'Tweet SVG : 800x600', 2, '2013-02-24 09:42:05'),
(168, 'Rachid Trahim', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 0, '2013-02-24 09:42:43'),
(169, 'Rachid Trahim', 'Rencontres Médias', 'Tweet SVG : ergo', 4, '2013-02-24 09:43:56'),
(170, 'Rachid Trahim', 'Rencontres Médias', 'Serious Game : Doc', 2, '2013-02-24 09:47:44'),
(171, 'Rachid Trahim', 'Rencontres Médias', 'Serious Game : Real', 4, '2013-02-24 09:48:05'),
(172, 'Kaoutar Raiss', 'Rencontres Médias', 'Tweet SVG : d - i - c', 3, '2013-02-24 09:50:50'),
(173, 'Kaoutar Raiss', 'Rencontres Médias', 'Tweet SVG : Tweet SVG : 800x600', 0, '2013-02-24 09:51:06'),
(174, 'Kaoutar Raiss', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 09:51:26'),
(175, 'Kaoutar Raiss', 'Rencontres Médias', 'Tweet SVG : ergo', 3, '2013-02-24 09:51:59'),
(176, 'Kaoutar Raiss', 'Rencontres Médias', 'Serious Game : Doc', 3, '2013-02-24 09:53:13'),
(177, 'Kaoutar Raiss', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 09:53:28'),
(178, 'ASSERRAR Mehdi', 'Rencontres Médias', 'Tweet SVG : d - i - c', 0, '2013-02-24 09:57:14'),
(179, 'ASSERRAR Mehdi', 'Rencontres Médias', 'Tweet SVG : 800x600', 0, '2013-02-24 09:57:29'),
(180, 'ASSERRAR Mehdi', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 0, '2013-02-24 09:57:40'),
(181, 'ASSERRAR Mehdi', 'Rencontres Médias', 'Serious Game : Doc', 0, '2013-02-24 09:58:51'),
(182, 'ASSERRAR Mehdi', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 09:59:13'),
(183, 'ASSERRAR Mehdi', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 09:59:29'),
(184, 'Kaoutar Raiss', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 10:00:03'),
(185, 'Rachid Trahim', 'Rencontres Médias', 'Colloque : PrÃ©sence', 4, '2013-02-24 10:01:13'),
(186, 'ASSERRAR Mehdi', 'Rencontres Médias', 'Tweet SVG : ergo', 0, '2013-02-24 10:11:39'),
(187, 'Nadir GHARZAL', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 10:12:57'),
(188, 'ASSERRAR Mehdi', 'Rencontres Médias', 'Tweet SVG : ergo', 0, '2013-02-24 10:14:34'),
(189, 'Nadir GHARZAL', 'Rencontres Médias', 'Serious Game : Doc', 2, '2013-02-24 10:14:44'),
(190, 'Nadir GHARZAL', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 10:14:58'),
(191, 'Nadir GHARZAL', 'Rencontres Médias', 'Tweet SVG : 800x600', 2, '2013-02-24 10:15:19'),
(192, 'Nadir GHARZAL', 'Rencontres Médias', 'Tweet SVG : d - i - c', 2, '2013-02-24 10:15:36'),
(193, 'Nadir GHARZAL', 'Rencontres Médias', 'Tweet SVG : ergo', 2, '2013-02-24 10:15:49'),
(194, 'Nadir GHARZAL', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 10:16:00'),
(195, 'Nadir GHARZAL', 'Rencontres Médias', 'Colloque : PrÃ©sence', 1, '2013-02-24 10:17:17'),
(196, 'Hajar Morchid', 'Rencontres Médias', 'Colloque : PrÃ©sence', 3, '2013-02-24 10:17:44'),
(197, 'Hajar Morchid', 'Rencontres Médias', 'Serious Game : Doc', 2, '2013-02-24 10:18:08'),
(198, 'Hajar Morchid', 'Rencontres Médias', 'Serious Game : Real', 4, '2013-02-24 10:18:20'),
(199, 'Hajar Morchid', 'Rencontres Médias', 'Tweet SVG : 800x600', 2, '2013-02-24 10:19:11'),
(200, 'Hajar Morchid', 'Rencontres Médias', 'Tweet SVG : d - i - c', 3, '2013-02-24 10:19:24'),
(201, 'Hajar Morchid', 'Rencontres Médias', 'Tweet SVG : ergo', 4, '2013-02-24 10:19:44'),
(202, 'Hajar Morchid', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 10:20:05'),
(203, 'Ouerdia Amirat', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 10:53:28'),
(204, 'Ouerdia Amirat', 'Rencontres Médias', 'Serious Game : Doc', 4, '2013-02-24 10:54:26'),
(205, 'Ouerdia Amirat', 'Rencontres Médias', 'Serious Game : Real', 1, '2013-02-24 10:55:07'),
(206, 'Ouerdia Amirat', 'Rencontres Médias', 'Tweet SVG : 800x600', 0, '2013-02-24 10:56:01'),
(207, 'Ouerdia Amirat', 'Rencontres Médias', 'Tweet SVG : d - i - c', 3, '2013-02-24 10:56:15'),
(208, 'Ouerdia Amirat', 'Rencontres Médias', 'Tweet SVG : ergo', 3, '2013-02-24 10:56:35'),
(209, 'Ouerdia Amirat', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 10:56:46'),
(210, 'houda ganouch', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 10:57:25'),
(211, 'houda ganouch', 'Rencontres Médias', 'Serious Game : Doc', 2, '2013-02-24 10:57:50'),
(212, 'houda ganouch', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 10:58:01'),
(213, 'houda ganouch', 'Rencontres Médias', 'Tweet SVG : 800x600', 2, '2013-02-24 10:58:50'),
(214, 'houda ganouch', 'Rencontres Médias', 'Tweet SVG : d - i - c', 2, '2013-02-24 10:59:27'),
(215, 'houda ganouch', 'Rencontres Médias', 'Tweet SVG : ergo', 3, '2013-02-24 10:59:40'),
(216, 'houda ganouch', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 1, '2013-02-24 10:59:51'),
(217, 'houda ganouch', 'Rencontres Médias', 'Bonus', 1, '2013-02-24 11:00:42'),
(218, 'Mecheddal Amel', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 11:01:06'),
(219, 'Mecheddal Amel', 'Rencontres Médias', 'Serious Game : Doc', 4, '2013-02-24 11:01:48'),
(220, 'Mecheddal Amel', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 11:02:02'),
(221, 'Mecheddal Amel', 'Rencontres Médias', 'Tweet SVG : 800x600', 0, '2013-02-24 11:02:45'),
(222, 'Mecheddal Amel', 'Rencontres Médias', 'Tweet SVG : d - i - c', 3, '2013-02-24 11:02:56'),
(223, 'Mecheddal Amel', 'Rencontres Médias', 'Tweet SVG : ergo', 3, '2013-02-24 11:03:06'),
(224, 'Mecheddal Amel', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 11:03:21'),
(225, 'Xinxin YU', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 11:03:44'),
(226, 'Xinxin YU', 'Rencontres Médias', 'Serious Game : Doc', 3, '2013-02-24 11:04:24'),
(227, 'Xinxin YU', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 11:04:59'),
(228, 'Xinxin YU', 'Rencontres Médias', 'Tweet SVG : 800x600', 2, '2013-02-24 11:05:59'),
(229, 'Xinxin YU', 'Rencontres Médias', 'Tweet SVG : d - i - c', 3, '2013-02-24 11:06:21'),
(230, 'Xinxin YU', 'Rencontres Médias', 'Tweet SVG : ergo', 3, '2013-02-24 11:06:32'),
(231, 'Xinxin YU', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 11:06:40'),
(232, 'Amzil Zakaria', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 11:07:36'),
(233, 'Amzil Zakaria', 'Rencontres Médias', 'Serious Game : Doc', 2, '2013-02-24 11:09:05'),
(234, 'Amzil Zakaria', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 11:09:18'),
(235, 'Amzil Zakaria', 'Rencontres Médias', 'Tweet SVG : 800x600', 2, '2013-02-24 11:10:01'),
(236, 'Amzil Zakaria', 'Rencontres Médias', 'Tweet SVG : d - i - c', 3, '2013-02-24 11:10:22'),
(237, 'Amzil Zakaria', 'Rencontres Médias', 'Tweet SVG : ergo', 2, '2013-02-24 11:10:40'),
(238, 'Amzil Zakaria', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 11:10:50'),
(239, 'halima kennouche', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 11:11:26'),
(240, 'halima kennouche', 'Rencontres Médias', 'Serious Game : Doc', 2, '2013-02-24 11:12:04'),
(241, 'halima kennouche', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 11:12:26'),
(242, 'halima kennouche', 'Rencontres Médias', 'Tweet SVG : 800x600', 0, '2013-02-24 11:14:25'),
(243, 'halima kennouche', 'Rencontres Médias', 'Tweet SVG : d - i - c', 0, '2013-02-24 11:14:36'),
(244, 'halima kennouche', 'Rencontres Médias', 'Tweet SVG : ergo', 0, '2013-02-24 11:14:46'),
(245, 'halima kennouche', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 0, '2013-02-24 11:14:55'),
(246, 'Kahina Meftahi', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 15:22:54'),
(247, 'Kahina Meftahi', 'Rencontres Médias', 'Serious Game : Doc', 5, '2013-02-24 15:24:44'),
(248, 'Kahina Meftahi', 'Rencontres Médias', 'Serious Game : Real', 4, '2013-02-24 15:25:01'),
(249, 'Kahina Meftahi', 'Rencontres Médias', 'Tweet SVG : 800x600', 2, '2013-02-24 15:25:57'),
(250, 'Kahina Meftahi', 'Rencontres Médias', 'Tweet SVG : d - i - c', 3, '2013-02-24 15:26:18'),
(251, 'Kahina Meftahi', 'Rencontres Médias', 'Tweet SVG : ergo', 4, '2013-02-24 15:26:38'),
(252, 'Kahina Meftahi', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 15:26:50'),
(253, 'Halima Hammouda', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 20:38:49'),
(254, 'Halima Hammouda', 'Rencontres Médias', 'Serious Game : Doc', 2, '2013-02-24 20:39:18'),
(255, 'Halima Hammouda', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 20:39:35'),
(256, 'Halima Hammouda', 'Rencontres Médias', 'Tweet SVG : 800x600', 0, '2013-02-24 20:40:24'),
(257, 'Halima Hammouda', 'Rencontres Médias', 'Tweet SVG : d - i - c', 3, '2013-02-24 20:41:02'),
(258, 'Halima Hammouda', 'Rencontres Médias', 'Tweet SVG : ergo', 3, '2013-02-24 20:41:13'),
(259, 'Halima Hammouda', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 20:41:37'),
(260, 'Halima Hammouda', 'Rencontres Médias', 'Bonus', 1, '2013-02-24 20:41:56'),
(261, 'irnatene fahem', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 20:49:16'),
(262, 'irnatene fahem', 'Rencontres Médias', 'Serious Game : Doc', 2, '2013-02-24 20:49:44'),
(263, 'irnatene fahem', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 20:50:00'),
(264, 'irnatene fahem', 'Rencontres Médias', 'Tweet SVG : 800x600', 2, '2013-02-24 20:50:50'),
(265, 'irnatene fahem', 'Rencontres Médias', 'Tweet SVG : d - i - c', 0, '2013-02-24 20:51:11'),
(266, 'irnatene fahem', 'Rencontres Médias', 'Tweet SVG : ergo', 2, '2013-02-24 20:51:31'),
(267, 'irnatene fahem', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 20:51:43'),
(268, 'houda msakem', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 20:52:12'),
(269, 'houda msakem', 'Rencontres Médias', 'Serious Game : Doc', 2, '2013-02-24 20:52:35'),
(270, 'houda msakem', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 20:52:48'),
(271, 'houda msakem', 'Rencontres Médias', 'Tweet SVG : 800x600', 2, '2013-02-24 20:54:12'),
(272, 'houda msakem', 'Rencontres Médias', 'Tweet SVG : d - i - c', 3, '2013-02-24 20:54:25'),
(273, 'houda msakem', 'Rencontres Médias', 'Tweet SVG : ergo', 4, '2013-02-24 20:54:39'),
(274, 'houda msakem', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 20:54:50'),
(275, 'Diaa Bouabdallah', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 20:55:22'),
(276, 'Diaa Bouabdallah', 'Rencontres Médias', 'Serious Game : Doc', 3, '2013-02-24 20:56:36'),
(277, 'Diaa Bouabdallah', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 20:56:59'),
(278, 'Diaa Bouabdallah', 'Rencontres Médias', 'Tweet SVG : 800x600', 2, '2013-02-24 20:57:49'),
(279, 'Diaa Bouabdallah', 'Rencontres Médias', 'Tweet SVG : d - i - c', 2, '2013-02-24 20:57:59'),
(280, 'Diaa Bouabdallah', 'Rencontres Médias', 'Tweet SVG : ergo', 2, '2013-02-24 20:58:09'),
(281, 'Diaa Bouabdallah', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 20:58:19'),
(282, 'rachid nait mammar', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 20:58:51'),
(283, 'rachid nait mammar', 'Rencontres Médias', 'Serious Game : Doc', 2, '2013-02-24 21:00:35'),
(284, 'rachid nait mammar', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 21:00:48'),
(285, 'rachid nait mammar', 'Rencontres Médias', 'Tweet SVG : 800x600', 0, '2013-02-24 21:01:31'),
(286, 'rachid nait mammar', 'Rencontres Médias', 'Tweet SVG : d - i - c', 3, '2013-02-24 21:01:45'),
(287, 'rachid nait mammar', 'Rencontres Médias', 'Tweet SVG : ergo', 3, '2013-02-24 21:02:00'),
(288, 'rachid nait mammar', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 21:02:17'),
(289, 'rachid nait mammar', 'Rencontres Médias', 'Bonus', 1, '2013-02-24 21:02:30'),
(290, 'Amin Ben hassine', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 21:02:57'),
(291, 'Amin Ben hassine', 'Rencontres Médias', 'Serious Game : Doc', 3, '2013-02-24 21:03:50'),
(292, 'Amin Ben hassine', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 21:04:17'),
(293, 'Amin Ben hassine', 'Rencontres Médias', 'Tweet SVG : 800x600', 2, '2013-02-24 21:04:55'),
(294, 'Amin Ben hassine', 'Rencontres Médias', 'Tweet SVG : d - i - c', 2, '2013-02-24 21:05:21'),
(295, 'Amin Ben hassine', 'Rencontres Médias', 'Tweet SVG : ergo', 3, '2013-02-24 21:05:34'),
(296, 'Amin Ben hassine', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 2, '2013-02-24 21:05:52'),
(297, 'Mehdi Fechtali', 'Rencontres Médias', 'Colloque : PrÃ©sence', 2, '2013-02-24 21:06:26'),
(298, 'Mehdi Fechtali', 'Rencontres Médias', 'Serious Game : Doc', 0, '2013-02-24 21:08:09'),
(299, 'Mehdi Fechtali', 'Rencontres Médias', 'Serious Game : Real', 0, '2013-02-24 21:08:22'),
(300, 'Mehdi Fechtali', 'Rencontres Médias', 'Tweet SVG : 800x600', 0, '2013-02-24 21:10:04'),
(301, 'Mehdi Fechtali', 'Rencontres Médias', 'Tweet SVG : d - i - c', 0, '2013-02-24 21:10:14'),
(302, 'Mehdi Fechtali', 'Rencontres Médias', 'Tweet SVG : ergo', 0, '2013-02-24 21:10:29'),
(303, 'Mehdi Fechtali', 'Rencontres Médias', 'Tweet SVG : nom_prenom', 0, '2013-02-24 21:10:38');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
