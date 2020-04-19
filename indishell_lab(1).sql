-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2020 at 06:45 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indishell_lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `exploit_list`
--

CREATE TABLE `exploit_list` (
  `ID` int(10) NOT NULL,
  `date` varchar(250) NOT NULL,
  `vulnerability` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exploit_list`
--

INSERT INTO `exploit_list` (`ID`, `date`, `vulnerability`) VALUES
(1, 'April 19, 2020, 11:58 am', 'EternalBlue SMB Remote Windows Kernel Pool Corruption. CVE-2017-0143 (MS17-010)'),
(2, 'April 19, 2020, 12:32 pm', 'SMB Ghost. Affected SAMBA version is 3.1.1. CVE-2020-0796'),
(3, 'April 19, 2020, 12:35 pm', 'Dirty COW is a privilege escalation vulnerability in the Linux Kernel. CVE-2016-5195'),
(4, 'April 19, 2020, 12:41 pm', '10.1'),
(6, 'April 19, 2020, 12:43 pm', '14'),
(7, 'April 19, 2020, 12:46 pm', '114'),
(8, 'April 19, 2020, 12:47 pm', '111'),
(9, 'April 19, 2020, 12:50 pm', '101'),
(10, 'April 19, 2020, 12:55 pm', '120'),
(11, 'April 19, 2020, 12:56 pm', '73'),
(12, 'April 19, 2020, 3:07 pm', '10.1');

-- --------------------------------------------------------

--
-- Table structure for table `hosting`
--

CREATE TABLE `hosting` (
  `id` int(30) NOT NULL,
  `name` varchar(9000) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hosting`
--

INSERT INTO `hosting` (`id`, `name`, `price`) VALUES
(1, 'ubuntu', '5$/month'),
(2, 'Windows', '12$/month'),
(3, 'centos', '5$/month');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` int(10) NOT NULL,
  `handle` varchar(250) NOT NULL,
  `level` varchar(9) NOT NULL,
  `expertise` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `handle`, `level`, `expertise`) VALUES
(1, 'c0de_br3ak3r_ICA', '7 (admin)', 'pwning servers like a b0ss 8-)'),
(2, 'ro0t_devil', '7 (admin)', 'pwn servers with guarantee :P '),
(3, 'dark_w0lf', '5 (modera', 'Web application pwning walay Bhai ji'),
(4, 'zero cool', '3 (mod)', 'Linux server guru'),
(5, 'b0x', '7(noob)', '1337'),
(6, 'box', '7 (noob)', '10.1'),
(7, 'box', '7 (noob)', '114'),
(20, 'box', '7 (noob)', '0'),
(21, 'box', '7 (noob)', '114111111'),
(22, 'box', '7 (noob)', '114'),
(23, 'box', '7', '114'),
(24, 'boc', '7', '114'),
(25, 'box', '7', '1140111'),
(26, 'box', '7', '727000000'),
(54, 'tes', 'er', '726'),
(55, 'test', '123', '1.8446744073709552e19'),
(56, 'test', '123', '7.59712002549117e18'),
(57, 'test', '123', '1.8446744073709552e19'),
(58, 'test', '123', '623078'),
(59, 'test', '123', '623079'),
(60, 'test', '123', '623078'),
(61, 'test', '123', '623092'),
(62, 'test', '123', '623078'),
(63, 'test', '123', '39'),
(64, 'test', '123', '33'),
(65, 'test', '123', '3'),
(66, 'test', '123', '0'),
(67, 'test', '123', '7.311717606063961e18'),
(68, 'test', '123', '726'),
(69, 'test', '123', '726'),
(70, 'test', '123', '78'),
(71, 'test', '123', '72'),
(72, 'box', '123', '114111'),
(73, 'box', '123', '11449111'),
(74, 'box', '123', '114'),
(75, 'box', '123', '114'),
(76, 'box', '123', '114'),
(77, 'box', '123', '1141337111'),
(78, 'box', '123', '1.1413371111337112e16'),
(79, 'pwn', '123', '7213376'),
(80, 'pwn', '123', '1.1413371111337112e16'),
(81, 'pwn2', '123', '1.1413371111337112e16'),
(82, 'pwn2', '123', '3010'),
(83, 'pwn2', '123', '3010'),
(84, 'pwn2', '123', '1562'),
(85, 'pwn2', '123', '11431337111'),
(86, 'pwn2', '123', '1.1431337111313371e18'),
(87, 'pwn2', '123', '101');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exploit_list`
--
ALTER TABLE `exploit_list`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exploit_list`
--
ALTER TABLE `exploit_list`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
