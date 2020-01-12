-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: localhost:3307
-- Generation Time: Jan 12, 2020 at 01:49 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tourist`
--

-- --------------------------------------------------------

--
-- Table structure for table `adventureandevents`
--

CREATE TABLE IF NOT EXISTS `adventureandevents` (
  `A_id` int(11) NOT NULL,
  `place_id` int(11) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Rate` int(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adventureandevents`
--

INSERT INTO `adventureandevents` (`A_id`, `place_id`, `Type`, `Rate`) VALUES
(1, 1, 'Religiousdance', 1000),
(2, 2, 'Boating', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `H_id` int(11) NOT NULL,
  `place_id` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `contact_info` int(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`H_id`, `place_id`, `Name`, `Location`, `Type`, `contact_info`) VALUES
(1, 2, 'Macchapuchre', 'Lakeside', 'Average', 146789),
(2, 1, 'Ghumno', 'Basantapur', 'Average', 1435678);

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
  `R_id` int(11) NOT NULL,
  `tourist_id` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`R_id`, `tourist_id`, `Date`, `status_id`) VALUES
(1, 1, '2020-01-08', 1),
(2, 2, '2020-01-08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `selection`
--

CREATE TABLE IF NOT EXISTS `selection` (
  `tourist_id` int(11) NOT NULL DEFAULT '0',
  `place_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` int(11) NOT NULL DEFAULT '0',
  `H_id` int(11) NOT NULL DEFAULT '0',
  `A_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selection`
--

INSERT INTO `selection` (`tourist_id`, `place_id`, `trans_id`, `H_id`, `A_id`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `status_id` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `Name`) VALUES
(1, 'New'),
(2, 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `tourist_info`
--

CREATE TABLE IF NOT EXISTS `tourist_info` (
  `tourist_id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `passport_no` varchar(20) DEFAULT NULL,
  `visa_validation` date DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourist_info`
--

INSERT INTO `tourist_info` (`tourist_id`, `name`, `passport_no`, `visa_validation`, `nationality`) VALUES
(1, 'Jack Sparrow', '78956', '2020-01-08', 'American'),
(2, 'Darren Sammy', '45678', '2020-01-08', 'Windies'),
(3, 'Jacksparrow', '45678', '0000-00-00', 'american'),
(4, 'Hook', '456756', '0000-00-00', 'Japanese'),
(5, NULL, NULL, '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tourist_place`
--

CREATE TABLE IF NOT EXISTS `tourist_place` (
  `place_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `Description` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourist_place`
--

INSERT INTO `tourist_place` (`place_id`, `name`, `type`, `Description`) VALUES
(1, 'Basantapur', 'Religious', 'Sightseeing'),
(2, 'Pokhara', 'Adventure', 'Trekking');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `T_id` int(11) NOT NULL,
  `R_id` int(11) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_date` date DEFAULT NULL,
  `amount` int(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`T_id`, `R_id`, `Start_Date`, `End_date`, `amount`) VALUES
(1, 2, '2020-01-13', '2020-02-13', 4000),
(2, 1, '2020-10-07', '2020-01-15', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE IF NOT EXISTS `transportation` (
  `Trans_id` int(11) NOT NULL,
  `place_id` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Area` varchar(20) DEFAULT NULL,
  `contact_info` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`Trans_id`, `place_id`, `Name`, `Area`, `contact_info`) VALUES
(1, 1, 'Rikshaw', 'Kathmandu', 143567),
(2, 2, 'Jeep', 'Poonhill', 14675);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adventureandevents`
--
ALTER TABLE `adventureandevents`
  ADD PRIMARY KEY (`A_id`), ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`H_id`), ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`R_id`), ADD KEY `tourist_id` (`tourist_id`), ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `selection`
--
ALTER TABLE `selection`
  ADD PRIMARY KEY (`tourist_id`,`place_id`,`trans_id`,`H_id`,`A_id`), ADD KEY `place_id` (`place_id`), ADD KEY `trans_id` (`trans_id`), ADD KEY `H_id` (`H_id`), ADD KEY `A_id` (`A_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tourist_info`
--
ALTER TABLE `tourist_info`
  ADD PRIMARY KEY (`tourist_id`);

--
-- Indexes for table `tourist_place`
--
ALTER TABLE `tourist_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`T_id`), ADD KEY `R_id` (`R_id`);

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`Trans_id`), ADD KEY `place_id` (`place_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adventureandevents`
--
ALTER TABLE `adventureandevents`
  MODIFY `A_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `H_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `R_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tourist_info`
--
ALTER TABLE `tourist_info`
  MODIFY `tourist_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tourist_place`
--
ALTER TABLE `tourist_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `T_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transportation`
--
ALTER TABLE `transportation`
  MODIFY `Trans_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `adventureandevents`
--
ALTER TABLE `adventureandevents`
ADD CONSTRAINT `adventureandevents_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `tourist_place` (`place_id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `tourist_place` (`place_id`);

--
-- Constraints for table `reserve`
--
ALTER TABLE `reserve`
ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`tourist_id`) REFERENCES `tourist_info` (`tourist_id`),
ADD CONSTRAINT `reserve_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `selection`
--
ALTER TABLE `selection`
ADD CONSTRAINT `selection_ibfk_1` FOREIGN KEY (`tourist_id`) REFERENCES `tourist_info` (`tourist_id`),
ADD CONSTRAINT `selection_ibfk_2` FOREIGN KEY (`place_id`) REFERENCES `tourist_place` (`place_id`),
ADD CONSTRAINT `selection_ibfk_3` FOREIGN KEY (`trans_id`) REFERENCES `transportation` (`Trans_id`),
ADD CONSTRAINT `selection_ibfk_4` FOREIGN KEY (`H_id`) REFERENCES `hotel` (`H_id`),
ADD CONSTRAINT `selection_ibfk_5` FOREIGN KEY (`A_id`) REFERENCES `adventureandevents` (`A_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`R_id`) REFERENCES `reserve` (`R_id`);

--
-- Constraints for table `transportation`
--
ALTER TABLE `transportation`
ADD CONSTRAINT `transportation_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `tourist_place` (`place_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
