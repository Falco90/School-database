-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2018 at 02:29 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `Klassen`
--

CREATE TABLE IF NOT EXISTS `Klassen` (
  `id` int(11) unsigned NOT NULL,
  `Klas_naam` varchar(11) DEFAULT NULL,
  `Niveau` varchar(11) DEFAULT NULL,
  `Jaar` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Klassen`
--

INSERT INTO `Klassen` (`id`, `Klas_naam`, `Niveau`, `Jaar`) VALUES
(1, '1A', 'VWO', 1),
(2, '1B', 'VWO', 1),
(3, '1C', 'HAVO', 1),
(4, '2A', 'VWO', 2),
(5, '2B', 'VWO', 2),
(6, '2C', 'HAVO', 2),
(7, '3B', 'VWO', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Leerlingen`
--

CREATE TABLE IF NOT EXISTS `Leerlingen` (
  `id` int(11) unsigned NOT NULL,
  `Voornaam` varchar(20) DEFAULT NULL,
  `Achternaam` varchar(20) DEFAULT NULL,
  `Geb_datum` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Leerlingen`
--

INSERT INTO `Leerlingen` (`id`, `Voornaam`, `Achternaam`, `Geb_datum`) VALUES
(1, 'Falco', 'Rodenburg', '1990-08-06'),
(2, 'Cheya', 'Ibrahim', '1990-10-10'),
(3, 'Evert', 'Brolsma', '1991-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `Leraren`
--

CREATE TABLE IF NOT EXISTS `Leraren` (
  `id` int(11) unsigned NOT NULL,
  `Voornaam` varchar(11) DEFAULT NULL,
  `Achternaam` varchar(20) DEFAULT NULL,
  `Geb_datum` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Leraren`
--

INSERT INTO `Leraren` (`id`, `Voornaam`, `Achternaam`, `Geb_datum`) VALUES
(1, 'Ingrid', 'Massing', '1960-02-01'),
(2, 'Jan', 'Laferte', '1958-03-08'),
(3, 'Margriet', 'Van der Werf', '1958-02-10'),
(4, 'Jan', 'Stellingwerf', '1961-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `Lokalen`
--

CREATE TABLE IF NOT EXISTS `Lokalen` (
  `id` int(11) unsigned NOT NULL,
  `Nummer` varchar(11) DEFAULT NULL,
  `Vleugel` varchar(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Lokalen`
--

INSERT INTO `Lokalen` (`id`, `Nummer`, `Vleugel`) VALUES
(1, 'A101', 'Blauw'),
(2, 'A102', 'Blauw'),
(3, 'A105', 'Rood'),
(4, 'B206', 'Geel');

-- --------------------------------------------------------

--
-- Table structure for table `Vakken`
--

CREATE TABLE IF NOT EXISTS `Vakken` (
  `id` int(11) unsigned NOT NULL,
  `Naam` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Vakken`
--

INSERT INTO `Vakken` (`id`, `Naam`) VALUES
(1, 'Wiskunde'),
(2, 'Engels'),
(3, 'Nederlands'),
(4, 'Geschiedenis'),
(5, 'Filosofie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Klassen`
--
ALTER TABLE `Klassen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Leerlingen`
--
ALTER TABLE `Leerlingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Leraren`
--
ALTER TABLE `Leraren`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Lokalen`
--
ALTER TABLE `Lokalen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Vakken`
--
ALTER TABLE `Vakken`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Klassen`
--
ALTER TABLE `Klassen`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Leerlingen`
--
ALTER TABLE `Leerlingen`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Leraren`
--
ALTER TABLE `Leraren`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Lokalen`
--
ALTER TABLE `Lokalen`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Vakken`
--
ALTER TABLE `Vakken`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

