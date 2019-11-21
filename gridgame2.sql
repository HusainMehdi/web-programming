-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2019 at 12:52 PM
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
-- Database: `gridgame2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `wins` int(11) NOT NULL,
  `losses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`username`, `password`, `wins`, `losses`) VALUES
('bill', '123', 2, 1),
('bob', '123', 1, 2),
('callum', '123456', 21, 47),
('frank', '123', 0, 0),
('jeff', '123', 52, 22),
('jefferson', 'airplane', 0, 0),
('qwerty', 'qwerty', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `grid`
--

CREATE TABLE `grid` (
  `col` int(11) NOT NULL,
  `row` int(11) NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grid`
--

INSERT INTO `grid` (`col`, `row`, `owner`) VALUES
(0, 0, -1),
(0, 1, -1),
(0, 2, -1),
(0, 3, -1),
(0, 4, -1),
(0, 5, -1),
(0, 6, -1),
(0, 7, -1),
(0, 8, -1),
(0, 9, -1),
(0, 10, -1),
(0, 11, -1),
(0, 12, -1),
(0, 13, -1),
(0, 14, -1),
(0, 15, -1),
(1, 0, -1),
(1, 1, -1),
(1, 2, -1),
(1, 3, -1),
(1, 4, -1),
(1, 5, -1),
(1, 6, -1),
(1, 7, -1),
(1, 8, -1),
(1, 9, -1),
(1, 10, -1),
(1, 11, -1),
(1, 12, -1),
(1, 13, -1),
(1, 14, -1),
(1, 15, -1),
(2, 0, -1),
(2, 1, -1),
(2, 2, -1),
(2, 3, -1),
(2, 4, -1),
(2, 5, 492),
(2, 6, -1),
(2, 7, -1),
(2, 8, -1),
(2, 9, -1),
(2, 10, -1),
(2, 11, 492),
(2, 12, 492),
(2, 13, -1),
(2, 14, -1),
(2, 15, -1),
(3, 0, -1),
(3, 1, -1),
(3, 2, -1),
(3, 3, -1),
(3, 4, -1),
(3, 5, 492),
(3, 6, -1),
(3, 7, -1),
(3, 8, 492),
(3, 9, -1),
(3, 10, 492),
(3, 11, 492),
(3, 12, -1),
(3, 13, 492),
(3, 14, 492),
(3, 15, -1),
(4, 0, -1),
(4, 1, -1),
(4, 2, 494),
(4, 3, 494),
(4, 4, -1),
(4, 5, 492),
(4, 6, -1),
(4, 7, -1),
(4, 8, 492),
(4, 9, 492),
(4, 10, 492),
(4, 11, -1),
(4, 12, -1),
(4, 13, -1),
(4, 14, 492),
(4, 15, 492),
(5, 0, -1),
(5, 1, -1),
(5, 2, -1),
(5, 3, 494),
(5, 4, 494),
(5, 5, 492),
(5, 6, 492),
(5, 7, 492),
(5, 8, 492),
(5, 9, -1),
(5, 10, -1),
(5, 11, -1),
(5, 12, -1),
(5, 13, -1),
(5, 14, -1),
(5, 15, 492),
(6, 0, -1),
(6, 1, -1),
(6, 2, -1),
(6, 3, -1),
(6, 4, 494),
(6, 5, -1),
(6, 6, -1),
(6, 7, -1),
(6, 8, -1),
(6, 9, -1),
(6, 10, -1),
(6, 11, -1),
(6, 12, -1),
(6, 13, -1),
(6, 14, -1),
(6, 15, -1),
(7, 0, -1),
(7, 1, -1),
(7, 2, -1),
(7, 3, 494),
(7, 4, 494),
(7, 5, -1),
(7, 6, -1),
(7, 7, -1),
(7, 8, -1),
(7, 9, -1),
(7, 10, 491),
(7, 11, 491),
(7, 12, -1),
(7, 13, -1),
(7, 14, -1),
(7, 15, -1),
(8, 0, -1),
(8, 1, -1),
(8, 2, 494),
(8, 3, -1),
(8, 4, -1),
(8, 5, -1),
(8, 6, -1),
(8, 7, -1),
(8, 8, -1),
(8, 9, 491),
(8, 10, 491),
(8, 11, 491),
(8, 12, 491),
(8, 13, -1),
(8, 14, -1),
(8, 15, -1),
(9, 0, -1),
(9, 1, -1),
(9, 2, 494),
(9, 3, -1),
(9, 4, -1),
(9, 5, -1),
(9, 6, -1),
(9, 7, 491),
(9, 8, 491),
(9, 9, -1),
(9, 10, -1),
(9, 11, -1),
(9, 12, 491),
(9, 13, 491),
(9, 14, 491),
(9, 15, 491),
(10, 0, -1),
(10, 1, -1),
(10, 2, 494),
(10, 3, 494),
(10, 4, 494),
(10, 5, -1),
(10, 6, -1),
(10, 7, 491),
(10, 8, -1),
(10, 9, -1),
(10, 10, -1),
(10, 11, -1),
(10, 12, -1),
(10, 13, -1),
(10, 14, -1),
(10, 15, 491),
(11, 0, -1),
(11, 1, -1),
(11, 2, 491),
(11, 3, -1),
(11, 4, 494),
(11, 5, 491),
(11, 6, 491),
(11, 7, -1),
(11, 8, -1),
(11, 9, -1),
(11, 10, -1),
(11, 11, -1),
(11, 12, -1),
(11, 13, -1),
(11, 14, -1),
(11, 15, 491),
(12, 0, -1),
(12, 1, 491),
(12, 2, 491),
(12, 3, 491),
(12, 4, 491),
(12, 5, 491),
(12, 6, 494),
(12, 7, -1),
(12, 8, -1),
(12, 9, 494),
(12, 10, 494),
(12, 11, 494),
(12, 12, -1),
(12, 13, -1),
(12, 14, -1),
(12, 15, 491),
(13, 0, 491),
(13, 1, -1),
(13, 2, -1),
(13, 3, -1),
(13, 4, -1),
(13, 5, -1),
(13, 6, 494),
(13, 7, 494),
(13, 8, 494),
(13, 9, 494),
(13, 10, -1),
(13, 11, 494),
(13, 12, -1),
(13, 13, -1),
(13, 14, -1),
(13, 15, -1),
(14, 0, 491),
(14, 1, -1),
(14, 2, -1),
(14, 3, -1),
(14, 4, -1),
(14, 5, -1),
(14, 6, -1),
(14, 7, -1),
(14, 8, -1),
(14, 9, -1),
(14, 10, -1),
(14, 11, -1),
(14, 12, -1),
(14, 13, -1),
(14, 14, -1),
(14, 15, -1),
(15, 0, -1),
(15, 1, -1),
(15, 2, -1),
(15, 3, -1),
(15, 4, -1),
(15, 5, -1),
(15, 6, -1),
(15, 7, -1),
(15, 8, -1),
(15, 9, -1),
(15, 10, -1),
(15, 11, -1),
(15, 12, -1),
(15, 13, -1),
(15, 14, -1),
(15, 15, -1);

-- --------------------------------------------------------

--
-- Table structure for table `playersingame`
--

CREATE TABLE `playersingame` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `cellscontrolled` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `playersingame`
--
ALTER TABLE `playersingame`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playersingame`
--
ALTER TABLE `playersingame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
