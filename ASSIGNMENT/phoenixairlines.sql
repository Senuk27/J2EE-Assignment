-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2022 at 08:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoenixairlines`
--

-- --------------------------------------------------------

--
-- Table structure for table `deleted_flights`
--

CREATE TABLE `deleted_flights` (
  `flight_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `depart` varchar(40) NOT NULL,
  `arrive` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `class` varchar(40) NOT NULL,
  `service` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deleted_flights`
--

INSERT INTO `deleted_flights` (`flight_id`, `staff_id`, `depart`, `arrive`, `date`, `time`, `class`, `service`) VALUES
(1, 0, 'Colombo', 'Chennai', '2022-10-06', '02:00', 'economy', 'meals & wine'),
(2, 0, 'Colombo', 'Melbourne', '2022-10-06', '02:00', 'business', 'entertainment and dining'),
(3, 0, 'Colombo', 'Paris', '2022-10-06', '03:00', 'first class', 'Wi-Fi, entertainment and dining'),
(4, 0, 'aaa', 'sss', 'ddff', 'ff', 'gg', 'hh'),
(5, 0, 'Colombo', 'Melbourne', '2022-10-06', '02:00', 'economy', 'meals & wine'),
(6, 0, 'Colombo', 'Chennai', '2022-10-06', '14:00', 'economy', 'meals & wine'),
(7, 0, 'Colombo', 'Melbourne', '2022-10-06', '02:00', 'business', 'Wi-Fi, entertainment and dining'),
(8, 0, 'Colombo', 'Paris', '2022-10-06', '02:00', 'first class', 'entertainment and dining'),
(11, 2, 'Colombo', 'Paris', '2022-10-06', '02:10', 'first class', 'Wi-Fi, entertainment and dining'),
(10, 2, 'Colombo', 'Melbourne', '2022-10-06', '02:11', 'business', 'entertainment and dining');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL,
  `depart` varchar(40) NOT NULL,
  `arrive` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `class` varchar(40) NOT NULL,
  `service` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_id`, `depart`, `arrive`, `date`, `time`, `class`, `service`) VALUES
(9, 'Colombo', 'Chennai', '2022-10-06', '02:00', 'economy', 'meals & wine'),
(12, 'Colombo', 'Melbourne', '2022-10-06', '02:00', 'business', 'entertainment and dining'),
(13, 'Colombo', 'Paris', '2022-10-07', '02:00', 'first class', 'Wi-Fi, entertainment and dining');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`user_id`, `ip_address`, `time`, `date`) VALUES
(1, '43.250.242.206', '19:26', '07-10-2022'),
(1, '192.168.43.1', '08:15', '07-10-2022'),
(5, '192.167.34.5', '21:36', '07-10-2022');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `flight_id`, `email`, `date`) VALUES
(1, 3, 'senukthiyassara@gmail.com', '06-10-2022'),
(2, 4, 'harindi@gmail.com', '06-10-2022');

-- --------------------------------------------------------

--
-- Table structure for table `updated_flights`
--

CREATE TABLE `updated_flights` (
  `staff_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `updated_column` varchar(40) NOT NULL,
  `updated_value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `updated_flights`
--

INSERT INTO `updated_flights` (`staff_id`, `flight_id`, `updated_column`, `updated_value`) VALUES
(2, 11, 'time', '03:00'),
(6, 10, 'date', '10-10-2022');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `user_type` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `approval` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_type`, `email`, `password`, `name`, `nic`, `address`, `phone`, `approval`) VALUES
(1, 'client', 'senukthiyasara@gmail.com', 'senuk27', 'Senuk Thiyasara', '200123456', '', '', 0),
(2, 'staff_grade1', 'kulani@gmail.com', 'dwni', 'Kulani', '987654376v', '', '', 0),
(3, 'staff_grade2', 'harindi@gmail.com', 'yts', 'Harindi', '', '', '', 1),
(4, 'admin', 'admin123@gmail.com', '2345', 'Nishan', '', '', '', 0),
(5, 'client', 'chamali@gmail.com', 'chama123', 'Chamali ', '99876589v', '', '', 0),
(6, 'staff_grade1', 'asela@gmail.com', '123asela', 'Asela', '', '', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
