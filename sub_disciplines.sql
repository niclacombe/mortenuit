-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 21 Février 2017 à 04:09
-- Version du serveur :  10.1.19-MariaDB
-- Version de PHP :  5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mn_systeme`
--

-- --------------------------------------------------------

--
-- Structure de la table `sub_disciplines`
--

CREATE TABLE `sub_disciplines` (
  `id` int(11) NOT NULL,
  `id_parent` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `sub_disciplines`
--

INSERT INTO `sub_disciplines` (`id`, `id_parent`, `name`, `description`) VALUES
(1, 1, 'Domination 1', 'Description Domination 1'),
(2, 1, 'Domination 2', 'Description Domination 2'),
(3, 1, 'Domination 3', 'Description Domination 3'),
(4, 1, 'Domination 4', 'Description Domination 4'),
(5, 1, 'Domination 5', 'Description Domination 5'),
(6, 2, 'Présence 1', 'Description Présence 1'),
(7, 2, 'Présence 2', 'Description Présence 2'),
(8, 2, 'Présence 3', 'Description Présence 3'),
(9, 2, 'Présence 4', 'Description Présence 4'),
(10, 2, 'Présence 5', 'Description Présence 5'),
(11, 3, 'Potence 1', 'Description Potence 1'),
(12, 3, 'Potence 2', 'Description Potence 2'),
(13, 3, 'Potence 3', 'Description Potence 3'),
(14, 3, 'Potence 4', 'Description Potence 4'),
(15, 3, 'Potence 5', 'Description Potence 5'),
(16, 4, 'Auspex 1', 'Description Auspex 1'),
(17, 4, 'Auspex 2', 'Description Auspex 2'),
(18, 4, 'Auspex 3', 'Description Auspex 3'),
(19, 4, 'Auspex 4', 'Description Auspex 4'),
(20, 4, 'Auspex 5', 'Description Auspex 5'),
(21, 5, 'Célérité 1', 'Description Célérité 1'),
(22, 5, 'Célérité 2', 'Description Célérité 2'),
(23, 5, 'Célérité 3', 'Description Célérité 3'),
(24, 5, 'Célérité 4', 'Description Célérité 4'),
(25, 5, 'Célérité 5', 'Description Célérité 5'),
(26, 6, 'Animalisme 1', 'Description Animalisme 1'),
(27, 6, 'Animalisme 2', 'Description Animalisme 2'),
(28, 6, 'Animalisme 3', 'Description Animalisme 3'),
(29, 6, 'Animalisme 4', 'Description Animalisme 4'),
(30, 6, 'Animalisme 5', 'Description Animalisme 5'),
(31, 7, 'Fortitude 1', 'Description Fortitude 1'),
(32, 7, 'Fortitude 2', 'Description Fortitude 2'),
(33, 7, 'Fortitude 3', 'Description Fortitude 3'),
(34, 7, 'Fortitude 4', 'Description Fortitude 4'),
(35, 7, 'Fortitude 5', 'Description Fortitude 5'),
(36, 8, 'Obfuscate 1', 'Description Obfuscate 1'),
(37, 8, 'Obfuscate 2', 'Description Obfuscate 2'),
(38, 8, 'Obfuscate 3', 'Description Obfuscate 3'),
(39, 8, 'Obfuscate 4', 'Description Obfuscate 4'),
(40, 8, 'Obfuscate 5', 'Description Obfuscate 5'),
(41, 9, 'Protean 1', 'Description Protean 1'),
(42, 9, 'Protean 2', 'Description Protean 2'),
(43, 9, 'Protean 3', 'Description Protean 3'),
(44, 9, 'Protean 4', 'Description Protean 4'),
(45, 9, 'Protean 5', 'Description Protean 5'),
(46, 10, 'Obtenebration 1', 'Description Obtenebration 1'),
(47, 10, 'Obtenebration 2', 'Description Obtenebration 2'),
(48, 10, 'Obtenebration 3', 'Description Obtenebration 3'),
(49, 10, 'Obtenebration 4', 'Description Obtenebration 4'),
(50, 10, 'Obtenebration 5', 'Description Obtenebration 5'),
(51, 11, 'Thaumaturgie 1', 'Description Thaumaturgie 1'),
(52, 11, 'Thaumaturgie 2', 'Description Thaumaturgie 2'),
(53, 11, 'Thaumaturgie 3', 'Description Thaumaturgie 3'),
(54, 11, 'Thaumaturgie 4', 'Description Thaumaturgie 4'),
(55, 11, 'Thaumaturgie 5', 'Description Thaumaturgie 5');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `sub_disciplines`
--
ALTER TABLE `sub_disciplines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `sub_disciplines`
--
ALTER TABLE `sub_disciplines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
