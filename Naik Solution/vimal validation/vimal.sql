-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2023 at 09:33 AM
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
-- Database: `vimal`
--

-- --------------------------------------------------------

--
-- Table structure for table `accept_reject`
--

CREATE TABLE `accept_reject` (
  `id` int(11) NOT NULL,
  `j_id` varchar(20) NOT NULL,
  `stage` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `user` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accept_reject`
--

INSERT INTO `accept_reject` (`id`, `j_id`, `stage`, `type`, `user`, `date_time`) VALUES
(1, '6', '1', 'Reject', '4230', '2023-06-23 05:21:53'),
(2, '6', '2', '', '4230', '2023-06-23 05:23:33'),
(3, '6', '2', 'Reject', '4230', '2023-06-23 05:45:24'),
(4, '6', '3', '', '4230', '2023-06-23 05:45:44'),
(5, '6', '3', 'Reject', '4230', '2023-06-23 05:55:41'),
(6, '6', '4', '', '4230', '2023-06-23 05:57:45'),
(7, '6', '4', 'Reject', '4230', '2023-06-23 06:06:15'),
(8, '6', '5', '', '4230', '2023-06-23 06:06:28'),
(9, '6', '4', 'Reject', '4230', '2023-06-23 06:11:55'),
(10, '6', '5', '', '4230', '2023-06-23 06:12:42'),
(11, '6', '5', 'Reject', '4230', '2023-06-23 06:13:13'),
(12, '6', '6', '', '4230', '2023-06-23 06:13:26'),
(13, '6', '6', 'Reject', '4230', '2023-06-23 06:23:30'),
(14, '6', '7', '', '4230', '2023-06-23 06:23:44'),
(15, '5', '1', 'Reject', '4230', '2023-06-23 12:47:16'),
(16, '5', '2', '', '4230', '2023-06-23 12:48:05'),
(17, '5', '2', 'Reject', '4230', '2023-06-24 06:26:33'),
(18, '5', '3', '', '4230', '2023-06-24 06:27:43'),
(19, '5', '4', '', '4230', '2023-06-24 06:40:33'),
(20, '5', '5', '', '4230', '2023-06-24 06:47:15'),
(21, '5', '6', '', '4230', '2023-06-24 07:02:59'),
(22, '5', '1', 'Reject', '4230', '2023-06-24 09:35:10'),
(23, '7', '2', '', '4230', '2023-06-24 11:08:55'),
(24, '7', '2', 'Reject', '4230', '2023-06-24 11:12:15'),
(25, '7', '3', '', '4230', '2023-06-24 11:15:06'),
(26, '7', '4', '', '4230', '2023-06-24 11:25:14'),
(27, '7', '5', '', '4230', '2023-06-24 11:45:30'),
(28, '7', '6', '', '4230', '2023-06-24 11:55:51'),
(29, '7', '7', '', '4230', '2023-06-24 12:22:59'),
(30, '5', '2', '', '4230', '2023-06-28 06:04:02'),
(31, '5', '2', '', '4230', '2023-06-28 06:08:51'),
(32, '5', '2', '', '4230', '2023-06-28 06:22:26'),
(33, '5', '3', '', '4230', '2023-06-28 06:26:34'),
(34, '5', '3', '', '4230', '2023-06-28 06:26:43'),
(35, '5', '3', '', '4230', '2023-06-28 06:27:14'),
(36, '5', '3', '', '4230', '2023-06-28 06:27:37'),
(37, '5', '4', '', '4230', '2023-06-28 06:34:37'),
(38, '5', '5', '', '4230', '2023-06-28 06:40:32'),
(39, '5', '6', '', '4230', '2023-06-28 06:44:19'),
(40, '5', '7', '', '4230', '2023-06-28 06:51:26'),
(41, '5', '2', '', '4230', '2023-08-04 04:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `assignfgtocust`
--

CREATE TABLE `assignfgtocust` (
  `id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `fg_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `c_code` text NOT NULL,
  `c_name` text NOT NULL,
  `i_code` text NOT NULL,
  `i_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignfgtocust`
--

INSERT INTO `assignfgtocust` (`id`, `cust_id`, `fg_id`, `status`, `c_code`, `c_name`, `i_code`, `i_name`) VALUES
(1, 1, 1, '', 'C00001', 'Cremeux Bakaries Pvt. Ltd.', 'FG00001', 'mouse'),
(2, 10, 3, '', 'C00009', 'VERGO', 'FG00003', 'Lit Fluoxetine'),
(3, 10, 2, '', 'C00009', 'VERGO', 'FG00002', 'Paper XYZ'),
(4, 8, 2, '', 'C00008', 'shailendra Naik', 'FG00002', 'Paper XYZ');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `scode` varchar(20) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `country` text NOT NULL,
  `contact1` varchar(20) NOT NULL,
  `contact2` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `state` text NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `gstin` varchar(30) NOT NULL,
  `credit_lim` text NOT NULL,
  `pay_terms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `scode`, `sname`, `address1`, `address2`, `country`, `contact1`, `contact2`, `status`, `state`, `pincode`, `gstin`, `credit_lim`, `pay_terms`) VALUES
(8, 'C00008', 'shailendra Naik', 'hno385 chandrawada fatorda', 'hno385 chandrawada fatorda', 'India', '9098987876', '3343212132', '', 'Goa', '403602', '30AAGCA5015JIZ5', '10000', 'with in 20 days'),
(10, 'C00009', 'VERGO', 'verna Goa', 'verna Goa', 'India', '999999999', '999999999', '', 'Goa', '403602', '30AAGCA5015JIZ5', '10000', 'with in 20 days');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `contact` varchar(20) NOT NULL,
  `e_contact` varchar(20) NOT NULL,
  `qualification` text NOT NULL,
  `experience` text NOT NULL,
  `status` varchar(300) NOT NULL,
  `photo` text NOT NULL,
  `joining_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `fname`, `lname`, `address`, `contact`, `e_contact`, `qualification`, `experience`, `status`, `photo`, `joining_date`) VALUES
(3, 'DEVMANI', 'TIWARI', 'BAINGUINIM', '9336997282', '', '', '', '', '', '2021-01-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `finished_goods`
--

CREATE TABLE `finished_goods` (
  `id` int(11) NOT NULL,
  `item_code` varchar(30) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `hsn` varchar(20) NOT NULL,
  `item_desc` text NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `size` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `finished_goods`
--

INSERT INTO `finished_goods` (`id`, `item_code`, `item_name`, `hsn`, `item_desc`, `quantity`, `size`, `type`, `status`, `date_time`) VALUES
(1, 'FG00001', 'mouse', 'na', 'Plastic Bag 456X1', '', '23X12', 'Foil', '', '2023-06-10 07:08:17'),
(2, 'FG00002', 'Paper XYZ', 'na', 'HM Printed Bags red in color ', '', '23X12', 'Foil', '', '2023-06-24 09:30:11'),
(3, 'FG00003', 'Lit Fluoxetine', 'na', 'testing', '', '68X42', 'Leaflets', '', '2023-06-24 10:35:32'),
(4, 'FG00004', 'xyz009', 'na', 'test', '', '23X12', 'Leaflets', '', '2023-06-24 10:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `foil1`
--

CREATE TABLE `foil1` (
  `id` int(10) NOT NULL,
  `j_id` varchar(200) DEFAULT NULL,
  `cnou` varchar(200) DEFAULT NULL,
  `prod` varchar(200) DEFAULT NULL,
  `prod_code` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `mcno` varchar(200) DEFAULT NULL,
  `req_qty` int(200) DEFAULT NULL,
  `ord_qty` int(200) DEFAULT NULL,
  `no_of_rolls` int(200) DEFAULT NULL,
  `prod_width` varchar(200) DEFAULT NULL,
  `prod_thick` varchar(200) DEFAULT NULL,
  `prod_poly` varchar(200) DEFAULT NULL,
  `outer_surface` varchar(200) DEFAULT NULL,
  `actual_size` varchar(200) DEFAULT NULL,
  `issued_qty` varchar(200) DEFAULT NULL,
  `issuby` varchar(200) DEFAULT NULL,
  `receiveby` varchar(200) DEFAULT NULL,
  `no_of_rolls1` varchar(200) NOT NULL,
  `prod_width1` varchar(200) NOT NULL,
  `prod_thick1` varchar(200) NOT NULL,
  `prod_poly1` varchar(200) NOT NULL,
  `outer_surface1` varchar(200) NOT NULL,
  `actual_size1` varchar(200) NOT NULL,
  `issued_qty1` varchar(200) NOT NULL,
  `issuby1` varchar(200) NOT NULL,
  `receiveby1` varchar(200) NOT NULL,
  `no_of_rolls2` varchar(200) NOT NULL,
  `prod_width2` varchar(200) NOT NULL,
  `prod_thick2` varchar(200) NOT NULL,
  `prod_poly2` varchar(200) NOT NULL,
  `outer_surface2` varchar(200) NOT NULL,
  `actual_size2` varchar(200) NOT NULL,
  `issued_qty2` varchar(200) NOT NULL,
  `issuby2` varchar(200) NOT NULL,
  `receiveby2` varchar(200) NOT NULL,
  `no_of_rolls3` varchar(200) NOT NULL,
  `prod_width3` varchar(200) NOT NULL,
  `prod_thick3` varchar(200) NOT NULL,
  `prod_poly3` varchar(200) NOT NULL,
  `outer_surface3` varchar(200) NOT NULL,
  `actual_size3` varchar(200) NOT NULL,
  `issued_qty3` varchar(200) NOT NULL,
  `issuby3` varchar(200) NOT NULL,
  `receiveby3` varchar(200) NOT NULL,
  `iss_qty` varchar(200) DEFAULT NULL,
  `ret_qty` varchar(200) DEFAULT NULL,
  `rej_qty` varchar(200) DEFAULT NULL,
  `t` varchar(200) DEFAULT NULL,
  `ret` varchar(200) DEFAULT NULL,
  `plain_rej` varchar(200) DEFAULT NULL,
  `print_rej` varchar(200) DEFAULT NULL,
  `doctoring` varchar(200) DEFAULT NULL,
  `printing` varchar(200) DEFAULT NULL,
  `trimming` varchar(200) DEFAULT NULL,
  `recby1` varchar(200) DEFAULT NULL,
  `recby2` varchar(200) DEFAULT NULL,
  `recby3` varchar(200) DEFAULT NULL,
  `recby4` varchar(200) DEFAULT NULL,
  `recby5` varchar(200) DEFAULT NULL,
  `recby6` varchar(200) DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `date3` date DEFAULT NULL,
  `date4` date DEFAULT NULL,
  `date5` date DEFAULT NULL,
  `date6` date DEFAULT NULL,
  `fin_qty` varchar(200) DEFAULT NULL,
  `rejection` varchar(200) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foil1`
--

