-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 07, 2019 at 05:48 PM
-- Server version: 8.0.15
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinemaniac`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Username` varchar(8) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Username`) VALUES
('admin');

-- --------------------------------------------------------

--
-- Table structure for table `bilou`
--

DROP TABLE IF EXISTS `bilou`;
CREATE TABLE IF NOT EXISTS `bilou` (
  `IdBilou` int(11) NOT NULL AUTO_INCREMENT,
  `IdPartija` int(11) NOT NULL,
  `IdPitanje` int(11) NOT NULL,
  PRIMARY KEY (`IdBilou`),
  KEY `IdPartija` (`IdPartija`),
  KEY `IdPitanje` (`IdPitanje`)
) ENGINE=InnoDB AUTO_INCREMENT=658 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bilou`
--

INSERT INTO `bilou` (`IdBilou`, `IdPartija`, `IdPitanje`) VALUES
(228, 95, 36),
(229, 95, 44),
(230, 95, 33),
(231, 95, 24),
(232, 95, 34),
(233, 95, 58),
(234, 95, 39),
(235, 95, 72),
(236, 95, 20),
(237, 95, 75),
(238, 96, 40),
(239, 96, 76),
(240, 96, 12),
(241, 96, 17),
(242, 96, 77),
(243, 96, 42),
(244, 96, 71),
(245, 96, 45),
(246, 96, 35),
(247, 96, 27),
(248, 97, 79),
(249, 97, 70),
(250, 97, 38),
(251, 97, 57),
(252, 97, 75),
(253, 97, 36),
(254, 97, 10),
(255, 97, 14),
(256, 97, 66),
(257, 97, 12),
(258, 98, 27),
(259, 98, 68),
(260, 98, 76),
(261, 98, 42),
(262, 98, 30),
(263, 98, 56),
(264, 98, 43),
(265, 98, 78),
(266, 98, 73),
(267, 98, 13),
(268, 99, 69),
(269, 99, 75),
(270, 99, 68),
(271, 99, 19),
(272, 99, 74),
(273, 99, 52),
(274, 99, 61),
(275, 99, 48),
(276, 99, 51),
(277, 99, 62),
(278, 100, 48),
(279, 100, 32),
(280, 100, 22),
(281, 100, 34),
(282, 100, 53),
(283, 100, 77),
(284, 100, 45),
(285, 100, 64),
(286, 100, 69),
(287, 100, 54),
(288, 101, 48),
(289, 101, 57),
(290, 101, 37),
(291, 101, 13),
(292, 101, 10),
(293, 101, 15),
(294, 101, 64),
(295, 101, 23),
(296, 101, 58),
(297, 101, 22),
(298, 102, 74),
(299, 102, 70),
(300, 102, 51),
(301, 102, 52),
(302, 102, 47),
(303, 102, 42),
(304, 102, 40),
(305, 102, 53),
(306, 102, 64),
(307, 102, 61),
(308, 103, 49),
(309, 103, 48),
(310, 103, 43),
(311, 103, 12),
(312, 103, 65),
(313, 103, 50),
(314, 103, 11),
(315, 103, 75),
(316, 103, 21),
(317, 103, 73),
(318, 104, 69),
(319, 104, 51),
(320, 104, 53),
(321, 104, 56),
(322, 104, 77),
(323, 104, 79),
(324, 104, 50),
(325, 104, 27),
(326, 104, 28),
(327, 104, 30),
(328, 105, 37),
(329, 105, 33),
(330, 105, 70),
(331, 105, 36),
(332, 105, 54),
(333, 105, 74),
(334, 105, 20),
(335, 105, 53),
(336, 105, 32),
(337, 105, 21),
(338, 106, 25),
(339, 106, 63),
(340, 106, 59),
(341, 106, 45),
(342, 106, 35),
(343, 106, 17),
(344, 106, 18),
(345, 106, 69),
(346, 106, 76),
(347, 106, 19),
(348, 107, 71),
(349, 107, 13),
(350, 107, 62),
(351, 107, 29),
(352, 107, 57),
(353, 107, 49),
(354, 107, 16),
(355, 107, 47),
(356, 107, 20),
(357, 107, 21),
(358, 109, 35),
(359, 109, 46),
(360, 109, 77),
(361, 109, 58),
(362, 109, 60),
(363, 109, 40),
(364, 109, 36),
(365, 109, 16),
(366, 109, 15),
(367, 109, 30),
(368, 110, 58),
(369, 110, 38),
(370, 110, 78),
(371, 110, 19),
(372, 110, 20),
(373, 110, 57),
(374, 110, 18),
(375, 110, 43),
(376, 110, 73),
(377, 110, 31),
(388, 112, 55),
(389, 112, 12),
(390, 112, 76),
(391, 112, 34),
(392, 112, 60),
(393, 112, 14),
(394, 112, 67),
(395, 112, 39),
(396, 112, 26),
(397, 112, 37),
(398, 113, 17),
(399, 113, 44),
(400, 113, 69),
(401, 113, 41),
(402, 113, 22),
(403, 113, 32),
(404, 113, 23),
(405, 113, 12),
(406, 113, 55),
(407, 113, 11),
(408, 115, 33),
(409, 115, 79),
(410, 115, 11),
(411, 115, 9),
(412, 115, 60),
(413, 115, 44),
(414, 115, 72),
(415, 115, 77),
(416, 115, 64),
(417, 115, 24),
(418, 116, 31),
(419, 116, 50),
(420, 116, 78),
(421, 116, 55),
(422, 116, 13),
(423, 116, 47),
(424, 116, 42),
(425, 116, 66),
(426, 116, 21),
(427, 116, 15),
(428, 117, 42),
(429, 117, 17),
(430, 117, 78),
(431, 117, 58),
(432, 117, 29),
(433, 117, 16),
(434, 117, 14),
(435, 117, 41),
(436, 117, 49),
(437, 117, 31),
(438, 1, 62),
(439, 1, 76),
(440, 1, 15),
(441, 1, 16),
(442, 1, 66),
(443, 1, 44),
(444, 1, 43),
(445, 1, 17),
(446, 1, 26),
(447, 1, 50),
(448, 119, 78),
(449, 119, 65),
(450, 119, 36),
(451, 119, 32),
(452, 119, 7),
(453, 119, 14),
(454, 119, 51),
(455, 119, 18),
(456, 119, 29),
(457, 119, 66),
(458, 120, 70),
(459, 120, 30),
(460, 120, 69),
(461, 120, 38),
(462, 120, 14),
(463, 120, 75),
(464, 120, 13),
(465, 120, 60),
(466, 120, 40),
(467, 120, 67),
(468, 121, 18),
(469, 121, 51),
(470, 121, 11),
(471, 121, 63),
(472, 121, 69),
(473, 121, 37),
(474, 121, 76),
(475, 121, 78),
(476, 121, 10),
(477, 121, 52),
(478, 122, 18),
(479, 122, 14),
(480, 122, 71),
(481, 122, 9),
(482, 122, 54),
(483, 122, 24),
(484, 122, 48),
(485, 122, 37),
(486, 122, 15),
(487, 122, 10),
(488, 123, 41),
(489, 123, 9),
(490, 123, 51),
(491, 123, 29),
(492, 123, 74),
(493, 123, 20),
(494, 123, 44),
(495, 123, 19),
(496, 123, 21),
(497, 123, 36),
(498, 124, 7),
(499, 124, 9),
(500, 124, 27),
(501, 124, 77),
(502, 124, 44),
(503, 124, 62),
(504, 124, 28),
(505, 124, 68),
(506, 124, 79),
(507, 124, 12),
(508, 125, 68),
(509, 125, 57),
(510, 125, 41),
(511, 125, 53),
(512, 125, 24),
(513, 125, 55),
(514, 125, 12),
(515, 125, 61),
(516, 125, 67),
(517, 125, 62),
(518, 127, 33),
(519, 127, 54),
(520, 127, 9),
(521, 127, 67),
(522, 127, 65),
(523, 127, 32),
(524, 127, 57),
(525, 127, 62),
(526, 127, 10),
(527, 127, 15),
(528, 128, 37),
(529, 128, 18),
(530, 128, 45),
(531, 128, 35),
(532, 128, 51),
(533, 128, 55),
(534, 128, 25),
(535, 128, 64),
(536, 128, 12),
(537, 128, 41),
(538, 129, 16),
(539, 129, 58),
(540, 129, 47),
(541, 129, 15),
(542, 129, 29),
(543, 129, 12),
(544, 129, 9),
(545, 129, 59),
(546, 129, 14),
(547, 129, 68),
(548, 130, 66),
(549, 130, 9),
(550, 130, 73),
(551, 130, 21),
(552, 130, 34),
(553, 130, 46),
(554, 130, 11),
(555, 130, 35),
(556, 130, 63),
(557, 130, 53),
(558, 131, 44),
(559, 131, 32),
(560, 131, 27),
(561, 131, 29),
(562, 131, 75),
(563, 131, 13),
(564, 131, 9),
(565, 131, 73),
(566, 131, 51),
(567, 131, 55),
(568, 133, 50),
(569, 133, 32),
(570, 133, 37),
(571, 133, 48),
(572, 133, 41),
(573, 133, 68),
(574, 133, 18),
(575, 133, 12),
(576, 133, 74),
(577, 133, 22),
(578, 135, 48),
(579, 135, 53),
(580, 135, 50),
(581, 135, 65),
(582, 135, 47),
(583, 135, 35),
(584, 135, 66),
(585, 135, 38),
(586, 135, 30),
(587, 135, 20),
(588, 136, 31),
(589, 136, 42),
(590, 136, 77),
(591, 136, 27),
(592, 136, 19),
(593, 136, 74),
(594, 136, 22),
(595, 136, 63),
(596, 136, 48),
(597, 136, 73),
(598, 137, 61),
(599, 137, 32),
(600, 137, 19),
(601, 137, 13),
(602, 137, 58),
(603, 137, 27),
(604, 137, 53),
(605, 137, 26),
(606, 137, 57),
(607, 137, 25),
(608, 138, 61),
(609, 138, 23),
(610, 138, 55),
(611, 138, 14),
(612, 138, 29),
(613, 138, 25),
(614, 138, 58),
(615, 138, 15),
(616, 138, 22),
(617, 138, 62),
(618, 139, 59),
(619, 139, 16),
(620, 139, 37),
(621, 139, 66),
(622, 139, 17),
(623, 139, 35),
(624, 139, 24),
(625, 139, 74),
(626, 139, 20),
(627, 139, 67),
(628, 140, 18),
(629, 140, 70),
(630, 140, 29),
(631, 140, 7),
(632, 140, 13),
(633, 140, 28),
(634, 140, 22),
(635, 140, 16),
(636, 140, 26),
(637, 140, 67),
(638, 141, 48),
(639, 141, 57),
(640, 141, 35),
(641, 141, 49),
(642, 141, 72),
(643, 141, 79),
(644, 141, 43),
(645, 141, 16),
(646, 141, 63),
(647, 141, 41),
(648, 142, 60),
(649, 142, 64),
(650, 142, 62),
(651, 142, 11),
(652, 142, 31),
(653, 142, 16),
(654, 142, 48),
(655, 142, 67),
(656, 142, 34),
(657, 142, 26);

