-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 04:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fir_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `fir`
--

CREATE TABLE `fir` (
  `s_no` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_name` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `inc_datetime` datetime(6) NOT NULL,
  `reg_datetime` datetime(6) NOT NULL,
  `complaint` varchar(255) NOT NULL,
  `section` int(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `qid1` varchar(255) NOT NULL DEFAULT 'RAJ/FIR/2021/',
  `qid2` int(10) NOT NULL,
  `status` varchar(255) NOT NULL,
  `information` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fir`
--

INSERT INTO `fir` (`s_no`, `name`, `parent_name`, `age`, `address`, `gender`, `inc_datetime`, `reg_datetime`, `complaint`, `section`, `category`, `qid1`, `qid2`, `status`, `information`) VALUES
(1, 'Garima Mahawar', 'Kapoor Chand Mahawar', 18, 'Subhash Colony, Gangapur City,Rajasthan', 'female', '2021-01-14 15:10:00.000000', '2021-01-16 16:10:00.000000', 'Electricity meter has been stolen from my house, even when no one was at home', 0, 'Others', 'RAJ/FIR/2021/', 37173, 'Solved', 'Theft has been caught up'),
(2, 'Rashmi Patel', 'Sushil Kumar Patel', 20, 'Kota', 'female', '2021-01-11 21:15:00.000000', '2021-01-21 20:16:00.000000', 'I lost my purse near hanging bridge in which there was 5000 rupees and some documents.', 0, 'Lost and Found', 'RAJ/FIR/2021/', 13064, 'pending', ''),
(3, 'Mohan Das', 'Seema Das', 31, 'Bikaner', 'male', '2021-01-22 13:30:00.000000', '2021-01-23 15:30:00.000000', 'A person(female)is missing who has mole on right elbow.\r\nHeight=5.2\"', 0, 'Lost and Found', 'RAJ/FIR/2021/', 25126, 'pending', ''),
(4, 'Ravi Kapoor', 'Sushmita Kapoor', 41, 'jaipur near Lal kothi', 'male', '2021-01-18 20:32:00.000000', '2021-01-20 10:50:00.000000', 'Bike stolen', 0, 'Stolen Vehical', 'RAJ/FIR/2021/', 36669, 'pending', ''),
(5, 'kirti', 'suresh', 30, 'bharatpur', 'female', '2021-01-22 23:00:00.000000', '2021-01-23 23:00:00.000000', 'i do not have any complaint', 0, 'Others', 'RAJ/FIR/2021/', 16121, '', ''),
(6, 'kanak', 'kapoor chand', 11, 'nb', 'female', '2021-01-29 00:17:00.000000', '2021-01-26 02:17:00.000000', 'bhj', 0, 'Others', 'RAJ/FIR/2021/', 48324, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `uid` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uid`, `username`, `userpassword`) VALUES
(1, 'Ahem Sharma', 'ahem'),
(2, 'Garima Mahawar', 'garima'),
(3, 'Rashmi Patel', 'rashmi'),
(4, 'Mohan Das', 'mohan'),
(5, 'Ravi Kapoor', 'ravi'),
(6, 'kirti suman', 'kirti'),
(7, 'Kanak Trivedi', 'kanak123'),
(8, 'vandana verma', 'vandana123');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `uid` int(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `repeatpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`uid`, `firstname`, `lastname`, `username`, `dob`, `gender`, `email`, `mobileno`, `password`, `repeatpassword`) VALUES
(1, 'Ahem', 'Sharma', 'Ahem Sharma', '1999-02-13', 'male', 'ahem@gmail.com', '9999999999', 'ahem', 'ahem'),
(2, 'Garima', 'Mahawar', 'Garima Mahawar', '2002-02-11', 'female', 'garimamahawar2002@gmail.com', '9999999999', 'garima', 'garima'),
(3, 'Rashmi', 'Patel', 'Rashmi Patel', '2001-11-08', 'female', 'rashmi@gmail.com', '8888888888', 'rashmi', 'rashmi'),
(4, 'Mohan', 'Das', 'Mohan Das', '1998-04-09', 'male', 'mohan@gmail.com', '7777777777', 'mohan', 'mohan'),
(5, 'Ravi', 'Kapoor', 'Ravi Kapoor', '1998-07-30', 'male', 'ravi@gmail.com', '6666666666', 'ravi', 'ravi'),
(6, 'kirti', 'suman', 'kirti suman', '0000-00-00', 'female', 'kirti@gmail.com', '9879879876', 'kirti', 'kirti'),
(7, 'Kanak', 'Trivedi', 'Kanak Trivedi', '1988-04-08', 'female', 'kanak@gmail.com', '25545555876', 'kanak123', 'kanak123'),
(8, 'vandana', 'verma', 'vandana verma', '1999-02-13', 'female', 'vandana@gmail.com', '9999999999', 'vandana123', 'vandana123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fir`
--
ALTER TABLE `fir`
  ADD PRIMARY KEY (`s_no`),
  ADD UNIQUE KEY `name` (`name`,`qid2`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fir`
--
ALTER TABLE `fir`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
