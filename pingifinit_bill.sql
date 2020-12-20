-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2020 at 05:31 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pingifinit_bill`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `verify` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`id`, `name`, `contact`, `email`, `password`, `type`, `verify`) VALUES
(1, 'admin', '8838825568', 'admin@gmail.com', '12345', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text,
  `sec_contact` varchar(100) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `contact`, `email`, `address`, `sec_contact`, `due`, `status`, `date`) VALUES
(1, 'Nithin', '8838825568', 'nithinmigo1@gmail.com', NULL, NULL, NULL, 0, '30-09-2020'),
(2, 'Ram Kiran', '9908890989', 'ramkiran@gmail.com', 'coimbatore', '', 0, 1, '30-09-2020'),
(3, 'Arun Kumar', '8897889899', 'arunkumar@gmail.com', 'dindugal', '', 0, 1, '30-09-2020'),
(4, 'kiran tom', '9908890989', 'check@gmail.com', 'kerala', '8869968976', 0, 0, '30-09-2020'),
(5, 'vijay', '9999999999', 'virtualtech1210@gmail.com', 'salem', '8898898989', 0, 0, '30-09-2020'),
(6, 'vargina', '7510830039', 'varginaslam123@gmail.com', 'coimbatore', '8869968976', 300, 1, '30-09-2020'),
(8, 'Sham', '7787797789', 'sham@gmail.com', 'coimbatore', '', 0, 1, '30-09-2020'),
(9, 'nithin', '9908890989', 'nithinmigo1@gmail.com', 'kerala', '9989989989', 300, 1, '01-10-2020'),
(10, 'vijay kumar', '8878879878', 'kumaran@gmail.com', 'tiruchi', '', 0, 1, '01-10-2020');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` text,
  `email` varchar(100) DEFAULT NULL,
  `sec_contact` varchar(100) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `contact`, `address`, `email`, `sec_contact`, `due`, `status`, `date`) VALUES
(1, 'Raja', '9908890989', 'salem', 'raja@gmail.com', '', 0, 1, '30-09-2020'),
(2, 'shiva', '77888877888', 'erode', 'shiva@gmail.com', '', 0, 1, '30-09-2020'),
(4, 'Barath', '8989898989', 'palakkad', 'barath@gmail.com', '9099090909', 0, 1, '30-09-2020');

-- --------------------------------------------------------

--
-- Table structure for table `gst_setting`
--

CREATE TABLE `gst_setting` (
  `id` int(11) NOT NULL,
  `gst_type` varchar(100) DEFAULT NULL,
  `gst_percent` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_modify` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gst_setting`
--

INSERT INTO `gst_setting` (`id`, `gst_type`, `gst_percent`, `status`, `date_modify`) VALUES
(1, 'Regular', '18', 1, NULL),
(2, 'Composition', '1', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_setting`
--

CREATE TABLE `profile_setting` (
  `id` int(11) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sec_contact` varchar(100) DEFAULT NULL,
  `address` text,
  `gstin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_setting`
--

INSERT INTO `profile_setting` (`id`, `company_name`, `img`, `contact`, `email`, `sec_contact`, `address`, `gstin`) VALUES
(1, 'Pingif Bill V2', NULL, '8838825568', 'pingifinit@gmail.com', '', '        saravanapatti ,coimbatore   - 641 101   ', '33THURIU78DJU');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_setting`
--

CREATE TABLE `smtp_setting` (
  `id` int(11) NOT NULL,
  `smtp_email` varchar(100) DEFAULT NULL,
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL,
  `smtp_pass` varchar(100) DEFAULT NULL,
  `mail_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smtp_setting`
--

INSERT INTO `smtp_setting` (`id`, `smtp_email`, `smtp_host`, `smtp_port`, `smtp_pass`, `mail_type`) VALUES
(1, 'nithinmigo1@gmail.com', 'smtp:gmail.com', 567, '711015Nithin@1', 'gmail');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text,
  `sec_contact` varchar(100) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `contact`, `email`, `address`, `sec_contact`, `due`, `status`, `date`) VALUES
(1, 'barath', '7510830038', 'barath@gmail.com', 'palakkad', '98989898988', 0, 1, '30-09-2020'),
(2, 'check', '9908890989', 'check@gmail.com', 'chennai', '', 0, 0, '01-10-2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
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
-- Indexes for table `gst_setting`
--
ALTER TABLE `gst_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_setting`
--
ALTER TABLE `profile_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gst_setting`
--
ALTER TABLE `gst_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profile_setting`
--
ALTER TABLE `profile_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