-- --------------------------------------------------------

--
-- Table structure for table `citat`
--

DROP TABLE IF EXISTS `citat`;
CREATE TABLE IF NOT EXISTS `citat` (
  `IdCitat` int(11) NOT NULL AUTO_INCREMENT,
  `Tekst` varchar(50) NOT NULL,
  `Autor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdCitat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `IdFilm` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IdFilm`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`IdFilm`, `Naziv`) VALUES
(3, 'Avengers: Endgame'),
(4, 'Skyfall'),
(5, 'Fight Club'),
(6, 'Forrest Gump'),
(7, 'Casablanca'),
(8, 'Enemy'),
(9, 'Drive');

-- --------------------------------------------------------

--
-- Table structure for table `gost`
--

DROP TABLE IF EXISTS `gost`;
CREATE TABLE IF NOT EXISTS `gost` (
  `IdGost` int(11) NOT NULL AUTO_INCREMENT,
  `Ime` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IdPartija` int(11) NOT NULL,
  `BrojPoena` int(11) DEFAULT NULL,
  `NaPitanju` int(11) DEFAULT NULL,
  `Ishod` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`IdGost`),
  KEY `R_21` (`IdPartija`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gost`
--

INSERT INTO `gost` (`IdGost`, `Ime`, `IdPartija`, `BrojPoena`, `NaPitanju`, `Ishod`) VALUES
(1, 'G1', 1, 10, 0, NULL),
(2, 'G2', 1, 0, 0, NULL),
(3, 'G3', 1, 10, 0, NULL),
(4, 'G4', 31, 17, 0, NULL),
(5, 'G5', 31, 14, 0, NULL),
(6, 'G6', 32, 17, 0, NULL),
(7, 'G7', 32, 10, 0, NULL),
(8, 'G8', 33, 17, 0, NULL),
(9, 'G9', 33, 10, 0, NULL),
(10, 'g10', 34, 17, 0, NULL),
(11, 'g11', 69, 10, 1, NULL),
(12, 'G12', 69, 10, 1, NULL),
(13, 'G13', 69, 17, 1, NULL),
(17, '17', 77, 0, 0, NULL),
(18, '18', 78, 0, 0, NULL),
(19, 'Guest#19', 78, 0, 0, NULL),
(20, 'Gost#20', 79, 0, 0, NULL),
(21, 'thor#21', 80, 0, 0, NULL),
(22, 'thor#22', 80, 0, 0, NULL),
(23, 'thor#23', 81, 0, 0, NULL),
(24, 'gost#24', 82, 0, 0, NULL),
(25, 'gost123#', 83, 0, 0, NULL),
(26, 'capt#26', 84, 0, 0, NULL),
(27, 'capt#27', 85, 0, 0, NULL),
(28, 'abcd#28', 86, 0, 0, NULL),
(29, 'ironMan#', 87, 0, 0, NULL),
(30, 'capt#30', 88, 0, 0, NULL),
(31, 'capt#31', 88, 0, 0, NULL),
(32, 'ironMan#', 89, 0, 0, NULL),
(33, 'ironMan#', 89, 0, 0, NULL),
(34, 'ironMan#', 90, 0, 0, NULL),
(35, 'ironMan#', 90, 0, 0, NULL),
(36, 'ironMan#', 91, 0, 0, NULL),
(37, 'ironMan#', 91, 0, 0, NULL),
(38, 'ironMan#', 92, 0, 0, NULL),
(39, 'ironMan#', 92, 0, 0, NULL),
(40, 'ironMan#', 93, 0, 0, NULL),
(41, 'ironMan#', 93, 0, 0, NULL),
(42, 'ironMan#', 94, 0, 2, NULL),
(43, 'ironMan#43', 94, 14, 2, 'win'),
(44, 'Gost#44', 95, 0, 2, 'lose'),
(45, 'thor#45', 96, 88, 10, 'lose'),
(46, 'ironMan#46', 97, 0, 10, NULL),
(47, 'ironMan#47', 97, 73, 10, 'win'),
(48, 'GostNovi#48', 98, 0, 1, NULL),
(49, 'GostNovi#49', 98, 0, 1, NULL),
(50, 'capt#50', 99, 0, 0, NULL),
(51, 'capt#51', 99, 0, 0, NULL),
(52, 'ironMan#52', 100, 0, 0, NULL),
(53, 'ironMan#53', 100, 13, 1, NULL),
(54, 'ironMan#54', 101, 0, 0, NULL),
(55, 'ironMan#55', 101, 13, 1, NULL),
(56, 'ironMan#56', 102, 0, 0, NULL),
(57, 'ironMan#57', 102, 0, 0, NULL),
(58, 'ironMan#58', 103, 0, 0, NULL),
(59, 'ironMan#59', 103, 0, 0, NULL),
(60, 'capt#60', 104, 0, 0, NULL),
(61, 'capt#61', 104, 0, 0, NULL),
(62, 'capt#62', 105, 0, 0, NULL),
(63, 'capt#63', 105, 0, 0, NULL),
(64, 'capt#64', 106, 0, 0, NULL),
(65, 'capt#65', 106, 0, 0, NULL),
(66, 'capt#66', 109, 0, 0, NULL),
(67, 'capt#67', 109, 0, 0, NULL),
(68, 'ironMan#68', 110, 0, 0, NULL),
(69, 'ironMan#69', 110, 0, 0, NULL),
(75, 'admin#75', 112, 49, 15, NULL),
(80, 'admin#80', 115, 0, 15, NULL),
(82, 'ironMan#82', 116, 0, 15, NULL),
(83, 'thor#83', 1, 0, 0, NULL),
(84, 'capt#84', 119, 0, 0, NULL),
(86, 'thor#86', 119, 0, 0, NULL),
(87, 'capt#87', 120, 0, 0, NULL),
(88, 'thor#88', 120, 0, 0, NULL),
(89, 'capt#89', 120, 0, 15, NULL),
(90, 'thor#90', 121, 0, 0, NULL),
(91, 'ironMan#91', 121, 0, 0, NULL),
(92, 'ironMan#92', 121, 0, 0, NULL),
(94, 'thor#94', 121, 0, 0, NULL),
(95, 'capt#95', 124, 0, 0, NULL),
(96, 'capt#96', 124, 0, 0, NULL),
(97, 'capt#97', 124, 0, 0, NULL),
(99, 'thor#99', 124, 0, 0, NULL),
(100, 'ironMan#100', 125, 0, 0, NULL),
(101, 'ironMan#101', 125, 0, 0, NULL),
(102, 'ironMan#102', 125, 0, 0, NULL),
(103, 'ironMan#103', 125, 0, 15, NULL),
(104, 'ironMan#104', 127, 0, 15, NULL),
(106, 'capt#106', 128, 0, 0, NULL),
(107, 'capt#107', 128, 0, 0, NULL),
(108, 'capt#108', 128, 0, 0, NULL),
(109, 'capt#109', 128, 0, 0, NULL),
(110, 'ironMan#110', 129, 0, 0, NULL),
(111, 'ironMan#111', 129, 0, 0, NULL),
(112, 'ironMan#112', 129, 0, 0, NULL),
(113, 'ironMan#113', 129, 0, 15, NULL),
(114, 'capt#114', 129, 0, 0, NULL),
(115, 'capt#115', 130, 0, 0, NULL),
(116, 'capt#116', 130, 0, 0, NULL),
(117, 'capt#117', 130, 0, 0, NULL),
(118, 'capt#118', 130, 0, 0, NULL),
(119, 'ironMan#119', 135, 0, 0, NULL),
(120, 'capt#120', 136, 0, 0, NULL),
(121, 'capt#121', 136, 0, 0, NULL),
(122, 'capt#122', 136, 0, 0, NULL),
(123, 'capt#123', 136, 0, 15, NULL),
(124, 'capt#124', 137, 0, 0, NULL),
(125, 'thor#125', 137, 0, 0, NULL),
(126, 'thor#126', 137, 0, 0, NULL),
(127, 'thor#127', 137, 0, 0, NULL),
(129, 'ironMan#129', 139, 0, 15, NULL),
(130, 'ironMan#130', 140, 0, 0, NULL),
(131, 'ironMan#131', 140, 0, 0, NULL),
(132, 'ironMan#132', 140, 0, 0, NULL),
(133, 'ironMan#133', 140, 0, 0, NULL),
(136, 'thor#136', 140, 0, 0, NULL),
(143, 'ironMan#143', 140, 0, 15, NULL),
(144, 'ironMan#144', 141, 0, 0, NULL),
(146, 'thor#146', 142, 0, 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `igrac`
--

DROP TABLE IF EXISTS `igrac`;
CREATE TABLE IF NOT EXISTS `igrac` (
  `BrojPartija` int(11) DEFAULT NULL,
  `BrojPobeda` int(11) DEFAULT NULL,
  `BrojPoraza` int(11) DEFAULT NULL,
  `Username` varchar(8) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `igrac`
--

INSERT INTO `igrac` (`BrojPartija`, `BrojPobeda`, `BrojPoraza`, `Username`) VALUES
(18, 14, 2, 'capt'),
(NULL, NULL, NULL, 'thor'),
(1, 1, 0, 'Wolfie');

-- --------------------------------------------------------

--
-- Table structure for table `igrao`
--

DROP TABLE IF EXISTS `igrao`;
CREATE TABLE IF NOT EXISTS `igrao` (
  `IdPartija` int(11) NOT NULL,
  `BrojPoena` int(11) DEFAULT NULL,
  `Username` varchar(8) NOT NULL,
  `Ishod` varchar(5) DEFAULT NULL,
  `NaPitanju` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPartija`,`Username`),
  KEY `R_18` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `igrao`
--

INSERT INTO `igrao` (`IdPartija`, `BrojPoena`, `Username`, `Ishod`, `NaPitanju`) VALUES
(1, 1, 'capt', 'left', NULL),
(1, 0, 'Wolfie', 'left', NULL),
(2, 10, 'capt', 'left', NULL),
(9, NULL, 'capt', 'left', NULL),
(11, NULL, 'capt', 'left', NULL),
(12, NULL, 'capt', 'left', NULL),
(13, NULL, 'capt', 'left', NULL),
(14, NULL, 'capt', 'left', NULL),
(15, NULL, 'capt', 'left', NULL),
(16, NULL, 'capt', 'left', NULL),
(17, NULL, 'capt', 'left', NULL),
(18, NULL, 'capt', 'left', NULL),
(19, NULL, 'capt', 'left', NULL),
(20, NULL, 'capt', 'left', NULL),
(21, 0, 'capt', 'left', NULL),
(22, 0, 'capt', 'left', NULL),
(23, 0, 'capt', 'left', NULL),
(24, 0, 'capt', 'left', NULL),
(25, 0, 'capt', 'left', NULL),
(26, 23, 'capt', 'left', NULL),
(27, 11, 'capt', 'left', NULL),
(29, 25, 'capt', 'left', NULL),
(30, 16, 'capt', 'left', NULL),
(31, 13, 'capt', 'left', NULL),
(32, 14, 'capt', 'left', NULL),
(33, 14, 'capt', 'left', NULL),
(34, 17, 'capt', 'left', NULL),
(35, 13, 'capt', 'left', NULL),
(36, 12, 'capt', 'left', NULL),
(37, 17, 'capt', 'win', NULL),
(38, 0, 'capt', 'left', NULL),
(39, 16, 'capt', 'lose', NULL),
(40, 0, 'capt', 'left', NULL),
(41, 0, 'capt', 'left', NULL),
(42, 0, 'capt', 'win', NULL),
(43, 0, 'capt', 'lose', NULL),
(44, 0, 'capt', 'win', NULL),
(45, 22, 'capt', 'draw', NULL),
(45, 15, 'thor', 'draw', NULL),
(46, 13, 'capt', 'win', NULL),
(47, 0, 'capt', 'lose', NULL),
(62, 0, 'capt', 'draw', NULL),
(64, 0, 'capt', 'left', NULL),
(64, 0, 'thor', 'left', NULL),
(67, 0, 'capt', 'draw', NULL),
(67, 0, 'thor', 'draw', NULL),
(69, 120, 'capt', 'left', 1),
(70, 1, 'capt', 'left', 1),
(70, 25, 'thor', 'left', 1),
(71, 14, 'capt', 'lose', 2),
(71, 35, 'thor', 'win', 2),
(72, 13, 'capt', 'left', 1),
(72, 4, 'thor', 'left', 1),
(73, 13, 'capt', 'left', 1),
(73, 11, 'thor', 'left', 1),
(74, 13, 'capt', 'left', 1),
(74, 12, 'thor', 'left', 1),
(75, 19, 'capt', 'win', 2),
(75, 2, 'thor', 'lose', 2),
(95, 24, 'Wolfie', 'left', 3),
(96, 109, 'Wolfie', 'win', 10),
(107, 0, 'capt', 'left', NULL),
(108, 0, 'capt', 'left', NULL),
(112, 7, 'Wolfie', 'left', 15),
(113, 0, 'Wolfie', 'left', NULL),
(115, 0, 'Wolfie', 'left', 15),
(116, 0, 'Wolfie', 'left', 15),
(117, 0, 'Wolfie', 'left', 15),
(122, 0, 'Wolfie', 'left', NULL),
(123, 0, 'Wolfie', 'left', 15),
(131, 0, 'Wolfie', 'left', 15),
(133, 0, 'Wolfie', 'left', NULL),
(134, 0, 'Wolfie', 'left', NULL),
(135, 0, 'Wolfie', 'left', 15),
(138, 0, 'Wolfie', 'left', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

DROP TABLE IF EXISTS `korisnik`;
CREATE TABLE IF NOT EXISTS `korisnik` (
  `Password` varchar(8) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Username` varchar(8) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`Password`, `Email`, `Username`) VALUES
('admin', 'admin@admin.rs', 'admin'),
('Sifra123', 'captain@gmail.com', 'capt'),
('Sifra123', 'ironman@gmail.com', 'ironMan'),
('Sifra123', 'thor@gmail.com', 'thor'),
('Sifra123', 'nikola@gmail.com', 'Wolfie');

-- --------------------------------------------------------

--
-- Table structure for table `moderator`
--

DROP TABLE IF EXISTS `moderator`;
CREATE TABLE IF NOT EXISTS `moderator` (
  `Username` varchar(8) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `moderator`
--

INSERT INTO `moderator` (`Username`) VALUES
('ironMan');

-- --------------------------------------------------------

--
-- Table structure for table `netacanodgovorna`
--

DROP TABLE IF EXISTS `netacanodgovorna`;
CREATE TABLE IF NOT EXISTS `netacanodgovorna` (
  `IdPitanje` int(11) NOT NULL,
  `IdOdgovor` int(11) NOT NULL,
  PRIMARY KEY (`IdPitanje`,`IdOdgovor`),
  KEY `R_3` (`IdOdgovor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `netacanodgovorna`
--

INSERT INTO `netacanodgovorna` (`IdPitanje`, `IdOdgovor`) VALUES
(7, 12),
(7, 13),
(7, 14),
(9, 20),
(9, 21),
(9, 22),
(10, 24),
(10, 25),
(10, 26),
(11, 28),
(11, 29),
(11, 30),
(12, 32),
(12, 33),
(12, 34),
(13, 36),
(13, 37),
(13, 38),
(14, 40),
(14, 41),
(14, 42),
(15, 44),
(15, 45),
(15, 46),
(16, 48),
(16, 49),
(16, 50),
(17, 52),
(17, 53),
(17, 54),
(18, 56),
(18, 57),
(18, 58),
(19, 60),
(19, 61),
(19, 62),
(20, 64),
(20, 65),
(20, 66),
(21, 68),
(21, 69),
(21, 70),
(22, 72),
(22, 73),
(22, 74),
(23, 76),
(23, 77),
(23, 78),
(24, 80),
(24, 81),
(24, 82),
(25, 84),
(25, 85),
(25, 86),
(26, 88),
(26, 89),
(26, 90),
(27, 92),
(27, 93),
(27, 94),
(28, 96),
(28, 97),
(28, 98),
(29, 100),
(29, 101),
(29, 102),
(30, 104),
(30, 105),
(30, 106),
(31, 108),
(31, 109),
(31, 110),
(32, 112),
(32, 113),
(32, 114),
(33, 116),
(33, 117),
(33, 118),
(34, 120),
(34, 121),
(34, 122),
(35, 124),
(35, 125),
(35, 126),
(36, 128),
(36, 129),
(36, 130),
(37, 132),
(37, 133),
(37, 134),
(38, 136),
(38, 137),
(38, 138),
(39, 140),
(39, 141),
(39, 142),
(40, 144),
(40, 145),
(40, 146),
(41, 148),
(41, 149),
(41, 150),
(42, 152),
(42, 153),
(42, 154),
(43, 156),
(43, 157),
(43, 158),
(44, 160),
(44, 161),
(44, 162),
(45, 164),
(45, 165),
(45, 166),
(46, 168),
(46, 169),
(46, 170),
(47, 172),
(47, 173),
(47, 174),
(48, 176),
(48, 177),
(48, 178),
(49, 180),
(49, 181),
(49, 182),
(50, 184),
(50, 185),
(50, 186),
(51, 188),
(51, 189),
(51, 190),
(52, 192),
(52, 193),
(52, 194),
(53, 196),
(53, 197),
(53, 198),
(54, 200),
(54, 201),
(54, 202),
(55, 204),
(55, 205),
(55, 206),
(56, 208),
(56, 209),
(56, 210),
(57, 212),
(57, 213),
(57, 214),
(58, 216),
(58, 217),
(58, 218),
(59, 220),
(59, 221),
(59, 222),
(60, 224),
(60, 225),
(60, 226),
(61, 228),
(61, 229),
(61, 230),
(62, 232),
(62, 233),
(62, 234),
(63, 236),
(63, 237),
(63, 238),
(64, 240),
(64, 241),
(64, 242),
(65, 244),
(65, 245),
(65, 246),
(66, 248),
(66, 249),
(66, 250),
(67, 252),
(67, 253),
(67, 254),
(68, 256),
(68, 257),
(68, 258),
(69, 260),
(69, 261),
(69, 262),
(70, 264),
(70, 265),
(70, 266),
(71, 268),
(71, 269),
(71, 270),
(72, 272),
(72, 273),
(72, 274),
(73, 276),
(73, 277),
(73, 278),
(74, 280),
(74, 281),
(74, 282),
(75, 284),
(75, 285),
(75, 286),
(76, 288),
(76, 289),
(76, 290),
(77, 292),
(77, 293),
(77, 294),
(78, 296),
(78, 297),
(78, 298),
(79, 300),
(79, 301),
(79, 302);

-- --------------------------------------------------------

--
-- Table structure for table `odgovor`
--

DROP TABLE IF EXISTS `odgovor`;
CREATE TABLE IF NOT EXISTS `odgovor` (
  `IdOdgovor` int(11) NOT NULL AUTO_INCREMENT,
  `Tekst` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`IdOdgovor`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `odgovor`
--

INSERT INTO `odgovor` (`IdOdgovor`, `Tekst`) VALUES
(1, 'Daniel Craig'),
(2, 'Josh Brolin'),
(3, 'Craig Ferguson'),
(4, 'Chris Hemsworth'),
(5, 'Robert Downey Jr'),
(6, 'Chris Evans'),
(7, 'You should have gone for the head'),
(8, 'I did not hit her'),
(9, 'It\'s not true'),
(10, 'I am inevitable'),
(11, 'You do not talk about Fight Club'),
(12, 'No shirts, no shoes'),
(13, 'Fight go on as long as they have to'),
(14, 'There are no rules at Fight Club'),
(19, 'Humphrey Bogart'),
(20, 'James Stewart'),
(21, 'Cary Grant'),
(22, 'Orson Welles'),
(23, 'Michael Curtiz'),
(24, 'Orson Welles'),
(25, 'Frank Capra'),
(26, 'John Ford'),
(27, 'Casablanca'),
(28, 'Citizen Kane'),
(29, 'It\'s a Wolderful Life'),
(30, 'The Third Man'),
(31, 'Rick Blaine'),
(32, 'Victor Laszlo'),
(33, 'Rick Dalton'),
(34, 'Victor Dalton'),
(35, 'Louis Renault'),
(36, 'Louis Peugeot'),
(37, 'Jules Renault'),
(38, 'Jules Peugeot'),
(39, 'Ryan Gosling'),
(40, 'Ryan Reynolds'),
(41, 'Jake Gyllenhaal'),
(42, 'Oscar Isaac'),
(43, 'Nicolas Winding Refn'),
(44, 'James Sallis'),
(45, 'Yorgos Lanthimos'),
(46, 'Lars von Trier'),
(47, 'Drive'),
(48, 'Rush'),
(49, 'Nightcrawler'),
(50, 'The Fast and the Furious: Tokyo Drift'),
(51, 'A toothpick'),
(52, 'A cigarette'),
(53, 'Nothing'),
(54, 'A chewing gum'),
(55, 'Jake Gyllenhaal'),
(56, 'Ryan Gosling'),
(57, 'Ryan Reynolds'),
(58, 'Oscar Isaac'),
(59, 'Denis Villeneuve'),
(60, 'James Sallis'),
(61, 'Yorgos Lanthimos'),
(62, 'Lars von Trier'),
(63, 'Enemy'),
(64, 'Prisoners'),
(65, 'Nightcrawler'),
(66, 'Brokeback Mountain'),
(67, 'A giant spider'),
(68, 'His wife with another man'),
(69, 'His dead wife'),
(70, 'A tiger'),
(71, 'Blade Runner 2049'),
(72, 'Mad Max:Fury Road'),
(73, 'Star Wars: Episode VII - The Force Awakens'),
(74, 'The Hobbit: An Unexpected Journey'),
(75, 'Edward Norton'),
(76, 'Ryan Gosling'),
(77, 'Ryan Reynolds'),
(78, 'Brad Pitt'),
(79, 'David Fincher'),
(80, 'Chuck Palahniuk'),
(81, 'Quentin Tarantino'),
(82, 'Christopher Nolan'),
(83, 'Chuck Palahniuk'),
(84, 'David Fincher'),
(85, 'Stephen King'),
(86, 'Terry Pratchett'),
(87, 'Fight Club'),
(88, 'Snatch'),
(89, 'The Fighter'),
(90, 'The Matrix'),
(91, 'Bitch tits'),
(92, 'Testicles'),
(93, 'A cap'),
(94, 'Red jacket'),
(95, 'Brad Pitt'),
(96, 'Edward Norton'),
(97, 'Ryan Gosling'),
(98, 'Ryan Reynolds'),
(99, 'Helena Bonham Carter'),
(100, 'Marion Cotillard'),
(101, 'Rosamund Pike'),
(102, 'Rooney Mara'),
(103, 'Edward Norton'),
(104, 'Ryan Gosling'),
(105, 'Ryan Reynolds'),
(106, 'Brad Pitt'),
(107, 'David Fincher'),
(108, 'Chuck Palahniuk'),
(109, 'Quentin Tarantino'),
(110, 'Christopher Nolan'),
(111, 'Chuck Palahniuk'),
(112, 'David Fincher'),
(113, 'Stephen King'),
(114, 'Terry Pratchett'),
(115, 'Fight Club'),
(116, 'Snatch'),
(117, 'The Fighter'),
(118, 'The Matrix'),
(119, '8'),
(120, '7'),
(121, '5'),
(122, '3'),
(123, 'You do not talk about Fight Club'),
(124, 'If this is your first night at Fight Club, you have to fight'),
(125, 'Only two guys to a fight'),
(126, 'One fight at a time'),
(127, 'You do not talk about Fight Club'),
(128, 'If this is your first night at Fight Club, you have to fight'),
(129, 'Fights will go on as long as they have to'),
(130, 'One fight at a time'),
(131, 'Someone yells stop,goes limp,taps out, the fight is over'),
(132, 'No shirts, no shoes'),
(133, 'Only two guys to a fight'),
(134, 'You do not talk about Fight Club'),
(135, 'Only two guys to a fight'),
(136, 'One fight at a time'),
(137, 'No shirts, no shoes'),
(138, 'You do not talk about Fight Club'),
(139, 'One fight at a time'),
(140, 'No shirts, no shoes'),
(141, 'Only two guys to a fight'),
(142, 'You do not talk about Fight Club'),
(143, 'No shirts, no shoes'),
(144, 'Fights will go on as long as they have to'),
(145, 'Only two guys to a fight'),
(146, 'You do not talk about Fight Club'),
(147, 'Fights will go on as long as they have to'),
(148, 'One fight at a time'),
(149, 'Only two guys to a fight'),
(150, 'You do not talk about Fight Club'),
(151, 'If this is your first night at Fight Club, you have to fight'),
(152, 'Fights will go on as long as they have to'),
(153, 'Only two guys to a fight'),
(154, 'You do not talk about Fight Club'),
(155, 'Brad Pitt'),
(156, 'Edward Norton'),
(157, 'Ryan Gosling'),
(158, 'Ryan Reynolds'),
(159, 'Helena Bonham Carter'),
(160, 'Marion Cotillard'),
(161, 'Rosamund Pike'),
(162, 'Rooney Mara'),
(163, 'Edward Norton'),
(164, 'Ryan Gosling'),
(165, 'Ryan Reynolds'),
(166, 'Brad Pitt'),
(167, 'David Fincher'),
(168, 'Chuck Palahniuk'),
(169, 'Quentin Tarantino'),
(170, 'Christopher Nolan'),
(171, 'Chuck Palahniuk'),
(172, 'David Fincher'),
(173, 'Stephen King'),
(174, 'Terry Pratchett'),
(175, 'Fight Club'),
(176, 'Snatch'),
(177, 'The Fighter'),
(178, 'The Matrix'),
(179, 'Brad Pitt'),
(180, 'Edward Norton'),
(181, 'Ryan Gosling'),
(182, 'Ryan Reynolds'),
(183, 'Helena Bonham Carter'),
(184, 'Marion Cotillard'),
(185, 'Rosamund Pike'),
(186, 'Rooney Mara'),
(187, 'You met me at a very strange time in my life.'),
(188, 'Stop trying to control everything and just let go!'),
(189, 'Only after disaster can we be resurrected.'),
(190, 'This is your life and it’s ending one minute at a time.'),
(191, '\'Where Is My Mind\' - The Pixies'),
(192, '\'No Love, No Nothing\' - Marlene Dietrich'),
(193, '\'Space Oddity\' - David Bowie'),
(194, '\'Baby, You\'re a Rich Man\' - The Beatles'),
(195, 'Tom Hanks'),
(196, 'Daniel Day-Lewis'),
(197, 'Tim Robbins'),
(198, 'Robert De Niro'),
(199, 'Robert Zemeckis'),
(200, 'Denis Villeneuve'),
(201, 'Damien Chazelle'),
(202, 'Steven Spielberg'),
(203, 'Winston Groom'),
(204, 'Chuck Palahniuk'),
(205, 'Stephen King'),
(206, 'Terry Pratchett'),
(207, 'Forrest Gump'),
(208, 'Saving Private Ryan'),
(209, 'Cast Away'),
(210, 'Munich'),
(211, 'Life was like a box of chocolates. You never know what you\'re gonna get.'),
(212, 'I really love good old chocolates.'),
(213, 'Sharing is caring.'),
(214, 'The first rule of Fight Club is: you do not talk about Fight Club.'),
(215, '9'),
(216, '53'),
(217, '121'),
(218, '7'),
(219, '6'),
(220, '5'),
(221, '10'),
(222, '3'),
(223, 'Tom Hanks'),
(224, 'Daniel Day-Lewis'),
(225, 'Tim Robbins'),
(226, 'Robert De Niro'),
(227, 'Robert Zemeckis'),
(228, 'Denis Villeneuve'),
(229, 'Damien Chazelle'),
(230, 'Steven Spielberg'),
(231, 'Winston Groom'),
(232, 'Chuck Palahniuk'),
(233, 'Stephen King'),
(234, 'Terry Pratchett'),
(235, 'Forrest Gump'),
(236, 'Saving Private Ryan'),
(237, 'Cast Away'),
(238, 'Munich'),
(239, 'Elvis Presley'),
(240, 'Buddy Holly'),
(241, 'Chuck Berry'),
(242, 'Freddie Mercury'),
(243, '6'),
(244, '5'),
(245, '3'),
(246, '10'),
(247, 'Tom Hanks'),
(248, 'Daniel Day-Lewis'),
(249, 'Tim Robbins'),
(250, 'Robert De Niro'),
(251, 'Robert Zemeckis'),
(252, 'Denis Villeneuve'),
(253, 'Damien Chazelle'),
(254, 'Steven Spielberg'),
(255, 'Winston Groom'),
(256, 'Chuck Palahniuk'),
(257, 'Stephen King'),
(258, 'Terry Pratchett'),
(259, 'Forrest Gump'),
(260, 'Saving Private Ryan'),
(261, 'Cast Away'),
(262, 'Munich'),
(263, '6'),
(264, '5'),
(265, '3'),
(266, '10'),
(267, 'John Lennon'),
(268, 'Paul McCartney'),
(269, 'Ringo Starr'),
(270, 'George Harrison'),
(271, '\'Imagine\' - John Lennon'),
(272, '\'Working Class Hero\' - John Lennon'),
(273, '\'A Day in the Life\' - The Beatles'),
(274, '\'What is Life\' - George Harrison'),
(275, 'Gary Sinise'),
(276, 'Tim Robbins'),
(277, 'Jeff Bridges'),
(278, 'David Huddleston'),
(279, 'Apple'),
(280, 'Fruit of the Loom'),
(281, 'Pear'),
(282, 'Always Fresh'),
(283, '6'),
(284, '12'),
(285, '1'),
(286, '3'),
(287, 'Tom Hanks'),
(288, 'Daniel Day-Lewis'),
(289, 'Tim Robbins'),
(290, 'Robert De Niro'),
(291, 'Robert Zemeckis'),
(292, 'Denis Villeneuve'),
(293, 'Steven Spielberg'),
(294, 'Damien Chazelle'),
(295, 'Winston Groom'),
(296, 'Chuck Palahniuk'),
(297, 'Terry Pratchett'),
(298, 'Stephen King'),
(299, 'Forrest Gump'),
(300, 'Saving Private Ryan'),
(301, 'Cast Away'),
(302, 'Munich');

-- --------------------------------------------------------

--
-- Table structure for table `partija`
--

DROP TABLE IF EXISTS `partija`;
CREATE TABLE IF NOT EXISTS `partija` (
  `IdPartija` int(11) NOT NULL AUTO_INCREMENT,
  `Datum` date NOT NULL,
  `BrojIgraca` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPartija`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `partija`
--

INSERT INTO `partija` (`IdPartija`, `Datum`, `BrojIgraca`) VALUES
(1, '2019-05-22', 4),
(2, '2019-05-23', 4),
(3, '2019-05-22', 4),
(4, '2019-05-22', 4),
(5, '2019-05-22', 4),
(9, '0000-00-00', 4),
(11, '2019-05-28', 4),
(12, '2019-05-29', 4),
(13, '2019-05-29', 4),
(14, '2019-05-29', 4),
(15, '2019-05-29', 4),
(16, '2019-05-29', 4),
(17, '2019-05-29', 4),
(18, '2019-05-29', 4),
(19, '2019-05-29', 4),
(20, '2019-05-29', 4),
(21, '2019-05-29', 4),
(22, '2019-05-29', 4),
(23, '2019-05-29', 4),
(24, '2019-05-29', 4),
(25, '2019-05-29', 4),
(26, '2019-05-29', 4),
(27, '2019-05-29', 4),
(29, '2019-05-30', 4),
(30, '2019-05-30', 4),
(31, '2019-05-30', 4),
(32, '2019-05-30', 4),
(33, '2019-05-30', 4),
(34, '2019-05-30', 4),
(35, '2019-05-30', 4),
(36, '2019-05-30', 4),
(37, '2019-05-30', 4),
(38, '2019-05-31', 4),
(39, '2019-05-31', 4),
(40, '2019-05-31', 4),
(41, '2019-05-31', 4),
(42, '2019-05-31', 4),
(43, '2019-05-31', 4),
(44, '2019-05-31', 4),
(45, '2019-05-31', 4),
(46, '2019-05-31', 4),
(47, '2019-05-31', 4),
(62, '2019-05-31', 4),
(64, '2019-05-31', 4),
(67, '2019-05-31', 4),
(69, '2019-06-04', 4),
(70, '2019-06-05', 4),
(71, '2019-06-05', 4),
(72, '2019-06-05', 4),
(73, '2019-06-05', 4),
(74, '2019-06-05', 4),
(75, '2019-06-05', 4),
(76, '2019-06-05', 4),
(77, '2019-06-05', 4),
(78, '2019-06-05', 4),
(79, '2019-06-05', 4),
(80, '2019-06-05', 4),
(81, '2019-06-05', 4),
(82, '2019-06-05', 4),
(83, '2019-06-05', 4),
(84, '2019-06-05', 4),
(85, '2019-06-05', 4),
(86, '2019-06-05', 4),
(87, '2019-06-06', 4),
(88, '2019-06-06', 4),
(89, '2019-06-06', 4),
(90, '2019-06-06', 4),
(91, '2019-06-06', 4),
(92, '2019-06-06', 4),
(93, '2019-06-06', 4),
(94, '2019-06-06', 4),
(95, '2019-06-06', 4),
(96, '2019-06-06', 4),
(97, '2019-06-06', 4),
(98, '2019-06-06', 4),
(99, '2019-06-07', 4),
(100, '2019-06-07', 4),
(101, '2019-06-07', 4),
(102, '2019-06-07', 4),
(103, '2019-06-07', 4),
(104, '2019-06-07', 4),
(105, '2019-06-07', 4),
(106, '2019-06-07', 4),
(107, '2019-06-07', 4),
(108, '2019-06-07', 4),
(109, '2019-06-07', 4),
(110, '2019-06-07', 4),
(112, '2019-06-07', 4),
(113, '2019-06-07', 4),
(115, '2019-06-07', 4),
(116, '2019-06-07', 4),
(117, '2019-06-07', 4),
(119, '2019-06-07', 4),
(120, '2019-06-07', 4),
(121, '2019-06-07', 4),
(122, '2019-06-07', 4),
(123, '2019-06-07', 4),
(124, '2019-06-07', 4),
(125, '2019-06-07', 4),
(127, '2019-06-07', 4),
(128, '2019-06-07', 4),
(129, '2019-06-07', 4),
(130, '2019-06-07', 4),
(131, '2019-06-07', 4),
(133, '2019-06-07', 4),
(134, '2019-06-07', 4),
(135, '2019-06-07', 4),
(136, '2019-06-07', 4),
(137, '2019-06-07', 4),
(138, '2019-06-07', 4),
(139, '2019-06-07', 4),
(140, '2019-06-07', 4),
(141, '2019-06-07', 4),
(142, '2019-06-07', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pitanje`
--

DROP TABLE IF EXISTS `pitanje`;
CREATE TABLE IF NOT EXISTS `pitanje` (
  `IdPitanje` int(11) NOT NULL AUTO_INCREMENT,
  `Likes` int(11) NOT NULL,
  `Dislikes` int(11) NOT NULL,
  `Tekst` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IdTacan` int(11) NOT NULL,
  `IdScena` int(11) NOT NULL,
  `Odobreno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IdPitanje`),
  KEY `R_1` (`IdTacan`),
  KEY `R_4` (`IdScena`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pitanje`
--

INSERT INTO `pitanje` (`IdPitanje`, `Likes`, `Dislikes`, `Tekst`, `IdTacan`, `IdScena`, `Odobreno`) VALUES
(7, 0, 0, 'What is the first rule of Fight Club?', 11, 4, 'jeste'),
(9, 0, 0, 'What\'s the name of the actor in the leading role?', 19, 13, 'jeste'),
(10, 0, 0, 'Who directed this movie?', 23, 13, 'jeste'),
(11, 0, 0, 'What\'s the name of the movie?', 27, 13, 'jeste'),
(12, 0, 0, 'Name of the main character?', 31, 13, 'jeste'),
(13, 0, 0, 'What\'s the name of the famous captain?', 35, 13, 'jeste'),
(14, 0, 0, 'What\'s the name of the actor in the leading role?', 39, 12, 'jeste'),
(15, 0, 0, 'Who directed this movie?', 43, 12, 'jeste'),
(16, 0, 0, 'What\'s the name of the movie?', 47, 12, 'jeste'),
(17, 0, 0, 'What does the Driver have in his mouth?', 51, 12, 'jeste'),
(18, 0, 0, 'What\'s the name of the actor in the leading role?', 55, 11, 'jeste'),
(19, 0, 0, 'Who directed this movie?', 59, 11, 'jeste'),
(20, 0, 0, 'What\'s the name of the movie?', 63, 11, 'jeste'),
(21, 0, 0, 'What does Jake Gyllenhaal find in the room?', 67, 11, 'jeste'),
(22, 0, 0, 'What\'s the name of the famous sequel, that the director of this movie made?', 71, 11, 'jeste'),
(23, 0, 0, 'What\'s the name of the actor in the leading role?', 75, 3, 'jeste'),
(24, 0, 0, 'Who directed this movie?', 79, 3, 'jeste'),
(25, 0, 0, 'Who wrote the novel that this movie is based on?', 83, 3, 'jeste'),
(26, 0, 0, 'What\'s the name of the movie?', 87, 3, 'jeste'),
(27, 0, 0, 'What did Bob have?', 91, 3, 'jeste'),
(28, 0, 0, 'What\'s the name of the actor in the supporting role?', 95, 3, 'jeste'),
(29, 0, 0, 'What\'s the name of the actress in the supporting role?', 99, 3, 'jeste'),
(30, 0, 0, 'What\'s the name of the actor in the leading role?', 103, 4, 'jeste'),
(31, 0, 0, 'Who directed this movie?', 107, 4, 'jeste'),
(32, 0, 0, 'Who wrote the novel that this movie is based on?', 111, 4, 'jeste'),
(33, 0, 0, 'What\'s the name of the movie?', 115, 4, 'jeste'),
(34, 0, 0, 'How many rules are there in Fight Club?', 119, 4, 'jeste'),
(35, 0, 0, 'The first rule of Fight Club is...', 123, 4, 'jeste'),
(36, 0, 0, 'The second rule of Fight Club is...', 127, 4, 'jeste'),
(37, 0, 0, 'What\'s the third rule of Fight Club?', 131, 4, 'jeste'),
(38, 0, 0, 'What\'s the fourth rule of Fight Club?', 135, 4, 'jeste'),
(39, 0, 0, 'What\'s the fifth rule of Fight Club?', 139, 4, 'jeste'),
(40, 0, 0, 'What\'s the sixth rule of Fight Club?', 143, 4, 'jeste'),
(41, 0, 0, 'What\'s the seventh rule of Fight Club?', 147, 4, 'jeste'),
(42, 0, 0, 'What\'s the eighth rule of Fight Club?', 151, 4, 'jeste'),
(43, 0, 0, 'What\'s the name of the actor in the supporting role?', 155, 4, 'jeste'),
(44, 0, 0, 'What\'s the name of the actress in the supporting role?', 159, 4, 'jeste'),
(45, 0, 1, 'What\'s the name of the actor in the leading role?', 163, 5, 'jeste'),
(46, 0, 0, 'Who directed this movie?', 167, 5, 'jeste'),
(47, 0, 0, 'Who wrote the novel that this movie is based on?', 171, 5, 'jeste'),
(48, 0, 0, 'What\'s the name of the movie?', 175, 5, 'jeste'),
(49, 0, 0, 'What\'s the name of the actor in the supporting role?', 179, 5, 'jeste'),
(50, 0, 0, 'What\'s the name of the actress in the supporting role?', 183, 5, 'jeste'),
(51, 0, 0, 'What is the famous line that the Narrator says to Marla?', 187, 5, 'jeste'),
(52, 0, 0, 'What\'s the name of the song in the background?', 191, 5, 'jeste'),
(53, 0, 0, 'What\'s the name of the actor in the leading role?', 195, 7, 'jeste'),
(54, 0, 0, 'Who directed this movie?', 199, 7, 'jeste'),
(55, 0, 0, 'Who wrote the novel that this movie is based on?', 203, 7, 'jeste'),
(56, 0, 0, 'What\'s the name of the movie?', 207, 7, 'jeste'),
(57, 0, 0, 'What did Forrest\'s mama always say?', 211, 7, 'jeste'),
(58, 0, 0, 'What bus number is Forrest waiting for?', 215, 7, 'jeste'),
(59, 0, 0, 'How many Oscars did Forrest Gump win?', 219, 7, 'jeste'),
(60, 0, 0, 'What\'s the name of the actor in the leading role?', 223, 8, 'jeste'),
(61, 0, 0, 'Who directed this movie?', 227, 8, 'jeste'),
(62, 0, 0, 'Who wrote the novel that this movie is based on?', 231, 8, 'jeste'),
(63, 0, 0, 'What\'s the name of the movie?', 235, 8, 'jeste'),
(64, 0, 0, 'Which rockstar did copy Forrest\'s dance moves?', 239, 8, 'jeste'),
(65, 0, 0, 'How many Oscars did Forrest Gump win?', 243, 8, 'jeste'),
(66, 0, 0, 'What\'s the name of the actor in the leading role?', 247, 9, 'jeste'),
(67, 0, 0, 'Who directed this movie?', 251, 9, 'jeste'),
(68, 0, 0, 'Who wrote the novel that this movie is based on?', 255, 9, 'jeste'),
(69, 0, 0, 'What\'s the name of the movie?', 259, 9, 'jeste'),
(70, 0, 0, 'How many Oscars did Forrest Gump win?', 263, 9, 'jeste'),
(71, 1, 0, 'Which Beatle did Forrest meet?', 267, 9, 'jeste'),
(72, 0, 0, 'Lyrics of what song are represented in the conversation?', 271, 9, 'jeste'),
(73, 0, 0, 'What actor plays the role of Lieutenant Dan?', 275, 10, 'jeste'),
(74, 0, 0, 'What was the fruit company?', 279, 10, 'jeste'),
(75, 0, 0, 'How many Oscars did Forrest Gump win?', 283, 10, 'jeste'),
(76, 0, 0, 'What\'s the name of the actor in the leading role?', 287, 10, 'jeste'),
(77, 0, 0, 'Who directed this movie?', 291, 10, 'jeste'),
(78, 0, 0, 'Who wrote the novel that this movie is based on?', 295, 10, 'jeste'),
(79, 0, 0, 'What\'s the name of the movie?', 299, 10, 'jeste');

-- --------------------------------------------------------

--
-- Table structure for table `scena`
--

DROP TABLE IF EXISTS `scena`;
CREATE TABLE IF NOT EXISTS `scena` (
  `IdScena` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(20) DEFAULT NULL,
  `IdFilm` int(11) NOT NULL,
  PRIMARY KEY (`IdScena`),
  KEY `R_6` (`IdFilm`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `scena`
--

INSERT INTO `scena` (`IdScena`, `Naziv`, `IdFilm`) VALUES
(3, 'Fight Club 1', 5),
(4, 'Fight Club 2', 5),
(5, 'Fight Club 3', 5),
(6, 'Fight Club 4', 5),
(7, 'Forrest Gump 1', 6),
(8, 'Forrest Gump 2', 6),
(9, 'Forrest Gump 3', 6),
(10, 'Forrest Gump 4', 6),
(11, 'Enemy', 8),
(12, 'Driver', 9),
(13, 'Casablanca', 7);

-- --------------------------------------------------------

--
-- Table structure for table `trivia`
--

DROP TABLE IF EXISTS `trivia`;
CREATE TABLE IF NOT EXISTS `trivia` (
  `IdTrivia` int(11) NOT NULL AUTO_INCREMENT,
  `Tekst` varchar(50) NOT NULL,
  `IdFilm` int(11) NOT NULL,
  PRIMARY KEY (`IdTrivia`),
  KEY `R_7` (`IdFilm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vip`
--

DROP TABLE IF EXISTS `vip`;
CREATE TABLE IF NOT EXISTS `vip` (
  `Username` varchar(8) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vip`
--

INSERT INTO `vip` (`Username`) VALUES
('capt'),
('thor');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `R_15` FOREIGN KEY (`Username`) REFERENCES `korisnik` (`Username`) ON DELETE CASCADE;

--
-- Constraints for table `bilou`
--
ALTER TABLE `bilou`
  ADD CONSTRAINT `R_19` FOREIGN KEY (`IdPartija`) REFERENCES `partija` (`IdPartija`) ON DELETE CASCADE,
  ADD CONSTRAINT `R_20` FOREIGN KEY (`IdPitanje`) REFERENCES `pitanje` (`IdPitanje`) ON DELETE CASCADE;

--
-- Constraints for table `gost`
--
ALTER TABLE `gost`
  ADD CONSTRAINT `R_21` FOREIGN KEY (`IdPartija`) REFERENCES `partija` (`IdPartija`);

--
-- Constraints for table `igrac`
--
ALTER TABLE `igrac`
  ADD CONSTRAINT `R_14` FOREIGN KEY (`Username`) REFERENCES `korisnik` (`Username`) ON DELETE CASCADE;

--
-- Constraints for table `igrao`
--
ALTER TABLE `igrao`
  ADD CONSTRAINT `R_12` FOREIGN KEY (`IdPartija`) REFERENCES `partija` (`IdPartija`) ON DELETE CASCADE,
  ADD CONSTRAINT `R_18` FOREIGN KEY (`Username`) REFERENCES `igrac` (`Username`) ON DELETE CASCADE;

--
-- Constraints for table `moderator`
--
ALTER TABLE `moderator`
  ADD CONSTRAINT `R_16` FOREIGN KEY (`Username`) REFERENCES `korisnik` (`Username`) ON DELETE CASCADE;

--
-- Constraints for table `netacanodgovorna`
--
ALTER TABLE `netacanodgovorna`
  ADD CONSTRAINT `R_2` FOREIGN KEY (`IdPitanje`) REFERENCES `pitanje` (`IdPitanje`) ON DELETE CASCADE,
  ADD CONSTRAINT `R_3` FOREIGN KEY (`IdOdgovor`) REFERENCES `odgovor` (`IdOdgovor`) ON DELETE CASCADE;

--
-- Constraints for table `pitanje`
--
ALTER TABLE `pitanje`
  ADD CONSTRAINT `R_1` FOREIGN KEY (`IdTacan`) REFERENCES `odgovor` (`IdOdgovor`),
  ADD CONSTRAINT `R_4` FOREIGN KEY (`IdScena`) REFERENCES `scena` (`IdScena`);

--
-- Constraints for table `scena`
--
ALTER TABLE `scena`
  ADD CONSTRAINT `R_6` FOREIGN KEY (`IdFilm`) REFERENCES `film` (`IdFilm`);

--
-- Constraints for table `trivia`
--
ALTER TABLE `trivia`
  ADD CONSTRAINT `R_7` FOREIGN KEY (`IdFilm`) REFERENCES `film` (`IdFilm`);

--
-- Constraints for table `vip`
--
ALTER TABLE `vip`
  ADD CONSTRAINT `R_17` FOREIGN KEY (`Username`) REFERENCES `igrac` (`Username`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
