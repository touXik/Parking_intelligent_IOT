-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 21 fév. 2023 à 21:04
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `parking_lot`
--

-- --------------------------------------------------------

--
-- Structure de la table `floors`
--

DROP TABLE IF EXISTS `floors`;
CREATE TABLE IF NOT EXISTS `floors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `floor_id` varchar(10) NOT NULL,
  `capacity` int(11) NOT NULL,
  `occupancy` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `floors`
--

INSERT INTO `floors` (`id`, `floor_id`, `capacity`, `occupancy`) VALUES
(72, 'A', 10, 0),
(73, 'B', 10, 0);

-- --------------------------------------------------------

--
-- Structure de la table `spots`
--

DROP TABLE IF EXISTS `spots`;
CREATE TABLE IF NOT EXISTS `spots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spot_id` varchar(10) NOT NULL,
  `floor_id` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `spots`
--

INSERT INTO `spots` (`id`, `spot_id`, `floor_id`, `status`) VALUES
(72, 'A-1', 'A', 0),
(73, 'A-2', 'A', 0),
(74, 'A-3', 'A', 0),
(75, 'A-4', 'A', 0),
(76, 'A-5', 'A', 0),
(77, 'A-6', 'A', 0),
(78, 'A-7', 'A', 0),
(79, 'A-8', 'A', 0),
(80, 'A-9', 'A', 0),
(81, 'A-10', 'A', 0),
(82, 'B-1', 'B', 0),
(83, 'B-2', 'B', 0),
(84, 'B-3', 'B', 0),
(85, 'B-4', 'B', 0),
(86, 'B-5', 'B', 0),
(87, 'B-6', 'B', 0),
(88, 'B-7', 'B', 0),
(89, 'B-8', 'B', 0),
(90, 'B-9', 'B', 0),
(91, 'B-10', 'B', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
