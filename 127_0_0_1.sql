-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2019 at 01:51 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajaxtest`
--
CREATE DATABASE IF NOT EXISTS `ajaxtest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ajaxtest`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, ''),
(2, 'John Doe'),
(3, 'John Doe2'),
(4, 'callum wyness'),
(5, 'Jeff Joe'),
(6, 'Hussain Mehdi'),
(7, 'John Doe3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `grid`
--
CREATE DATABASE IF NOT EXISTS `grid` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `grid`;

-- --------------------------------------------------------

--
-- Table structure for table `gridcells`
--

CREATE TABLE `gridcells` (
  `id` int(11) NOT NULL,
  `hilighted` tinyint(1) NOT NULL,
  `col` int(11) NOT NULL,
  `row` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gridcells`
--

INSERT INTO `gridcells` (`id`, `hilighted`, `col`, `row`) VALUES
(0, 0, 0, 0),
(1, 0, 1, 0),
(2, 0, 2, 0),
(3, 0, 3, 0),
(4, 0, 4, 0),
(5, 0, 5, 0),
(6, 0, 6, 0),
(7, 0, 7, 0),
(8, 0, 8, 0),
(9, 0, 9, 0),
(10, 0, 10, 0),
(11, 0, 11, 0),
(12, 0, 12, 0),
(13, 0, 13, 0),
(14, 0, 14, 0),
(15, 0, 15, 0),
(16, 0, 16, 0),
(17, 0, 17, 0),
(18, 0, 18, 0),
(19, 0, 19, 0),
(20, 0, 20, 0),
(21, 0, 21, 0),
(22, 0, 22, 0),
(23, 0, 23, 0),
(24, 0, 24, 0),
(25, 0, 25, 0),
(26, 0, 26, 0),
(27, 0, 27, 0),
(28, 0, 28, 0),
(29, 0, 29, 0),
(30, 0, 0, 1),
(31, 0, 1, 1),
(32, 0, 2, 1),
(33, 0, 3, 1),
(34, 0, 4, 1),
(35, 0, 5, 1),
(36, 0, 6, 1),
(37, 0, 7, 1),
(38, 0, 8, 1),
(39, 0, 9, 1),
(40, 0, 10, 1),
(41, 0, 11, 1),
(42, 0, 12, 1),
(43, 0, 13, 1),
(44, 0, 14, 1),
(45, 0, 15, 1),
(46, 0, 16, 1),
(47, 0, 17, 1),
(48, 0, 18, 1),
(49, 0, 19, 1),
(50, 0, 20, 1),
(51, 0, 21, 1),
(52, 0, 22, 1),
(53, 0, 23, 1),
(54, 0, 24, 1),
(55, 0, 25, 1),
(56, 0, 26, 1),
(57, 0, 27, 1),
(58, 0, 28, 1),
(59, 0, 29, 1),
(60, 0, 0, 2),
(61, 0, 1, 2),
(62, 0, 2, 2),
(63, 0, 3, 2),
(64, 0, 4, 2),
(65, 0, 5, 2),
(66, 0, 6, 2),
(67, 0, 7, 2),
(68, 0, 8, 2),
(69, 0, 9, 2),
(70, 0, 10, 2),
(71, 0, 11, 2),
(72, 0, 12, 2),
(73, 0, 13, 2),
(74, 0, 14, 2),
(75, 0, 15, 2),
(76, 0, 16, 2),
(77, 0, 17, 2),
(78, 0, 18, 2),
(79, 0, 19, 2),
(80, 0, 20, 2),
(81, 0, 21, 2),
(82, 0, 22, 2),
(83, 0, 23, 2),
(84, 0, 24, 2),
(85, 0, 25, 2),
(86, 0, 26, 2),
(87, 0, 27, 2),
(88, 0, 28, 2),
(89, 0, 29, 2),
(90, 0, 0, 3),
(91, 0, 1, 3),
(92, 0, 2, 3),
(93, 0, 3, 3),
(94, 0, 4, 3),
(95, 0, 5, 3),
(96, 0, 6, 3),
(97, 0, 7, 3),
(98, 0, 8, 3),
(99, 0, 9, 3),
(100, 0, 10, 3),
(101, 0, 11, 3),
(102, 0, 12, 3),
(103, 0, 13, 3),
(104, 0, 14, 3),
(105, 0, 15, 3),
(106, 0, 16, 3),
(107, 0, 17, 3),
(108, 0, 18, 3),
(109, 0, 19, 3),
(110, 0, 20, 3),
(111, 0, 21, 3),
(112, 0, 22, 3),
(113, 0, 23, 3),
(114, 0, 24, 3),
(115, 0, 25, 3),
(116, 0, 26, 3),
(117, 0, 27, 3),
(118, 0, 28, 3),
(119, 0, 29, 3),
(120, 0, 0, 4),
(121, 0, 1, 4),
(122, 0, 2, 4),
(123, 0, 3, 4),
(124, 0, 4, 4),
(125, 0, 5, 4),
(126, 0, 6, 4),
(127, 0, 7, 4),
(128, 0, 8, 4),
(129, 0, 9, 4),
(130, 0, 10, 4),
(131, 0, 11, 4),
(132, 0, 12, 4),
(133, 0, 13, 4),
(134, 0, 14, 4),
(135, 0, 15, 4),
(136, 0, 16, 4),
(137, 0, 17, 4),
(138, 0, 18, 4),
(139, 0, 19, 4),
(140, 0, 20, 4),
(141, 0, 21, 4),
(142, 0, 22, 4),
(143, 0, 23, 4),
(144, 0, 24, 4),
(145, 0, 25, 4),
(146, 0, 26, 4),
(147, 0, 27, 4),
(148, 0, 28, 4),
(149, 0, 29, 4),
(150, 0, 0, 5),
(151, 0, 1, 5),
(152, 0, 2, 5),
(153, 0, 3, 5),
(154, 0, 4, 5),
(155, 0, 5, 5),
(156, 0, 6, 5),
(157, 0, 7, 5),
(158, 0, 8, 5),
(159, 0, 9, 5),
(160, 0, 10, 5),
(161, 0, 11, 5),
(162, 0, 12, 5),
(163, 0, 13, 5),
(164, 0, 14, 5),
(165, 0, 15, 5),
(166, 0, 16, 5),
(167, 0, 17, 5),
(168, 0, 18, 5),
(169, 0, 19, 5),
(170, 0, 20, 5),
(171, 0, 21, 5),
(172, 0, 22, 5),
(173, 0, 23, 5),
(174, 0, 24, 5),
(175, 0, 25, 5),
(176, 0, 26, 5),
(177, 0, 27, 5),
(178, 0, 28, 5),
(179, 0, 29, 5),
(180, 0, 0, 6),
(181, 0, 1, 6),
(182, 0, 2, 6),
(183, 0, 3, 6),
(184, 0, 4, 6),
(185, 0, 5, 6),
(186, 0, 6, 6),
(187, 0, 7, 6),
(188, 0, 8, 6),
(189, 0, 9, 6),
(190, 0, 10, 6),
(191, 0, 11, 6),
(192, 0, 12, 6),
(193, 0, 13, 6),
(194, 0, 14, 6),
(195, 0, 15, 6),
(196, 0, 16, 6),
(197, 0, 17, 6),
(198, 0, 18, 6),
(199, 0, 19, 6),
(200, 0, 20, 6),
(201, 0, 21, 6),
(202, 0, 22, 6),
(203, 0, 23, 6),
(204, 0, 24, 6),
(205, 0, 25, 6),
(206, 0, 26, 6),
(207, 0, 27, 6),
(208, 0, 28, 6),
(209, 0, 29, 6),
(210, 0, 0, 7),
(211, 0, 1, 7),
(212, 0, 2, 7),
(213, 0, 3, 7),
(214, 0, 4, 7),
(215, 0, 5, 7),
(216, 0, 6, 7),
(217, 0, 7, 7),
(218, 0, 8, 7),
(219, 0, 9, 7),
(220, 1, 10, 7),
(221, 0, 11, 7),
(222, 0, 12, 7),
(223, 0, 13, 7),
(224, 0, 14, 7),
(225, 0, 15, 7),
(226, 0, 16, 7),
(227, 0, 17, 7),
(228, 0, 18, 7),
(229, 0, 19, 7),
(230, 0, 20, 7),
(231, 0, 21, 7),
(232, 0, 22, 7),
(233, 0, 23, 7),
(234, 0, 24, 7),
(235, 0, 25, 7),
(236, 0, 26, 7),
(237, 0, 27, 7),
(238, 0, 28, 7),
(239, 0, 29, 7),
(240, 0, 0, 8),
(241, 0, 1, 8),
(242, 0, 2, 8),
(243, 0, 3, 8),
(244, 0, 4, 8),
(245, 0, 5, 8),
(246, 0, 6, 8),
(247, 0, 7, 8),
(248, 0, 8, 8),
(249, 0, 9, 8),
(250, 1, 10, 8),
(251, 1, 11, 8),
(252, 1, 12, 8),
(253, 1, 13, 8),
(254, 0, 14, 8),
(255, 0, 15, 8),
(256, 0, 16, 8),
(257, 0, 17, 8),
(258, 0, 18, 8),
(259, 0, 19, 8),
(260, 0, 20, 8),
(261, 0, 21, 8),
(262, 0, 22, 8),
(263, 0, 23, 8),
(264, 0, 24, 8),
(265, 0, 25, 8),
(266, 0, 26, 8),
(267, 0, 27, 8),
(268, 0, 28, 8),
(269, 0, 29, 8),
(270, 0, 0, 9),
(271, 0, 1, 9),
(272, 0, 2, 9),
(273, 0, 3, 9),
(274, 0, 4, 9),
(275, 0, 5, 9),
(276, 0, 6, 9),
(277, 0, 7, 9),
(278, 0, 8, 9),
(279, 0, 9, 9),
(280, 0, 10, 9),
(281, 0, 11, 9),
(282, 1, 12, 9),
(283, 1, 13, 9),
(284, 0, 14, 9),
(285, 0, 15, 9),
(286, 0, 16, 9),
(287, 0, 17, 9),
(288, 0, 18, 9),
(289, 0, 19, 9),
(290, 0, 20, 9),
(291, 0, 21, 9),
(292, 0, 22, 9),
(293, 0, 23, 9),
(294, 0, 24, 9),
(295, 0, 25, 9),
(296, 0, 26, 9),
(297, 0, 27, 9),
(298, 0, 28, 9),
(299, 0, 29, 9),
(300, 0, 0, 10),
(301, 0, 1, 10),
(302, 0, 2, 10),
(303, 0, 3, 10),
(304, 0, 4, 10),
(305, 0, 5, 10),
(306, 0, 6, 10),
(307, 0, 7, 10),
(308, 0, 8, 10),
(309, 0, 9, 10),
(310, 0, 10, 10),
(311, 0, 11, 10),
(312, 0, 12, 10),
(313, 0, 13, 10),
(314, 0, 14, 10),
(315, 0, 15, 10),
(316, 0, 16, 10),
(317, 0, 17, 10),
(318, 0, 18, 10),
(319, 0, 19, 10),
(320, 0, 20, 10),
(321, 0, 21, 10),
(322, 0, 22, 10),
(323, 0, 23, 10),
(324, 0, 24, 10),
(325, 0, 25, 10),
(326, 0, 26, 10),
(327, 0, 27, 10),
(328, 0, 28, 10),
(329, 0, 29, 10),
(330, 0, 0, 11),
(331, 0, 1, 11),
(332, 0, 2, 11),
(333, 0, 3, 11),
(334, 0, 4, 11),
(335, 0, 5, 11),
(336, 0, 6, 11),
(337, 0, 7, 11),
(338, 0, 8, 11),
(339, 0, 9, 11),
(340, 0, 10, 11),
(341, 0, 11, 11),
(342, 0, 12, 11),
(343, 0, 13, 11),
(344, 0, 14, 11),
(345, 0, 15, 11),
(346, 0, 16, 11),
(347, 0, 17, 11),
(348, 0, 18, 11),
(349, 0, 19, 11),
(350, 0, 20, 11),
(351, 0, 21, 11),
(352, 0, 22, 11),
(353, 0, 23, 11),
(354, 0, 24, 11),
(355, 0, 25, 11),
(356, 0, 26, 11),
(357, 0, 27, 11),
(358, 0, 28, 11),
(359, 0, 29, 11),
(360, 0, 0, 12),
(361, 0, 1, 12),
(362, 0, 2, 12),
(363, 0, 3, 12),
(364, 0, 4, 12),
(365, 0, 5, 12),
(366, 0, 6, 12),
(367, 0, 7, 12),
(368, 0, 8, 12),
(369, 0, 9, 12),
(370, 0, 10, 12),
(371, 0, 11, 12),
(372, 0, 12, 12),
(373, 0, 13, 12),
(374, 0, 14, 12),
(375, 0, 15, 12),
(376, 0, 16, 12),
(377, 0, 17, 12),
(378, 0, 18, 12),
(379, 0, 19, 12),
(380, 0, 20, 12),
(381, 0, 21, 12),
(382, 0, 22, 12),
(383, 0, 23, 12),
(384, 0, 24, 12),
(385, 0, 25, 12),
(386, 0, 26, 12),
(387, 0, 27, 12),
(388, 0, 28, 12),
(389, 0, 29, 12),
(390, 0, 0, 13),
(391, 0, 1, 13),
(392, 0, 2, 13),
(393, 0, 3, 13),
(394, 0, 4, 13),
(395, 0, 5, 13),
(396, 0, 6, 13),
(397, 0, 7, 13),
(398, 0, 8, 13),
(399, 0, 9, 13),
(400, 0, 10, 13),
(401, 0, 11, 13),
(402, 0, 12, 13),
(403, 0, 13, 13),
(404, 0, 14, 13),
(405, 0, 15, 13),
(406, 0, 16, 13),
(407, 0, 17, 13),
(408, 0, 18, 13),
(409, 0, 19, 13),
(410, 0, 20, 13),
(411, 0, 21, 13),
(412, 0, 22, 13),
(413, 0, 23, 13),
(414, 0, 24, 13),
(415, 0, 25, 13),
(416, 0, 26, 13),
(417, 0, 27, 13),
(418, 0, 28, 13),
(419, 0, 29, 13),
(420, 0, 0, 14),
(421, 0, 1, 14),
(422, 0, 2, 14),
(423, 0, 3, 14),
(424, 0, 4, 14),
(425, 0, 5, 14),
(426, 0, 6, 14),
(427, 0, 7, 14),
(428, 0, 8, 14),
(429, 0, 9, 14),
(430, 0, 10, 14),
(431, 0, 11, 14),
(432, 0, 12, 14),
(433, 0, 13, 14),
(434, 0, 14, 14),
(435, 0, 15, 14),
(436, 0, 16, 14),
(437, 0, 17, 14),
(438, 0, 18, 14),
(439, 0, 19, 14),
(440, 0, 20, 14),
(441, 0, 21, 14),
(442, 0, 22, 14),
(443, 0, 23, 14),
(444, 0, 24, 14),
(445, 0, 25, 14),
(446, 0, 26, 14),
(447, 0, 27, 14),
(448, 0, 28, 14),
(449, 0, 29, 14),
(450, 0, 0, 15),
(451, 0, 1, 15),
(452, 0, 2, 15),
(453, 0, 3, 15),
(454, 0, 4, 15),
(455, 0, 5, 15),
(456, 0, 6, 15),
(457, 0, 7, 15),
(458, 0, 8, 15),
(459, 0, 9, 15),
(460, 0, 10, 15),
(461, 0, 11, 15),
(462, 0, 12, 15),
(463, 0, 13, 15),
(464, 0, 14, 15),
(465, 0, 15, 15),
(466, 0, 16, 15),
(467, 0, 17, 15),
(468, 0, 18, 15),
(469, 0, 19, 15),
(470, 0, 20, 15),
(471, 0, 21, 15),
(472, 0, 22, 15),
(473, 0, 23, 15),
(474, 0, 24, 15),
(475, 0, 25, 15),
(476, 0, 26, 15),
(477, 0, 27, 15),
(478, 0, 28, 15),
(479, 0, 29, 15),
(480, 0, 0, 16),
(481, 0, 1, 16),
(482, 0, 2, 16),
(483, 0, 3, 16),
(484, 0, 4, 16),
(485, 0, 5, 16),
(486, 0, 6, 16),
(487, 0, 7, 16),
(488, 0, 8, 16),
(489, 0, 9, 16),
(490, 0, 10, 16),
(491, 0, 11, 16),
(492, 0, 12, 16),
(493, 0, 13, 16),
(494, 0, 14, 16),
(495, 0, 15, 16),
(496, 0, 16, 16),
(497, 0, 17, 16),
(498, 0, 18, 16),
(499, 0, 19, 16),
(500, 0, 20, 16),
(501, 0, 21, 16),
(502, 0, 22, 16),
(503, 0, 23, 16),
(504, 0, 24, 16),
(505, 0, 25, 16),
(506, 0, 26, 16),
(507, 0, 27, 16),
(508, 0, 28, 16),
(509, 0, 29, 16),
(510, 0, 0, 17),
(511, 0, 1, 17),
(512, 0, 2, 17),
(513, 0, 3, 17),
(514, 0, 4, 17),
(515, 0, 5, 17),
(516, 0, 6, 17),
(517, 0, 7, 17),
(518, 0, 8, 17),
(519, 0, 9, 17),
(520, 0, 10, 17),
(521, 0, 11, 17),
(522, 0, 12, 17),
(523, 0, 13, 17),
(524, 0, 14, 17),
(525, 0, 15, 17),
(526, 0, 16, 17),
(527, 0, 17, 17),
(528, 0, 18, 17),
(529, 0, 19, 17),
(530, 0, 20, 17),
(531, 0, 21, 17),
(532, 0, 22, 17),
(533, 0, 23, 17),
(534, 0, 24, 17),
(535, 0, 25, 17),
(536, 0, 26, 17),
(537, 0, 27, 17),
(538, 0, 28, 17),
(539, 0, 29, 17),
(540, 0, 0, 18),
(541, 0, 1, 18),
(542, 0, 2, 18),
(543, 0, 3, 18),
(544, 0, 4, 18),
(545, 0, 5, 18),
(546, 0, 6, 18),
(547, 0, 7, 18),
(548, 0, 8, 18),
(549, 0, 9, 18),
(550, 0, 10, 18),
(551, 0, 11, 18),
(552, 0, 12, 18),
(553, 0, 13, 18),
(554, 0, 14, 18),
(555, 0, 15, 18),
(556, 0, 16, 18),
(557, 0, 17, 18),
(558, 0, 18, 18),
(559, 0, 19, 18),
(560, 0, 20, 18),
(561, 0, 21, 18),
(562, 0, 22, 18),
(563, 0, 23, 18),
(564, 0, 24, 18),
(565, 0, 25, 18),
(566, 0, 26, 18),
(567, 0, 27, 18),
(568, 0, 28, 18),
(569, 0, 29, 18),
(570, 0, 0, 19),
(571, 0, 1, 19),
(572, 0, 2, 19),
(573, 0, 3, 19),
(574, 0, 4, 19),
(575, 0, 5, 19),
(576, 0, 6, 19),
(577, 0, 7, 19),
(578, 0, 8, 19),
(579, 0, 9, 19),
(580, 0, 10, 19),
(581, 0, 11, 19),
(582, 0, 12, 19),
(583, 0, 13, 19),
(584, 0, 14, 19),
(585, 0, 15, 19),
(586, 0, 16, 19),
(587, 0, 17, 19),
(588, 0, 18, 19),
(589, 0, 19, 19),
(590, 0, 20, 19),
(591, 0, 21, 19),
(592, 0, 22, 19),
(593, 0, 23, 19),
(594, 0, 24, 19),
(595, 0, 25, 19),
(596, 0, 26, 19),
(597, 0, 27, 19),
(598, 0, 28, 19),
(599, 0, 29, 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gridcells`
--
ALTER TABLE `gridcells`
  ADD PRIMARY KEY (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"grid\",\"table\":\"gridcells\"},{\"db\":\"grid\",\"table\":\"grid numbers\"},{\"db\":\"ajaxtest\",\"table\":\"users\"},{\"db\":\"grid\",\"table\":\"Grid Numbers\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'grid', 'gridcells', '[]', '2019-10-08 07:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-08 10:49:54', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
