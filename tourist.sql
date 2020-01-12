-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2020 at 07:50 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourist`
--

-- --------------------------------------------------------

--
-- Table structure for table `adventureandevents`
--

CREATE TABLE `adventureandevents` (
  `A_id` int(11) NOT NULL,
  `place_id` int(11) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Rate` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adventureandevents`
--

INSERT INTO `adventureandevents` (`A_id`, `place_id`, `Type`, `Rate`) VALUES
(1, 1, 'Religiousdance', 1000),
(2, 2, 'Hike', 1500),
(3, 4, 'Bikeriding', 2500),
(4, 5, 'Horseriding', 1500),
(5, 6, 'Hiking', 2500),
(6, 7, 'Hiking', 1000),
(7, 8, 'Cultural Dance', 1000),
(8, 9, 'Sightseeing', 3500),
(9, 10, 'Sightseeing', 1200),
(10, 3, 'Boating', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `H_id` int(11) NOT NULL,
  `place_id` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `contact_info` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`H_id`, `place_id`, `Name`, `Location`, `Type`, `contact_info`) VALUES
(1, 2, 'Macchapuchre', 'Lakeside', 'Average', 14678988),
(2, 1, 'Ghumno', 'Basantapur', 'Average', 1435678),
(3, 3, 'Lakeview', 'Lakeside', 'Luxury', 14562378),
(4, 4, 'Thakali', 'Marfa', 'Average', 14987587),
(5, 5, 'PhoskundoView', 'Phosksudo airport', 'Simple', 14897589),
(6, 6, 'Rara View', 'Rara Lakeside', 'Traditional Nepali', 14879526),
(7, 7, 'Taplegunj', 'Rai Gaun', 'Simple', 148956257),
(8, 8, 'Pasa hotel', 'Durbar Square Opposi', 'Average', 14589652),
(9, 9, 'Upper Manang', 'Tilicho', 'Simple', 14789546),
(10, 10, 'DubarSquare', 'Opposite to durbar S', 'Average', 14985624);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `tourist_id` int(11) NOT NULL DEFAULT 0,
  `place_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` int(11) NOT NULL DEFAULT 0,
  `H_id` int(11) NOT NULL DEFAULT 0,
  `A_id` int(11) NOT NULL DEFAULT 0,
  `Selection_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`tourist_id`, `place_id`, `trans_id`, `H_id`, `A_id`, `Selection_Date`) VALUES
