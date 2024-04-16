-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 19 mars 2024 à 12:41
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd_disney`
--

-- --------------------------------------------------------

--
-- Structure de la table `antagonistes`
--

DROP TABLE IF EXISTS `antagonistes`;
CREATE TABLE IF NOT EXISTS `antagonistes` (
  `ID_antagoniste` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) DEFAULT NULL,
  `ID_film` int DEFAULT NULL,
  PRIMARY KEY (`ID_antagoniste`),
  KEY `ID_film` (`ID_film`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `antagonistes`
--

INSERT INTO `antagonistes` (`ID_antagoniste`, `Nom`, `ID_film`) VALUES
(1, 'Gaston', 1),
(2, 'Jafar', 2),
(3, 'Scar', 3),
(4, 'Ursula', 4),
(5, 'Sid Phillips', 5),
(6, 'LeFou', 1),
(7, 'Iago', 2),
(8, 'Shenzi', 3),
(9, 'Flotsam', 4),
(10, 'Hannah', 5);

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `ID_film` int NOT NULL,
  `Titre` varchar(255) DEFAULT NULL,
  `Annee_production` int DEFAULT NULL,
  `Genre` varchar(100) DEFAULT NULL,
  `Realisateur` varchar(255) DEFAULT NULL,
  `Pays` varchar(100) DEFAULT NULL,
  `Duree_minutes` int DEFAULT NULL,
  PRIMARY KEY (`ID_film`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`ID_film`, `Titre`, `Annee_production`, `Genre`, `Realisateur`, `Pays`, `Duree_minutes`) VALUES
(1, 'La Belle et la Bête', 1991, 'Animation', 'Gary Trousdale, Kirk Wise', 'États-Unis', 84),
(2, 'Aladdin', 1992, 'Animation', 'Ron Clements, John Musker', 'États-Unis', 90),
(3, 'Le Roi Lion', 1994, 'Animation', 'Roger Allers, Rob Minkoff', 'États-Unis', 89),
(4, 'La Petite Sirène', 1989, 'Animation', 'Ron Clements, John Musker', 'États-Unis', 83),
(5, 'Toy Story', 1995, 'Animation', 'John Lasseter', 'États-Unis', 81);

-- --------------------------------------------------------

--
-- Structure de la table `herosprincipaux`
--

DROP TABLE IF EXISTS `herosprincipaux`;
CREATE TABLE IF NOT EXISTS `herosprincipaux` (
  `ID_heros` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) DEFAULT NULL,
  `ID_film` int DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_heros`),
  KEY `ID_film` (`ID_film`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `herosprincipaux`
--

INSERT INTO `herosprincipaux` (`ID_heros`, `Nom`, `ID_film`, `Type`) VALUES
(1, 'Belle', 1, 'Princesse'),
(2, 'La Bête', 1, 'Héros'),
(3, 'Lumière', 1, 'Personnage secondaire'),
(4, 'Aladdin', 2, 'Héros'),
(5, 'Jasmine', 2, 'Princesse'),
(6, 'Génie', 2, 'Personnage secondaire'),
(7, 'Simba', 3, 'Héros'),
(8, 'Pumba', 3, 'Personnage secondaire'),
(9, 'Timon', 3, 'Personnage secondaire'),
(10, 'Ariel', 4, 'Princesse'),
(11, 'Sebastien', 4, 'Personnage secondaire'),
(12, 'Sebastian', 4, 'Personnage secondaire'),
(13, 'Woody', 5, 'Héros'),
(14, 'Buzz L\'éclair', 5, 'Personnage secondaire'),
(15, 'Jessie', 5, 'Personnage secondaire');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
