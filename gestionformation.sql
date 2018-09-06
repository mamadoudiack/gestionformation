-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 01 Juillet 2018 à 11:52
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestionformation`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` bigint(20) NOT NULL,
  `nom_etudiant` varchar(255) NOT NULL,
  `prenom_etudiant` varchar(255) NOT NULL,
  `email_etudiant` varchar(255) NOT NULL,
  `numero_carte` varchar(255) NOT NULL,
  `tel_etudiant` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom_etudiant`, `prenom_etudiant`, `email_etudiant`, `numero_carte`, `tel_etudiant`) VALUES
(1, 'diop', 'mamadou', 'diop@gmail.com', 'promo4001', '77 123 45 67'),
(2, 'diallo', 'ousmane', 'diallo@gmail.com', 'promo4002', '77 134 45 87'),
(3, 'diack', 'mamadou', 'diack@gmail.com', 'promo4003', '77 757 98 67'),
(4, 'diouf', 'mamadou', 'do@gmail.com', 'promo4004', '77 983 56 07');

-- --------------------------------------------------------

--
-- Structure de la table `formateur`
--

CREATE TABLE `formateur` (
  `id` bigint(20) NOT NULL,
  `nom_formateur` varchar(255) NOT NULL,
  `prenom_formateur` varchar(255) NOT NULL,
  `matricule_formateur` varchar(255) NOT NULL,
  `anneeExp_formateur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `formateur`
--

INSERT INTO `formateur` (`id`, `nom_formateur`, `prenom_formateur`, `matricule_formateur`, `anneeExp_formateur`) VALUES
(1, 'sene', 'ousseynou', 'objis001', 10),
(2, 'sall', 'mamadou', 'objis002', 6),
(3, 'ba', 'demba', 'objis003', 2),
(4, 'ndiaye', 'lamine', 'objis004', 5);

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

CREATE TABLE `promotion` (
  `id` bigint(20) NOT NULL,
  `numero_promo` int(11) NOT NULL,
  `date_lancement` date NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `promotion`
--

INSERT INTO `promotion` (`id`, `numero_promo`, `date_lancement`, `description`) VALUES
(1, 1, '2016-03-15', 'première promo 1000Codeurs'),
(2, 2, '2017-04-15', 'deuxième promo 1000Codeurs'),
(3, 3, '2017-08-15', 'troisième promo 1000Codeurs'),
(4, 4, '2018-03-15', 'quatrième promo 1000Codeurs');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formateur`
--
ALTER TABLE `formateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `formateur`
--
ALTER TABLE `formateur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
