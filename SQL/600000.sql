-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 23, 2023 at 11:15 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `600000`
--

-- --------------------------------------------------------

--
-- Table structure for table `pagination_table`
--

CREATE TABLE `pagination_table` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `vv` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagination_table`
--

INSERT INTO `pagination_table` (`id`, `name`, `age`, `dept`, `vv`) VALUES
(1, 'JJ joy', 70, 'ICT', '1'),
(2, 'John Doe', 77, 'Operation', '1'),
(3, 'JJ joy', 70, 'ICT', '1'),
(4, 'John Doe', 77, 'Operation', '1'),
(5, 'JJ joy', 70, 'ICT', '1'),
(6, 'John Doe', 77, 'Operation', '1'),
(7, 'JJ joy', 70, 'ICT', '1'),
(8, 'John Doe', 77, 'Operation', '1'),
(9, 'JJ joy', 70, 'ICT', '1'),
(10, 'John Doe', 77, 'Operation', '1'),
(11, 'JJ joy', 70, 'ICT', '1'),
(12, 'John Doe', 77, 'Operation', '1'),
(13, 'JJ joy', 70, 'ICT', '1'),
(14, 'John Doe', 77, 'Operation', '1'),
(15, 'JJ joy', 70, 'ICT', '1'),
(16, 'John Doe', 77, 'Operation', '1'),
(17, 'JJ joy', 70, 'ICT', '1'),
(18, 'John Doe', 77, 'Operation', '1'),
(19, 'JJ joy', 70, 'ICT', '1'),
(20, 'John Doe', 77, 'Operation', '1'),
(21, 'JJ joy', 70, 'ICT', '1'),
(22, 'John Doe', 77, 'Operation', '1'),
(23, 'JJ joy', 70, 'ICT', '1'),
(24, 'John Doe', 77, 'Operation', '1'),
(25, 'JJ joy', 70, 'ICT', '1'),
(26, 'John Doe', 77, 'Operation', '1'),
(27, 'JJ joy', 70, 'ICT', '1'),
(28, 'John Doe', 77, 'Operation', '1'),
(29, 'JJ joy', 70, 'ICT', '1'),
(30, 'John Doe', 77, 'Operation', '1'),
(31, 'JJ joy', 70, 'ICT', '1'),
(32, 'John Doe', 77, 'Operation', '1'),
(33, 'JJ joy', 70, 'ICT', '1'),
(34, 'John Doe', 77, 'Operation', '1'),
(35, 'JJ joy', 70, 'ICT', '1'),
(36, 'John Doe', 77, 'Operation', '1'),
(37, 'JJ joy', 70, 'ICT', '1'),
(38, 'John Doe', 77, 'Operation', '1'),
(39, 'JJ joy', 70, 'ICT', '1'),
(40, 'John Doe', 77, 'Operation', '1'),
(41, 'JJ joy', 70, 'ICT', '1'),
(42, 'John Doe', 77, 'Operation', '1'),
(43, 'JJ joy', 70, 'ICT', '1'),
(44, 'John Doe', 77, 'Operation', '1'),
(45, 'JJ joy', 70, 'ICT', '1'),
(46, 'John Doe', 77, 'Operation', '1'),
(47, 'JJ joy', 70, 'ICT', '1'),
(48, 'John Doe', 77, 'Operation', '1'),
(49, 'JJ joy', 70, 'ICT', '1'),
(50, 'John Doe', 77, 'Operation', '1'),
(51, 'JJ joy', 70, 'ICT', '1'),
(52, 'John Doe', 77, 'Operation', '1'),
(53, 'JJ joy', 70, 'ICT', '1'),
(54, 'John Doe', 77, 'Operation', '1'),
(55, 'JJ joy', 70, 'ICT', '1'),
(56, 'John Doe', 77, 'Operation', '1'),
(57, 'JJ joy', 70, 'ICT', '1'),
(58, 'John Doe', 77, 'Operation', '1'),
(59, 'JJ joy', 70, 'ICT', '1'),
(60, 'John Doe', 77, 'Operation', '1'),
(61, 'JJ joy', 70, 'ICT', '1'),
(62, 'John Doe', 77, 'Operation', '1'),
(63, 'JJ joy', 70, 'ICT', '1'),
(64, 'John Doe', 77, 'Operation', '1'),
(65, 'JJ joy', 70, 'ICT', '1'),
(66, 'John Doe', 77, 'Operation', '1'),
(67, 'JJ joy', 70, 'ICT', '1'),
(68, 'John Doe', 77, 'Operation', '1'),
(69, 'JJ joy', 70, 'ICT', '1'),
(70, 'John Doe', 77, 'Operation', '1'),
(71, 'JJ joy', 70, 'ICT', '1'),
(72, 'John Doe', 77, 'Operation', '1'),
(73, 'JJ joy', 70, 'ICT', '1'),
(74, 'John Doe', 77, 'Operation', '1'),
(75, 'JJ joy', 70, 'ICT', '1'),
(76, 'John Doe', 77, 'Operation', '1'),
(77, 'JJ joy', 70, 'ICT', '1'),
(78, 'John Doe', 77, 'Operation', '1'),
(79, 'JJ joy', 70, 'ICT', '1'),
(80, 'John Doe', 77, 'Operation', '1'),
(81, 'JJ joy', 70, 'ICT', '1'),
(82, 'John Doe', 77, 'Operation', '1'),
(83, 'JJ joy', 70, 'ICT', '1'),
(84, 'John Doe', 77, 'Operation', '1'),
(85, 'JJ joy', 70, 'ICT', '1'),
(86, 'John Doe', 77, 'Operation', '1'),
(87, 'JJ joy', 70, 'ICT', '1'),
(88, 'John Doe', 77, 'Operation', '1'),
(89, 'JJ joy', 70, 'ICT', '1'),
(90, 'John Doe', 77, 'Operation', '1'),
(91, 'JJ joy', 70, 'ICT', '1'),
(92, 'John Doe', 77, 'Operation', '1'),
(93, 'JJ joy', 70, 'ICT', '1'),
(94, 'John Doe', 77, 'Operation', '1'),
(95, 'JJ joy', 70, 'ICT', '1'),
(96, 'John Doe', 77, 'Operation', '1'),
(97, 'JJ joy', 70, 'ICT', '1'),
(98, 'John Doe', 77, 'Operation', '1'),
(99, 'JJ joy', 70, 'ICT', '1'),
(100, 'John Doe', 77, 'Operation', '1'),
(101, 'JJ joy', 70, 'ICT', '1'),
(102, 'John Doe', 77, 'Operation', '1'),
(103, 'JJ joy', 70, 'ICT', '1'),
(104, 'John Doe', 77, 'Operation', '1'),
(105, 'JJ joy', 70, 'ICT', '1'),
(106, 'John Doe', 77, 'Operation', '1'),
(107, 'JJ joy', 70, 'ICT', '1'),
(108, 'John Doe', 77, 'Operation', '1'),
(109, 'JJ joy', 70, 'ICT', '1'),
(110, 'John Doe', 77, 'Operation', '1'),
(111, 'JJ joy', 70, 'ICT', '1'),
(112, 'John Doe', 77, 'Operation', '1'),
(113, 'JJ joy', 70, 'ICT', '1'),
(114, 'John Doe', 77, 'Operation', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pagination_table`
--
ALTER TABLE `pagination_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pagination_table`
--
ALTER TABLE `pagination_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