INSERT INTO `foil1` (`id`, `j_id`, `cnou`, `prod`, `prod_code`, `date`, `mcno`, `req_qty`, `ord_qty`, `no_of_rolls`, `prod_width`, `prod_thick`, `prod_poly`, `outer_surface`, `actual_size`, `issued_qty`, `issuby`, `receiveby`, `no_of_rolls1`, `prod_width1`, `prod_thick1`, `prod_poly1`, `outer_surface1`, `actual_size1`, `issued_qty1`, `issuby1`, `receiveby1`, `no_of_rolls2`, `prod_width2`, `prod_thick2`, `prod_poly2`, `outer_surface2`, `actual_size2`, `issued_qty2`, `issuby2`, `receiveby2`, `no_of_rolls3`, `prod_width3`, `prod_thick3`, `prod_poly3`, `outer_surface3`, `actual_size3`, `issued_qty3`, `issuby3`, `receiveby3`, `iss_qty`, `ret_qty`, `rej_qty`, `t`, `ret`, `plain_rej`, `print_rej`, `doctoring`, `printing`, `trimming`, `recby1`, `recby2`, `recby3`, `recby4`, `recby5`, `recby6`, `date1`, `date2`, `date3`, `date4`, `date5`, `date6`, `fin_qty`, `rejection`, `date_time`, `status`) VALUES
(9, '1', '43', 'a334', 'aw2', '2023-09-05', 'rt', 0, 0, 0, 'tr', 'tr', 'fg', 'hc', 'bc', '10', 'cg', 'd', '', 'tr', 'tr', 'fg', 'hc', 'bc', '10', 'cg', 'd', '0', 'tr', 'tr', 'fg', 'hc', 'bc', '10', 'cg', 'd', '0', 'tr', 'tr', 'fg', 'hc', 'bc', '10', '', 'd', '40.00', '10', '10', '20.00', 'xv12', 'vx1', 'f', '1', '1', '1', 'vx', 'vx', 'd', 'hvb', 'chg', 'vh', '2023-09-20', '2023-09-26', '2023-09-12', '2023-09-12', '2023-09-05', '2023-09-13', '17.00', '43.33', '2023-09-05 10:27:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `foil2`
--

CREATE TABLE `foil2` (
  `id` int(10) NOT NULL,
  `j_id` varchar(200) DEFAULT NULL,
  `cnou` varchar(200) DEFAULT NULL,
  `mcno` varchar(200) DEFAULT NULL,
  `operator` varchar(200) DEFAULT NULL,
  `prev_job` varchar(200) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  `obs1` varchar(200) DEFAULT NULL,
  `obs2` varchar(200) DEFAULT NULL,
  `obs3` varchar(200) DEFAULT NULL,
  `obs4` varchar(200) DEFAULT NULL,
  `obs5` varchar(200) DEFAULT NULL,
  `obs6` varchar(200) DEFAULT NULL,
  `obs7` varchar(200) DEFAULT NULL,
  `obs8` varchar(200) DEFAULT NULL,
  `obs9` varchar(200) DEFAULT NULL,
  `opsign` varchar(200) DEFAULT NULL,
  `prodsign` varchar(200) DEFAULT NULL,
  `qcsign` varchar(200) DEFAULT NULL,
  `qasign` varchar(200) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foil2`
--

INSERT INTO `foil2` (`id`, `j_id`, `cnou`, `mcno`, `operator`, `prev_job`, `pdate`, `obs1`, `obs2`, `obs3`, `obs4`, `obs5`, `obs6`, `obs7`, `obs8`, `obs9`, `opsign`, `prodsign`, `qcsign`, `qasign`, `date_time`, `status`) VALUES
(1, '1', '', 'abcd', 'a', 'a', '2023-09-06', 'a', 'a', '21', 'a1', 'a', 'a', 'a', 'a', '12', 'a', 'a', 'a', '11', '2023-09-06 05:10:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `foil3`
--

CREATE TABLE `foil3` (
  `id` int(10) NOT NULL,
  `j_id` varchar(200) DEFAULT NULL,
  `cnou` varchar(200) DEFAULT NULL,
  `nameofp` varchar(200) DEFAULT NULL,
  `prod_code` varchar(200) DEFAULT NULL,
  `nccoating` varchar(200) DEFAULT NULL,
  `colours` varchar(200) DEFAULT NULL,
  `obs1` varchar(200) DEFAULT NULL,
  `obs2` varchar(200) DEFAULT NULL,
  `obs3` varchar(200) DEFAULT NULL,
  `obs4` varchar(200) DEFAULT NULL,
  `obs5` varchar(200) DEFAULT NULL,
  `obs6` varchar(200) DEFAULT NULL,
  `obs7` varchar(200) DEFAULT NULL,
  `obs8` varchar(200) DEFAULT NULL,
  `obs9` varchar(200) DEFAULT NULL,
  `obs10` varchar(200) DEFAULT NULL,
  `obs11` varchar(200) DEFAULT NULL,
  `obs12` varchar(200) DEFAULT NULL,
  `obs13` varchar(200) DEFAULT NULL,
  `obs14` varchar(200) DEFAULT NULL,
  `details1` varchar(200) DEFAULT NULL,
  `details2` varchar(200) DEFAULT NULL,
  `details3` varchar(200) DEFAULT NULL,
  `details4` varchar(200) DEFAULT NULL,
  `details5` varchar(200) DEFAULT NULL,
  `mi1` varchar(200) DEFAULT NULL,
  `mi2` varchar(200) DEFAULT NULL,
  `mi3` varchar(200) DEFAULT NULL,
  `mi4` varchar(200) DEFAULT NULL,
  `mi5` varchar(200) DEFAULT NULL,
  `temp1` varchar(200) DEFAULT NULL,
  `temp2` varchar(200) DEFAULT NULL,
  `temp3` varchar(200) DEFAULT NULL,
  `temp4` varchar(200) DEFAULT NULL,
  `temp5` varchar(200) DEFAULT NULL,
  `speed` varchar(200) DEFAULT NULL,
  `opt` varchar(200) DEFAULT NULL,
  `prod` varchar(200) DEFAULT NULL,
  `qc` varchar(200) DEFAULT NULL,
  `qa` varchar(200) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foil3`
--

INSERT INTO `foil3` (`id`, `j_id`, `cnou`, `nameofp`, `prod_code`, `nccoating`, `colours`, `obs1`, `obs2`, `obs3`, `obs4`, `obs5`, `obs6`, `obs7`, `obs8`, `obs9`, `obs10`, `obs11`, `obs12`, `obs13`, `obs14`, `details1`, `details2`, `details3`, `details4`, `details5`, `mi1`, `mi2`, `mi3`, `mi4`, `mi5`, `temp1`, `temp2`, `temp3`, `temp4`, `temp5`, `speed`, `opt`, `prod`, `qc`, `qa`, `date_time`, `status`) VALUES
(2, '1', '43', '12', '21', '21', '12', '21', '21', '21', '21', '21', '21', '21', '21', '2', '1221', '21', '12', '21', '21', '212', '21', '21', '21', '21', '21', '21', '21', '21', '21', '21', '12', '12', '21', '21', '21', '21', '21', '21', '12', '2023-09-06 09:37:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `foil4`
--

CREATE TABLE `foil4` (
  `id` int(10) NOT NULL,
  `j_id` varchar(200) DEFAULT NULL,
  `cnou` varchar(200) DEFAULT NULL,
  `popt` varchar(200) DEFAULT NULL,
  `prod` varchar(200) DEFAULT NULL,
  `qc` varchar(200) DEFAULT NULL,
  `qa` varchar(200) DEFAULT NULL,
  `lot` varchar(200) DEFAULT NULL,
  `reg` varchar(200) DEFAULT NULL,
  `inkad` varchar(200) DEFAULT NULL,
  `clr` varchar(200) DEFAULT NULL,
  `rlength` varchar(200) DEFAULT NULL,
  `center` varchar(200) DEFAULT NULL,
  `vis` varchar(200) DEFAULT NULL,
  `barcode` varchar(200) DEFAULT NULL,
  `winding` varchar(200) DEFAULT NULL,
  `ink1` varchar(200) DEFAULT NULL,
  `ink2` varchar(200) DEFAULT NULL,
  `ink3` varchar(200) DEFAULT NULL,
  `ink4` varchar(200) DEFAULT NULL,
  `ink5` varchar(200) DEFAULT NULL,
  `b1` varchar(200) DEFAULT NULL,
  `b2` varchar(200) DEFAULT NULL,
  `b3` varchar(200) DEFAULT NULL,
  `b4` varchar(200) DEFAULT NULL,
  `b5` varchar(200) DEFAULT NULL,
  `time` varchar(200) DEFAULT NULL,
  `roll` varchar(200) DEFAULT NULL,
  `identity` varchar(200) DEFAULT NULL,
  `weight` varchar(200) DEFAULT NULL,
  `quality` varchar(200) DEFAULT NULL,
  `finished` varchar(200) DEFAULT NULL,
  `rej` varchar(200) DEFAULT NULL,
  `opt` varchar(200) DEFAULT NULL,
  `time1` varchar(200) DEFAULT NULL,
  `roll1` varchar(200) DEFAULT NULL,
  `identity1` varchar(200) DEFAULT NULL,
  `weight1` varchar(200) DEFAULT NULL,
  `quality1` varchar(200) DEFAULT NULL,
  `finished1` varchar(200) DEFAULT NULL,
  `rej1` varchar(200) DEFAULT NULL,
  `opt1` varchar(200) DEFAULT NULL,
  `time2` varchar(200) DEFAULT NULL,
  `roll2` varchar(200) DEFAULT NULL,
  `identity2` varchar(200) DEFAULT NULL,
  `weight2` varchar(200) DEFAULT NULL,
  `quality2` varchar(200) DEFAULT NULL,
  `finished2` varchar(200) DEFAULT NULL,
  `rej2` varchar(200) DEFAULT NULL,
  `opt2` varchar(200) DEFAULT NULL,
  `time3` varchar(200) DEFAULT NULL,
  `roll3` varchar(200) DEFAULT NULL,
  `identity3` varchar(200) DEFAULT NULL,
  `weight3` varchar(200) DEFAULT NULL,
  `quality3` varchar(200) DEFAULT NULL,
  `finished3` varchar(200) DEFAULT NULL,
  `rej3` varchar(200) DEFAULT NULL,
  `opt3` varchar(200) DEFAULT NULL,
  `time4` varchar(200) DEFAULT NULL,
  `roll4` varchar(200) DEFAULT NULL,
  `identity4` varchar(200) DEFAULT NULL,
  `weight4` varchar(200) DEFAULT NULL,
  `quality4` varchar(200) DEFAULT NULL,
  `finished4` varchar(200) DEFAULT NULL,
  `rej4` varchar(200) DEFAULT NULL,
  `opt4` varchar(200) DEFAULT NULL,
  `time5` varchar(200) DEFAULT NULL,
  `roll5` varchar(200) DEFAULT NULL,
  `identity5` varchar(200) DEFAULT NULL,
  `weight5` varchar(200) DEFAULT NULL,
  `quality5` varchar(200) DEFAULT NULL,
  `finished5` varchar(200) DEFAULT NULL,
  `rej5` varchar(200) DEFAULT NULL,
  `opt5` varchar(200) DEFAULT NULL,
  `totalwt` varchar(200) NOT NULL,
  `totalqty` varchar(200) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foil4`
--

INSERT INTO `foil4` (`id`, `j_id`, `cnou`, `popt`, `prod`, `qc`, `qa`, `lot`, `reg`, `inkad`, `clr`, `rlength`, `center`, `vis`, `barcode`, `winding`, `ink1`, `ink2`, `ink3`, `ink4`, `ink5`, `b1`, `b2`, `b3`, `b4`, `b5`, `time`, `roll`, `identity`, `weight`, `quality`, `finished`, `rej`, `opt`, `time1`, `roll1`, `identity1`, `weight1`, `quality1`, `finished1`, `rej1`, `opt1`, `time2`, `roll2`, `identity2`, `weight2`, `quality2`, `finished2`, `rej2`, `opt2`, `time3`, `roll3`, `identity3`, `weight3`, `quality3`, `finished3`, `rej3`, `opt3`, `time4`, `roll4`, `identity4`, `weight4`, `quality4`, `finished4`, `rej4`, `opt4`, `time5`, `roll5`, `identity5`, `weight5`, `quality5`, `finished5`, `rej5`, `opt5`, `totalwt`, `totalqty`, `date_time`, `status`) VALUES
(1, '1', '43', ' a    ', 'a', '12', '12', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '10', 'a', '10', 'aa', 'a', 'a', 'a', 'a', '10', 'a', '11', 'aa', 'a', 'a', 'a', 'a', '10', 'a', '11', 'aa', 'a', 'a', 'a', 'a', '10', 'a', '11', 'aa', 'a', 'a', 'a', 'a', '10', 'a', '11', 'aa', 'a', 'a', 'a', 'a', '10', 'a', '11', 'aa', 'a', '', '', '2023-09-06 11:32:38', 0);

-- --------------------------------------------------------

--
-- Table structure for table `foil5`
--

CREATE TABLE `foil5` (
  `id` int(10) NOT NULL,
  `j_id` varchar(200) DEFAULT NULL,
  `cnou` varchar(200) DEFAULT NULL,
  `fdate` varchar(200) DEFAULT NULL,
  `ftime` varchar(200) DEFAULT NULL,
  `pjob` varchar(200) DEFAULT NULL,
  `cjob` varchar(200) DEFAULT NULL,
  `mcno` varchar(200) DEFAULT NULL,
  `shift` varchar(200) DEFAULT NULL,
  `clean` varchar(200) DEFAULT NULL,
  `removed` varchar(200) DEFAULT NULL,
  `returned` varchar(200) DEFAULT NULL,
  `prodn` text NOT NULL,
  `qc` varchar(200) DEFAULT NULL,
  `qa` varchar(200) DEFAULT NULL,
  `op` varchar(200) DEFAULT NULL,
  `core` varchar(200) DEFAULT NULL,
  `prod` varchar(200) DEFAULT NULL,
  `code` varchar(200) DEFAULT NULL,
  `dwidth` varchar(200) NOT NULL,
  `thick` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `roll` varchar(200) NOT NULL,
  `identity` varchar(200) NOT NULL,
  `quality` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `gw` varchar(200) NOT NULL,
  `cw` varchar(200) NOT NULL,
  `nw` varchar(200) NOT NULL,
  `rej` varchar(200) NOT NULL,
  `width` varchar(200) NOT NULL,
  `checked` varchar(200) NOT NULL,
  `joints` varchar(200) NOT NULL,
  `time1` varchar(200) NOT NULL,
  `roll1` varchar(200) NOT NULL,
  `identity1` varchar(200) NOT NULL,
  `quality1` varchar(200) NOT NULL,
  `qty1` varchar(200) NOT NULL,
  `gw1` varchar(200) NOT NULL,
  `cw1` varchar(200) NOT NULL,
  `nw1` varchar(200) NOT NULL,
  `rej1` varchar(200) NOT NULL,
  `width1` varchar(200) NOT NULL,
  `check1` varchar(200) NOT NULL,
  `joints1` varchar(200) NOT NULL,
  `time2` varchar(200) DEFAULT NULL,
  `roll2` varchar(200) DEFAULT NULL,
  `identity2` varchar(200) DEFAULT NULL,
  `quality2` varchar(200) DEFAULT NULL,
  `qty2` varchar(200) DEFAULT NULL,
  `gw2` varchar(200) DEFAULT NULL,
  `cw2` varchar(200) DEFAULT NULL,
  `nw2` varchar(200) DEFAULT NULL,
  `rej2` varchar(200) DEFAULT NULL,
  `width2` varchar(200) DEFAULT NULL,
  `check2` varchar(200) DEFAULT NULL,
  `joints2` varchar(200) DEFAULT NULL,
  `time3` varchar(200) DEFAULT NULL,
  `roll3` varchar(200) DEFAULT NULL,
  `identity3` varchar(200) DEFAULT NULL,
  `quality3` varchar(200) DEFAULT NULL,
  `qty3` varchar(200) DEFAULT NULL,
  `gw3` varchar(200) DEFAULT NULL,
  `cw3` varchar(200) DEFAULT NULL,
  `nw3` varchar(200) DEFAULT NULL,
  `rej3` varchar(200) DEFAULT NULL,
  `width3` varchar(200) DEFAULT NULL,
  `check3` varchar(200) DEFAULT NULL,
  `joints3` varchar(200) DEFAULT NULL,
  `time4` varchar(200) DEFAULT NULL,
  `roll4` varchar(200) DEFAULT NULL,
  `identity4` varchar(200) DEFAULT NULL,
  `quality4` varchar(200) DEFAULT NULL,
  `qty4` varchar(200) DEFAULT NULL,
  `gw4` varchar(200) DEFAULT NULL,
  `cw4` varchar(200) DEFAULT NULL,
  `nw4` varchar(200) DEFAULT NULL,
  `rej4` varchar(200) DEFAULT NULL,
  `width4` varchar(200) DEFAULT NULL,
  `check4` varchar(200) DEFAULT NULL,
  `joints4` varchar(200) DEFAULT NULL,
  `totalqty` varchar(200) DEFAULT NULL,
  `totalnw` varchar(200) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foil5`
--

INSERT INTO `foil5` (`id`, `j_id`, `cnou`, `fdate`, `ftime`, `pjob`, `cjob`, `mcno`, `shift`, `clean`, `removed`, `returned`, `prodn`, `qc`, `qa`, `op`, `core`, `prod`, `code`, `dwidth`, `thick`, `time`, `roll`, `identity`, `quality`, `qty`, `gw`, `cw`, `nw`, `rej`, `width`, `checked`, `joints`, `time1`, `roll1`, `identity1`, `quality1`, `qty1`, `gw1`, `cw1`, `nw1`, `rej1`, `width1`, `check1`, `joints1`, `time2`, `roll2`, `identity2`, `quality2`, `qty2`, `gw2`, `cw2`, `nw2`, `rej2`, `width2`, `check2`, `joints2`, `time3`, `roll3`, `identity3`, `quality3`, `qty3`, `gw3`, `cw3`, `nw3`, `rej3`, `width3`, `check3`, `joints3`, `time4`, `roll4`, `identity4`, `quality4`, `qty4`, `gw4`, `cw4`, `nw4`, `rej4`, `width4`, `check4`, `joints4`, `totalqty`, `totalnw`, `date_time`, `status`) VALUES
(1, '1', '43', '', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '32', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '  ', '2023-09-08 07:16:43', 0);

-- --------------------------------------------------------

--
-- Table structure for table `joborder_data`
--

CREATE TABLE `joborder_data` (
  `id` int(11) NOT NULL,
  `i_date` varchar(30) NOT NULL,
  `grn` text NOT NULL COMMENT 'Goods Reciept Note',
  `grn_type` varchar(10) NOT NULL,
  `fk_item` varchar(100) NOT NULL,
  `item_code` varchar(10) NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `fk_supplier` varchar(100) NOT NULL,
  `sup_code` varchar(20) NOT NULL,
  `sup_name` varchar(20) NOT NULL,
  `invoice_number` varchar(10) NOT NULL,
  `uom` varchar(20) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `basic_amt` varchar(10) NOT NULL,
  `gst_flat` varchar(100) NOT NULL,
  `gst_percent` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `status` varchar(5) NOT NULL DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `qc` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `joborder_data`
--

INSERT INTO `joborder_data` (`id`, `i_date`, `grn`, `grn_type`, `fk_item`, `item_code`, `item_name`, `fk_supplier`, `sup_code`, `sup_name`, `invoice_number`, `uom`, `rate`, `qty`, `basic_amt`, `gst_flat`, `gst_percent`, `total`, `status`, `date_created`, `qc`) VALUES
(7, '2023-06-12', '000002', '0', '1', 'RM00001', 'mouse', '1', 'S00001', 'Komsos Petrochem', '', 'RM', '122', '50', '6100', 'IGST', '21', '6100', '0', '2023-06-12 08:34:53', '');

-- --------------------------------------------------------

--
-- Table structure for table `joborder_data_tmp`
--

CREATE TABLE `joborder_data_tmp` (
  `id` int(11) NOT NULL,
  `i_date` varchar(30) NOT NULL,
  `grn` text NOT NULL COMMENT 'Goods Reciept Note',
  `grn_type` varchar(10) NOT NULL,
  `fk_item` varchar(100) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `fk_supplier` int(11) NOT NULL,
  `sup_code` varchar(100) NOT NULL,
  `sup_name` varchar(500) NOT NULL,
  `invoice_number` varchar(10) NOT NULL,
  `uom` varchar(20) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `basic_amt` varchar(10) NOT NULL,
  `gst_flat` varchar(100) NOT NULL,
  `gst_percent` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `status` varchar(5) NOT NULL DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_order`
--

CREATE TABLE `job_order` (
  `id` int(11) NOT NULL,
  `datee` varchar(50) NOT NULL,
  `cust_code` text NOT NULL,
  `cust_name` text NOT NULL,
  `i_no` text NOT NULL,
  `i_name` text NOT NULL,
  `disc` text NOT NULL,
  `size` text NOT NULL,
  `type` text NOT NULL,
  `qty` text NOT NULL,
  `qty1` text NOT NULL,
  `qty2` text NOT NULL,
  `disc1` text NOT NULL,
  `Priority` text NOT NULL,
  `GSM` text NOT NULL,
  `col1` text NOT NULL,
  `ink` text NOT NULL,
  `cnou` text NOT NULL,
  `sheetsize` text NOT NULL,
  `opensize` text NOT NULL,
  `fcsfp` text NOT NULL,
  `foldsize` text NOT NULL,
  `ntp` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `user` varchar(50) NOT NULL,
  `stage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_order`
--

INSERT INTO `job_order` (`id`, `datee`, `cust_code`, `cust_name`, `i_no`, `i_name`, `disc`, `size`, `type`, `qty`, `qty1`, `qty2`, `disc1`, `Priority`, `GSM`, `col1`, `ink`, `cnou`, `sheetsize`, `opensize`, `fcsfp`, `foldsize`, `ntp`, `status`, `date_time`, `user`, `stage`) VALUES
(1, '2023-09-05', 'C00008', 'shailendra Naik', '2', 'FG00002', 'Paper XYZ', '23X12', 'Foil', '122', '22', '144', 'Paper XYZ', 'High', '23', '23', '32', '43', '324', '3', '43', '23', '3.35', '', '2023-09-05 05:08:09', '4230', '4');

-- --------------------------------------------------------

--
-- Table structure for table `quality`
--

CREATE TABLE `quality` (
  `id` int(11) NOT NULL,
  `j_id` text DEFAULT NULL,
  `cnou` text DEFAULT NULL,
  `batch_no` text DEFAULT NULL,
  `item_code` text DEFAULT NULL,
  `cust_name` text DEFAULT NULL,
  `batch_noo` text DEFAULT NULL,
  `job_desc` text DEFAULT NULL,
  `job_code` text DEFAULT NULL,
  `sub_paper` text DEFAULT NULL,
  `gsm` text DEFAULT NULL,
  `sheet_size` text DEFAULT NULL,
  `cutt_size` text DEFAULT NULL,
  `fold_size` text DEFAULT NULL,
  `boxes` text DEFAULT NULL,
  `no_of_fold` text DEFAULT NULL,
  `parall_fold` text DEFAULT NULL,
  `date_b` text DEFAULT NULL,
  `batch_size` text DEFAULT NULL,
  `samp_size` text DEFAULT NULL,
  `criti_limits` text DEFAULT NULL,
  `malor_lim1` text DEFAULT NULL,
  `malor_lim2` text DEFAULT NULL,
  `Letter` text DEFAULT NULL,
  `Smudging` text DEFAULT NULL,
  `Scump` text DEFAULT NULL,
  `Black` text DEFAULT NULL,
  `Colour` text DEFAULT NULL,
  `Wrinkles` text DEFAULT NULL,
  `Plain` text DEFAULT NULL,
  `Oil` text DEFAULT NULL,
  `check_by` text DEFAULT NULL,
  `batc_status` text DEFAULT NULL,
  `letter_1` text DEFAULT NULL,
  `letter_2` text DEFAULT NULL,
  `letter_3` text DEFAULT NULL,
  `letter_4` text DEFAULT NULL,
  `letter_5` text DEFAULT NULL,
  `letter_6` text DEFAULT NULL,
  `check_by1` text DEFAULT NULL,
  `check_by2` text DEFAULT NULL,
  `check_by3` text DEFAULT NULL,
  `check_by4` text DEFAULT NULL,
  `Smudging1` text DEFAULT NULL,
  `Smudging2` text DEFAULT NULL,
  `Smudging3` text DEFAULT NULL,
  `Smudging4` text DEFAULT NULL,
  `Smudging5` text DEFAULT NULL,
  `Smudging6` text DEFAULT NULL,
  `Scump1` text DEFAULT NULL,
  `Scump2` text DEFAULT NULL,
  `Scump3` text DEFAULT NULL,
  `Scump4` text DEFAULT NULL,
  `Scump5` text DEFAULT NULL,
  `Scump6` text DEFAULT NULL,
  `Black1` text DEFAULT NULL,
  `Black2` text DEFAULT NULL,
  `Black3` text DEFAULT NULL,
  `Black4` text DEFAULT NULL,
  `Black5` text DEFAULT NULL,
  `Black6` text DEFAULT NULL,
  `Colour1` text DEFAULT NULL,
  `Colour2` text DEFAULT NULL,
  `Colour3` text DEFAULT NULL,
  `Colour4` text DEFAULT NULL,
  `Colour5` text DEFAULT NULL,
  `Colour6` text DEFAULT NULL,
  `Wrinkles1` text DEFAULT NULL,
  `Wrinkles2` text DEFAULT NULL,
  `Wrinkles3` text DEFAULT NULL,
  `Wrinkles4` text DEFAULT NULL,
  `Wrinkles5` text DEFAULT NULL,
  `Wrinkles6` text DEFAULT NULL,
  `Plain1` text DEFAULT NULL,
  `Plain2` text DEFAULT NULL,
  `Plain3` text DEFAULT NULL,
  `Plain4` text DEFAULT NULL,
  `Plain5` text DEFAULT NULL,
  `Plain6` text DEFAULT NULL,
  `oilplain1` text DEFAULT NULL,
  `oilplain2` text DEFAULT NULL,
  `oilplain3` text DEFAULT NULL,
  `oilplain4` text DEFAULT NULL,
  `oilplain5` text DEFAULT NULL,
  `oilplain6` text DEFAULT NULL,
  `Variation1` text DEFAULT NULL,
  `Variation2` text DEFAULT NULL,
  `Variation3` text DEFAULT NULL,
  `Variation4` text DEFAULT NULL,
  `Variation5` text DEFAULT NULL,
  `Improper1` text DEFAULT NULL,
  `Improper2` text DEFAULT NULL,
  `Improper3` text DEFAULT NULL,
  `Improper4` text DEFAULT NULL,
  `Improper5` text DEFAULT NULL,
  `Wrinkles11` text DEFAULT NULL,
  `Wrinkles12` text DEFAULT NULL,
  `Wrinkles13` text DEFAULT NULL,
  `Improper_p1` text DEFAULT NULL,
  `Improper_p2` text DEFAULT NULL,
  `Improper_p3` text DEFAULT NULL,
  `Gluing1` text DEFAULT NULL,
  `Gluing2` text DEFAULT NULL,
  `Gluing3` text DEFAULT NULL,
  `Counting1` text DEFAULT NULL,
  `Counting2` text DEFAULT NULL,
  `Counting3` text DEFAULT NULL,
  `box_status` text DEFAULT NULL,
  `batch_status` text DEFAULT NULL,
  `check_qc` text DEFAULT NULL,
  `approve_qa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quality`
--

INSERT INTO `quality` (`id`, `j_id`, `cnou`, `batch_no`, `item_code`, `cust_name`, `batch_noo`, `job_desc`, `job_code`, `sub_paper`, `gsm`, `sheet_size`, `cutt_size`, `fold_size`, `boxes`, `no_of_fold`, `parall_fold`, `date_b`, `batch_size`, `samp_size`, `criti_limits`, `malor_lim1`, `malor_lim2`, `Letter`, `Smudging`, `Scump`, `Black`, `Colour`, `Wrinkles`, `Plain`, `Oil`, `check_by`, `batc_status`, `letter_1`, `letter_2`, `letter_3`, `letter_4`, `letter_5`, `letter_6`, `check_by1`, `check_by2`, `check_by3`, `check_by4`, `Smudging1`, `Smudging2`, `Smudging3`, `Smudging4`, `Smudging5`, `Smudging6`, `Scump1`, `Scump2`, `Scump3`, `Scump4`, `Scump5`, `Scump6`, `Black1`, `Black2`, `Black3`, `Black4`, `Black5`, `Black6`, `Colour1`, `Colour2`, `Colour3`, `Colour4`, `Colour5`, `Colour6`, `Wrinkles1`, `Wrinkles2`, `Wrinkles3`, `Wrinkles4`, `Wrinkles5`, `Wrinkles6`, `Plain1`, `Plain2`, `Plain3`, `Plain4`, `Plain5`, `Plain6`, `oilplain1`, `oilplain2`, `oilplain3`, `oilplain4`, `oilplain5`, `oilplain6`, `Variation1`, `Variation2`, `Variation3`, `Variation4`, `Variation5`, `Improper1`, `Improper2`, `Improper3`, `Improper4`, `Improper5`, `Wrinkles11`, `Wrinkles12`, `Wrinkles13`, `Improper_p1`, `Improper_p2`, `Improper_p3`, `Gluing1`, `Gluing2`, `Gluing3`, `Counting1`, `Counting2`, `Counting3`, `box_status`, `batch_status`, `check_qc`, `approve_qa`) VALUES
(1, '5', '16', '', '', 'Cremeux Bakaries Pvt. Ltd.', '', 'Plastic Bag 456X1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'sad', '', 'sad', '');

-- --------------------------------------------------------

--
-- Table structure for table `raw_material`
--

CREATE TABLE `raw_material` (
  `id` int(11) NOT NULL,
  `item_code` varchar(30) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `hsn` varchar(20) NOT NULL,
  `item_desc` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `grade` varchar(30) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raw_material`
--

INSERT INTO `raw_material` (`id`, `item_code`, `item_name`, `hsn`, `item_desc`, `status`, `type`, `grade`, `date_time`) VALUES
(1, 'RM00001', 'mouse', 'na', 'sdf', '', 'Paper', '', '2023-06-10 07:21:19'),
(2, 'RM00002', 'foill', 'na', 'test', '', 'Paper', '', '2023-06-24 09:30:48'),
(3, 'RM00003', 'bible paper', 'na', 'test', '', 'Paper', '', '2023-06-24 10:47:50'),
(4, 'RM00004', 'ink black', 'na', 'test', '', 'Ink', '', '2023-06-24 10:50:07'),
(5, 'RM00005', 'Plate PP000511', 'na', 'test', '', 'Plate', '', '2023-06-24 10:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `rmjo`
--

CREATE TABLE `rmjo` (
  `m_date` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `fkid` varchar(20) NOT NULL,
  `i_code` varchar(50) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `m_type` varchar(100) NOT NULL,
  `type_m` varchar(100) NOT NULL,
  `i_name` varchar(200) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `issuby` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rmjo`
--

INSERT INTO `rmjo` (`m_date`, `id`, `fkid`, `i_code`, `ref_no`, `m_type`, `type_m`, `i_name`, `qty`, `date_time`, `status`, `user`, `issuby`) VALUES
('2023-06-13', 2, '5', 'RM00001', '13345DFG', 'Paper & GSM', '12X45', 'mouse', '88', '2023-06-13 05:39:11', 0, 4230, 'sarvesh'),
('2023-06-22', 3, '6', 'RM00001', '13345DFG', 'Paper & GSM', '12X45', 'mouse', '50', '2023-06-22 06:32:54', 0, 4230, 'sarvesh'),
('', 4, '7', 'RM00004', 'INK/REF/190', 'Ink', 'sigwerk', 'ink black', '3', '2023-06-24 11:02:38', 0, 4230, 'chandni'),
('', 5, '7', 'RM00003', 'P/REF/209', 'Paper & GSM', '78X62', 'bible paper', '11000', '2023-06-24 11:03:58', 0, 4230, 'chandni');

-- --------------------------------------------------------

--
-- Table structure for table `stage1`
--

CREATE TABLE `stage1` (
  `id` int(11) NOT NULL,
  `j_id` varchar(200) NOT NULL,
  `cnou` varchar(200) NOT NULL,
  `a_date` varchar(200) NOT NULL,
  `a_issued` varchar(200) NOT NULL,
  `a_reject` varchar(200) NOT NULL,
  `a_doneby` varchar(200) NOT NULL,
  `a_checkedby` varchar(200) NOT NULL,
  `b_dbate` varchar(200) NOT NULL,
  `b_issued` varchar(200) NOT NULL,
  `b_reject` varchar(200) NOT NULL,
  `b_doneby` varchar(200) NOT NULL,
  `b_checkedby` varchar(200) NOT NULL,
  `c_dbate` varchar(200) NOT NULL,
  `c_issued` varchar(200) NOT NULL,
  `c_reject` varchar(200) NOT NULL,
  `c_doneby` varchar(200) NOT NULL,
  `c_checkedby` varchar(200) NOT NULL,
  `d_dbate` varchar(200) NOT NULL,
  `d_issued` varchar(200) NOT NULL,
  `d_reject` varchar(200) NOT NULL,
  `d_doneby` varchar(200) NOT NULL,
  `d_checkedby` varchar(200) NOT NULL,
  `e_dbate` varchar(200) NOT NULL,
  `e_issued` varchar(200) NOT NULL,
  `e_reject` varchar(200) NOT NULL,
  `e_doneby` varchar(200) NOT NULL,
  `e_checkedby` varchar(200) NOT NULL,
  `f_dbate` varchar(200) NOT NULL,
  `f_issued` varchar(200) NOT NULL,
  `f_reject` varchar(200) NOT NULL,
  `f_doneby` varchar(200) NOT NULL,
  `f_checkedby` varchar(200) NOT NULL,
  `g_dbate` varchar(200) NOT NULL,
  `g_issued` varchar(200) NOT NULL,
  `g_reject` varchar(200) NOT NULL,
  `g_doneby` varchar(200) NOT NULL,
  `g_checkedby` varchar(200) NOT NULL,
  `h_date` varchar(200) NOT NULL,
  `h_total` varchar(200) NOT NULL,
  `h_doneby` varchar(200) NOT NULL,
  `h_checkedby` varchar(200) NOT NULL,
  `i_total` varchar(200) NOT NULL,
  `i_doneby` varchar(200) NOT NULL,
  `i_checkedby` varchar(200) NOT NULL,
  `j_total` varchar(200) NOT NULL,
  `j_doneby` varchar(200) NOT NULL,
  `j_checkedby` varchar(200) NOT NULL,
  `k_num1` varchar(200) NOT NULL,
  `k_num2` varchar(200) NOT NULL,
  `k_num3` varchar(200) NOT NULL,
  `k_num4` varchar(200) NOT NULL,
  `k_num5` varchar(200) NOT NULL,
  `k_doneby` varchar(200) NOT NULL,
  `k_checkedby` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stage1`
--

INSERT INTO `stage1` (`id`, `j_id`, `cnou`, `a_date`, `a_issued`, `a_reject`, `a_doneby`, `a_checkedby`, `b_dbate`, `b_issued`, `b_reject`, `b_doneby`, `b_checkedby`, `c_dbate`, `c_issued`, `c_reject`, `c_doneby`, `c_checkedby`, `d_dbate`, `d_issued`, `d_reject`, `d_doneby`, `d_checkedby`, `e_dbate`, `e_issued`, `e_reject`, `e_doneby`, `e_checkedby`, `f_dbate`, `f_issued`, `f_reject`, `f_doneby`, `f_checkedby`, `g_dbate`, `g_issued`, `g_reject`, `g_doneby`, `g_checkedby`, `h_date`, `h_total`, `h_doneby`, `h_checkedby`, `i_total`, `i_doneby`, `i_checkedby`, `j_total`, `j_doneby`, `j_checkedby`, `k_num1`, `k_num2`, `k_num3`, `k_num4`, `k_num5`, `k_doneby`, `k_checkedby`, `status`, `date_time`) VALUES
(2, '7', '2', '2023-06-24', '22218', '0', 'ajay', '', '2023-06-24', '22218.00', '26', 'rohit', '', '', '22192.00', '39', 'sandesh', '', '', '22153.00', '0', 'swa', '', '', '44306.00', '0', 'swa', '', '2023-06-24', '44306.00', '787', 'rahul', '', '2023-06-25', '43519.00', '260', 'sham', '', '', '43259.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-06-24 11:07:01'),
(4, '5', '16', '2023-06-28', '1342', '0', 'shailen', 'Admin', '2023-06-28', '1342.00', '24', 'rohit', 'Admin', '', '1318.00', '10', 'sandesh', 'Admin', '2023-06-28', '1308.00', '2', 'swa', 'Admin', '2023-06-28', '20896.00', '2', 'swa', 'Admin', '2023-06-28', '20896.00', '340', 'rahul', 'Admin', '2023-06-28', '20556.00', '38', 'sham', 'Admin', '', '20518.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-06-28 06:17:35'),
(5, '5', '16', '2023-06-28', '1342', '0', 'shailen', 'Admin', '2023-06-28', '1342.00', '24', 'rohit', 'Admin', '2023-06-28', '1318.00', '10', 'sandesh', 'Admin', '2023-06-28', '1308.00', '2', 'swa', 'Admin', '2023-06-28', '20896.00', '2', 'swa', 'Admin', '2023-06-28', '20896.00', '340', 'rahul', 'Admin', '2023-06-28', '20556.00', '38', 'sham', 'Admin', '', '20518.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-06-28 06:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `stage2`
--

CREATE TABLE `stage2` (
  `id` int(10) NOT NULL,
  `j_id` varchar(200) DEFAULT NULL,
  `cnou` varchar(200) DEFAULT NULL,
  `p_name1` varchar(200) DEFAULT NULL,
  `p_name2` varchar(200) DEFAULT NULL,
  `p_name3` varchar(200) DEFAULT NULL,
  `p_batch1` varchar(200) DEFAULT NULL,
  `p_batch2` varchar(200) DEFAULT NULL,
  `p_batch3` varchar(200) DEFAULT NULL,
  `p_code1` varchar(200) DEFAULT NULL,
  `p_code2` varchar(200) DEFAULT NULL,
  `p_code3` varchar(200) DEFAULT NULL,
  `p_machin1` varchar(200) DEFAULT NULL,
  `p_machin2` varchar(200) DEFAULT NULL,
  `p_machin3` varchar(200) DEFAULT NULL,
  `p_date1` varchar(200) DEFAULT NULL,
  `p_time1` varchar(200) DEFAULT NULL,
  `p_date2` varchar(200) DEFAULT NULL,
  `p_time2` varchar(200) DEFAULT NULL,
  `p_date3` varchar(200) DEFAULT NULL,
  `p_time3` varchar(200) DEFAULT NULL,
  `pro_mac1` varchar(200) DEFAULT NULL,
  `pro_mac2` varchar(200) DEFAULT NULL,
  `pro_mac3` varchar(200) DEFAULT NULL,
  `pro_mac4` varchar(200) DEFAULT NULL,
  `pro_mac5` varchar(200) DEFAULT NULL,
  `pro_mac6` varchar(200) DEFAULT NULL,
  `pro_mac7` varchar(200) DEFAULT NULL,
  `pro_mac8` varchar(200) DEFAULT NULL,
  `pro_mac9` varchar(200) DEFAULT NULL,
  `Machine1` varchar(200) DEFAULT NULL,
  `Machine2` varchar(200) DEFAULT NULL,
  `Machine3` varchar(200) DEFAULT NULL,
  `Operator1` varchar(200) DEFAULT NULL,
  `Operator2` varchar(200) DEFAULT NULL,
  `Operator3` varchar(200) DEFAULT NULL,
  `Team1` varchar(200) DEFAULT NULL,
  `Team2` varchar(200) DEFAULT NULL,
  `Team3` varchar(200) DEFAULT NULL,
  `start_date1` varchar(200) DEFAULT NULL,
  `start_date2` varchar(200) DEFAULT NULL,
  `start_date3` varchar(200) DEFAULT NULL,
  `start_date4` varchar(200) DEFAULT NULL,
  `start_date5` varchar(200) DEFAULT NULL,
  `start_date6` varchar(200) DEFAULT NULL,
  `start_time1` varchar(200) DEFAULT NULL,
  `start_time2` varchar(200) DEFAULT NULL,
  `start_time3` varchar(200) DEFAULT NULL,
  `start_time4` varchar(200) DEFAULT NULL,
  `start_time5` varchar(200) DEFAULT NULL,
  `start_time6` varchar(200) DEFAULT NULL,
  `Matter1` varchar(200) DEFAULT NULL,
  `Matter2` varchar(200) DEFAULT NULL,
  `Matter3` varchar(200) DEFAULT NULL,
  `Matter4` varchar(200) DEFAULT NULL,
  `Matter5` varchar(200) DEFAULT NULL,
  `Matter6` varchar(200) DEFAULT NULL,
  `Matter7` varchar(200) DEFAULT NULL,
  `Matter8` varchar(200) DEFAULT NULL,
  `Matter9` varchar(200) DEFAULT NULL,
  `stage1_date` varchar(200) DEFAULT NULL,
  `stage1_qty_issued` varchar(200) DEFAULT NULL,
  `stage1_printing` varchar(200) DEFAULT NULL,
  `stage1_plain` varchar(200) DEFAULT NULL,
  `stage1_released` varchar(200) DEFAULT NULL,
  `stage1_sign` varchar(200) DEFAULT NULL,
  `stage1_remark` text DEFAULT NULL,
  `stage1_approved1` varchar(200) DEFAULT NULL,
  `stage1_approved2` varchar(200) DEFAULT NULL,
  `user` varchar(100) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stage2`
--

INSERT INTO `stage2` (`id`, `j_id`, `cnou`, `p_name1`, `p_name2`, `p_name3`, `p_batch1`, `p_batch2`, `p_batch3`, `p_code1`, `p_code2`, `p_code3`, `p_machin1`, `p_machin2`, `p_machin3`, `p_date1`, `p_time1`, `p_date2`, `p_time2`, `p_date3`, `p_time3`, `pro_mac1`, `pro_mac2`, `pro_mac3`, `pro_mac4`, `pro_mac5`, `pro_mac6`, `pro_mac7`, `pro_mac8`, `pro_mac9`, `Machine1`, `Machine2`, `Machine3`, `Operator1`, `Operator2`, `Operator3`, `Team1`, `Team2`, `Team3`, `start_date1`, `start_date2`, `start_date3`, `start_date4`, `start_date5`, `start_date6`, `start_time1`, `start_time2`, `start_time3`, `start_time4`, `start_time5`, `start_time6`, `Matter1`, `Matter2`, `Matter3`, `Matter4`, `Matter5`, `Matter6`, `Matter7`, `Matter8`, `Matter9`, `stage1_date`, `stage1_qty_issued`, `stage1_printing`, `stage1_plain`, `stage1_released`, `stage1_sign`, `stage1_remark`, `stage1_approved1`, `stage1_approved2`, `user`, `date_time`, `status`) VALUES
(1, '7', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-06-24', '22218.00', '22', '4', '22192.00', 'rohit', 'released for sorting', 'santosh', 'santosh', '4230', '2023-06-24 11:11:25', 0),
(3, '5', '16', 'shailen', '', '', '22341', '', '', '332', '', '', 'Dom1', '', '', '2023-06-28', '11:54', '', '', '', '', 'rahul', '', '', '', '', '', '', '', '', '1123', '', '', 'santosh', '', '', 'yy983', '', '', '2023-06-28', '2023-06-28', '', '', '', '', '11:54', '11:54', '', '', '', '', 'rahul', '', '', '', '', '', '', '', '', '2023-06-28', '1342.00', '24', '0', '1318.00', 'rohit', 'released for sorting', 'santosh', 'santosh', '4230', '2023-06-28 06:25:37', 0),
(4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4230', '2023-09-05 07:37:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stage3`
--

CREATE TABLE `stage3` (
  `id` int(10) NOT NULL,
  `j_id` varchar(200) DEFAULT NULL,
  `cnou` varchar(200) DEFAULT NULL,
  `p_name1` varchar(200) DEFAULT NULL,
  `p_name2` varchar(200) DEFAULT NULL,
  `p_name3` varchar(200) DEFAULT NULL,
  `p_batch1` varchar(200) DEFAULT NULL,
  `p_batch2` varchar(200) DEFAULT NULL,
  `p_batch3` varchar(200) DEFAULT NULL,
  `p_code1` varchar(200) DEFAULT NULL,
  `p_code2` varchar(200) DEFAULT NULL,
  `p_code3` varchar(200) DEFAULT NULL,
  `p_sorting1` varchar(200) DEFAULT NULL,
  `p_sorting2` varchar(200) DEFAULT NULL,
  `p_sorting3` varchar(200) DEFAULT NULL,
  `p_date1` varchar(200) DEFAULT NULL,
  `p_time1` varchar(200) DEFAULT NULL,
  `p_date2` varchar(200) DEFAULT NULL,
  `p_time2` varchar(200) DEFAULT NULL,
  `p_date3` varchar(200) DEFAULT NULL,
  `p_time3` varchar(200) DEFAULT NULL,
  `area1` varchar(200) DEFAULT NULL,
  `area2` varchar(200) DEFAULT NULL,
  `area3` varchar(200) DEFAULT NULL,
  `area4` varchar(200) DEFAULT NULL,
  `area5` varchar(200) DEFAULT NULL,
  `area6` varchar(200) DEFAULT NULL,
  `area7` varchar(200) DEFAULT NULL,
  `area8` varchar(200) DEFAULT NULL,
  `area9` varchar(200) DEFAULT NULL,
  `sort_1` varchar(200) DEFAULT NULL,
  `sort_2` varchar(200) DEFAULT NULL,
  `sort_3` varchar(200) DEFAULT NULL,
  `sort_11` varchar(200) DEFAULT NULL,
  `sort_21` varchar(200) DEFAULT NULL,
  `sort_31` varchar(200) DEFAULT NULL,
  `sort_12` varchar(200) DEFAULT NULL,
  `sort_22` varchar(200) DEFAULT NULL,
  `sort_32` varchar(200) DEFAULT NULL,
  `start_date1` varchar(200) DEFAULT NULL,
  `start_date2` varchar(200) DEFAULT NULL,
  `start_date3` varchar(200) DEFAULT NULL,
  `start_date4` varchar(200) DEFAULT NULL,
  `start_date5` varchar(200) DEFAULT NULL,
  `start_date6` varchar(200) DEFAULT NULL,
  `start_time1` varchar(200) DEFAULT NULL,
  `start_time2` varchar(200) DEFAULT NULL,
  `start_time3` varchar(200) DEFAULT NULL,
  `start_time4` varchar(200) DEFAULT NULL,
  `start_time5` varchar(200) DEFAULT NULL,
  `start_time6` varchar(200) DEFAULT NULL,
  `stage2_date` varchar(200) DEFAULT NULL,
  `stage2_qty_issued` varchar(200) DEFAULT NULL,
  `stage2_Rejection` varchar(200) DEFAULT NULL,
  `stage2_released` varchar(200) DEFAULT NULL,
  `stage2_sign` varchar(200) DEFAULT NULL,
  `stage2_remark` text DEFAULT NULL,
  `stage2_approved1` varchar(200) DEFAULT NULL,
  `stage2_approved2` varchar(200) DEFAULT NULL,
  `user` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stage3`
--

INSERT INTO `stage3` (`id`, `j_id`, `cnou`, `p_name1`, `p_name2`, `p_name3`, `p_batch1`, `p_batch2`, `p_batch3`, `p_code1`, `p_code2`, `p_code3`, `p_sorting1`, `p_sorting2`, `p_sorting3`, `p_date1`, `p_time1`, `p_date2`, `p_time2`, `p_date3`, `p_time3`, `area1`, `area2`, `area3`, `area4`, `area5`, `area6`, `area7`, `area8`, `area9`, `sort_1`, `sort_2`, `sort_3`, `sort_11`, `sort_21`, `sort_31`, `sort_12`, `sort_22`, `sort_32`, `start_date1`, `start_date2`, `start_date3`, `start_date4`, `start_date5`, `start_date6`, `start_time1`, `start_time2`, `start_time3`, `start_time4`, `start_time5`, `start_time6`, `stage2_date`, `stage2_qty_issued`, `stage2_Rejection`, `stage2_released`, `stage2_sign`, `stage2_remark`, `stage2_approved1`, `stage2_approved2`, `user`, `date_time`, `status`) VALUES
(1, '7', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '22192.00', '39', '22153.00', 'sandesh', '', 'nehal', 'nehal', '4230', '2023-06-24 11:19:12', 0),
(2, '5', '16', 'shailen', '', '', '22341', '', '', '332', '', '', 'testing', '', '', '', '', '', '', '', '', 'rahul', '', '', '', '', '', '', '', '', 'neha', '', '', '-', '', '', '-', '', '', '2023-06-28', '2023-06-28', '', '', '', '', '13:02', '14:02', '', '', '', '', '', '1318.00', '10', '1308.00', 'sandesh', 'move to sorr', 'nehal', 'nehal', '4230', '2023-06-28 06:33:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stage4`
--

CREATE TABLE `stage4` (
  `id` int(10) NOT NULL,
  `j_id` varchar(200) DEFAULT NULL,
  `cnou` varchar(200) DEFAULT NULL,
  `p_name1` varchar(200) DEFAULT NULL,
  `p_name2` varchar(200) DEFAULT NULL,
  `p_name3` varchar(200) DEFAULT NULL,
  `p_batch1` varchar(200) DEFAULT NULL,
  `p_batch2` varchar(200) DEFAULT NULL,
  `p_batch3` varchar(200) DEFAULT NULL,
  `p_code1` varchar(200) DEFAULT NULL,
  `p_code2` varchar(200) DEFAULT NULL,
  `p_code3` varchar(200) DEFAULT NULL,
  `p_machine1` varchar(200) DEFAULT NULL,
  `p_machine2` varchar(200) DEFAULT NULL,
  `p_machine3` varchar(200) DEFAULT NULL,
  `p_date1` varchar(200) DEFAULT NULL,
  `p_time1` varchar(200) DEFAULT NULL,
  `p_date2` varchar(200) DEFAULT NULL,
  `p_time2` varchar(200) DEFAULT NULL,
  `p_date3` varchar(200) DEFAULT NULL,
  `p_time3` varchar(200) DEFAULT NULL,
  `jogger1` varchar(200) DEFAULT NULL,
  `jogger2` varchar(200) DEFAULT NULL,
  `jogger3` varchar(200) DEFAULT NULL,
  `jogger4` varchar(200) DEFAULT NULL,
  `jogger5` varchar(200) DEFAULT NULL,
  `jogger6` varchar(200) DEFAULT NULL,
  `jogger7` varchar(200) DEFAULT NULL,
  `jogger8` varchar(200) DEFAULT NULL,
  `jogger9` varchar(200) DEFAULT NULL,
  `machine1` varchar(200) DEFAULT NULL,
  `machine2` varchar(200) DEFAULT NULL,
  `machine3` varchar(200) DEFAULT NULL,
  `operator1` varchar(200) DEFAULT NULL,
  `operator2` varchar(200) DEFAULT NULL,
  `operator3` varchar(200) DEFAULT NULL,
  `team1` varchar(200) DEFAULT NULL,
  `team2` varchar(200) DEFAULT NULL,
  `team3` varchar(200) DEFAULT NULL,
  `cutting1` varchar(200) DEFAULT NULL,
  `cutting2` varchar(200) DEFAULT NULL,
  `cutting3` varchar(200) DEFAULT NULL,
  `start_date1` varchar(200) DEFAULT NULL,
  `start_date2` varchar(200) DEFAULT NULL,
  `start_date3` varchar(200) DEFAULT NULL,
  `start_date4` varchar(200) DEFAULT NULL,
  `start_date5` varchar(200) DEFAULT NULL,
  `start_date6` varchar(200) DEFAULT NULL,
  `start_time1` varchar(200) DEFAULT NULL,
  `start_time2` varchar(200) DEFAULT NULL,
  `start_time3` varchar(200) DEFAULT NULL,
  `start_time4` varchar(200) DEFAULT NULL,
  `start_time5` varchar(200) DEFAULT NULL,
  `start_time6` varchar(200) DEFAULT NULL,
  `Jogger_m1` varchar(200) DEFAULT NULL,
  `Jogger_m2` varchar(200) DEFAULT NULL,
  `Jogger_m3` varchar(200) DEFAULT NULL,
  `Jogger_m4` varchar(200) DEFAULT NULL,
  `Jogger_m5` varchar(200) DEFAULT NULL,
  `Jogger_m6` varchar(200) DEFAULT NULL,
  `Jogger_m7` varchar(200) DEFAULT NULL,
  `Jogger_m8` varchar(200) DEFAULT NULL,
  `Jogger_m9` varchar(200) DEFAULT NULL,
  `stage3_date` varchar(200) DEFAULT NULL,
  `stage3_qty_issued` varchar(200) DEFAULT NULL,
  `stage3_Rejection` varchar(200) DEFAULT NULL,
  `stage3_released` varchar(200) DEFAULT NULL,
  `stage3_sign` varchar(200) DEFAULT NULL,
  `stage3_remark` text DEFAULT NULL,
  `stage3_approved1` varchar(200) DEFAULT NULL,
  `stage3_approved2` varchar(200) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stage4`
--

INSERT INTO `stage4` (`id`, `j_id`, `cnou`, `p_name1`, `p_name2`, `p_name3`, `p_batch1`, `p_batch2`, `p_batch3`, `p_code1`, `p_code2`, `p_code3`, `p_machine1`, `p_machine2`, `p_machine3`, `p_date1`, `p_time1`, `p_date2`, `p_time2`, `p_date3`, `p_time3`, `jogger1`, `jogger2`, `jogger3`, `jogger4`, `jogger5`, `jogger6`, `jogger7`, `jogger8`, `jogger9`, `machine1`, `machine2`, `machine3`, `operator1`, `operator2`, `operator3`, `team1`, `team2`, `team3`, `cutting1`, `cutting2`, `cutting3`, `start_date1`, `start_date2`, `start_date3`, `start_date4`, `start_date5`, `start_date6`, `start_time1`, `start_time2`, `start_time3`, `start_time4`, `start_time5`, `start_time6`, `Jogger_m1`, `Jogger_m2`, `Jogger_m3`, `Jogger_m4`, `Jogger_m5`, `Jogger_m6`, `Jogger_m7`, `Jogger_m8`, `Jogger_m9`, `stage3_date`, `stage3_qty_issued`, `stage3_Rejection`, `stage3_released`, `stage3_sign`, `stage3_remark`, `stage3_approved1`, `stage3_approved2`, `user`, `date_time`, `status`) VALUES
(1, '7', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '22153.00', '0', '44306.00', 'swa', '', 'ravan', 'ravan', '4230', '2023-06-24 11:35:23', 0),
(2, '5', '16', 'shailen', '', '', '22341', '', '', '332', '', '', '4433', '', '', '2023-06-28', '12:08', '', '', '', '', 'swapnil', '', '', '', '', '', '', '', '', 'SDF4322', '', '', 'naik', '', '', '3', '', '', '23X343', '', '', '2023-06-28', '2023-06-28', '', '', '', '', '12:08', '12:08', '', '', '', '', '33', '', '', '', '', '', '', '', '', '2023-06-28', '1308.00', '2', '20896.00', 'swa', 'test', 'ravan', 'ravan', '4230', '2023-06-28 06:38:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stage5`
--

CREATE TABLE `stage5` (
  `id` int(10) NOT NULL,
  `j_id` varchar(200) DEFAULT NULL,
  `cnou` varchar(200) DEFAULT NULL,
  `p_name1` varchar(200) DEFAULT NULL,
  `p_name2` varchar(200) DEFAULT NULL,
  `p_name3` varchar(200) DEFAULT NULL,
  `p_batch1` varchar(200) DEFAULT NULL,
  `p_batch2` varchar(200) DEFAULT NULL,
  `p_batch3` varchar(200) DEFAULT NULL,
  `p_code1` varchar(200) DEFAULT NULL,
  `p_code2` varchar(200) DEFAULT NULL,
  `p_code3` varchar(200) DEFAULT NULL,
  `p_sorting1` varchar(200) DEFAULT NULL,
  `p_sorting2` varchar(200) DEFAULT NULL,
  `p_sorting3` varchar(200) DEFAULT NULL,
  `p_date1` varchar(200) DEFAULT NULL,
  `p_time1` varchar(200) DEFAULT NULL,
  `p_date2` varchar(200) DEFAULT NULL,
  `p_time2` varchar(200) DEFAULT NULL,
  `p_date3` varchar(200) DEFAULT NULL,
  `p_time3` varchar(200) DEFAULT NULL,
  `area1` varchar(200) DEFAULT NULL,
  `area2` varchar(200) DEFAULT NULL,
  `area3` varchar(200) DEFAULT NULL,
  `area4` varchar(200) DEFAULT NULL,
  `area5` varchar(200) DEFAULT NULL,
  `area6` varchar(200) DEFAULT NULL,
  `area7` varchar(200) DEFAULT NULL,
  `area8` varchar(200) DEFAULT NULL,
  `area9` varchar(200) DEFAULT NULL,
  `sort_1` varchar(200) DEFAULT NULL,
  `sort_2` varchar(200) DEFAULT NULL,
  `sort_3` varchar(200) DEFAULT NULL,
  `sort_4` varchar(200) DEFAULT NULL,
  `sort_5` varchar(200) DEFAULT NULL,
  `sort_6` varchar(200) DEFAULT NULL,
  `sort_7` varchar(200) DEFAULT NULL,
  `sort_8` varchar(200) DEFAULT NULL,
  `sort_9` varchar(200) DEFAULT NULL,
  `start_date1` varchar(200) DEFAULT NULL,
  `start_date2` varchar(200) DEFAULT NULL,
  `start_date3` varchar(200) DEFAULT NULL,
  `start_date4` varchar(200) DEFAULT NULL,
  `start_date5` varchar(200) DEFAULT NULL,
  `start_date6` varchar(200) DEFAULT NULL,
  `start_time1` varchar(200) DEFAULT NULL,
  `start_time2` varchar(200) DEFAULT NULL,
  `start_time3` varchar(200) DEFAULT NULL,
  `start_time4` varchar(200) DEFAULT NULL,
  `start_time5` varchar(200) DEFAULT NULL,
  `start_time6` varchar(200) DEFAULT NULL,
  `stage4_date` varchar(200) DEFAULT NULL,
  `stage4_qty_issued` varchar(200) DEFAULT NULL,
  `stage4_Rejection` varchar(200) DEFAULT NULL,
  `stage4_released` varchar(200) DEFAULT NULL,
  `stage4_sign` varchar(200) DEFAULT NULL,
  `stage4_remark` text DEFAULT NULL,
  `stage4_approved1` varchar(200) DEFAULT NULL,
  `stage4_approved2` varchar(200) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stage5`
--

INSERT INTO `stage5` (`id`, `j_id`, `cnou`, `p_name1`, `p_name2`, `p_name3`, `p_batch1`, `p_batch2`, `p_batch3`, `p_code1`, `p_code2`, `p_code3`, `p_sorting1`, `p_sorting2`, `p_sorting3`, `p_date1`, `p_time1`, `p_date2`, `p_time2`, `p_date3`, `p_time3`, `area1`, `area2`, `area3`, `area4`, `area5`, `area6`, `area7`, `area8`, `area9`, `sort_1`, `sort_2`, `sort_3`, `sort_4`, `sort_5`, `sort_6`, `sort_7`, `sort_8`, `sort_9`, `start_date1`, `start_date2`, `start_date3`, `start_date4`, `start_date5`, `start_date6`, `start_time1`, `start_time2`, `start_time3`, `start_time4`, `start_time5`, `start_time6`, `stage4_date`, `stage4_qty_issued`, `stage4_Rejection`, `stage4_released`, `stage4_sign`, `stage4_remark`, `stage4_approved1`, `stage4_approved2`, `user`, `date_time`, `status`) VALUES
(1, '7', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-06-24', '44306.00', '787', '43519.00', 'rahul', '', 'sandesh', '', '4230', '2023-06-24 11:49:12', 0),
(2, '5', '16', 'shailen', '', '', '22341', '', '', '332', '', '', 'testing', '', '', '2023-06-28', '12:12', '', '', '', '', 'rahul', '', '', '', '', '', '', '', '', 'neha', '', '', '-', '', '', '-', '', '', '2023-06-28', '2023-06-28', '', '', '', '', '12:12', '12:12', '', '', '', '', '2023-06-28', '20896.00', '340', '20556.00', 'rahul', 'testing', 'sandesh', 'sandesh', '4230', '2023-06-28 06:42:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stage6`
--

CREATE TABLE `stage6` (
  `id` int(10) NOT NULL,
  `j_id` varchar(200) DEFAULT NULL,
  `cnou` varchar(200) DEFAULT NULL,
  `p_name1` varchar(200) DEFAULT NULL,
  `p_name2` varchar(200) DEFAULT NULL,
  `p_name3` varchar(200) DEFAULT NULL,
  `p_batch1` varchar(200) DEFAULT NULL,
  `p_batch2` varchar(200) DEFAULT NULL,
  `p_batch3` varchar(200) DEFAULT NULL,
  `p_code1` varchar(200) DEFAULT NULL,
  `p_code2` varchar(200) DEFAULT NULL,
  `p_code3` varchar(200) DEFAULT NULL,
  `p_machine1` varchar(200) DEFAULT NULL,
  `p_machine2` varchar(200) DEFAULT NULL,
  `p_machine3` varchar(200) DEFAULT NULL,
  `p_date1` varchar(200) DEFAULT NULL,
  `p_time1` varchar(200) DEFAULT NULL,
  `p_date2` varchar(200) DEFAULT NULL,
  `p_time2` varchar(200) DEFAULT NULL,
  `p_date3` varchar(200) DEFAULT NULL,
  `p_time3` varchar(200) DEFAULT NULL,
  `Folding1` varchar(200) DEFAULT NULL,
  `Folding2` varchar(200) DEFAULT NULL,
  `Folding3` varchar(200) DEFAULT NULL,
  `Folding4` varchar(200) DEFAULT NULL,
  `Folding5` varchar(200) DEFAULT NULL,
  `Folding6` varchar(200) DEFAULT NULL,
  `Folding7` varchar(200) DEFAULT NULL,
  `Folding8` varchar(200) DEFAULT NULL,
  `Folding9` varchar(200) DEFAULT NULL,
  `machine1` varchar(200) DEFAULT NULL,
  `machine2` varchar(200) DEFAULT NULL,
  `machine3` varchar(200) DEFAULT NULL,
  `operator1` varchar(200) DEFAULT NULL,
  `operator2` varchar(200) DEFAULT NULL,
  `operator3` varchar(200) DEFAULT NULL,
  `team1` varchar(200) DEFAULT NULL,
  `team2` varchar(200) DEFAULT NULL,
  `team3` varchar(200) DEFAULT NULL,
  `start_date1` varchar(200) DEFAULT NULL,
  `start_date2` varchar(200) DEFAULT NULL,
  `start_date3` varchar(200) DEFAULT NULL,
  `start_date4` varchar(200) DEFAULT NULL,
  `start_date5` varchar(200) DEFAULT NULL,
  `start_date6` varchar(200) DEFAULT NULL,
  `start_time1` varchar(200) DEFAULT NULL,
  `start_time2` varchar(200) DEFAULT NULL,
  `start_time3` varchar(200) DEFAULT NULL,
  `start_time4` varchar(200) DEFAULT NULL,
  `start_time5` varchar(200) DEFAULT NULL,
  `start_time6` varchar(200) DEFAULT NULL,
  `Leaflet1` varchar(200) DEFAULT NULL,
  `Leaflet2` varchar(200) DEFAULT NULL,
  `Leaflet3` varchar(200) DEFAULT NULL,
  `Leaflet4` varchar(200) DEFAULT NULL,
  `Leaflet5` varchar(200) DEFAULT NULL,
  `Leaflet6` varchar(200) DEFAULT NULL,
  `Leaflet7` varchar(200) DEFAULT NULL,
  `Leaflet8` varchar(200) DEFAULT NULL,
  `Leaflet9` varchar(200) DEFAULT NULL,
  `stage5_date` varchar(200) DEFAULT NULL,
  `stage5_qty_issued` varchar(200) DEFAULT NULL,
  `stage5_Rejection` varchar(200) DEFAULT NULL,
  `stage5_released` varchar(200) DEFAULT NULL,
  `stage5_sign` varchar(200) DEFAULT NULL,
  `stage5_remark` text DEFAULT NULL,
  `stage5_approved1` varchar(200) DEFAULT NULL,
  `stage5_approved2` varchar(200) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stage6`
--

INSERT INTO `stage6` (`id`, `j_id`, `cnou`, `p_name1`, `p_name2`, `p_name3`, `p_batch1`, `p_batch2`, `p_batch3`, `p_code1`, `p_code2`, `p_code3`, `p_machine1`, `p_machine2`, `p_machine3`, `p_date1`, `p_time1`, `p_date2`, `p_time2`, `p_date3`, `p_time3`, `Folding1`, `Folding2`, `Folding3`, `Folding4`, `Folding5`, `Folding6`, `Folding7`, `Folding8`, `Folding9`, `machine1`, `machine2`, `machine3`, `operator1`, `operator2`, `operator3`, `team1`, `team2`, `team3`, `start_date1`, `start_date2`, `start_date3`, `start_date4`, `start_date5`, `start_date6`, `start_time1`, `start_time2`, `start_time3`, `start_time4`, `start_time5`, `start_time6`, `Leaflet1`, `Leaflet2`, `Leaflet3`, `Leaflet4`, `Leaflet5`, `Leaflet6`, `Leaflet7`, `Leaflet8`, `Leaflet9`, `stage5_date`, `stage5_qty_issued`, `stage5_Rejection`, `stage5_released`, `stage5_sign`, `stage5_remark`, `stage5_approved1`, `stage5_approved2`, `user`, `date_time`, `status`) VALUES
(1, '7', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-06-25', '43519.00', '260', '43259.00', 'sham', '', 'ram', 'ram', '4230', '2023-06-24 12:00:18', 0),
(2, '5', '16', 'shailen', '', '', '22341', '', '', '332', '', '', '4433', '', '', '2023-06-28', '12:17', '', '', '', '', 'don', '', '', '', '', '', '', '', '', 'SDF4322', '', '', 'naik', '', '', '3', '', '', '2023-06-28', '2023-06-28', '', '', '', '', '12:17', '12:17', '', '', '', '', 'rahul', '', '', '', '', '', '', '', '', '2023-06-28', '20556.00', '38', '20518.00', 'sham', 'testing', 'ram', 'ram', '4230', '2023-06-28 06:48:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stage11`
--

CREATE TABLE `stage11` (
  `id` int(11) NOT NULL,
  `j_id` varchar(200) NOT NULL,
  `cnou` varchar(200) NOT NULL,
  `a_date` varchar(200) NOT NULL,
  `a_issued` varchar(200) NOT NULL,
  `a_reject` varchar(200) NOT NULL,
  `b_issued` varchar(200) NOT NULL,
  `a_doneby` varchar(200) NOT NULL,
  `res` text NOT NULL,
  `status` varchar(200) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stage11`
--

INSERT INTO `stage11` (`id`, `j_id`, `cnou`, `a_date`, `a_issued`, `a_reject`, `b_issued`, `a_doneby`, `res`, `status`, `date_time`, `user`) VALUES
(2, '7', '2', '2023-06-24', '22218', '0', '22218.00', 'ajay', '', '', '2023-06-24 11:07:01', '4230'),
(4, '5', '16', '2023-06-28', '1342', '0', '1342.00', 'shailen', 'test', '', '2023-06-28 06:17:35', '4230');

-- --------------------------------------------------------

--
-- Table structure for table `stock_manage`
--

CREATE TABLE `stock_manage` (
  `id` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_manage`
--

INSERT INTO `stock_manage` (`id`, `item_code`, `item_name`, `qty`, `rate`, `status`) VALUES
(7, 'RM00001', 'mouse', '150', '122', ''),
(8, 'RM00002', 'foill', '0', '', ''),
(9, 'RM00003', 'bible paper', '-11000', '', ''),
(10, 'RM00004', 'ink black', '-3', '', ''),
(11, 'RM00005', 'Plate PP000511', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `store_issue`
--

CREATE TABLE `store_issue` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mrn` text NOT NULL,
  `item_code` int(50) NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `batch_ref` text NOT NULL,
  `status` varchar(5) NOT NULL DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `str_data`
--

CREATE TABLE `str_data` (
  `id` int(11) NOT NULL,
  `i_date` varchar(30) NOT NULL,
  `grn` text NOT NULL COMMENT 'Goods Reciept Note',
  `grn_type` varchar(10) NOT NULL,
  `fk_item` int(11) NOT NULL,
  `item_code` varchar(10) NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `fk_supplier` int(11) NOT NULL,
  `sup_code` varchar(20) NOT NULL,
  `sup_name` varchar(20) NOT NULL,
  `invoice_number` varchar(10) NOT NULL,
  `uom` varchar(20) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `qty_check` varchar(10) NOT NULL,
  `basic_amt` varchar(10) NOT NULL,
  `gst_flat` varchar(100) NOT NULL,
  `gst_percent` varchar(10) NOT NULL,
  `add_charges` varchar(100) NOT NULL,
  `remark` text NOT NULL,
  `total` varchar(10) NOT NULL,
  `status` varchar(5) NOT NULL DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `qc_status` varchar(50) NOT NULL DEFAULT '0',
  `batch_ref` varchar(50) NOT NULL,
  `job_file` varchar(50) NOT NULL,
  `no_colors` varchar(50) NOT NULL,
  `ty_NC` varchar(50) NOT NULL,
  `width` varchar(50) NOT NULL,
  `thickness` varchar(50) NOT NULL,
  `outer_surface` varchar(50) NOT NULL,
  `winding_direction` varchar(50) NOT NULL,
  `approval_date` varchar(50) NOT NULL,
  `make_date` varchar(50) NOT NULL,
  `rack_no` varchar(50) NOT NULL,
  `cyl_inc` varchar(50) NOT NULL,
  `cyl_cir` varchar(50) NOT NULL,
  `ref_nof` varchar(100) NOT NULL,
  `widthf` varchar(100) NOT NULL,
  `thicknessf` varchar(100) NOT NULL,
  `hpolyf` varchar(100) NOT NULL,
  `osurfacef` varchar(100) NOT NULL,
  `ref_noink` varchar(100) NOT NULL,
  `ref_nop` varchar(100) NOT NULL,
  `gsmp` varchar(100) NOT NULL,
  `sizep` varchar(100) NOT NULL,
  `ref_nob` varchar(100) NOT NULL,
  `sizeb` varchar(100) NOT NULL,
  `nply` varchar(100) NOT NULL,
  `qc` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `str_data`
--

INSERT INTO `str_data` (`id`, `i_date`, `grn`, `grn_type`, `fk_item`, `item_code`, `item_name`, `fk_supplier`, `sup_code`, `sup_name`, `invoice_number`, `uom`, `rate`, `qty`, `qty_check`, `basic_amt`, `gst_flat`, `gst_percent`, `add_charges`, `remark`, `total`, `status`, `date_created`, `qc_status`, `batch_ref`, `job_file`, `no_colors`, `ty_NC`, `width`, `thickness`, `outer_surface`, `winding_direction`, `approval_date`, `make_date`, `rack_no`, `cyl_inc`, `cyl_cir`, `ref_nof`, `widthf`, `thicknessf`, `hpolyf`, `osurfacef`, `ref_noink`, `ref_nop`, `gsmp`, `sizep`, `ref_nob`, `sizeb`, `nply`, `qc`) VALUES
(1, '2023-06-12', '000001', '0', 0, 'RM00001', 'mouse', 1, 'S00001', 'Komsos Petrochem', '', 'RM', '122', '50', '', '6100', 'IGST', '21', '0', 'na', '6100', '0', '2023-06-12 08:38:48', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'asdsad', '12', 'asd', '');

-- --------------------------------------------------------

--
-- Table structure for table `str_data_tmp`
--

CREATE TABLE `str_data_tmp` (
  `id` int(11) NOT NULL,
  `i_date` varchar(30) NOT NULL,
  `grn` text NOT NULL COMMENT 'Goods Reciept Note',
  `grn_type` varchar(10) NOT NULL,
  `fk_item` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `fk_supplier` int(11) NOT NULL,
  `sup_code` varchar(100) NOT NULL,
  `sup_name` varchar(500) NOT NULL,
  `invoice_number` varchar(10) NOT NULL,
  `uom` varchar(20) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `basic_amt` varchar(10) NOT NULL,
  `gst_flat` varchar(100) NOT NULL,
  `gst_percent` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `status` varchar(5) NOT NULL DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `scode` varchar(20) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `items` text NOT NULL,
  `gst` text NOT NULL,
  `pan` text NOT NULL,
  `contact1` varchar(20) NOT NULL,
  `contact2` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `scode`, `sname`, `address1`, `address2`, `items`, `gst`, `pan`, `contact1`, `contact2`, `status`) VALUES
(1, 'S00001', 'Komsos Petrochem', 'Corlim-Goa', '', '30AAFPV5786R1ZS', '', '', '9921657814', '', ''),
(2, 'S00002', 'Satwik Polymers', 'Kundaim - Gooa', '', '30APAPJ3466Q1ZR', '', '', 'NA', '', ''),
(3, 'S00003', 'Vrindavan Polymers Pvt Ltd', 'Kundaim - Goa', '', '30AACCV1136H2ZU', '', '', 'na', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirm_password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '0' COMMENT '0- active 1- deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `user_name`, `phone`, `password`, `confirm_password`, `status`) VALUES
(2, 'admin', 'admin@octaplus.co.uk', '', 'Octa21@2022', 'Octa21@2022', '0'),
(3, 'admin', 'gregory.johnson@octaplus.co.uk', '', 'Octa@2022', 'Octa@2022', '0'),
(4, 'admin', 'michaela.morgan@octaplus.co.uk', '', 'Octa@2022M', 'Octa@2022', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_type` tinyint(10) DEFAULT 1 COMMENT 'UserSubCat ID',
  `roles` text DEFAULT NULL,
  `createdDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdTime` varchar(20) NOT NULL,
  `active` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `userID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `l_state` varchar(100) NOT NULL,
  `machin` varchar(20) NOT NULL,
  `machin1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `roles`, `createdDate`, `createdTime`, `active`, `status`, `userID`, `fname`, `lname`, `phno`, `l_state`, `machin`, `machin1`) VALUES
(4230, 'admin', '$1$4$uXIWvBxAHUyMU3eXxeOQy/', 1, NULL, '2022-12-08 05:28:55', '', 1, 1, 8, 'Admin', 'Naik', '08983197087', '', '', ''),
(4239, 'nilkanth@kpsystems.com', '$1$4$DWO8if7.uz0UHJydIwsdR1', 4, NULL, '2023-04-28 06:40:39', '', 0, 1, 4230, 'nilkanth', 'n', '9999999999', 'Goa', 'HM-A', 'HM-B'),
(4240, 'suryakant@kpsystems.com', '$1$4$3M.eJgeYWVhcgeqHzhpBC0', 4, NULL, '2023-04-28 06:42:06', '', 1, 1, 4230, 'Suryakant', 'S', '9999999999', 'Goa', 'PP', 'LD-40MM'),
(4241, 'jayant@kpsystems.com', '$1$4$E/TMclubiWpTYyudXzGaX0', 4, NULL, '2023-04-28 06:44:29', '', 0, 1, 4230, 'Jayant', 'J', '9999999999', 'Goa', 'LD-C', 'LD-45MM'),
(4242, 'vijaykant@kpsystems.com', '$1$4$bhts8soMXWkB6zz8jhCE11', 6, NULL, '2023-04-28 06:46:23', '', 0, 1, 4230, 'Vijaykant', 'v', '9999999999', 'Goa', '', ''),
(4243, 'suraj@kpsystems.com', '$1$4$jtN3P5i./nOSu1sIOshmT/', 6, NULL, '2023-04-28 06:52:49', '', 0, 1, 4230, 'Suraj', 's', '9999999999', 'Goa', '', ''),
(4244, 'kiran@kpsystems.com', '$1$4$GFBuyhtOhK6WbqZTs2KPR1', 7, NULL, '2023-04-28 06:54:05', '', 0, 1, 4230, 'Kiran', 'k', '9999999999', 'Goa', '', ''),
(4245, 'parab@kpsystems.com', '$1$4$thHXZVuYiLI6XsTFy0Bcy.', 5, NULL, '2023-04-28 07:00:47', '', 0, 1, 4230, 'Parab', 'p', '9999999999', 'Goa', '', ''),
(4246, 'hemant@kpsystems.com', '$1$4$tihYqtlYJhOnuBDkBb7GS0', 5, NULL, '2023-04-28 07:01:58', '', 0, 1, 4230, 'Hemant', 'H', '999999999', 'Goa', '', ''),
(4247, 'vithal@kpsystems.com', '$1$4$KtdMOaNnus2hn/dxXzVVV0', 5, NULL, '2023-04-28 07:03:04', '', 0, 1, 4230, 'Vithal', 'V', '999999999', 'Goa', '', ''),
(4248, 'devmani@kpsystems.com', '$1$4$akmrvsX7gfPVYtfTGS0K11', 1, NULL, '2023-04-28 07:04:46', '', 0, 1, 4230, 'Devmani', 'D', '9999999999', 'Goa', '', ''),
(4249, 'govind@kpsystems.com', '$1$4$Ot8CyAOO8Fp8WRnE2MaG/0', 4, NULL, '2023-05-30 05:51:50', '', 0, 1, 4230, 'Govind', 'Kumar', 'xx', 'Goa', 'LD-C', 'LD-45MM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accept_reject`
--
ALTER TABLE `accept_reject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignfgtocust`
--
ALTER TABLE `assignfgtocust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finished_goods`
--
ALTER TABLE `finished_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foil1`
--
ALTER TABLE `foil1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foil2`
--
ALTER TABLE `foil2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foil3`
--
ALTER TABLE `foil3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foil4`
--
ALTER TABLE `foil4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foil5`
--
ALTER TABLE `foil5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joborder_data`
--
ALTER TABLE `joborder_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joborder_data_tmp`
--
ALTER TABLE `joborder_data_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_order`
--
ALTER TABLE `job_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quality`
--
ALTER TABLE `quality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_material`
--
ALTER TABLE `raw_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmjo`
--
ALTER TABLE `rmjo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage1`
--
ALTER TABLE `stage1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage2`
--
ALTER TABLE `stage2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage3`
--
ALTER TABLE `stage3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage4`
--
ALTER TABLE `stage4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage5`
--
ALTER TABLE `stage5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage6`
--
ALTER TABLE `stage6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage11`
--
ALTER TABLE `stage11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_manage`
--
ALTER TABLE `stock_manage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_issue`
--
ALTER TABLE `store_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `str_data`
--
ALTER TABLE `str_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `str_data_tmp`
--
ALTER TABLE `str_data_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accept_reject`
--
ALTER TABLE `accept_reject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `assignfgtocust`
--
ALTER TABLE `assignfgtocust`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `finished_goods`
--
ALTER TABLE `finished_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `foil1`
--
ALTER TABLE `foil1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `foil2`
--
ALTER TABLE `foil2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foil3`
--
ALTER TABLE `foil3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `foil4`
--
ALTER TABLE `foil4`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foil5`
--
ALTER TABLE `foil5`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `joborder_data`
--
ALTER TABLE `joborder_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `joborder_data_tmp`
--
ALTER TABLE `joborder_data_tmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_order`
--
ALTER TABLE `job_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quality`
--
ALTER TABLE `quality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `raw_material`
--
ALTER TABLE `raw_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rmjo`
--
ALTER TABLE `rmjo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stage1`
--
ALTER TABLE `stage1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stage2`
--
ALTER TABLE `stage2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stage3`
--
ALTER TABLE `stage3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stage4`
--
ALTER TABLE `stage4`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stage5`
--
ALTER TABLE `stage5`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stage6`
--
ALTER TABLE `stage6`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stage11`
--
ALTER TABLE `stage11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stock_manage`
--
ALTER TABLE `stock_manage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `store_issue`
--
ALTER TABLE `store_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `str_data`
--
ALTER TABLE `str_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `str_data_tmp`
--
ALTER TABLE `str_data_tmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4250;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