(1, 3, 3, 3, 10, '2020-01-09'),
(2, 2, 2, 2, 2, '2020-01-10'),
(3, 9, 9, 9, 9, '2020-01-03'),
(4, 7, 7, 7, 7, '2020-01-06'),
(6, 9, 9, 9, 9, '2020-01-04'),
(7, 9, 9, 9, 9, '2020-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `Name`) VALUES
(1, 'New'),
(2, 'inprogress'),
(3, 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `tourist_info`
--

CREATE TABLE `tourist_info` (
  `tourist_id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `passport_no` varchar(20) DEFAULT NULL,
  `Entry_date` date DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourist_info`
--

INSERT INTO `tourist_info` (`tourist_id`, `name`, `passport_no`, `Entry_date`, `nationality`) VALUES
(1, 'Jack Sparrow', 'XS7895678', '2020-01-08', 'American'),
(2, 'Mukesh Ambani', 'NY4567878', '2020-01-08', 'Indian'),
(3, 'VenuGopal Iyer', 'X7895868', '2020-01-01', 'Indian'),
(4, 'Jenny Kuwasu', 'YS4567567', '2020-01-04', 'Japanese'),
(5, 'Manish Pandey', 'M0548954', '2020-01-06', 'Indian'),
(6, 'Zenitsu', 'TK025356', '2020-01-02', 'Japanse'),
(7, 'Harry styles', 'LO458796', '2020-01-03', 'England'),
(8, 'Tanjiro Komado', 'YS4567567', '2020-01-04', 'Japanese');

-- --------------------------------------------------------

--
-- Table structure for table `tourist_place`
--

CREATE TABLE `tourist_place` (
  `place_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `Description` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourist_place`
--

INSERT INTO `tourist_place` (`place_id`, `name`, `type`, `Description`) VALUES
(1, 'Basantapur', 'Religious', 'Sightseeing'),
(2, 'Pokhara(Poonhill)', 'Adventure', 'Trekking'),
(3, 'Pokhara', 'SightSeeing', 'View and Resting'),
(4, 'Mustang', 'Hiking', 'Hike around the beneath of semi-desert'),
(5, 'Shey-Phoksundo', 'Trekking', 'Trek around the Beauty of Nature'),
(6, 'Rara', 'Sightseeing', 'Beauty of nature and Rara Lake'),
(7, 'Pathibhara', 'Religious', 'Temple and Natural view of himalayas'),
(8, 'Bhaktapur', 'Ancient Artifact', 'Study of anicent Artifact and activities'),
(9, 'Manang', 'Trekking', 'Trek To the Tilicho Lake'),
(10, 'Patan(Lalitpur)', 'Sightseeing', 'Durbar Square area of Ancient Nepal');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Transaction_id` int(11) NOT NULL,
  `tourist_id` int(11) DEFAULT NULL,
  `A_id` int(11) DEFAULT NULL,
  `Transaction_date` date DEFAULT NULL,
  `Amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Transaction_id`, `tourist_id`, `A_id`, `Transaction_date`, `Amount`) VALUES
(1, 1, 10, '2020-01-10', 1000),
(2, 2, 2, '2020-01-10', 1500),
(3, 3, 9, '2020-01-04', 1200),
(4, 4, 7, '2020-01-06', 1000),
(5, 6, 9, '2020-01-04', 1200),
(6, 7, 9, '2020-01-05', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE `transportation` (
  `Trans_id` int(11) NOT NULL,
  `place_id` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Area` varchar(20) DEFAULT NULL,
  `contact_info` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`Trans_id`, `place_id`, `Name`, `Area`, `contact_info`) VALUES
(1, 1, 'Rikshaw', 'Kathmandu', 143567),
(2, 2, 'Jeep', 'Poonhill', 14675),
(3, 3, 'Van', 'Around lakeside', 14879652),
(4, 4, 'Jeep', 'Mustang view', 14789562),
(5, 5, 'Aeroplane', 'Sheyphoksundo Airpor', 14895627),
(6, 6, 'Jeep', 'Around Rara', 14789563),
(7, 7, 'Jeep', 'up to Pathivara', 14897562),
(8, 8, 'Rikshaw', 'Around Dubar Square', 14789652),
(9, 9, 'Jeep', 'up to Manang Headqua', 14895214),
(10, 10, 'Rickshaw', 'Around Durbar', 14785965);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adventureandevents`
--
ALTER TABLE `adventureandevents`
  ADD PRIMARY KEY (`A_id`),
  ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`H_id`),
  ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`tourist_id`,`place_id`,`trans_id`,`H_id`,`A_id`),
  ADD KEY `place_id` (`place_id`),
  ADD KEY `trans_id` (`trans_id`),
  ADD KEY `H_id` (`H_id`),
  ADD KEY `A_id` (`A_id`);

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
  ADD PRIMARY KEY (`Transaction_id`),
  ADD KEY `tourist_id` (`tourist_id`),
  ADD KEY `A_id` (`A_id`);

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`Trans_id`),
  ADD KEY `place_id` (`place_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adventureandevents`
--
ALTER TABLE `adventureandevents`
  MODIFY `A_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `H_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tourist_info`
--
ALTER TABLE `tourist_info`
  MODIFY `tourist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tourist_place`
--
ALTER TABLE `tourist_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transportation`
--
ALTER TABLE `transportation`
  MODIFY `Trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- Constraints for table `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_ibfk_1` FOREIGN KEY (`tourist_id`) REFERENCES `tourist_info` (`tourist_id`),
  ADD CONSTRAINT `package_ibfk_2` FOREIGN KEY (`place_id`) REFERENCES `tourist_place` (`place_id`),
  ADD CONSTRAINT `package_ibfk_3` FOREIGN KEY (`trans_id`) REFERENCES `transportation` (`Trans_id`),
  ADD CONSTRAINT `package_ibfk_4` FOREIGN KEY (`H_id`) REFERENCES `hotel` (`H_id`),
  ADD CONSTRAINT `package_ibfk_5` FOREIGN KEY (`A_id`) REFERENCES `adventureandevents` (`A_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`tourist_id`) REFERENCES `package` (`tourist_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`A_id`) REFERENCES `adventureandevents` (`A_id`);

--
-- Constraints for table `transportation`
--
ALTER TABLE `transportation`
  ADD CONSTRAINT `transportation_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `tourist_place` (`place_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
