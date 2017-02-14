-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 14 Février 2017 à 03:34
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
-- Structure de la table `clans`
--

CREATE TABLE `clans` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `clans`
--

INSERT INTO `clans` (`id`, `name`, `description`) VALUES
(1, 'Brujah', 'Du temps de Carthage, ils étaient de grands rois philosophes. À l''époque contemporaine, ils soutiennent également les anarchs, peut-être même davantage que la Camarilla. De fait, les Anarchs comptent plus de Brujahs dans leurs rangs que de membres de tous les autres clans réunis. Certains Vampires pensent que le clan Brujah sera le premier à quitter la Camarilla. Les Brujahs le pensent aussi... Leur devise : « Pense par toi-même, ou tu es mort. Dans les deux cas, moi, ça me va. »'),
(2, 'Malkavian', 'Les Malkaviens sont un Clan mystérieux que personne ne comprend réellement. Ils ont un savoir que beaucoup aimeraient posséder mais ils sont trop instables et inconstants pour être des individus de confiance. Ils font partie des Clans fondateurs de la Camarilla. Leur devise : « Tu peux rire si tu veux. Ça ne fait rien. Crois que tu es plus malin que le pauvre, le misérable Dément. Ça ne fait rien. Mais réfléchis à ça : tu es une chose morte, comme moi. Tu es mort et tu es rené... en ça. Ce qui nous rend différent? Simple : je me souviens de ce que j''ai vu lorsque j''étais vraiment et totalement mort. Tu serais fou, toi aussi. »'),
(3, 'Nosferatu', 'Les Nosferatus sont des créatures à l''apparence monstrueuse, mais paradoxalement souvent plus humanistes, que les autres vampires. Ils vivent cachés, souvent au plus profond des égouts et des catacombes, et usent des secrets des autres vampires dans leurs propres intérêts. Ils sont un Clan fondateur de la Camarilla. Leur devise : « Viens ici, petit garçon. Tu veux un bisou? [reniflement sonore] Qu''est-ce qui se passe? Le gros vilain bandit te fait peur? Tu n''aimes pas trop être une victime, hein? Ben, faudra t''y habituer, parce que tu n''en as pas encore vu la moitié! »'),
(4, 'Toreador', 'Un des Clans fondateurs de la Camarilla. C''est un Clan constitué principalement de personnes proches du milieu artistique. Ils sont très proches des humains, dont ils aiment beaucoup la compagnie mais ils sont aussi des politiciens très doués.'),
(5, 'Tremere', 'Les usurpateurs sont les sorciers des vampires. Ils ont une structure très organisée et une puissante magie qui fait d''eux un des Clans fondateurs de la Camarilla. Ils sont devenus vampires de leur propre initiative par l''usurpation de quelques vampires Tzimisces, et de la quasi-totalité des Salubriens. Leur devise: « Nous sommes plus que des vampires. Nous sommes l''échelon suivant de l''évolution caïnite. Nous dirigerons les autres s''ils nous le permettent, ou nous resterons seuls s''il le faut. Mais nous survivrons. »»'),
(6, 'Ventrue', 'Ses membres se voient comme formant le Clan le plus prestigieux de la Camarilla. Les princes nobles de la Camarilla dont ils sont les principaux fondateurs et dirigeants. Ils se considèrent comme les garants de la société vampirique qu''ils sont les seuls à pouvoir guider. Ils sont bien souvent très influents, et capables de détruire la vie d''un vampire en quelques coups de téléphone. Leur devise : « Guider les Damnés est mon fardeau, non le tien. Tu ferais toutefois bien de te demander si ta non-vie se fait au bénéfice des Enfants de Caïn, ou à leur détriment. J''ai déjà forgé mon opinion. »'),
(7, 'Gangrel', 'Ce Clan a pactisé avec les ennemis jurés des vampires : les loups-garou. Le Clan le plus proche de la nature, un des clans fondateurs de la Camarilla. Ils vivent principalement hors des villes, dans lesquelles ils sont souvent une menace pour la Mascarade, du fait des caractéristiques physiques animales, qu''ils acquièrent avec le temps. Très récemment, ils ont quitté la Camarilla, devenant des indépendants. Leur devise : « Tu m''as donné du sport, mortel. Mais maintenant, la chasse est terminée. »'),
(8, 'Lasombra', 'Les Lasombras sont un Clan de manipulateurs nés. Leurs ennemis de toujours sont les Ventrues avec lesquels ils se disputent la suprématie sur les vampires. Au contraire des Ventrues, les Lasombras préfèrent les manipulations dans l''ombre au pouvoir réel direct. Ils sont un des deux clans fondateurs du Sabbat dont ils sont les principaux leaders politiques.»');

-- --------------------------------------------------------

--
-- Structure de la table `disciplines`
--

CREATE TABLE `disciplines` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `clans`
--
ALTER TABLE `clans`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `disciplines`
--
ALTER TABLE `disciplines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `clans`
--
ALTER TABLE `clans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `disciplines`
--
ALTER TABLE `disciplines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
