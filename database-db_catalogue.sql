-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Ven 01 Juillet 2016 à 18:38
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `db_catalogue`
--
CREATE DATABASE `db_catalogue` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_catalogue`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `ID_CAT` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_CAT` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_CAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`ID_CAT`, `NOM_CAT`) VALUES
(1, 'Ordinateurs'),
(2, 'Imprimantes'),
(3, 'Téléphones');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `ID_PROD` int(11) NOT NULL AUTO_INCREMENT,
  `DESIGNATION` varchar(30) NOT NULL,
  `PRIX` double NOT NULL,
  `QUANTITE` int(11) NOT NULL,
  `PROMO` tinyint(4) NOT NULL,
  `ID_CAT` int(11) NOT NULL,
  PRIMARY KEY (`ID_PROD`),
  KEY `ID_CAT` (`ID_CAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`ID_PROD`, `DESIGNATION`, `PRIX`, `QUANTITE`, `PROMO`, `ID_CAT`) VALUES
(1, 'Ord HP 300', 8000, 5, 1, 1),
(2, 'Imp Epson 450', 3400, 3, 1, 2),
(3, 'Imp DELL 180', 2000, 10, 0, 2);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`ID_CAT`) REFERENCES `categories` (`ID_CAT`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
