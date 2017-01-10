-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Ven 16 Décembre 2016 à 14:24
-- Version du serveur :  5.6.33
-- Version de PHP :  7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `db_symfony_rendu`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `synopsis` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_sortie` date NOT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `realisateur_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `synopsis`, `date_sortie`, `genre_id`, `realisateur_id`) VALUES
(1, 'Avatar', 'L’action se déroule en 21541 sur Pandora, une des lunes de Polyphème, une planète géante gazeuse en orbite autour d\'Alpha Centauri A. L’exolune, recouverte d’une jungle luxuriante, est le théâtre du choc entre des humains, venus exploiter un minerai rare susceptible de résoudre la crise énergétique sur Terre, et la population autochtone, les Na’vis, qui vivent en parfaite symbiose avec leur environnement et tentent de se défendre face à l’invasion militarisée. Un programme est créé par les terriens, le programme Avatar, qui va leur permettre de contrôler des corps Na’vi clonés associés à des gènes humains, afin de s’insérer dans la population et de tenter de négocier avec elle, dans la mesure où le clan Omaticaya est installé dans un gigantesque arbre maison situé sur un des principaux gisements de ce minerai dénommé Unobtainium. Le personnage central de l’histoire est Jake Sully, un marine paraplégique qui, via son avatar, va devoir choisir son camp avec pour enjeu, le destin de la planète.', '1993-10-20', 1, 3),
(2, 'E.T. l\'extra-terrestre', 'Un appareil extraterrestre atterrit en pleine nuit dans les environs de Los Angeles. Ses occupants, botanistes, envoyés sur Terre en mission d\'exploration, recueillent quelques plantes. L\'un d\'eux s\'éloigne du groupe et explore la forêt avant de s\'arrêter, fasciné par les lumières de la ville au loin. C\'est sa première découverte de la civilisation humaine. Mais un groupe d\'hommes en voitures débarque et traque la créature qui tente alors de rejoindre ses semblables. Ces derniers, voulant éviter le contact avec les êtres humains, font décoller le vaisseau et quittent la Terre en toute hâte. L\'extraterrestre désormais seul et apeuré arrive à se frayer un chemin vers un quartier résidentiel où vit une famille en crise : Mary, mère divorcée et ses trois enfants Elliott, Michael et Gertie. Elliott, 10 ans, ne tarde pas à découvrir la créature qui s\'est réfugiée dans son jardin et, après des moments de frayeurs, l\'invite dans sa chambre. Liés par un lien psychique, les deux êtres ne tardent pas à devenir très proches. Elliott baptise son nouvel ami E.T. (Extra-Terrestre). Bientôt aidé par sa petite sœur et son frère aîné, Elliott va alors tenter de garder la présence d\'E.T. secrète. E.T. n\'aspire qu\'à une chose : retrouver les siens par tous les moyens. Il se met alors à construire un appareil de communication, en combinant plusieurs outils et jeux électroniques, et tente d\'appeler l\'espace. Mais sa santé décline et il entraîne également le jeune humain avec lui vers la mort. Au même moment, l\'armée découvre son existence et investit les lieux pour construire un laboratoire de recherches...', '1982-05-12', 1, 2),
(3, 'Harry Potter', 'Après la mort tragique de Lily et James Potter, leur fils Harry est recueilli par sa tante Pétunia, la sœur de Lily et son oncle Vernon. Son oncle et sa tante, possédant une haine féroce envers les parents d\'Harry, le maltraitent et laissent leur fils Dudley l\'humilier. Harry ne sait rien sur ses parents. On lui a toujours dit qu’ils étaient morts dans un accident de voiture. Un jour de juillet, peu avant son onzième anniversaire, Harry reçoit une lettre de Poudlard, l\'école de magie et de sorcellerie, l\'invitant à s\'y présenter pour la rentrée des classes, mais son oncle la lui confisque avant qu\'il ne puisse la lire, ne voulant pas que Harry devienne sorcier. L\'école ne recevant aucune réponse, d\'autres lettres, en nombre croissant, sont envoyées en vain par la directrice-adjointe de Poudlard, Minerva McGonagall. Finalement, le directeur Albus Dumbledore envoie Rubeus Hagrid, un demi-géant, gardien des clés et des lieux à Poudlard, chercher Harry le jour de son anniversaire, le 31 juillet.', '2005-12-01', 2, 5),
(4, 'Jurassic Park', 'John Parker Hammond, le PDG de la puissante compagnie InGen, parvient à donner vie à des dinosaures grâce au clonage et décide de les utiliser dans le cadre d’un parc d\'attractions qu’il compte ouvrir sur une île au large du Costa Rica. Avant l\'ouverture, il fait visiter le parc à un groupe d\'experts pour obtenir leur aval. Pendant la visite, une tempête éclate et un informaticien corrompu par une entreprise rivale en profite pour couper les systèmes de sécurité afin de voler des embryons de dinosaures. En l\'absence de tout système de sécurité pendant plusieurs heures, les dinosaures s\'échappent sans mal, mais le cauchemar des visiteurs ne fait que commencer...', '1993-10-20', 1, 2),
(5, 'Le Seigneur des anneaux', 'Sur la Terre du Milieu, dans la paisible Comté, vit le Hobbit Frodon Sacquet. Comme tous les Hobbits, Frodon est un bon vivant, amoureux de la terre bien cultivée et de la bonne chère. Orphelin alors qu\'il n\'était qu\'un enfant, il s\'est installé à Cul-de-Sac chez son oncle Bilbon, connu de toute la Comté pour les aventures extraordinaires qu\'il a vécues étant jeune et les trésors qu\'il en a tirés. Le jour de ses 111 ans, Bilbon donne une fête grandiose à laquelle est convié le puissant magicien Gandalf le Gris. C\'est en ce jour particulier que Bilbon décide de se retirer chez les Elfes pour y finir sa vie. Il laisse en héritage à Frodon son trou de Hobbit ainsi qu\'un mystérieux anneau qu\'il a autrefois trouvé dans une galerie souterraine des Monts Brumeux et qui a le pouvoir de rendre invisible quiconque le porte à son doigt.', '2005-12-19', 2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id`, `nom`) VALUES
(1, 'Science-Fiction'),
(2, 'Fantastique');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `nom`, `bio`, `date_naissance`) VALUES
(1, 'Chuck Russell', 'Chuck Russell est un producteur, réalisateur et scénariste américain, né le 6 août 1952 à Park Ridge (Illinois), dans l\'Illinois (États-Unis).', '1952-08-06'),
(2, 'Steven Spielberg', 'Steven Spielberg est un réalisateur, scénariste et producteur américain né le 18 décembre 1946 à Cincinnati (Ohio).', '1946-12-18'),
(3, 'James Cameron', 'James Francis Cameron est un réalisateur, scénariste, producteur et explorateur de fonds marins canadien, né le 16 août 1954 à Kapuskasing (Canada).', '1954-08-16'),
(4, 'Peter Jackson', 'Peter Jackson est un réalisateur, scénariste et producteur néo-zélandais, né le 31 octobre 1961 à Wellington. Il est surtout connu pour avoir réalisé la trilogie du Seigneur des anneaux, d\'après l\'œuvre de J. R. R. Tolkien, et un remake de King Kong. Il réalise ensuite Le Hobbit, l\'adaptation cinématographique en trois volets du roman de Tolkien.', '1961-10-31'),
(5, 'Chris Columbus', 'Chris Columbus est un réalisateur, producteur et scénariste américain, né le 10 septembre 1958 à Spangler en Pennsylvanie, aux États-Unis.', '1958-09-10');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8244BE224296D31F` (`genre_id`),
  ADD KEY `IDX_8244BE22F1D8422E` (`realisateur_id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK_8244BE224296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `FK_8244BE22F1D8422E` FOREIGN KEY (`realisateur_id`) REFERENCES `realisateur` (`id`);
