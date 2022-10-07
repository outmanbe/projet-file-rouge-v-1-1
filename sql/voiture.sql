-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 07 oct. 2022 à 10:11
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `Id_Voiture` int(11) NOT NULL,
  `Id_Photos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `description`
--

CREATE TABLE `description` (
  `Id_Description` int(11) NOT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `description`
--

INSERT INTO `description` (`Id_Description`, `Description`) VALUES
(1, 'Mercedes'),
(2, 'Volkswagen'),
(3, 'Toyota'),
(4, 'Ford'),
(5, 'BMW');

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

CREATE TABLE `localisation` (
  `Id_Localisation` int(11) NOT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `Departement` varchar(50) DEFAULT NULL,
  `Ville` varchar(50) DEFAULT NULL,
  `Code_Postal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `localisation`
--

INSERT INTO `localisation` (`Id_Localisation`, `Region`, `Departement`, `Ville`, `Code_Postal`) VALUES
(1, 'Bretagne', 'Ille et Vilaine', 'Rennes', 35000),
(2, 'Normandie', 'Calvados', 'Caen', 14000),
(3, 'Occitanie', 'Midi-Pyrénées', 'Toulouse', 31000),
(4, 'Hauts de France', 'Nord-Pas-de-Calais', 'Lille', 59000),
(5, 'Île de France', 'Île de France', 'Paris', 75000);

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE `photos` (
  `Id_Photos` int(11) NOT NULL,
  `Nom_photo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prix`
--

CREATE TABLE `prix` (
  `Id_Prix_` int(11) NOT NULL,
  `Montant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `prix`
--

INSERT INTO `prix` (`Id_Prix_`, `Montant`) VALUES
(1, 10000),
(2, 20000),
(3, 30000),
(4, 40000),
(5, 50000);

-- --------------------------------------------------------

--
-- Structure de la table `vendeur`
--

CREATE TABLE `vendeur` (
  `Id_Vendeur` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Anciennete` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vendeur`
--

INSERT INTO `vendeur` (`Id_Vendeur`, `Nom`, `Prenom`, `Anciennete`) VALUES
(1, 'Ziyech', 'Hakim', '2015-01-01'),
(2, 'Benzema', 'Karim', '2007-01-01'),
(3, 'Trezeguet', 'David', '1997-01-01'),
(4, 'Henry', 'Thierry', '1997-01-01'),
(5, 'Mbappé', 'Kylian', '2017-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE `voiture` (
  `Id_Voiture` int(11) NOT NULL,
  `Marques` varchar(50) DEFAULT NULL,
  `modele` varchar(50) DEFAULT NULL,
  `Annee_modele` int(11) DEFAULT NULL,
  `Mise_en_circulation` date DEFAULT NULL,
  `Type_de_véhicule` varchar(50) DEFAULT NULL,
  `Kilometrage` varchar(50) DEFAULT NULL,
  `Carburant` varchar(50) DEFAULT NULL,
  `couleur` varchar(50) DEFAULT NULL,
  `nombre_de_porte` int(11) DEFAULT NULL,
  `nombre_de_place` int(11) DEFAULT NULL,
  `puissance_fiscale` varchar(50) DEFAULT NULL,
  `puissance_din` varchar(50) DEFAULT NULL,
  `permis` varchar(50) DEFAULT NULL,
  `critaire` int(11) DEFAULT NULL,
  `boite_de_vitesse` varchar(50) DEFAULT NULL,
  `Id_Prix_` int(11) DEFAULT NULL,
  `Id_Vendeur` int(11) DEFAULT NULL,
  `Id_Description` int(11) NOT NULL,
  `Id_Localisation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`Id_Voiture`, `Marques`, `modele`, `Annee_modele`, `Mise_en_circulation`, `Type_de_véhicule`, `Kilometrage`, `Carburant`, `couleur`, `nombre_de_porte`, `nombre_de_place`, `puissance_fiscale`, `puissance_din`, `permis`, `critaire`, `boite_de_vitesse`, `Id_Prix_`, `Id_Vendeur`, `Id_Description`, `Id_Localisation`) VALUES
(1, 'PEUGEOT', '205 GTI', 1993, '1997-01-01', 'CItadine', '60280', 'Essence', 'Noir', 5, 5, '9 CV', '120 ch', 'Permis B', 1, 'mécanique', 2, 1, 1, 5),
(2, 'MERCEDES', 'CLA (2) 180 D INSPIRATION EDITION', 2017, '2007-05-24', 'Berline', '20000', 'Diesel', 'Bleu', 5, 5, '5CV', '109 ch', 'Permis B', 2, 'mécanique', 4, 2, 2, 4),
(3, 'BMW', 'X3 (F25) XDRIVE20D 184 LUXE BVA8', 2011, '2011-04-19', 'SUV', '40000', 'Diesel', 'Gris', 5, 5, '10CV', '184 ch', 'Permis B', 3, 'automatique', 5, 3, 3, 3),
(4, 'AUDI', 'Q2', 2022, '2022-02-10', 'SUV', '70000', 'Essence', 'Vert', 5, 5, '8CV', '150 ch', 'Permis B', 4, 'automatique', 3, 4, 4, 2),
(5, 'TOYOTA', 'YARIS', 2019, '2019-06-20', 'Citadine', '10000', 'Essence', 'bleu', 5, 5, '6CV', '100 ch', 'Permis B', 5, 'Automatique', 5, 5, 5, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD PRIMARY KEY (`Id_Voiture`,`Id_Photos`),
  ADD KEY `Id_Photos` (`Id_Photos`);

--
-- Index pour la table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`Id_Description`);

--
-- Index pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD PRIMARY KEY (`Id_Localisation`);

--
-- Index pour la table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`Id_Photos`);

--
-- Index pour la table `prix`
--
ALTER TABLE `prix`
  ADD PRIMARY KEY (`Id_Prix_`);

--
-- Index pour la table `vendeur`
--
ALTER TABLE `vendeur`
  ADD PRIMARY KEY (`Id_Vendeur`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`Id_Voiture`),
  ADD UNIQUE KEY `Id_Description` (`Id_Description`),
  ADD KEY `Id_Prix_` (`Id_Prix_`),
  ADD KEY `Id_Vendeur` (`Id_Vendeur`),
  ADD KEY `Id_Localisation` (`Id_Localisation`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `appartenir_ibfk_1` FOREIGN KEY (`Id_Voiture`) REFERENCES `voiture` (`Id_Voiture`),
  ADD CONSTRAINT `appartenir_ibfk_2` FOREIGN KEY (`Id_Photos`) REFERENCES `photos` (`Id_Photos`);

--
-- Contraintes pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD CONSTRAINT `voiture_ibfk_1` FOREIGN KEY (`Id_Prix_`) REFERENCES `prix` (`Id_Prix_`),
  ADD CONSTRAINT `voiture_ibfk_2` FOREIGN KEY (`Id_Vendeur`) REFERENCES `vendeur` (`Id_Vendeur`),
  ADD CONSTRAINT `voiture_ibfk_3` FOREIGN KEY (`Id_Description`) REFERENCES `description` (`Id_Description`),
  ADD CONSTRAINT `voiture_ibfk_4` FOREIGN KEY (`Id_Localisation`) REFERENCES `localisation` (`Id_Localisation`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
