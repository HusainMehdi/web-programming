-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2019 at 06:09 AM
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
-- Database: `grid`
--

-- --------------------------------------------------------

--
-- Table structure for table `gridcells`
--

CREATE TABLE `gridcells` (
  `id` int(11) NOT NULL,
  `hilighted` tinyint(1) NOT NULL,
  `col` int(11) NOT NULL,
  `row` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `colour` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gridcells`
--

INSERT INTO `gridcells` (`id`, `hilighted`, `col`, `row`, `owner`, `colour`, `state`) VALUES
(0, 1, 0, 0, '', 'white', ''),
(1, 1, 1, 0, '', 'white', ''),
(2, 1, 2, 0, '', 'white', ''),
(3, 1, 3, 0, '', 'white', ''),
(4, 1, 4, 0, '', 'white', ''),
(5, 1, 5, 0, '', 'white', ''),
(6, 1, 6, 0, '', 'white', ''),
(7, 1, 7, 0, '', 'white', ''),
(8, 1, 8, 0, '', 'white', ''),
(9, 1, 9, 0, '', 'white', ''),
(10, 1, 10, 0, '', 'white', ''),
(11, 1, 11, 0, '', 'white', ''),
(12, 1, 12, 0, '', 'white', ''),
(13, 1, 13, 0, '', 'white', ''),
(14, 1, 14, 0, '', 'white', ''),
(15, 1, 15, 0, '', 'white', ''),
(16, 1, 16, 0, '', 'white', ''),
(17, 1, 17, 0, '', 'white', ''),
(18, 1, 18, 0, '', 'white', ''),
(19, 1, 19, 0, '', 'white', ''),
(20, 1, 20, 0, '', 'white', ''),
(21, 1, 21, 0, '', 'white', ''),
(22, 1, 22, 0, '', 'white', ''),
(23, 1, 23, 0, '', 'white', ''),
(24, 1, 24, 0, '', 'white', ''),
(25, 1, 25, 0, '', 'white', ''),
(26, 1, 26, 0, '', 'white', ''),
(27, 1, 27, 0, '', 'white', ''),
(28, 1, 28, 0, '', 'white', ''),
(29, 1, 29, 0, '', 'white', ''),
(30, 1, 0, 1, '', 'white', ''),
(31, 1, 1, 1, '', 'white', ''),
(32, 1, 2, 1, '', 'white', ''),
(33, 1, 3, 1, '', 'white', ''),
(34, 1, 4, 1, '', 'white', ''),
(35, 1, 5, 1, '', 'white', ''),
(36, 1, 6, 1, '', 'white', ''),
(37, 1, 7, 1, '', 'white', ''),
(38, 1, 8, 1, 'e', 'blue', 'Scissors'),
(39, 1, 9, 1, '', 'white', ''),
(40, 1, 10, 1, '', 'white', ''),
(41, 1, 11, 1, '', 'white', ''),
(42, 1, 12, 1, '', 'white', ''),
(43, 1, 13, 1, '', 'white', ''),
(44, 1, 14, 1, '', 'white', ''),
(45, 1, 15, 1, '', 'white', ''),
(46, 1, 16, 1, '', 'white', ''),
(47, 1, 17, 1, '', 'white', ''),
(48, 1, 18, 1, '', 'white', ''),
(49, 1, 19, 1, '', 'white', ''),
(50, 1, 20, 1, '', 'white', ''),
(51, 1, 21, 1, '', 'white', ''),
(52, 1, 22, 1, '', 'white', ''),
(53, 1, 23, 1, '', 'white', ''),
(54, 1, 24, 1, '', 'white', ''),
(55, 1, 25, 1, '', 'white', ''),
(56, 1, 26, 1, '', 'white', ''),
(57, 1, 27, 1, '', 'white', ''),
(58, 1, 28, 1, '', 'white', ''),
(59, 1, 29, 1, '', 'white', ''),
(60, 1, 0, 2, '', 'white', ''),
(61, 1, 1, 2, '', 'white', ''),
(62, 1, 2, 2, '', 'white', ''),
(63, 1, 3, 2, '', 'white', ''),
(64, 1, 4, 2, '', 'white', ''),
(65, 1, 5, 2, '', 'white', ''),
(66, 1, 6, 2, '', 'white', ''),
(67, 1, 7, 2, '', 'white', ''),
(68, 1, 8, 2, 'e', 'blue', 'Scissors'),
(69, 1, 9, 2, '', 'white', ''),
(70, 1, 10, 2, '', 'white', ''),
(71, 1, 11, 2, '', 'white', ''),
(72, 1, 12, 2, '', 'white', ''),
(73, 1, 13, 2, '', 'white', ''),
(74, 1, 14, 2, '', 'white', ''),
(75, 1, 15, 2, '', 'white', ''),
(76, 1, 16, 2, '', 'white', ''),
(77, 1, 17, 2, '', 'white', ''),
(78, 1, 18, 2, '', 'white', ''),
(79, 1, 19, 2, '', 'white', ''),
(80, 1, 20, 2, '', 'white', ''),
(81, 1, 21, 2, '', 'white', ''),
(82, 1, 22, 2, '', 'white', ''),
(83, 1, 23, 2, '', 'white', ''),
(84, 1, 24, 2, '', 'white', ''),
(85, 1, 25, 2, '', 'white', ''),
(86, 1, 26, 2, '', 'white', ''),
(87, 1, 27, 2, '', 'white', ''),
(88, 1, 28, 2, '', 'white', ''),
(89, 1, 29, 2, '', 'white', ''),
(90, 1, 0, 3, '', 'white', ''),
(91, 1, 1, 3, '', 'white', ''),
(92, 1, 2, 3, '', 'white', ''),
(93, 1, 3, 3, '', 'white', ''),
(94, 1, 4, 3, '', 'white', ''),
(95, 1, 5, 3, '', 'white', ''),
(96, 1, 6, 3, '', 'white', ''),
(97, 1, 7, 3, '', 'white', ''),
(98, 1, 8, 3, 'e', 'blue', 'Scissors'),
(99, 1, 9, 3, '', 'white', ''),
(100, 1, 10, 3, '', 'white', ''),
(101, 1, 11, 3, '', 'white', ''),
(102, 1, 12, 3, '', 'white', ''),
(103, 1, 13, 3, '', 'white', ''),
(104, 1, 14, 3, '', 'white', ''),
(105, 1, 15, 3, '', 'white', ''),
(106, 1, 16, 3, '', 'white', ''),
(107, 1, 17, 3, '', 'white', ''),
(108, 1, 18, 3, '', 'white', ''),
(109, 1, 19, 3, '', 'white', ''),
(110, 1, 20, 3, '', 'white', ''),
(111, 1, 21, 3, '', 'white', ''),
(112, 1, 22, 3, '', 'white', ''),
(113, 1, 23, 3, '', 'white', ''),
(114, 1, 24, 3, '', 'white', ''),
(115, 1, 25, 3, '', 'white', ''),
(116, 1, 26, 3, '', 'white', ''),
(117, 1, 27, 3, '', 'white', ''),
(118, 1, 28, 3, '', 'white', ''),
(119, 1, 29, 3, '', 'white', ''),
(120, 1, 0, 4, '', 'white', ''),
(121, 1, 1, 4, '', 'white', ''),
(122, 1, 2, 4, '', 'white', ''),
(123, 1, 3, 4, '', 'white', ''),
(124, 1, 4, 4, '', 'white', ''),
(125, 1, 5, 4, '', 'white', ''),
(126, 1, 6, 4, '', 'white', ''),
(127, 1, 7, 4, '', 'white', ''),
(128, 1, 8, 4, 'e', 'blue', 'Scissors'),
(129, 1, 9, 4, '', 'white', ''),
(130, 1, 10, 4, '', 'white', ''),
(131, 1, 11, 4, '', 'white', ''),
(132, 1, 12, 4, '', 'white', ''),
(133, 1, 13, 4, '', 'white', ''),
(134, 1, 14, 4, '', 'white', ''),
(135, 1, 15, 4, '', 'white', ''),
(136, 1, 16, 4, '', 'white', ''),
(137, 1, 17, 4, '', 'white', ''),
(138, 1, 18, 4, '', 'white', ''),
(139, 1, 19, 4, '', 'white', ''),
(140, 1, 20, 4, '', 'white', ''),
(141, 1, 21, 4, '', 'white', ''),
(142, 1, 22, 4, '', 'white', ''),
(143, 1, 23, 4, '', 'white', ''),
(144, 1, 24, 4, '', 'white', ''),
(145, 1, 25, 4, '', 'white', ''),
(146, 1, 26, 4, '', 'white', ''),
(147, 1, 27, 4, '', 'white', ''),
(148, 1, 28, 4, '', 'white', ''),
(149, 1, 29, 4, '', 'white', ''),
(150, 1, 0, 5, '', 'white', ''),
(151, 1, 1, 5, '', 'white', ''),
(152, 1, 2, 5, '', 'white', ''),
(153, 1, 3, 5, '', 'white', ''),
(154, 1, 4, 5, '', 'white', ''),
(155, 1, 5, 5, '', 'white', ''),
(156, 1, 6, 5, '', 'white', ''),
(157, 1, 7, 5, '', 'white', ''),
(158, 1, 8, 5, 'e', 'blue', 'Scissors'),
(159, 1, 9, 5, '', 'white', ''),
(160, 1, 10, 5, '', 'white', ''),
(161, 1, 11, 5, '', 'white', ''),
(162, 1, 12, 5, '', 'white', ''),
(163, 1, 13, 5, '', 'white', ''),
(164, 1, 14, 5, '', 'white', ''),
(165, 1, 15, 5, '', 'white', ''),
(166, 1, 16, 5, '', 'white', ''),
(167, 1, 17, 5, '', 'white', ''),
(168, 1, 18, 5, '', 'white', ''),
(169, 1, 19, 5, '', 'white', ''),
(170, 1, 20, 5, '', 'white', ''),
(171, 1, 21, 5, '', 'white', ''),
(172, 1, 22, 5, '', 'white', ''),
(173, 1, 23, 5, '', 'white', ''),
(174, 1, 24, 5, '', 'white', ''),
(175, 1, 25, 5, '', 'white', ''),
(176, 1, 26, 5, '', 'white', ''),
(177, 1, 27, 5, '', 'white', ''),
(178, 1, 28, 5, '', 'white', ''),
(179, 1, 29, 5, '', 'white', ''),
(180, 1, 0, 6, '', 'white', ''),
(181, 1, 1, 6, '', 'white', ''),
(182, 1, 2, 6, '', 'white', ''),
(183, 1, 3, 6, '', 'white', ''),
(184, 1, 4, 6, '', 'white', ''),
(185, 1, 5, 6, '', 'white', ''),
(186, 1, 6, 6, '', 'white', ''),
(187, 1, 7, 6, '', 'white', ''),
(188, 1, 8, 6, 'e', 'blue', 'Scissors'),
(189, 1, 9, 6, '', 'white', ''),
(190, 1, 10, 6, '', 'white', ''),
(191, 1, 11, 6, '', 'white', ''),
(192, 1, 12, 6, '', 'white', ''),
(193, 1, 13, 6, '', 'white', ''),
(194, 1, 14, 6, '', 'white', ''),
(195, 1, 15, 6, '', 'white', ''),
(196, 1, 16, 6, '', 'white', ''),
(197, 1, 17, 6, '', 'white', ''),
(198, 1, 18, 6, '', 'white', ''),
(199, 1, 19, 6, '', 'white', ''),
(200, 1, 20, 6, '', 'white', ''),
(201, 1, 21, 6, '', 'white', ''),
(202, 1, 22, 6, '', 'white', ''),
(203, 1, 23, 6, '', 'white', ''),
(204, 1, 24, 6, '', 'white', ''),
(205, 1, 25, 6, '', 'white', ''),
(206, 1, 26, 6, '', 'white', ''),
(207, 1, 27, 6, '', 'white', ''),
(208, 1, 28, 6, '', 'white', ''),
(209, 1, 29, 6, '', 'white', ''),
(210, 1, 0, 7, '', 'white', ''),
(211, 1, 1, 7, '', 'white', ''),
(212, 1, 2, 7, '', 'white', ''),
(213, 1, 3, 7, '', 'white', ''),
(214, 1, 4, 7, '', 'white', ''),
(215, 1, 5, 7, '', 'white', ''),
(216, 1, 6, 7, '', 'white', ''),
(217, 1, 7, 7, '', 'white', ''),
(218, 1, 8, 7, 'e', 'blue', 'Scissors'),
(219, 1, 9, 7, '', 'white', ''),
(220, 1, 10, 7, '', 'white', ''),
(221, 1, 11, 7, '', 'white', ''),
(222, 1, 12, 7, '', 'white', ''),
(223, 1, 13, 7, '', 'white', ''),
(224, 1, 14, 7, '', 'white', ''),
(225, 1, 15, 7, '', 'white', ''),
(226, 1, 16, 7, '', 'white', ''),
(227, 1, 17, 7, '', 'white', ''),
(228, 1, 18, 7, '', 'white', ''),
(229, 1, 19, 7, '', 'white', ''),
(230, 1, 20, 7, '', 'white', ''),
(231, 1, 21, 7, '', 'white', ''),
(232, 1, 22, 7, '', 'white', ''),
(233, 1, 23, 7, '', 'white', ''),
(234, 1, 24, 7, '', 'white', ''),
(235, 1, 25, 7, '', 'white', ''),
(236, 1, 26, 7, '', 'white', ''),
(237, 1, 27, 7, '', 'white', ''),
(238, 1, 28, 7, '', 'white', ''),
(239, 1, 29, 7, '', 'white', ''),
(240, 1, 0, 8, '', 'white', ''),
(241, 1, 1, 8, '', 'white', ''),
(242, 1, 2, 8, '', 'white', ''),
(243, 1, 3, 8, '', 'white', ''),
(244, 1, 4, 8, '', 'white', ''),
(245, 1, 5, 8, '', 'white', ''),
(246, 1, 6, 8, '', 'white', ''),
(247, 1, 7, 8, '', 'white', ''),
(248, 1, 8, 8, 'e', 'blue', 'Scissors'),
(249, 1, 9, 8, '', 'white', ''),
(250, 1, 10, 8, '', 'white', ''),
(251, 1, 11, 8, '', 'white', ''),
(252, 1, 12, 8, '', 'white', ''),
(253, 1, 13, 8, '', 'white', ''),
(254, 1, 14, 8, '', 'white', ''),
(255, 1, 15, 8, '', 'white', ''),
(256, 1, 16, 8, '', 'white', ''),
(257, 1, 17, 8, '', 'white', ''),
(258, 1, 18, 8, '', 'white', ''),
(259, 1, 19, 8, '', 'white', ''),
(260, 1, 20, 8, '', 'white', ''),
(261, 1, 21, 8, '', 'white', ''),
(262, 1, 22, 8, '', 'white', ''),
(263, 1, 23, 8, '', 'white', ''),
(264, 1, 24, 8, '', 'white', ''),
(265, 1, 25, 8, '', 'white', ''),
(266, 1, 26, 8, '', 'white', ''),
(267, 1, 27, 8, '', 'white', ''),
(268, 1, 28, 8, '', 'white', ''),
(269, 1, 29, 8, '', 'white', ''),
(270, 1, 0, 9, '', 'white', ''),
(271, 1, 1, 9, '', 'white', ''),
(272, 1, 2, 9, '', 'white', ''),
(273, 1, 3, 9, '', 'white', ''),
(274, 1, 4, 9, '', 'white', ''),
(275, 1, 5, 9, '', 'white', ''),
(276, 1, 6, 9, '', 'white', ''),
(277, 1, 7, 9, '', 'white', ''),
(278, 1, 8, 9, 'e', 'blue', 'Scissors'),
(279, 1, 9, 9, '', 'white', ''),
(280, 1, 10, 9, '', 'white', ''),
(281, 1, 11, 9, '', 'white', ''),
(282, 1, 12, 9, '', 'white', ''),
(283, 1, 13, 9, '', 'white', ''),
(284, 1, 14, 9, '', 'white', ''),
(285, 1, 15, 9, '', 'white', ''),
(286, 1, 16, 9, '', 'white', ''),
(287, 1, 17, 9, '', 'white', ''),
(288, 1, 18, 9, '', 'white', ''),
(289, 1, 19, 9, '', 'white', ''),
(290, 1, 20, 9, '', 'white', ''),
(291, 1, 21, 9, '', 'white', ''),
(292, 1, 22, 9, '', 'white', ''),
(293, 1, 23, 9, '', 'white', ''),
(294, 1, 24, 9, '', 'white', ''),
(295, 1, 25, 9, '', 'white', ''),
(296, 1, 26, 9, '', 'white', ''),
(297, 1, 27, 9, '', 'white', ''),
(298, 1, 28, 9, '', 'white', ''),
(299, 1, 29, 9, '', 'white', ''),
(300, 1, 0, 10, '', 'white', ''),
(301, 1, 1, 10, '', 'white', ''),
(302, 1, 2, 10, '', 'white', ''),
(303, 1, 3, 10, '', 'white', ''),
(304, 1, 4, 10, '', 'white', ''),
(305, 1, 5, 10, '', 'white', ''),
(306, 1, 6, 10, '', 'white', ''),
(307, 1, 7, 10, '', 'white', ''),
(308, 1, 8, 10, 'e', 'blue', 'Scissors'),
(309, 1, 9, 10, '', 'white', ''),
(310, 1, 10, 10, '', 'white', ''),
(311, 1, 11, 10, '', 'white', ''),
(312, 1, 12, 10, '', 'white', ''),
(313, 1, 13, 10, '', 'white', ''),
(314, 1, 14, 10, '', 'white', ''),
(315, 1, 15, 10, '', 'white', ''),
(316, 1, 16, 10, '', 'white', ''),
(317, 1, 17, 10, '', 'white', ''),
(318, 1, 18, 10, '', 'white', ''),
(319, 1, 19, 10, '', 'white', ''),
(320, 1, 20, 10, '', 'white', ''),
(321, 1, 21, 10, '', 'white', ''),
(322, 1, 22, 10, '', 'white', ''),
(323, 1, 23, 10, '', 'white', ''),
(324, 1, 24, 10, '', 'white', ''),
(325, 1, 25, 10, '', 'white', ''),
(326, 1, 26, 10, '', 'white', ''),
(327, 1, 27, 10, '', 'white', ''),
(328, 1, 28, 10, '', 'white', ''),
(329, 1, 29, 10, '', 'white', ''),
(330, 1, 0, 11, '', 'white', ''),
(331, 1, 1, 11, '', 'white', ''),
(332, 1, 2, 11, '', 'white', ''),
(333, 1, 3, 11, '', 'white', ''),
(334, 1, 4, 11, '', 'white', ''),
(335, 1, 5, 11, '', 'white', ''),
(336, 1, 6, 11, '', 'white', ''),
(337, 1, 7, 11, '', 'white', ''),
(338, 1, 8, 11, 'e', 'blue', 'Scissors'),
(339, 1, 9, 11, '', 'white', ''),
(340, 1, 10, 11, '', 'white', ''),
(341, 1, 11, 11, '', 'white', ''),
(342, 1, 12, 11, '', 'white', ''),
(343, 1, 13, 11, '', 'white', ''),
(344, 1, 14, 11, '', 'white', ''),
(345, 1, 15, 11, '', 'white', ''),
(346, 1, 16, 11, '', 'white', ''),
(347, 1, 17, 11, '', 'white', ''),
(348, 1, 18, 11, '', 'white', ''),
(349, 1, 19, 11, '', 'white', ''),
(350, 1, 20, 11, '', 'white', ''),
(351, 1, 21, 11, '', 'white', ''),
(352, 1, 22, 11, '', 'white', ''),
(353, 1, 23, 11, '', 'white', ''),
(354, 1, 24, 11, '', 'white', ''),
(355, 1, 25, 11, '', 'white', ''),
(356, 1, 26, 11, '', 'white', ''),
(357, 1, 27, 11, '', 'white', ''),
(358, 1, 28, 11, '', 'white', ''),
(359, 1, 29, 11, '', 'white', ''),
(360, 1, 0, 12, '', 'white', ''),
(361, 1, 1, 12, '', 'white', ''),
(362, 1, 2, 12, '', 'white', ''),
(363, 1, 3, 12, '', 'white', ''),
(364, 1, 4, 12, '', 'white', ''),
(365, 1, 5, 12, '', 'white', ''),
(366, 1, 6, 12, '', 'white', ''),
(367, 1, 7, 12, '', 'white', ''),
(368, 1, 8, 12, 'e', 'blue', 'Scissors'),
(369, 1, 9, 12, '', 'white', ''),
(370, 1, 10, 12, '', 'white', ''),
(371, 1, 11, 12, '', 'white', ''),
(372, 1, 12, 12, '', 'white', ''),
(373, 1, 13, 12, '', 'white', ''),
(374, 1, 14, 12, '', 'white', ''),
(375, 1, 15, 12, '', 'white', ''),
(376, 1, 16, 12, '', 'white', ''),
(377, 1, 17, 12, '', 'white', ''),
(378, 1, 18, 12, '', 'white', ''),
(379, 1, 19, 12, '', 'white', ''),
(380, 1, 20, 12, '', 'white', ''),
(381, 1, 21, 12, '', 'white', ''),
(382, 1, 22, 12, '', 'white', ''),
(383, 1, 23, 12, '', 'white', ''),
(384, 1, 24, 12, '', 'white', ''),
(385, 1, 25, 12, '', 'white', ''),
(386, 1, 26, 12, '', 'white', ''),
(387, 1, 27, 12, '', 'white', ''),
(388, 1, 28, 12, '', 'white', ''),
(389, 1, 29, 12, '', 'white', ''),
(390, 1, 0, 13, '', 'white', ''),
(391, 1, 1, 13, '', 'white', ''),
(392, 1, 2, 13, '', 'white', ''),
(393, 1, 3, 13, '', 'white', ''),
(394, 1, 4, 13, '', 'white', ''),
(395, 1, 5, 13, '', 'white', ''),
(396, 1, 6, 13, '', 'white', ''),
(397, 1, 7, 13, '', 'white', ''),
(398, 1, 8, 13, 'e', 'blue', 'Scissors'),
(399, 1, 9, 13, '', 'white', ''),
(400, 1, 10, 13, '', 'white', ''),
(401, 1, 11, 13, '', 'white', ''),
(402, 1, 12, 13, '', 'white', ''),
(403, 1, 13, 13, '', 'white', ''),
(404, 1, 14, 13, '', 'white', ''),
(405, 1, 15, 13, '', 'white', ''),
(406, 1, 16, 13, '', 'white', ''),
(407, 1, 17, 13, '', 'white', ''),
(408, 1, 18, 13, '', 'white', ''),
(409, 1, 19, 13, '', 'white', ''),
(410, 1, 20, 13, '', 'white', ''),
(411, 1, 21, 13, '', 'white', ''),
(412, 1, 22, 13, '', 'white', ''),
(413, 1, 23, 13, '', 'white', ''),
(414, 1, 24, 13, '', 'white', ''),
(415, 1, 25, 13, '', 'white', ''),
(416, 1, 26, 13, '', 'white', ''),
(417, 1, 27, 13, '', 'white', ''),
(418, 1, 28, 13, '', 'white', ''),
(419, 1, 29, 13, '', 'white', ''),
(420, 1, 0, 14, '', 'white', ''),
(421, 1, 1, 14, '', 'white', ''),
(422, 1, 2, 14, '', 'white', ''),
(423, 1, 3, 14, '', 'white', ''),
(424, 1, 4, 14, '', 'white', ''),
(425, 1, 5, 14, '', 'white', ''),
(426, 1, 6, 14, '', 'white', ''),
(427, 1, 7, 14, '', 'white', ''),
(428, 1, 8, 14, 'e', 'blue', 'Scissors'),
(429, 1, 9, 14, '', 'white', ''),
(430, 1, 10, 14, '', 'white', ''),
(431, 1, 11, 14, '', 'white', ''),
(432, 1, 12, 14, '', 'white', ''),
(433, 1, 13, 14, '', 'white', ''),
(434, 1, 14, 14, '', 'white', ''),
(435, 1, 15, 14, '', 'white', ''),
(436, 1, 16, 14, '', 'white', ''),
(437, 1, 17, 14, '', 'white', ''),
(438, 1, 18, 14, '', 'white', ''),
(439, 1, 19, 14, '', 'white', ''),
(440, 1, 20, 14, '', 'white', ''),
(441, 1, 21, 14, '', 'white', ''),
(442, 1, 22, 14, '', 'white', ''),
(443, 1, 23, 14, '', 'white', ''),
(444, 1, 24, 14, '', 'white', ''),
(445, 1, 25, 14, '', 'white', ''),
(446, 1, 26, 14, '', 'white', ''),
(447, 1, 27, 14, '', 'white', ''),
(448, 1, 28, 14, '', 'white', ''),
(449, 1, 29, 14, '', 'white', ''),
(450, 1, 0, 15, '', 'white', ''),
(451, 1, 1, 15, '', 'white', ''),
(452, 1, 2, 15, '', 'white', ''),
(453, 1, 3, 15, '', 'white', ''),
(454, 1, 4, 15, '', 'white', ''),
(455, 1, 5, 15, '', 'white', ''),
(456, 1, 6, 15, '', 'white', ''),
(457, 1, 7, 15, '', 'white', ''),
(458, 1, 8, 15, 'e', 'blue', 'Scissors'),
(459, 1, 9, 15, '', 'white', ''),
(460, 1, 10, 15, '', 'white', ''),
(461, 1, 11, 15, '', 'white', ''),
(462, 1, 12, 15, '', 'white', ''),
(463, 1, 13, 15, '', 'white', ''),
(464, 1, 14, 15, '', 'white', ''),
(465, 1, 15, 15, '', 'white', ''),
(466, 1, 16, 15, '', 'white', ''),
(467, 1, 17, 15, '', 'white', ''),
(468, 1, 18, 15, '', 'white', ''),
(469, 1, 19, 15, '', 'white', ''),
(470, 1, 20, 15, '', 'white', ''),
(471, 1, 21, 15, '', 'white', ''),
(472, 1, 22, 15, '', 'white', ''),
(473, 1, 23, 15, '', 'white', ''),
(474, 1, 24, 15, '', 'white', ''),
(475, 1, 25, 15, '', 'white', ''),
(476, 1, 26, 15, '', 'white', ''),
(477, 1, 27, 15, '', 'white', ''),
(478, 1, 28, 15, '', 'white', ''),
(479, 1, 29, 15, '', 'white', ''),
(480, 1, 0, 16, '', 'white', ''),
(481, 1, 1, 16, '', 'white', ''),
(482, 1, 2, 16, '', 'white', ''),
(483, 1, 3, 16, '', 'white', ''),
(484, 1, 4, 16, '', 'white', ''),
(485, 1, 5, 16, '', 'white', ''),
(486, 1, 6, 16, '', 'white', ''),
(487, 1, 7, 16, '', 'white', ''),
(488, 1, 8, 16, 'e', 'blue', 'Scissors'),
(489, 1, 9, 16, '', 'white', ''),
(490, 1, 10, 16, '', 'white', ''),
(491, 1, 11, 16, '', 'white', ''),
(492, 1, 12, 16, '', 'white', ''),
(493, 1, 13, 16, '', 'white', ''),
(494, 1, 14, 16, '', 'white', ''),
(495, 1, 15, 16, '', 'white', ''),
(496, 1, 16, 16, '', 'white', ''),
(497, 1, 17, 16, '', 'white', ''),
(498, 1, 18, 16, '', 'white', ''),
(499, 1, 19, 16, '', 'white', ''),
(500, 1, 20, 16, '', 'white', ''),
(501, 1, 21, 16, '', 'white', ''),
(502, 1, 22, 16, '', 'white', ''),
(503, 1, 23, 16, '', 'white', ''),
(504, 1, 24, 16, '', 'white', ''),
(505, 1, 25, 16, '', 'white', ''),
(506, 1, 26, 16, '', 'white', ''),
(507, 1, 27, 16, '', 'white', ''),
(508, 1, 28, 16, '', 'white', ''),
(509, 1, 29, 16, '', 'white', ''),
(510, 1, 0, 17, '', 'white', ''),
(511, 1, 1, 17, '', 'white', ''),
(512, 1, 2, 17, '', 'white', ''),
(513, 1, 3, 17, '', 'white', ''),
(514, 1, 4, 17, '', 'white', ''),
(515, 1, 5, 17, '', 'white', ''),
(516, 1, 6, 17, '', 'white', ''),
(517, 1, 7, 17, '', 'white', ''),
(518, 1, 8, 17, 'e', 'blue', 'Scissors'),
(519, 1, 9, 17, '', 'white', ''),
(520, 1, 10, 17, '', 'white', ''),
(521, 1, 11, 17, '', 'white', ''),
(522, 1, 12, 17, '', 'white', ''),
(523, 1, 13, 17, '', 'white', ''),
(524, 1, 14, 17, '', 'white', ''),
(525, 1, 15, 17, '', 'white', ''),
(526, 1, 16, 17, '', 'white', ''),
(527, 1, 17, 17, '', 'white', ''),
(528, 1, 18, 17, '', 'white', ''),
(529, 1, 19, 17, '', 'white', ''),
(530, 1, 20, 17, '', 'white', ''),
(531, 1, 21, 17, '', 'white', ''),
(532, 1, 22, 17, '', 'white', ''),
(533, 1, 23, 17, '', 'white', ''),
(534, 1, 24, 17, '', 'white', ''),
(535, 1, 25, 17, '', 'white', ''),
(536, 1, 26, 17, '', 'white', ''),
(537, 1, 27, 17, '', 'white', ''),
(538, 1, 28, 17, '', 'white', ''),
(539, 1, 29, 17, '', 'white', ''),
(540, 1, 0, 18, '', 'white', ''),
(541, 1, 1, 18, '', 'white', ''),
(542, 1, 2, 18, '', 'white', ''),
(543, 1, 3, 18, '', 'white', ''),
(544, 1, 4, 18, '', 'white', ''),
(545, 1, 5, 18, '', 'white', ''),
(546, 1, 6, 18, '', 'white', ''),
(547, 1, 7, 18, '', 'white', ''),
(548, 1, 8, 18, 'e', 'blue', 'Scissors'),
(549, 1, 9, 18, 'e', 'blue', 'Scissors'),
(550, 1, 10, 18, 'e', 'blue', 'Scissors'),
(551, 1, 11, 18, 'e', 'blue', 'Scissors'),
(552, 1, 12, 18, 'e', 'blue', 'Scissors'),
(553, 1, 13, 18, 'e', 'blue', 'Scissors'),
(554, 1, 14, 18, 'e', 'blue', 'Scissors'),
(555, 1, 15, 18, 'e', 'blue', 'Scissors'),
(556, 1, 16, 18, 'e', 'blue', 'Scissors'),
(557, 1, 17, 18, 'e', 'blue', 'Scissors'),
(558, 1, 18, 18, 'e', 'undefined', 'undefined'),
(559, 1, 19, 18, '', 'white', ''),
(560, 1, 20, 18, '', 'white', ''),
(561, 1, 21, 18, '', 'white', ''),
(562, 1, 22, 18, '', 'white', ''),
(563, 1, 23, 18, '', 'white', ''),
(564, 1, 24, 18, '', 'white', ''),
(565, 1, 25, 18, '', 'white', ''),
(566, 1, 26, 18, '', 'white', ''),
(567, 1, 27, 18, '', 'white', ''),
(568, 1, 28, 18, '', 'white', ''),
(569, 1, 29, 18, '', 'white', ''),
(570, 1, 0, 19, '', 'white', ''),
(571, 1, 1, 19, '', 'white', ''),
(572, 1, 2, 19, '', 'white', ''),
(573, 1, 3, 19, '', 'white', ''),
(574, 1, 4, 19, '', 'white', ''),
(575, 1, 5, 19, '', 'white', ''),
(576, 1, 6, 19, '', 'white', ''),
(577, 1, 7, 19, '', 'white', ''),
(578, 1, 8, 19, '', 'white', ''),
(579, 1, 9, 19, '', 'white', ''),
(580, 1, 10, 19, '', 'white', ''),
(581, 1, 11, 19, '', 'white', ''),
(582, 1, 12, 19, '', 'white', ''),
(583, 1, 13, 19, '', 'white', ''),
(584, 1, 14, 19, '', 'white', ''),
(585, 1, 15, 19, '', 'white', ''),
(586, 1, 16, 19, '', 'white', ''),
(587, 1, 17, 19, '', 'white', ''),
(588, 1, 18, 19, '', 'white', ''),
(589, 1, 19, 19, '', 'white', ''),
(590, 1, 20, 19, '', 'white', ''),
(591, 1, 21, 19, '', 'white', ''),
(592, 1, 22, 19, '', 'white', ''),
(593, 1, 23, 19, '', 'white', ''),
(594, 1, 24, 19, '', 'white', ''),
(595, 1, 25, 19, '', 'white', ''),
(596, 1, 26, 19, '', 'white', ''),
(597, 1, 27, 19, '', 'white', ''),
(598, 1, 28, 19, '', 'white', ''),
(599, 1, 29, 19, '', 'white', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gridcells`
--
ALTER TABLE `gridcells`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
