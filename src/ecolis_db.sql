-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 26 mai 2024 à 18:16
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecolis_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `alerte`
--

CREATE TABLE `alerte` (
  `id_alerte` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `ville_depart` varchar(255) DEFAULT NULL,
  `ville_arrivee` varchar(255) DEFAULT NULL,
  `date_depot` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date de depot de l''alerte'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `alerte`
--

INSERT INTO `alerte` (`id_alerte`, `id_utilisateur`, `ville_depart`, `ville_arrivee`, `date_depot`) VALUES
(18, NULL, 'Saint-Jacques Landes-France', 'Rouen-France', '2018-08-25 09:37:49'),
(37, 6, 'Johannesbourg-Afrique du Sud', 'Abidjan-Cote d\'ivoire', '2017-07-07 10:21:16'),
(38, 5, 'Lille-France', 'Douala-Cameroun', '2017-07-07 10:21:16'),
(39, 39, 'Bruxelles-Belgique', 'Montreal-CANADA', '2017-07-07 10:21:16'),
(47, 6, 'Paris-France', 'Rennes-France', '2018-02-06 20:07:56'),
(48, NULL, 'Lille-France', 'Douala-Cameroun', '2018-02-06 20:07:57'),
(49, 6, 'Paris-France', 'Rennes-France', '2018-02-07 04:04:22'),
(50, NULL, 'Lille-France', 'Douala-Cameroun', '2018-02-07 04:04:23'),
(56, 39, 'Gurundi', 'Londou', '2018-02-19 20:20:59'),
(57, 6, 'Croix Lille, France', 'Douala, Littoral2, Cameroun', '2018-02-21 13:35:12'),
(58, 6, 'Yaounde, Centre, Cameroun', 'Le mans,France', '2018-02-21 13:57:53'),
(59, 6, 'Croix Lille, France', 'Loum,Littoral,Cameroun', '2018-02-21 16:20:14'),
(60, 6, 'Yaounde, Centre, Cameroun', 'Le mans,France', '2018-02-21 16:20:30'),
(61, 6, 'Yaounde, Centre, Cameroun', 'Loum,Littoral,Cameroun', '2018-02-21 16:28:58'),
(62, 6, 'Yaounde, Centre, Cameroun', 'Douala, Littoral2, Cameroun', '2018-02-21 16:29:08'),
(63, 6, 'Yaounde, Centre, Cameroun', 'Le mans,France', '2018-02-21 16:49:09'),
(64, 6, 'Croix Lille, France', 'Le mans,France', '2018-02-21 16:50:15'),
(65, 6, 'Croix Lille, France', 'Douala2, Littoral, Cameroun', '2018-02-21 16:51:25'),
(68, 6, 'Croix Lille, France', 'Le mans,France', '2018-02-22 15:58:45'),
(69, 39, 'Yaounde, Centre, Cameroun', 'Douala2, Littoral, Cameroun', '2018-02-22 15:59:22'),
(70, 6, 'Yaounde, Centre, Cameroun', 'Douala2, Littoral, Cameroun', '2018-02-22 16:00:55'),
(71, 6, 'Yaounde, Centre, Cameroun', 'edea,Cameroun', '2018-02-22 16:01:21'),
(72, NULL, 'Johannesbourg, Afrique du Sud', 'Libreville, Gabon via PostMan', '2018-02-22 21:32:16'),
(73, NULL, 'Johannesbourg, Afrique du Sud', 'Libreville, Gabon via PostMan', '2018-02-22 21:44:57'),
(92, NULL, 'Babadjou-Cameroun', 'Montmagny-France', '2018-08-25 09:25:43'),
(99, NULL, 'Chasnès-sur-illet-France', 'Addis-Abeba-Ethiopie', '2019-03-07 00:23:27'),
(100, 50, 'Charleroi-Belgique', 'Montreal-CANADA', '2019-03-12 10:48:26'),
(101, 39, 'Bruxelles-Belgique', 'Montreal-CANADA', '2019-03-10 12:35:00'),
(102, 6, 'Johannesbourg-Afrique du Sud', 'Abidjan-Cote d\'ivoire', '2019-03-11 05:05:58'),
(103, 39, 'Bruxelles-Belgique', 'Montreal-CANADA', '2019-03-11 05:05:58'),
(104, 6, 'Johannesbourg-Afrique du Sud', 'Abidjan-Cote d\'ivoire', '2019-03-12 10:15:58'),
(105, 39, 'Bruxelles-Belgique', 'Montreal-CANADA', '2019-03-12 10:15:58'),
(106, 49, 'Mbouda-Cameroun', 'Turin-Italie', '2019-03-12 10:15:58'),
(107, 6, 'Johannesbourg-Afrique du Sud', 'Abidjan-Cote d\'ivoire', '2019-03-12 10:48:26'),
(108, 39, 'Bruxelles-Belgique', 'Montreal-CANADA', '2019-03-12 10:48:26'),
(109, 49, 'Mbouda-Cameroun', 'Turin-Italie', '2019-03-12 10:48:26'),
(111, 39, 'Montauban,France', 'Orleans,France', '2019-06-30 07:48:55'),
(112, 39, 'Montauban,France', 'Orleans,France', '2019-06-30 07:49:31'),
(113, NULL, 'Montauban,France', 'Orleans,France', '2019-06-30 08:09:09'),
(114, 39, 'Montauban,France', 'Orleans,France', '2019-06-30 09:16:29'),
(115, NULL, 'Montauban,France', 'Orleans,France', '2019-06-30 09:16:29'),
(116, NULL, 'Montauban,France', 'Orleans,France', '2019-06-30 09:16:30');

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
  `id_annonce` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `nature_colis` varchar(255) DEFAULT NULL,
  `poids` decimal(10,0) NOT NULL,
  `unite_poids` int(11) NOT NULL,
  `date_depot` datetime NOT NULL,
  `date_depart` datetime NOT NULL,
  `date_arrivee` datetime NOT NULL,
  `ville_depart` varchar(50) DEFAULT NULL,
  `ville_arrivee` varchar(50) DEFAULT NULL,
  `prime` decimal(10,0) NOT NULL,
  `devise` int(11) NOT NULL,
  `statut` varchar(10) DEFAULT NULL,
  `type_annonce` int(11) NOT NULL DEFAULT 1,
  `detail` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `annonce`
--

INSERT INTO `annonce` (`id_annonce`, `id_utilisateur`, `nature_colis`, `poids`, `unite_poids`, `date_depot`, `date_depart`, `date_arrivee`, `ville_depart`, `ville_arrivee`, `prime`, `devise`, `statut`, `type_annonce`, `detail`) VALUES
(2, 3, '2', 34, 2, '2015-07-01 15:14:41', '2015-07-16 00:00:00', '2015-07-26 00:00:00', 'Paris, France', 'Bamako, Mali', 456, 2, '1', 2, 'nkdnkazndÃ¹knazdknakdnaÃ¹ldknaldkbjÃ©ubÃ©d bdiab zhdoihzado jdizjz'),
(3, 6, '2', 12, 1, '2015-07-29 15:38:54', '2015-05-12 00:00:00', '2015-04-10 00:00:00', 'Paris, France', 'Douala, Littoral, Cameroun', 45, 1, '1', 2, 'Je propose de vous le ramener'),
(4, 5, '2', 35, 2, '2017-06-24 15:38:54', '2017-09-24 15:38:54', '2017-10-10 10:38:54', 'Lyon, France', 'Abidjan,Cote d\'ivoire', 200, 1, '1', 2, 'Un objet d\'une valeur sentimentale a transporter'),
(5, 6, '2', 23, 1, '2017-07-06 07:38:54', '2017-07-31 00:00:00', '2017-08-01 00:00:00', 'Londres, Angleterre', 'Johannesbourg, Afrique du sud', 340, 1, '1', 2, 'Sans commentaire');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `corps` text DEFAULT NULL,
  `date_creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id_comment`, `id_utilisateur`, `corps`, `date_creation`) VALUES
