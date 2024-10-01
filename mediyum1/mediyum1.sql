-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2024 at 12:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mediyum1`
--

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `teammate_id` int(11) DEFAULT NULL,
  `leave_date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `teammate_id`, `leave_date`, `reason`) VALUES
(1, 1, '2024-09-15', 'Personal Leave'),
(2, 2, '2024-09-17', 'Medical Leave');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`) VALUES
(1, 'Project Alpha'),
(2, 'Project Beta'),
(3, 'Project Gamma'),
(4, 'Project Delta'),
(5, 'Project Epsilon');

-- --------------------------------------------------------

--
-- Table structure for table `public_holidays`
--

CREATE TABLE `public_holidays` (
  `id` int(11) NOT NULL,
  `holiday_date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `public_holidays`
--

INSERT INTO `public_holidays` (`id`, `holiday_date`, `description`) VALUES
(1, '2024-12-25', 'Christmas Day'),
(2, '2024-01-01', 'New Year\'s Day');

-- --------------------------------------------------------

--
-- Table structure for table `teammates`
--

CREATE TABLE `teammates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teammates`
--

INSERT INTO `teammates` (`id`, `name`) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alice Johnson');

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` int(11) NOT NULL,
  `teammate_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `hour1` int(11) DEFAULT NULL,
  `hour2` int(11) DEFAULT NULL,
  `hour3` int(11) DEFAULT NULL,
  `hour4` int(11) DEFAULT NULL,
  `hour5` int(11) DEFAULT NULL,
  `hour6` int(11) DEFAULT NULL,
  `hour7` int(11) DEFAULT NULL,
  `hour8` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timesheets`
--

INSERT INTO `timesheets` (`id`, `teammate_id`, `date`, `hour1`, `hour2`, `hour3`, `hour4`, `hour5`, `hour6`, `hour7`, `hour8`) VALUES
(1, 1, '2024-09-10', 1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, '2024-09-11', 1, 1, 1, 1, 1, 1, 1, 1),
(3, 2, '2024-09-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, '2024-09-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, '2024-09-02', 1, 1, 1, 1, 1, 1, 1, 1),
(6, 1, '2024-09-03', 1, 1, 1, 1, 1, 1, 1, 1),
(7, 1, '2024-09-04', 1, 1, 1, 1, 1, 1, 1, 1),
(8, 1, '2024-09-05', 5, 1, 1, 1, 1, 1, 1, 1),
(9, 1, '2024-09-06', 1, 1, 1, 1, 1, 1, 1, 1),
(10, 1, '2024-09-07', 1, 1, 1, 1, 1, 1, 1, 1),
(11, 1, '2024-09-09', 1, 1, 1, 1, 1, 1, 1, 1),
(12, 1, '2024-09-12', 1, 1, 1, 1, 1, 1, 1, 1),
(13, 1, '2024-09-13', 1, 1, 1, 1, 1, 1, 1, 1),
(14, 1, '2024-09-14', 1, 1, 1, 1, 1, 1, 1, 1),
(15, 1, '2024-09-16', 1, 1, 1, 1, 1, 1, 1, 1),
(16, 1, '2024-09-17', 1, 1, 1, 1, 1, 1, 1, 1),
(17, 1, '2024-09-18', 1, 1, 1, 1, 1, 1, 1, 1),
(18, 1, '2024-09-19', 1, 1, 1, 1, 1, 1, 1, 1),
(19, 1, '2024-09-20', 1, 1, 1, 1, 1, 1, 1, 1),
(20, 1, '2024-09-21', 1, 1, 1, 1, 1, 1, 1, 1),
(21, 1, '2024-09-23', 1, 1, 1, 1, 1, 1, 1, 1),
(22, 1, '2024-09-24', 1, 1, 1, 1, 1, 1, 1, 1),
(23, 1, '2024-09-25', 1, 1, 1, 1, 1, 1, 1, 1),
(24, 1, '2024-09-26', 1, 1, 1, 1, 1, 1, 1, 1),
(25, 1, '2024-09-27', 1, 1, 1, 1, 1, 1, 1, 1),
(26, 1, '2024-09-28', 1, 1, 1, 1, 1, 1, 1, 1),
(27, 1, '2024-09-30', 1, 1, 1, 1, 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teammate_id` (`teammate_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_holidays`
--
ALTER TABLE `public_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teammates`
--
ALTER TABLE `teammates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `public_holidays`
--
ALTER TABLE `public_holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teammates`
--
ALTER TABLE `teammates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_ibfk_1` FOREIGN KEY (`teammate_id`) REFERENCES `teammates` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
