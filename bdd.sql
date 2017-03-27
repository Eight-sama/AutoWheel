-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Dim 26 Mars 2017 à 19:39
-- Version du serveur :  5.6.35
-- Version de PHP :  7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `site_ae_baptiste`
--
DROP DATABASE IF EXISTS `site_ae_baptiste`;
CREATE DATABASE IF NOT EXISTS `site_ae_baptiste` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `site_ae_baptiste`;

-- --------------------------------------------------------

--
-- Structure de la table `emojis`
--

CREATE TABLE `emojis` (
  `id_emoji` int(11) NOT NULL,
  `nom_emoji` varchar(255) NOT NULL,
  `raccourci_emoji` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `emojis`
--

INSERT INTO `emojis` (`id_emoji`, `nom_emoji`, `raccourci_emoji`) VALUES
(1, 'Yo', ':yo:'),
(2, 'Bravo', ':bravo:'),
(3, 'Like', ':like:'),
(4, 'Courgette', ':courgette:'),
(5, 'Bisous', ':bisous:'),
(6, 'Caca, Merde', ':caca:'),
(7, 'Coeur', '<3'),
(8, 'Etonner, Choquer', 'O_o'),
(9, 'Clin d\'oeil', ';)'),
(10, 'Tire la langue', ':p'),
(11, 'Fuck, Merde', ':fuck:'),
(12, 'Dislike, J\'aime Pas', ':dislike:'),
(13, 'Je t\'aime, Love', ':love:'),
(14, 'Mdr, Mdrr, Mdrrr', 'x)'),
(15, 'Mouai, Mince', ':/'),
(16, 'Oh', ':o'),
(17, 'Sourire bouche ouverte', ':D'),
(18, 'Nan, triste', ':('),
(19, 'Sourir, Content', ':)'),
(20, 'Pense, Réfléchi', ':pense:'),
(21, 'Chut, Muet', ':chut:'),
(22, 'Pleurer', ':pleure:'),
(23, 'Argent, Money', ':argent:'),
(24, 'Larme, triste', ':\'('),
(25, 'Bave', ':bave:');

-- --------------------------------------------------------

--
-- Structure de la table `exam_blanc`
--

CREATE TABLE `exam_blanc` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `date_exam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `installer` varchar(10) NOT NULL,
  `verifier` varchar(10) NOT NULL,
  `utiliser` varchar(10) NOT NULL,
  `prendre` varchar(10) NOT NULL,
  `adapter` varchar(10) NOT NULL,
  `appliquer` varchar(10) NOT NULL,
  `communiquer` varchar(10) NOT NULL,
  `partager` varchar(10) NOT NULL,
  `maintenir` varchar(10) NOT NULL,
  `bonus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `exam_blanc`
--

INSERT INTO `exam_blanc` (`id`, `id_users`, `date_exam`, `installer`, `verifier`, `utiliser`, `prendre`, `adapter`, `appliquer`, `communiquer`, `partager`, `maintenir`, `bonus`) VALUES
(1, 1, '2017-03-18 16:25:22', '2', '3', '2', '3', '0', '2', '3', '2', '1', '5'),
(2, 1, '2016-12-03 23:00:00', '1', '2', '1', '1', '1', '1', '3', 'E', '3', '2'),
(3, 1, '2017-03-20 16:25:22', '2', '1', '2', '3', 'E', '3', '2', '1', '0', '4');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `id_f` int(11) NOT NULL,
  `nom_f` varchar(255) NOT NULL,
  `abre_f` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `prix_insc` varchar(255) NOT NULL,
  `heures` int(11) NOT NULL,
  `desc1` varchar(255) NOT NULL,
  `desc2` varchar(255) NOT NULL,
  `desc3` varchar(255) NOT NULL,
  `desc4` varchar(255) NOT NULL,
  `important` int(11) NOT NULL,
  `f_mere` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `formations`
--

INSERT INTO `formations` (`id_f`, `nom_f`, `abre_f`, `prix`, `prix_insc`, `heures`, `desc1`, `desc2`, `desc3`, `desc4`, `important`, `f_mere`) VALUES
(1, 'Code de la Route : ETG', 'Code de la Route - ETG', '450', '10', -1, 'Code en Ligne 24/7', 'Livre d\'apprentisage + exercices', 'Cours de code en salle / 1ans', 'Accompagnement à l\'Examen ETG', 0, 0),
(2, 'Permis B', 'Offres Permis B ', '1445', '30', -1, 'Pack Complet', 'Pack Conduite', 'Conduite accompagnée', 'Conduite supervisée', 1, 0),
(3, 'Permis A', 'Offres Permis A', '1015', '30', -1, 'Pack Complet', 'Pack Conduite', 'BSR | AM', 'Passerelle Permis A2->A | A1->A', 0, 0),
(4, 'Permis B', 'Pack 25h (Théorie + Pratique B)', '1445', '30', 25, 'Code en Ligne 24/7', '25h de conduite', 'Date d\'Examen <u>Rapide</u>', ' Accompagnement aux Examens', 1, 2),
(5, 'Permis B', 'Pack 35h (Théorie + Pratique B)', '1745', '30', 35, 'Code en Ligne 24/7', '35h de conduite', 'Date d\'Examen <u>Rapide</u>', ' Accompagnement aux Examens', 1, 2),
(6, 'Permis B', 'Pack 25h (Pratique B)', '850', '30', 25, '35h de conduite', 'Test sur Simulateurs', 'Date d\'Examen <u>Rapide</u>', 'Accompagnement Examen Pratique', 1, 2),
(7, 'Permis B', 'Pack 35h (Pratique B)', '1225', '30', 35, '35h de conduite', 'Test sur Simulateurs', 'Date d\'Examen <u>Rapide</u>', 'Accompagnement Examen Pratique', 1, 2),
(8, 'Permis A', 'Pack 25h (Théorie + Pratique A)', '1445', '30', 25, 'Code en Ligne 24/7', '25h de conduite collectifs', 'Date d\'Examen <u>Rapide</u>', ' Accompagnement aux Examens', 1, 3),
(9, 'Permis A', 'Pack 35h (Théorie + Pratique A)', '1745', '30', 35, 'Code en Ligne 24/7', '35h de conduite collectifs', 'Date d\'Examen <u>Rapide</u>', ' Accompagnement aux Examens', 1, 3),
(10, 'Permis A', 'Pack 25h (Pratique A)', '850', '30', 25, '35h de conduite collectifs', 'Test sur Simulateurs', 'Date d\'Examen <u>Rapide</u>', 'Accompagnement Examen Pratique', 1, 3),
(11, 'Permis A', 'Pack 35h (Pratique A)', '1225', '30', 35, '35h de conduite collectifs', 'Test sur Simulateurs', 'Date d\'Examen <u>Rapide</u>', 'Accompagnement Examen Pratique', 1, 3),
(12, 'Code de la Route : ETG', 'Pack Web Uniquement', '70', '0', 0, 'Code en Ligne 24/7', '1 ans d\'accés au code en ligne', 'Date d\'Examen <u>Rapide</u>', ' Accompagnement a l\'Examen', 1, 1),
(13, 'Code de la Route : ETG', 'Pack Web + Salle de Code', '400', '30', 0, 'Code en Ligne 24/7', '23 salles de code en Idf', 'Date d\'Examen <u>Rapide</u>', ' Accompagnement a l\'Examen', 1, 1),
(14, 'Code de la Route : ETG', 'Code accéléré', '600', '30', 0, 'Code en Ligne 24/7', 'Passage du code en 1 semaine', 'Date d\'Examen <u>ULTRA Rapide</u>', ' Accompagnement a l\'Examen', 1, 1),
(15, 'Permis B', 'Conduite Supervisée Pack 25h (Théorie + Pratique CS)', '1245', '30', 25, 'Code en Ligne 24/7', '25h de conduite', 'Date d\'Examen <u>Rapide</u>', ' Accompagnement aux Examens', 1, 2),
(16, 'Permis B', 'Conduite Supervisée Pack 35h (Théorie + Pratique CS)', '1545', '30', 35, 'Code en Ligne 24/7', '35h de conduite', 'Date d\'Examen <u>Rapide</u>', ' Accompagnement aux Examens', 1, 2),
(17, 'Permis B', 'Conduite Accompagnée Pack 25h (Théorie + Pratique AAC)', '1245', '30', 25, 'Code en Ligne 24/7', '25h de conduite', 'Date d\'Examen <u>Rapide</u>', ' Accompagnement aux Examens', 1, 2),
(18, 'Permis B', 'Conduite Accompagnée Pack 35h (Théorie + Pratique AAC)', '1545', '30', 35, 'Code en Ligne 24/7', '35h de conduite', 'Date d\'Examen <u>Rapide</u>', ' Accompagnement aux Examens', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `lier_formations`
--

CREATE TABLE `lier_formations` (
  `id` int(11) NOT NULL,
  `id_formations` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `date_achat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `lier_formations`
--

INSERT INTO `lier_formations` (`id`, `id_formations`, `id_users`, `date_achat`) VALUES
(1, 7, 1, '2017-03-18 14:32:09'),
(2, 9, 1, '2017-03-19 13:25:10'),
(4, 18, 1, '2017-03-23 23:02:11'),
(5, 14, 1, '2017-03-23 23:03:09');

-- --------------------------------------------------------

--
-- Structure de la table `lier_moniteurs`
--

CREATE TABLE `lier_moniteurs` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_type_moniteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `lier_moniteurs`
--

INSERT INTO `lier_moniteurs` (`id`, `id_users`, `id_type_moniteur`) VALUES
(1, 3, 1),
(2, 2, 2),
(3, 4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `seances`
--

CREATE TABLE `seances` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_moniteurs` int(11) NOT NULL,
  `date_deb` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_fin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `duree` int(11) NOT NULL,
  `valider` int(11) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `seances`
--

INSERT INTO `seances` (`id`, `id_users`, `id_moniteurs`, `date_deb`, `date_fin`, `duree`, `valider`, `color`) VALUES
(1, 1, 3, '2017-03-18 05:37:20', '2017-03-18 10:00:00', 3, 0, 'terques'),
(2, 1, 3, '2017-01-27 01:36:25', '2017-03-22 10:00:00', 3, 0, 'red'),
(3, 1, 2, '2017-03-12 02:05:05', '2017-03-20 10:00:00', 3, 0, 'purple'),
(4, 1, 3, '2017-02-16 07:25:12', '2017-03-01 10:00:00', 3, 0, 'green'),
(5, 1, 2, '2017-03-18 08:23:38', '2017-03-18 10:00:00', 3, 0, 'yellow'),
(6, 1, 3, '2017-02-23 12:34:14', '2017-03-22 10:00:00', 3, 0, 'terques'),
(7, 1, 3, '2016-12-21 17:12:16', '2017-03-20 10:00:00', 3, 0, 'blue'),
(8, 1, 2, '2017-01-12 20:32:08', '2017-03-01 10:00:00', 3, 0, 'green');

-- --------------------------------------------------------

--
-- Structure de la table `tchat_conv`
--

CREATE TABLE `tchat_conv` (
  `id_conv` int(11) NOT NULL,
  `nom_conv` varchar(255) NOT NULL,
  `id_users_creator` int(11) NOT NULL,
  `id_users_conv` text NOT NULL,
  `date_last_msg` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `tchat_conv`
--

INSERT INTO `tchat_conv` (`id_conv`, `nom_conv`, `id_users_creator`, `id_users_conv`, `date_last_msg`) VALUES
(1, 'Théo Huchard--/--Baptiste Vasseur', 4, 'user-4,user-1,', '2017-03-22 15:40:57'),
(2, 'Sérou - Moniteur B--/--Baptiste Vasseur', 1, 'user-1,user-3,', '2017-03-21 09:43:19'),
(3, 'Maha - Moniteur A--/--Baptiste Vasseur', 1, 'user-1,user-2,', '2017-03-21 08:44:39'),
(5, 'Théo Huchard--/--Alex Buy', 5, 'user-5,user-4,', '2017-03-19 16:57:39'),
(6, 'Baptiste Vasseur--/--Alex Buy', 1, 'user-1,user-5,', '2017-03-18 09:43:19');

-- --------------------------------------------------------

--
-- Structure de la table `tchat_msg`
--

CREATE TABLE `tchat_msg` (
  `id_msg` int(11) NOT NULL,
  `id_conv` int(11) NOT NULL,
  `date_msg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_author` int(11) NOT NULL,
  `contenu` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tchat_msg`
--

INSERT INTO `tchat_msg` (`id_msg`, `id_conv`, `date_msg`, `id_author`, `contenu`) VALUES
(1, 1, '2017-03-18 21:16:05', 4, 'Bienvenue chez AutoWheel Baptiste ! :)'),
(2, 1, '2017-03-18 21:16:18', 1, 'Merci Je vais enfin pouvoir passe mon permis ^^ :D'),
(3, 1, '2017-03-18 21:18:16', 4, 'Et oui, le permis, c\'est un grand pas dans la vie ^^, interresé par la conduite accompagnée ?'),
(4, 1, '2017-03-18 21:18:27', 1, 'Ouaip, je vais venir a l\'agence cette aprés midi, faire ma premiére séance de code ^^'),
(5, 1, '2017-03-19 09:16:05', 4, 'Ah c\'est cool ça ! Tu va voir au début ça va être compliqué mais tu va t\'améliorer.'),
(6, 1, '2017-03-19 09:16:05', 1, 'Je sais quand j\'ai fait une séance sur le site, j\'ai fait 23/40 :\'D'),
(15, 2, '2017-03-19 09:16:05', 3, 'Bonjour, je suis votre Moniteur Permis B'),
(16, 3, '2017-03-18 09:16:05', 2, 'Bonjour, je suis votre Monitrice Permis A'),
(17, 1, '2017-03-19 12:13:43', 1, 'Ah ! Je vient de faire 35/40 x)'),
(22, 1, '2017-03-19 14:19:54', 4, ':like:'),
(23, 1, '2017-03-19 14:38:09', 1, 'Je pense :pense: que dans 2-3 semaines je serai incollable'),
(25, 3, '2017-03-19 14:47:38', 1, 'Bonjour :)'),
(26, 2, '2017-03-19 14:52:12', 1, 'Salut :yo:'),
(29, 5, '2017-03-19 16:57:13', 5, 'Salut toi :like:'),
(30, 5, '2017-03-19 16:57:39', 4, 'Wsh :caca:'),
(31, 6, '2017-03-19 17:12:27', 1, 'Salut toi :D'),
(32, 6, '2017-03-19 17:12:36', 1, 'ça va ? :bave:'),
(34, 6, '2017-03-19 17:13:24', 5, 'Ouai tranquillou et toi x) ?'),
(35, 6, '2017-03-19 17:45:26', 1, 'T\'es la ? :pense:'),
(38, 6, '2017-03-19 17:49:18', 5, 'Ouai :fuck:'),
(50, 1, '2017-03-20 08:07:02', 1, ':fuck:'),
(51, 1, '2017-03-20 08:07:09', 1, 'x)'),
(52, 1, '2017-03-20 08:07:13', 1, ':pense:'),
(53, 1, '2017-03-20 08:07:16', 1, ':love:'),
(64, 2, '2017-03-22 09:40:49', 1, 'pa'),
(65, 6, '2017-03-22 09:43:19', 1, ':love:'),
(72, 1, '2017-03-22 15:40:57', 4, 'ae');

-- --------------------------------------------------------

--
-- Structure de la table `type_moniteurs`
--

CREATE TABLE `type_moniteurs` (
  `id` int(11) NOT NULL,
  `type_nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `type_moniteurs`
--

INSERT INTO `type_moniteurs` (`id`, `type_nom`) VALUES
(1, 'Permis B'),
(2, 'Permis A');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_u` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `fixe` varchar(255) NOT NULL,
  `portable` varchar(255) NOT NULL,
  `adresse_principal_1` varchar(255) NOT NULL,
  `adresse_principal_2` varchar(255) NOT NULL,
  `adresse_secondaire_1` varchar(255) NOT NULL,
  `adresse_secondaire_2` varchar(255) NOT NULL,
  `depenses` varchar(255) NOT NULL DEFAULT '0',
  `lvl` int(11) NOT NULL DEFAULT '1',
  `date_insc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nb_seances` int(11) NOT NULL DEFAULT '0',
  `note_moyenne` int(11) NOT NULL,
  `seance_sup_moy` int(11) NOT NULL,
  `poste` varchar(255) NOT NULL DEFAULT 'Elève'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id_u`, `email`, `mdp`, `nom`, `prenom`, `fixe`, `portable`, `adresse_principal_1`, `adresse_principal_2`, `adresse_secondaire_1`, `adresse_secondaire_2`, `depenses`, `lvl`, `date_insc`, `nb_seances`, `note_moyenne`, `seance_sup_moy`, `poste`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Vasseur', 'Baptiste', '01.64.60.61.96', '07.86.87.52.46', '32 B rue de sigy', '77520 Donnemarie-Dontilly, France', '128 Rue de l\'orme', '75015 Paris, France', '1835', 1, '2017-03-18 15:29:36', 65, 38, 13, 'Admin'),
(2, 'moniteur_a', 'd8c1338b7ce9b36f4ed6714036c1bfb3343f6a2c', '- Moniteur A', 'Maha', 'moniteur_fixe_a', 'moniteur_portable_a', 'adres1.1_a', 'adres1.2_a', 'adres2.1_a', 'adres2.2_a', '0', 1, '2017-03-18 17:09:47', 0, 0, 0, 'Moniteur'),
(3, 'moniteur_b', 'd8c1338b7ce9b36f4ed6714036c1bfb3343f6a2c', '- Moniteur B', 'Sérou', 'moniteur_fixe_b', 'moniteur_portable_b', 'adres1.1_b', 'adres1.2_b', 'adres2.1_b', 'adres2.2_b', '0', 1, '2017-03-18 17:09:47', 0, 0, 0, 'Moniteur'),
(4, 'test', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Huchard', 'Théo', 'XX.XX.XX.XX.XX', 'XX.XX.XX.XX.XX', 'XX rue de l\'XXX', '75000 Paris, France', 'XXX Avenue Charle Xavier', '75000 Paris, France', '3210', 1, '2017-03-18 15:29:36', 65, 38, 13, 'Elève'),
(5, 'alex', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Buy', 'Alex', 'XX.XX.XX.XX.XX', 'XX.XX.XX.XX.XX', 'XX rue de l\'XXX', '75000 Paris, France', 'XXX Avenue Charle Xavier', '75000 Paris, France', '3210', 1, '2017-03-18 15:29:36', 65, 38, 13, 'Elève'),
(14, 'moni.chuon@gmail.com', '940c0f26fd5a30775bb1cbd1f6840398d39bb813', 'Chuon', 'Moni', '+336021395', '+33712345678', '123 rue du chinatown', '75013 Paris, France', '', '', '0', 1, '2017-03-23 10:48:15', 0, 0, 0, 'Elève');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `emojis`
--
ALTER TABLE `emojis`
  ADD PRIMARY KEY (`id_emoji`);

--
-- Index pour la table `exam_blanc`
--
ALTER TABLE `exam_blanc`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`id_f`);

--
-- Index pour la table `lier_formations`
--
ALTER TABLE `lier_formations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lier_moniteurs`
--
ALTER TABLE `lier_moniteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `seances`
--
ALTER TABLE `seances`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tchat_conv`
--
ALTER TABLE `tchat_conv`
  ADD PRIMARY KEY (`id_conv`);

--
-- Index pour la table `tchat_msg`
--
ALTER TABLE `tchat_msg`
  ADD PRIMARY KEY (`id_msg`);

--
-- Index pour la table `type_moniteurs`
--
ALTER TABLE `type_moniteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `emojis`
--
ALTER TABLE `emojis`
  MODIFY `id_emoji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `exam_blanc`
--
ALTER TABLE `exam_blanc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `lier_formations`
--
ALTER TABLE `lier_formations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `lier_moniteurs`
--
ALTER TABLE `lier_moniteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `seances`
--
ALTER TABLE `seances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `tchat_conv`
--
ALTER TABLE `tchat_conv`
  MODIFY `id_conv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `tchat_msg`
--
ALTER TABLE `tchat_msg`
  MODIFY `id_msg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT pour la table `type_moniteurs`
--
ALTER TABLE `type_moniteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_u` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;