(5, 6, 'Pourrais je avoir plus de détails sur l\'offre svp ?', '2015-07-29 15:23:22'),
(6, 2, 'Transporteur tres ponctuel', '2016-01-12 23:04:45'),
(7, 2, 'Transporteur semi ponctuel', '2016-01-12 23:05:16');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `chemin` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id_image`, `id_utilisateur`, `chemin`, `date_creation`) VALUES
(4, 6, 'f787250fe425379056128efd746af51c2a8021d2.jpeg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_message` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `id_annonce` int(11) NOT NULL,
  `corps` text DEFAULT NULL,
  `date_creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id_message`, `id_utilisateur`, `id_annonce`, `corps`, `date_creation`) VALUES
(2, 6, 2, 'dhfhdhdhfdhd', '2015-07-05 08:33:09');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `civilite` varchar(2) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `derniere_connexion` datetime DEFAULT NULL,
  `annee_de_naissance` int(11) NOT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `date_inscription` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date d''inscription au syst?me'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `civilite`, `name`, `login`, `password`, `email`, `enabled`, `derniere_connexion`, `annee_de_naissance`, `telephone`, `date_inscription`) VALUES
(2, '1', 'Le Guene', 'ppa23', '$2a$10$mXXjgcXzUwHOd3BwbJjMCuXuoubrYaDXPD7ZU3N0WQHcZJfOvOm5a', 'paule@paule.com', 1, '2015-07-04 09:03:23', 1989, '0761705745', '2017-06-28 17:51:46'),
(3, '2', 'Le Maire', 'jje', '$2a$10$G2suwId97MjxYDbH7282reau0TPh9nyxAvoYBexyxNBQZkFS4PiQi', 'jean@jean.com', 1, '2015-07-01 12:54:18', 1994, NULL, '2017-06-28 17:52:01'),
(5, '2', 'Marteau', 'mto', '$2a$10$VuGWs6Kh6Yio2U3kyz6XcO0spIo/dFoU8Q178ewRXxgl/vwTAz5Ya', 'moi@moi.com', 1, '2015-07-04 09:47:30', 1992, '09890987', '2017-06-28 17:51:28'),
(6, '1', 'ZOME', 'czo', '$2a$10$UiyBHx.zxcwEvKcII0rDyOK2AroUZCc1U4do9pjc28zd6uGo3NJv.', 'czome@yahoo.fr', 1, '2015-07-29 15:57:41', 1997, '0624623647', '2017-06-28 17:51:20'),
(39, '1', 'MACRON', 'ema', '$2a$10$7nuXRVVVPpEmrI3xpZEfUeLgLrxjswzhuSyQsGA7wC3vK/R6hcEIy', 'emmanuel.macron@gouv.fr', 1, '2017-06-28 15:57:41', 1977, '0640789087', '2017-06-25 17:46:24'),
(47, '1', 'pourSuppREST', 'ASupp', '$2a$10$vkvtv3ijEiip8v3MeeRzhu7ru0kPjoTG5ppIX8B1YI86pc4p4RwFW', 'peter.spin...@gmail.com', 0, NULL, 2000, '0989876545', '2018-08-26 18:11:18'),
(48, '1', 'Ngatat', 'nga', '$2a$10$SMj7p4xCFE4bpSiA/HogHeTu1HBcSju0XO6B7oUkxwwkQaVkdn2AO', 'ngatateyahoo.fr', 0, NULL, 0, '09090909', '2018-12-14 20:07:48'),
(49, '1', 'Guehep', 'Toto', '$2a$10$jx4lYjQfYHAtBHIaq7il3Op0AD9SUgvJ37DDT/KNStEGLiw/jaPIy', 'gehe@alceane.fr', 0, NULL, 0, 'Bdbdb', '2018-12-16 14:50:46'),
(50, '1', 'TCHOFFO', 'Merlin', '$2a$10$0GoNCYJQpyd2l10bEDK5Muw8moL6An3uUImnY4D5LTfYZIGLMAbka', 'ntchoffo@kereval.fr', 0, NULL, 0, '03456667', '2018-12-16 14:51:20'),
(51, '1', 'Mbougueung', 'amb', '$2a$10$TcU9.TuplJbEKIAliPVPnuEYJF44IVLDCbNbjH/cjkZrT821.3xIq', 'sima@yahoo.fr', 0, NULL, 0, 'Tuu', '2018-12-16 14:52:08'),
(52, '1', 'Tchakounang', 'tcha', '$2a$10$l9kjwblD3PVIt0QU8jzmTea1XdlKneAD1RO1PK6AbSUEMqt1MozHO', 'tdaniel@google.fr', 0, NULL, 0, '123', '2018-12-16 14:52:41'),
(55, '1', 'Boukebeche', 'madani', '$2a$10$wsclReMgGBtCAGCJjdJILuY0B4f3/XLo61L89rFY2VRZEq1t9Un1q', 'madani.boukeche@esic.fr', 1, NULL, 1975, '098987656', '2018-12-16 15:10:15'),
(56, '1', 'ESSOLA', 'esso', '$2a$10$4q3segzzcnDsiHU6sKNEludyJ0KKqRDUqTVE.epYhxmhG2/aMUtea', 'esso@vinci-energies.com', 1, NULL, 1980, '08987678', '2019-03-07 01:22:14');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `alerte`
--
ALTER TABLE `alerte`
  ADD PRIMARY KEY (`id_alerte`),
  ADD KEY `FK_USER_DEPOSE_ALERTE` (`id_utilisateur`);

--
-- Index pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`id_annonce`),
  ADD KEY `FK_USER_DEPOSE_ANNONCE` (`id_utilisateur`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `FK_USER_DEPOSE_COMMENT` (`id_utilisateur`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `FK_USER_DEPOSE_IMAGE` (`id_utilisateur`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `FK_ANNONCE_POSE_MESSAGE` (`id_annonce`),
  ADD KEY `FK_USER_DEPOSE_MESSAGE` (`id_utilisateur`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email`),
  ADD KEY `UNIQ_8D93D64992FC23A8` (`login`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `alerte`
--
ALTER TABLE `alerte`
  MODIFY `id_alerte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT pour la table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `id_annonce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `alerte`
--
ALTER TABLE `alerte`
  ADD CONSTRAINT `FK_USER_DEPOSE_ALERTE` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD CONSTRAINT `FK_USER_DEPOSE_ANNONCE` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_USER_DEPOSE_COMMENT` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_USER_DEPOSE_IMAGE` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_ANNONCE_POSE_MESSAGE` FOREIGN KEY (`id_annonce`) REFERENCES `annonce` (`id_annonce`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_USER_DEPOSE_MESSAGE` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
