-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2015 at 05:46 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mpdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `idnum` int(8) NOT NULL,
  `course` varchar(225) NOT NULL,
  `description` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`idnum`, `course`, `description`) VALUES
(11331674, 'COMMAT1', 'Computer For Mathematics'),
(12345678, 'COMMAT1', 'Computer For Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `idnum` int(8) NOT NULL,
  `course` varchar(225) NOT NULL,
  `type` varchar(8) NOT NULL,
  `grade` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gradingsystem`
--

CREATE TABLE IF NOT EXISTS `gradingsystem` (
  `idnum` int(11) NOT NULL,
  `course` varchar(225) NOT NULL,
  `type` varchar(8) NOT NULL,
  `percentage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

CREATE TABLE IF NOT EXISTS `requirements` (
  `idnum` int(8) NOT NULL,
  `course` int(225) NOT NULL,
  `requirements` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `idnum` int(8) NOT NULL,
  `password` varchar(225) NOT NULL,
  `DOBMonth` varchar(225) NOT NULL,
  `DOBDay` int(8) NOT NULL,
  `DOBYear` int(8) NOT NULL,
  `gender` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstname`, `lastname`, `email`, `idnum`, `password`, `DOBMonth`, `DOBDay`, `DOBYear`, `gender`) VALUES
('Michael', 'De Vera', 'michael_devera75@yahoo.com', 11331674, 'titanium876', 'August', 21, 1996, 'Male'),
('Josie', 'Rizal', 'joise_tekken@yahoo.com', 11456789, 'pinoypride', 'June', 1, 1996, 'Female'),
('Mico', 'Fernandez', 'mico_ed@dlsu.ph', 12345678, 'wew', 'April', 0, 1993, 'value');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`idnum`,`course`), ADD KEY `description` (`description`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
 ADD PRIMARY KEY (`idnum`,`course`);

--
-- Indexes for table `gradingsystem`
--
ALTER TABLE `gradingsystem`
 ADD PRIMARY KEY (`idnum`,`course`);

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
 ADD PRIMARY KEY (`idnum`,`course`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`idnum`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
