SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `constellations`
--

-- --------------------------------------------------------

--
-- Table structure for table `asterisms`
--

CREATE TABLE `asterisms` (
  `constellation_id` int(1) UNSIGNED NOT NULL,
  `asterism_id` int(1) UNSIGNED NOT NULL,
  `star_id` int(1) UNSIGNED NOT NULL,
  `astname` varchar(30) NOT NULL,
  `astshape` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asterisms`
--

INSERT INTO `asterisms` (`constellation_id`, `asterism_id`, `star_id`, `astname`, `astshape`) VALUES
(2, 1, 5, 'The Urn', 'Y'),
(6, 2, 19, 'Orion\'s Belt', 'Belt'),
(6, 3, 18, 'Saucepan', 'Saucepan'),
(9, 4, 28, 'Big Dipper', 'Large spoon'),
(10, 5, 31, 'Little Dipper', 'Small spoom'),
(9, 6, 29, 'The Pointers', 'Line of stars pointing towards the north star'),
(10, 7, 33, 'Diamond Ring', 'A diamond ring'),
(10, 8, 22, 'Mini Coathanger', 'A tiny coathanger'),
(11, 9, 36, 'The Coathanger', 'A coathanger'),
(7, 10, 24, 'The Fishhook', 'A fishhook');

-- --------------------------------------------------------

--
-- Table structure for table `constellation`
--

CREATE TABLE `constellation` (
  `constellation_id` int(1) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `shape` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `constellation`
--

INSERT INTO `constellation` (`constellation_id`, `name`, `description`, `shape`) VALUES
(1, 'Andromeda', 'In Greek mythology, Andromeda was the daughter of King Cepheus of Ethiopia and Queen Cassiopeia, who offended the Nereids by claiming she was more beautiful than they were.', 'Human - Greek Princess'),
(2, 'Aquarius', 'Aquarius is usually associated with Ganymede, the son of King Tros, in Greek mythology. Ganymede was a beautiful Trojan youth who caught Zeus’ eye, which prompted the god to disguise himself as an eagle and carry him off to Olympus to serve as cup-bearer to the gods. In a different story, the constellation represents Deucalion, son of Prometheus, who survived the great flood along with his wife Pyrrha.', 'Water Bearer'),
(3, 'Canis Major', 'Canis Major was described by Manilius as “the dog with the blazing face” because the dog appears to hold Sirius, the brightest star in the sky, in its jaws. In mythology, Canis Major is associated with Laelaps, the fastest dog in the world, one destined to catch anything it pursued. Zeus gave Laelaps to Europa as a present, along with a javelin that could not miss.', 'Greater Dog'),
(4, 'Dorado', 'There are no myths associated with the constellation. Dorado was one of the 12 constellations created by the Dutch astronomer Petrus Plancius, who mostly named the newly created southern constellations after animals.', 'Dolphinfish'),
(5, 'Hydra', 'The French astronomer Nicolas Louis de Lacaille gave the constellation the name l’Hydre Mâle to emphasize the difference in gender between Hydrus and Hydra on his planisphere of the southern skies, published in 1756.', 'Ancient Greek Monster'),
(6, 'Orion', 'In Greek mythology, the hunter Orion was the most handsome of men. He was the son of the sea god Poseidon and Euryale, the daughter of King Minos of Crete. In Homer’s Odyssey, Orion is described as exceptionally tall and armed with an unbreakable bronze club.', 'Human - Greek Hero'),
(7, 'Perseus', 'The constellation Perseus represents the Greek hero Perseus in the sky and is one of the six constellations associated with the myth of Perseus.', 'Human - Greek Hero'),
(8, 'Taurus', 'In Greek mythology, Taurus is usually associated with Zeus, who adopted the shape of a bull in order to seduce and abduct Europa, the beautiful daughter of the Phoenician King Agenor.', 'Bull'),
(9, 'Ursa Major', 'Ancient Greeks associated the constellation with the myth of Callisto, the beautiful nymph who Zeus fell in love. The two had a son, and named him Arcas. However, it was Zeus’ jealous wife Hera, who was not amused by her husband’s philandering, and angered by Zeus’ betrayal, she turned Callisto into a bear. Callisto lived as a bear for the next 15 years, hiding from hunters. One day, her son Arcas was walking in the forest and the two came face to face. At the sight of the bear, Arcas quickly drew his spear, scared. Seeing the scene from Olympus, Zeus intervened to prevent disaster. He sent a whirlwind that carried Callisto and Callisto into Ursa Major.', 'Great Bear'),
(10, 'Ursa Minor', 'The constellation represents Arcas, son of Zeus and the nymph Callisto.', 'Little Bear'),
(11, 'Vulpecula', 'Vulpecula, or the little fox with the goose, represented a fox carrying a goose to Cerberus, the dog that guarded the entrance to the Underworld in Greek mythology. Vulpecula and Anser were later split into two constellations, the Fox and the Goose, only to be merged again under the name Vulpecula.', 'Fox');

-- --------------------------------------------------------

--
-- Table structure for table `constellation_location`
--

CREATE TABLE `constellation_location` (
  `constellation_id` int(1) UNSIGNED NOT NULL,
  `latitudes_visible` varchar(15) NOT NULL,
  `quadrant_in_sky` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `constellation_location`
--

INSERT INTO `constellation_location` (`constellation_id`, `latitudes_visible`, `quadrant_in_sky`) VALUES
(1, '+90° and -40°', 'NQ1'),
(2, '+65° and -90°', 'SQ4'),
(3, '+60° and -90°', 'SQ1'),
(4, '+20° and -90°', 'SQ1'),
(5, '+54° and -83°', 'SQ2'),
(6, '+85° and -75°', 'NQ1'),
(7, '+90° and -35°', 'NQ1'),
(8, '+90° and -65°', 'NQ1'),
(9, '+90° and -30°', 'NQ2'),
(10, '+90° and -10°', 'NQ3'),
(11, '+90° and -55°', 'NQ4');

-- --------------------------------------------------------

--
-- Table structure for table `discovery`
--

CREATE TABLE `discovery` (
  `constellation_id` int(1) UNSIGNED NOT NULL,
  `date_discovered` varchar(10) NOT NULL,
  `discovered_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discovery`
--

INSERT INTO `discovery` (`constellation_id`, `date_discovered`, `discovered_by`) VALUES
(1, 'ancient', 'Ptolemy'),
(2, 'ancient', 'Ptolemy'),
(3, 'ancient', 'Ptolemy'),
(4, '1603', 'Keyser and de Houtman'),
(5, 'ancient', 'Ptolemy'),
(6, 'ancient', 'Ptolemy'),
(7, 'ancient', 'Ptolemy'),
(8, 'ancient', 'Ptolemy'),
(9, 'ancient', 'Ptolemy'),
(10, 'ancient', 'Ptolemy'),
(11, '1687', 'Johannes Hevelius');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `constellation_id` int(1) UNSIGNED NOT NULL,
  `picture_id` int(1) UNSIGNED NOT NULL,
  `picture_path` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`constellation_id`, `picture_id`, `picture_path`) VALUES
(1, 1, 'LOAD_FILE("D:\Spring 2021\CSC4710\Constellations Database\images for constellations\andromeda.jpg")'),
(2, 2, 'LOAD_FILE("D:\Spring 2021\CSC4710\Constellations Database\images for constellations\Aquarius.jpg")'),
(3, 3, 'LOAD_FILE("D:\Spring 2021\CSC4710\Constellations Database\images for constellations\Canis Major.jpg")'),
(4, 4, 'LOAD_FILE("D:\Spring 2021\CSC4710\Constellations Database\images for constellations\Dorado.jpg")'),
(5, 5, 'LOAD_FILE("D:\Spring 2021\CSC4710\Constellations Database\images for constellations\Hydra.jpg")'),
(6, 6, 'LOAD_FILE("D:\Spring 2021\CSC4710\Constellations Database\images for constellations\Orion.jpg")'),
(7, 7, 'LOAD_FILE("D:\Spring 2021\CSC4710\Constellations Database\images for constellations\Perseus.jpg")'),
(8, 8, 'LOAD_FILE("D:\Spring 2021\CSC4710\Constellations Database\images for constellations\Taurus.jpg")'),
(9, 9, 'LOAD_FILE("D:\Spring 2021\CSC4710\Constellations Database\images for constellations\Ursa Major.jpg")'),
(10, 10, 'LOAD_FILE("D:\Spring 2021\CSC4710\Constellations Database\images for constellations\Ursa Minor.jpg")'),
(11, 11, 'LOAD_FILE("D:\Spring 2021\CSC4710\Constellations Database\images for constellations\vulpecula.jpg")');

-- --------------------------------------------------------

--
-- Table structure for table `star`
--

CREATE TABLE `star` (
  `star_id` int(1) UNSIGNED NOT NULL,
  `constellation_id` int(1) UNSIGNED NOT NULL,
  `stname` varchar(45) NOT NULL,
  `radius` varchar(30) NOT NULL,
  `mass` varchar(30) DEFAULT NULL,
  `temperature` varchar(30) NOT NULL,
  `luminosity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `star`
--

INSERT INTO `star` (`star_id`, `constellation_id`, `stname`, `radius`, `mass`, `temperature`, `luminosity`) VALUES
(1, 1, 'Alpheratz', '2.7 ± 0.4 R☉', '3.8±0.2 M☉', '13,800 K', '240 L☉'),
(2, 1, 'Mirach', '100 R☉', '3–4 M☉', '3,842 K', '1,995 L☉'),
(3, 1, 'Almach', '80 R☉', NULL, '4,500 K', '2,000 L☉'),
(4, 2, 'Skat', '2.4 R☉', '2.51 M☉', '8,650 K', '48 L☉'),
(5, 2, 'Sadalmelik', '52.89 R☉', '5.13 ± 0.06 M☉', '5,383 ± 74 K', '2,120 ± 167 L☉'),
(6, 2, 'Sadalsuud', '47.88 R☉', '4.97 ± 0.10 M☉', '5,608 ± 71 K', '2,046 ± 180 L☉'),
(7, 3, 'Sirius', '1.711 R☉', '2.063 ± 0.023 M☉', '9,940 K', '25.4 L☉'),
(8, 3, 'Adhara', '13.9 R☉', '12.6 ± 1.0 M☉', '22,900 K', '38,700 L☉'),
(9, 3, 'Wezen', '215 ± 66 R☉', '16.9 ± 1.6 M☉', '6,390 ± 150 K', '82,000 L☉'),
(10, 4, 'Alpha Doradus', '3.5 ± 0.3 R☉', '3.33 ± 0.10 M☉', '11,588 K', '195 L☉'),
(11, 4, 'Beta Doradus', '67.8 ± 0.7 R☉', '6.5 M☉', '5,445 K', '3,200 L☉'),
(12, 4, 'Gamma Doradus', '1.85 R☉', '1.56±0.06 M☉', '6,906 K', '	6.999 L☉'),
(13, 5, 'Alphard', '50.5 ± 4.0 R☉', '3.03 ± 0.36 M☉', '4,120 K', '780 ± 78 L☉'),
(14, 5, 'Gamma Hydrae', '16±3 R☉', '2.94 M☉', '5,087 K', '115 L☉'),
(15, 5, 'Zeta Hydrae', '17.9 R☉', '4.2 M☉', '4,925 K', '132 L☉'),
(16, 6, 'Betelgeuse', '887 ± 203 R☉', '11.6 M☉', '3,590 K', '90,000 – 150,000 L☉'),
(17, 6, 'Rigel', '78.9±7.4 R☉', '21±3 M☉', '12,100±150 K', '1.20×10^5 L☉'),
(18, 6, 'Bellatrix', '5.75 R☉', '8.6 M☉', '21,700 K', '9,211 L☉'),
(19, 6, 'Mintaka', '16.5 R☉', '24 M☉', '29,500 ± 500 K', '190,000 L☉'),
(20, 6, 'Alnilam', '32.4 R☉', '40 M☉', '27,500 ± 100 K', '537,000 L☉'),
(21, 6, 'Alnitak', '20 ± 3.2 R☉', '33 ± 10 M☉', '29,500 ± 1000 K', '250,000 L☉'),
(22, 7, 'Mirfak', '68 ± 3 R☉', '8.5 ± 0.3 M☉', '6,350 ± 100 K', '5,000 L☉'),
(23, 7, 'Algol', '182 R☉', '3.17 ± 0.21 M☉', '13,000 K', '2.73 ± 0.20 L☉'),
(24, 7, 'Miram', '134 R☉', NULL, '3,986±170 K', '4,130 L☉'),
(25, 8, 'Aldebaran', '44.13 ± 0.84 R☉', '1.16 ± 0.07 M☉', '3,900 ± 50 K', '439 ± 17 L☉'),
(26, 8, 'Elnath', '4.2 R☉', '5.0 ± 0.1 M☉', '13,824 ± 47 K', '700 L☉'),
(27, 8, 'Epsilon Tauri', '12.692±0.545 R☉', '2.7 ± 0.1 M☉', '4901 ± 20 K', '97 ± 8 L☉'),
(28, 9, 'Dubhe', '', '4.25 M☉', '4,660 K', '316 L☉'),
(29, 9, 'Merak', '3.021 ± 0.038 R☉', '2.7 M☉', '9377 ± 75 K', '63.015 ± 1.307 L☉'),
(30, 9, 'Alkaid', '3.4 R☉', '6.1 ± 0.1 M☉', '15,540 ± 1157 K', '594 ± 31 L☉'),
(31, 10, 'Polaris', '37.5 R☉', '5.4 M☉', '6,015 K', '1,260 L☉'),
(32, 10, 'Pherkad', '15 R☉', '4.8 M☉', '8,280 ± 240 K', '1,100 L☉'),
(33, 10, 'Kochab', '42.06 ± 0.91 R☉', '2.2 ± 0.3 M☉', '4,030 K', '390 ± 25 L☉'),
(34, 11, 'Anser', '43.14 R☉', '0.97 M☉', '3,690 K', '415.9 L☉'),
(35, 11, '23 Vulpeculae', '', '2.4 M☉', '4,429 K', '146 L☉'),
(36, 11, '4 Vulpeculae', '11.42 R☉', '1.72 M☉', '4,763±26 K', '67.6 L☉');

-- --------------------------------------------------------

--
-- Table structure for table `star_location`
--

CREATE TABLE `star_location` (
  `star_id` int(1) UNSIGNED NOT NULL,
  `star_name` varchar(45) NOT NULL,
  `declination` varchar(50) NOT NULL,
  `right_ascention` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `star_location`
--

INSERT INTO `star_location` (`star_id`, `star_name`, `declination`, `right_ascention`) VALUES
(1, 'Alpheratz', '+29° 05′ 25.5520″', '00h 08m 23.25988s'),
(2, 'Mirach', '+35° 37′ 14.0075″', '01h 09m 43.92388s'),
(3, 'Almach', '+42° 19′ 47.009″', '02h 03m 53.9531s'),
(4, 'Skat', '−15° 49′ 14.953″', '22h 54m 39.0125s'),
(5, 'Sadalmelik', '−00° 19′ 11.456766″', '22h 05m 47.0359315s'),
(6, 'Sadalsuud', '–05° 34′ 16.232006″', '21h 31m 33.5317148s'),
(7, 'Sirius', '-16° 42′ 58.02”', '06h 45m 08.917s'),
(8, 'Adhara', '–28° 58′ 19″', '06h 58m 37.6s'),
(9, 'Wezen', '−26° 23′ 35.518484″', '07h 08m 23.4840514s'),
(10, 'Alpha Doradus', '−55° 02′ 41.91″', '04h 33m 59.778s'),
(11, 'Beta Doradus', '−62° 29′ 23.3692″', '05h 33m 37.51729s'),
(12, 'Gamma Doradus', '−51° 29′ 11.9191″', '04h 16m 01.58823s'),
(13, 'Alphard', '−08° 39′ 30.969″', '09h 27m 35.2433s'),
(14, 'Gamma Hydrae', '–23° 10′ 17.4514″', '13h 18m 55.29719s'),
(15, 'Zeta Hydrae', '+05° 56′ 44.0354″', '08h 55m 23.62614s'),
(16, 'Betelgeuse', '+07° 24′ 25.4304”', '05h 55m 10.30536s'),
(17, 'Rigel', '−08° 12′ 05.8981″', '05h 14m 32.27210s'),
(18, 'Bellatrix', '+06° 20′ 58.9318”', '05h 25m 07.86325s'),
(19, 'Mintaka', '-00° 17′ 56.7424”', '05h 32m 00.40009s'),
(20, 'Alnilam', '-01° 12′ 06.9', '05h 36m 12.8s'),
(21, 'Alnitak', '-01° 56′ 34.2649”', '05h 40m 45.52666s'),
(22, 'Mirfak', '+49° 51′ 40.2455″', '03h 24m 19.37009s'),
(23, 'Algol', '+40° 57′ 20.328013″', '+40° 57′ 20.328013″'),
(24, 'Miram', '+55° 53′ 43.7876″', '02h 50m 41.766s'),
(25, 'Aldebaran', '+16° 30′ 33.4885″', '04h 35m 55.23907s'),
(26, 'Elnath', '+28° 36′ 26.8262″', '05h 26m 17.51312s'),
(27, 'Epsilon Tauri', '+19° 10′ 50″', '04h 28m 37.00s'),
(28, 'Dubhe', '+61° 45′ 03.7249″', '11h 03m 43.67152s'),
(29, 'Merak', '+56° 22′ 56.7339″', '11h 01m 50.47654s'),
(30, 'Alkaid', '+49° 18′ 47.7602″', '13h 47m 32.43776s'),
(31, 'Polaris', '+89° 15′ 50.8”', '02h 31m 49.09s'),
(32, 'Pherkad', '+71° 50′ 02.459561″', '15h 20m 43.7160391s'),
(33, 'Kochab', '+74° 09′ 19.8142″', '14h 50m 42.32580s'),
(34, 'Anser', '+24° 39′ 53.652455″', '19h 28m 42.3299553s'),
(35, '23 Vulpeculae', '+27° 48′ 51.116″', '20h 15m 46.1432s'),
(36, '4 Vulpeculae', '+19° 47′ 54.059820728″', '19h 25m 28.6030389750s');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, 'mboyd4', 'mboyd4@student.psu.edu', 'daniscool', '2021-04-22 17:43:34'),
(2, 'aminyard3', 'aminyard3@student.psu.edu', 'yesorno', '2021-04-22 17:51:13'),
(3, 'vpadgett1', 'vpadgett1@student.gsu.edu', 'passwordhehe', '2021-04-22 18:09:21'),
(4, 'dwilds1', 'dwilds1@student.psu.edu', 'firstfemaleexycaptin', '2021-04-22 18:20:14'),
(5, 'nhemmick8', 'nhemmick8@student.psu.edu', 'erikImissyou', '2021-04-22 23:08:49'),
(6, 'njosten10', 'njosten10@student.psu.edu', 'keysarehome', '2021-04-22 23:11:06'),
(7, 'areynolds7', 'areynolds7@student.psu.edu', 'getCoachtogiveCard', '2021-04-22 23:12:33'),
(8, 'kday2', 'kday2@student.psu.edu', 'queennotking', '2021-04-22 23:13:16'),
(9, 'rwalker9', 'rwalker9@student.psu.edu', 'rainbowhair', '2021-04-22 23:14:37'),
(10, 'aminyard5', 'aminyard5@student.psu.edu', 'yes', '2021-04-23 01:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `visible_month`
--

CREATE TABLE `visible_month` (
  `month_id` int(10) UNSIGNED NOT NULL,
  `constellation_id` int(1) UNSIGNED NOT NULL,
  `month` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visible_month`
--

INSERT INTO `visible_month` (`month_id`, `constellation_id`, `month`) VALUES
(1, 1, 'September'),
(2, 1, 'October'),
(3, 1, 'November'),
(4, 1, 'December'),
(5, 2, 'September'),
(6, 2, 'October'),
(7, 2, 'November'),
(8, 2, 'December'),
(9, 3, 'December'),
(10, 3, 'January'),
(11, 3, 'Feburary'),
(12, 3, 'March'),
(13, 4, 'December'),
(14, 4, 'January'),
(15, 4, 'Feburary'),
(16, 4, 'March'),
(17, 5, 'March'),
(18, 5, 'April'),
(19, 5, 'May'),
(20, 5, 'June'),
(21, 6, 'December'),
(22, 6, 'January'),
(23, 6, 'Feburary'),
(24, 6, 'March'),
(25, 7, 'September'),
(26, 7, 'October'),
(27, 7, 'November'),
(28, 7, 'December'),
(29, 8, 'December'),
(30, 8, 'January'),
(31, 8, 'Feburary'),
(32, 8, 'March'),
(33, 9, 'March'),
(34, 9, 'April'),
(35, 9, 'May'),
(36, 9, 'June'),
(37, 10, 'March'),
(38, 10, 'April'),
(39, 10, 'May'),
(40, 10, 'June'),
(41, 11, 'June'),
(42, 11, 'July'),
(43, 11, 'August'),
(44, 11, 'September');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asterisms`
--
ALTER TABLE `asterisms`
  ADD PRIMARY KEY (`asterism_id`,`constellation_id`),
  ADD KEY `asterism_id` (`asterism_id`),
  ADD KEY `test` (`constellation_id`),
  ADD KEY `star_id` (`star_id`);

--
-- Indexes for table `constellation`
--
ALTER TABLE `constellation`
  ADD PRIMARY KEY (`constellation_id`),
  ADD KEY `constellation_id` (`constellation_id`);

--
-- Indexes for table `constellation_location`
--
ALTER TABLE `constellation_location`
  ADD PRIMARY KEY (`constellation_id`,`latitudes_visible`),
  ADD KEY `latitudes_visual` (`latitudes_visible`);

--
-- Indexes for table `discovery`
--
ALTER TABLE `discovery`
  ADD PRIMARY KEY (`constellation_id`,`date_discovered`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`constellation_id`,`picture_id`);

--
-- Indexes for table `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`star_id`,`constellation_id`),
  ADD KEY `star_id` (`star_id`),
  ADD KEY `constellation_id` (`constellation_id`),
  ADD KEY `stname` (`stname`);

--
-- Indexes for table `star_location`
--
ALTER TABLE `star_location`
  ADD PRIMARY KEY (`star_id`,`declination`),
  ADD KEY `star_name` (`star_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visible_month`
--
ALTER TABLE `visible_month`
  ADD PRIMARY KEY (`constellation_id`,`month_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asterisms`
--
ALTER TABLE `asterisms`
  ADD CONSTRAINT `asterisms_ibfk_1` FOREIGN KEY (`star_id`) REFERENCES `star` (`star_id`),
  ADD CONSTRAINT `test` FOREIGN KEY (`constellation_id`) REFERENCES `constellation` (`constellation_id`);

--
-- Constraints for table `constellation_location`
--
ALTER TABLE `constellation_location`
  ADD CONSTRAINT `constellation_location_ibfk_1` FOREIGN KEY (`constellation_id`) REFERENCES `constellation` (`constellation_id`);

--
-- Constraints for table `discovery`
--
ALTER TABLE `discovery`
  ADD CONSTRAINT `discovery_ibfk_1` FOREIGN KEY (`constellation_id`) REFERENCES `constellation` (`constellation_id`);

--
-- Constraints for table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`constellation_id`) REFERENCES `constellation` (`constellation_id`);

--
-- Constraints for table `star`
--
ALTER TABLE `star`
  ADD CONSTRAINT `star_ibfk_1` FOREIGN KEY (`constellation_id`) REFERENCES `constellation` (`constellation_id`);

--
-- Constraints for table `star_location`
--
ALTER TABLE `star_location`
  ADD CONSTRAINT `star_location_ibfk_1` FOREIGN KEY (`star_id`) REFERENCES `star` (`star_id`),
  ADD CONSTRAINT `star_location_ibfk_2` FOREIGN KEY (`star_name`) REFERENCES `star` (`stname`);

--
-- Constraints for table `visible_month`
--
ALTER TABLE `visible_month`
  ADD CONSTRAINT `visible_month_ibfk_1` FOREIGN KEY (`constellation_id`) REFERENCES `constellation` (`constellation_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
