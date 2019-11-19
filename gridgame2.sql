-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 02:06 PM
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
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`) VALUES
(12, 'callum', '123456'),
(15, 'frank', '123'),
(14, 'jeff', '123'),
(0, 'jefferson', 'airplane'),
(13, 'qwerty', 'qwerty');

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
(0, 0, 215),
(0, 1, 220),
(0, 2, 220),
(0, 3, 220),
(0, 4, 220),
(0, 5, 220),
(0, 6, 220),
(0, 7, 220),
(0, 8, 220),
(0, 9, 220),
(0, 10, 220),
(0, 11, 220),
(0, 12, 220),
(0, 13, 220),
(0, 14, 220),
(0, 15, 220),
(1, 0, 220),
(1, 1, 220),
(1, 2, 220),
(1, 3, 220),
(1, 4, 220),
(1, 5, 220),
(1, 6, 220),
(1, 7, 219),
(1, 8, 219),
(1, 9, 219),
(1, 10, 220),
(1, 11, 220),
(1, 12, 219),
(1, 13, 220),
(1, 14, 215),
(1, 15, 220),
(2, 0, 220),
(2, 1, 195),
(2, 2, 220),
(2, 3, 219),
(2, 4, 220),
(2, 5, 220),
(2, 6, 220),
(2, 7, 219),
(2, 8, 219),
(2, 9, 220),
(2, 10, 220),
(2, 11, 219),
(2, 12, 219),
(2, 13, 220),
(2, 14, 219),
(2, 15, 220),
(3, 0, 220),
(3, 1, 218),
(3, 2, 219),
(3, 3, 219),
(3, 4, 220),
(3, 5, 219),
(3, 6, 220),
(3, 7, 220),
(3, 8, 220),
(3, 9, 220),
(3, 10, 219),
(3, 11, 220),
(3, 12, 220),
(3, 13, 220),
(3, 14, 220),
(3, 15, 220),
(4, 0, 220),
(4, 1, 219),
(4, 2, 219),
(4, 3, 219),
(4, 4, 220),
(4, 5, 219),
(4, 6, 219),
(4, 7, 220),
(4, 8, 220),
(4, 9, 219),
(4, 10, 220),
(4, 11, 220),
(4, 12, 219),
(4, 13, 219),
(4, 14, 220),
(4, 15, 219),
(5, 0, 219),
(5, 1, 220),
(5, 2, 220),
(5, 3, 219),
(5, 4, 220),
(5, 5, 220),
(5, 6, 220),
(5, 7, 220),
(5, 8, 220),
(5, 9, 220),
(5, 10, 220),
(5, 11, 219),
(5, 12, 220),
(5, 13, 220),
(5, 14, 215),
(5, 15, 219),
(6, 0, 219),
(6, 1, 219),
(6, 2, 220),
(6, 3, 220),
(6, 4, 219),
(6, 5, 220),
(6, 6, 220),
(6, 7, 220),
(6, 8, 219),
(6, 9, 219),
(6, 10, 220),
(6, 11, 220),
(6, 12, 220),
(6, 13, 217),
(6, 14, 217),
(6, 15, 220),
(7, 0, 219),
(7, 1, 219),
(7, 2, 220),
(7, 3, 220),
(7, 4, 220),
(7, 5, 219),
(7, 6, 220),
(7, 7, 220),
(7, 8, 220),
(7, 9, 220),
(7, 10, 220),
(7, 11, 220),
(7, 12, 220),
(7, 13, 220),
(7, 14, 220),
(7, 15, 220),
(8, 0, 219),
(8, 1, 219),
(8, 2, 220),
(8, 3, 220),
(8, 4, 219),
(8, 5, 220),
(8, 6, 220),
(8, 7, 220),
(8, 8, 220),
(8, 9, 220),
(8, 10, 220),
(8, 11, 220),
(8, 12, 219),
(8, 13, 215),
(8, 14, 220),
(8, 15, 220),
(9, 0, 220),
(9, 1, 218),
(9, 2, 220),
(9, 3, 220),
(9, 4, 220),
(9, 5, 220),
(9, 6, 220),
(9, 7, 220),
(9, 8, 218),
(9, 9, 218),
(9, 10, 217),
(9, 11, 220),
(9, 12, 220),
(9, 13, 217),
(9, 14, 220),
(9, 15, 220),
(10, 0, 220),
(10, 1, 220),
(10, 2, 220),
(10, 3, 220),
(10, 4, 220),
(10, 5, 219),
(10, 6, 220),
(10, 7, 220),
(10, 8, 216),
(10, 9, 218),
(10, 10, 209),
(10, 11, 217),
(10, 12, 220),
(10, 13, 220),
(10, 14, 220),
(10, 15, 220),
(11, 0, 215),
(11, 1, 220),
(11, 2, 220),
(11, 3, 220),
(11, 4, 219),
(11, 5, 219),
(11, 6, 220),
(11, 7, 219),
(11, 8, 219),
(11, 9, 219),
(11, 10, 219),
(11, 11, 219),
(11, 12, 219),
(11, 13, 220),
(11, 14, 220),
(11, 15, 220),
(12, 0, 216),
(12, 1, 215),
(12, 2, 220),
(12, 3, 219),
(12, 4, 220),
(12, 5, 219),
(12, 6, 220),
(12, 7, 220),
(12, 8, 216),
(12, 9, 216),
(12, 10, 216),
(12, 11, 217),
(12, 12, 220),
(12, 13, 220),
(12, 14, 220),
(12, 15, 220),
(13, 0, 216),
(13, 1, 219),
(13, 2, 220),
(13, 3, 215),
(13, 4, 215),
(13, 5, 219),
(13, 6, 219),
(13, 7, 220),
(13, 8, 220),
(13, 9, 213),
(13, 10, 216),
(13, 11, 220),
(13, 12, 220),
(13, 13, 211),
(13, 14, 220),
(13, 15, 220),
(14, 0, 216),
(14, 1, 219),
(14, 2, 220),
(14, 3, 220),
(14, 4, 209),
(14, 5, 215),
(14, 6, 219),
(14, 7, 220),
(14, 8, 220),
(14, 9, 220),
(14, 10, 220),
(14, 11, 220),
(14, 12, 220),
(14, 13, 220),
(14, 14, 220),
(14, 15, 220),
(15, 0, 216),
(15, 1, 219),
(15, 2, 219),
(15, 3, 220),
(15, 4, 220),
(15, 5, 220),
(15, 6, 220),
(15, 7, 220),
(15, 8, 220),
(15, 9, 220),
(15, 10, 220),
(15, 11, 220),
(15, 12, 220),
(15, 13, 220),
(15, 14, 220),
(15, 15, 220);

-- --------------------------------------------------------

--
-- Table structure for table `playersingame`
--

CREATE TABLE `playersingame` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
