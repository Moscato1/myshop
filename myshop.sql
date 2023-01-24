-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 24 jan. 2023 à 12:23
-- Version du serveur : 5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `myshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230124090131', '2023-01-24 09:01:49', 41),
('DoctrineMigrations\\Version20230124095707', '2023-01-24 09:58:13', 44);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `city` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` int(11) NOT NULL,
  `reservation_text` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `title`, `description`, `price`, `city`, `postal_code`, `reservation_text`, `created_at`) VALUES
(2, 'Lampe nanoleaf', 'efezfze', 35, 'Lille', 5900, NULL, '2023-01-24 10:02:01'),
(3, 'Lampe Hue phillips', 'Ceci est une lampe connecté', 40, 'Paris', 7500, NULL, '2023-01-24 10:13:08'),
(4, 'test', 'test', 1, 'test', 1, NULL, '2023-01-24 10:14:38'),
(5, 'Lampe nanoleaf', 's', 35, 'Lille', 1, NULL, '2023-01-24 10:14:49'),
(6, '2', '1', 35, 'Lille', 1, NULL, '2023-01-24 10:17:13'),
(7, '3', '1', 35, '1', 1, NULL, '2023-01-24 10:17:23'),
(8, '4', '1', 35, '1', 1, NULL, '2023-01-24 10:17:32'),
(9, '4', '1', 1, '1', 1, NULL, '2023-01-24 10:17:45'),
(10, '5', '1', 1, '1', 1, NULL, '2023-01-24 10:17:58'),
(11, '6', '1', 1, '1', 1, NULL, '2023-01-24 10:18:06'),
(12, '7', '1', 1, '1', 1, NULL, '2023-01-24 10:18:14'),
(13, '8', '1', 1, '1', 1, NULL, '2023-01-24 10:18:23'),
(14, '9', '1', 1, '1', 1, NULL, '2023-01-24 10:18:34'),
(15, '10', '1', 1, '1', 1, NULL, '2023-01-24 10:18:43'),
(16, '12', '1', 1, '1', 1, NULL, '2023-01-24 10:18:51'),
(17, '13', '1', 1, '1', 1, NULL, '2023-01-24 10:18:58'),
(18, '11', '1', 1, '1', 1, 'Test numero 999', '2023-01-24 10:19:07'),
(19, '14', '1', 1, '1', 1, NULL, '2023-01-24 10:19:16'),
(20, '15', '1', 1, '1', 1, NULL, '2023-01-24 10:19:24'),
(21, '16', '1', 1, '1', 1, NULL, '2023-01-24 10:19:47'),
(22, '17', '1', 1, '1', 1, 'test', '2023-01-24 10:20:07'),
(23, 'test', '1', 1, '1', 1, NULL, '2023-01-24 10:20:52'),
(24, 'spotlight', 'zzzz', 40, 'Lille', 5900, NULL, '2023-01-24 11:43:32'),
(25, 'Appareil Photo A7 IV Sony', 'Appareil photo hybride', 2500, 'Lille', 5900, NULL, '2023-01-24 12:02:39'),
(26, 'Drone DJI', 'Drone dji stabilisé', 1000, 'Lille', 59000, 'Je veux m\'en servir', '2023-01-24 12:12:49'),
(27, 'Drone DJI', 'Drone dji stabilisé', 1000, 'Lille', 59000, NULL, '2023-01-24 12:13:22'),
(28, 'Drone DJI', 'Drone dji stabilisé', 1000, 'Lille', 59000, NULL, '2023-01-24 12:13:32'),
(29, 'VideoProjecteur', 'Videoprojecteur', 200, 'Lille', 59000, 'Je veux le reserver merci!!', '2023-01-24 12:20:48');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
