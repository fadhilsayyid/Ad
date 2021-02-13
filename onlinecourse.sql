-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 04:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Tausif Hossain', '608cf1e51f5d730299d93e467e3d4d23', '2017-01-24 16:21:18', '19-01-2021 09:34:12 AM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(5, 'Secr2043', 'Operating System', 'Full time', 40, '2021-01-19 04:10:35', NULL),
(6, 'SCSJ3303-04', 'Internet Programming', 'Full time', 40, '2021-01-19 04:17:09', NULL),
(7, 'SSCSJ3323', 'Software design architecture', 'Full time', 40, '2021-01-19 04:20:30', NULL),
(8, 'E112', 'Academic English', 'Full time', 36, '2021-01-19 08:23:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(4, '10806121', '715948', 4, 7, 6, 5, 2, '2018-05-21 10:19:41'),
(5, '12345', '131863', 4, 7, 6, 6, 1, '2018-08-25 05:52:34'),
(6, 'A18CS4023', '971642', 4, 7, 7, 6, 1, '2021-01-17 10:18:13'),
(7, 'A18CS4023', '971642', 4, 7, 7, 5, 4, '2021-01-19 02:06:18'),
(8, 'A1esports1', '604172', 7, 11, 0, 7, 6, '2021-01-19 07:01:31'),
(9, 'A18CS4023', '971642', 9, 13, 0, 8, 5, '2021-01-19 07:04:35'),
(10, 'A18CS4023', '971642', 9, 13, 0, 8, 5, '2021-01-19 07:07:26'),
(11, 'A18CS4023', '971642', 9, 13, 0, 5, 6, '2021-01-19 07:08:34'),
(12, 'A1esports2', '733369', 6, 14, 0, 8, 8, '2021-01-19 08:27:04'),
(13, 'A18CS4023', '971642', 6, 13, 0, 7, 7, '2021-01-19 16:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(11, 'Electrical engineering', '2021-01-19 04:07:10'),
(12, 'Civil engineering', '2021-01-19 04:07:25'),
(13, 'Software engineering', '2021-01-19 04:07:56'),
(14, 'English', '2021-01-19 08:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(5, 'Level 1', '2017-02-09 19:04:04'),
(6, 'level 2', '2017-02-09 19:04:12'),
(7, 'level 4', '2017-02-09 19:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(4, 'Second sem', '2017-02-09 18:47:59', ''),
(5, 'Third Sem', '2017-02-09 18:48:04', ''),
(6, 'Fourth Sem', '2018-05-21 10:02:56', ''),
(7, 'Fifth semester', '2021-01-19 04:04:53', NULL),
(8, 'Sixth semester', '2021-01-19 04:05:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(6, '2021/2022 Semester 1', '2021-01-19 04:26:25'),
(7, '2021/2022 Semester 2', '2021-01-19 04:26:32'),
(8, '2022/2023 Semester 1', '2021-01-19 04:26:52'),
(9, '2022/2023 Semester 2', '2021-01-19 04:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('A18CS4023', '40133615_1866165643497092_6230000107530485760_o.jpg', '608cf1e51f5d730299d93e467e3d4d23', 'tausif ', '971642', NULL, NULL, NULL, '2.86', '2021-01-17 10:14:34', NULL),
('A18MCDC', NULL, '1b1e764257cc340d94d9e83be612463a', 'Rabbi Khan', '143339', NULL, NULL, NULL, NULL, '2021-01-19 04:22:31', NULL),
('A1esports1', NULL, 'f1ac83d068fd797a4989bf53ba0fbad4', 'Mahia mahi', '604172', NULL, NULL, NULL, NULL, '2021-01-19 04:32:25', NULL),
('A1esports2', '129218320_2771933989687841_2147906012146616104_o.jpg', 'c30bb38b4c6a15ec62f5b83aeb221682', 'Jareer', '733369', NULL, NULL, NULL, '4.00', '2021-01-19 08:24:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(17, 'A18CS4023', 0x3a3a3100000000000000000000000000, '2021-01-17 10:17:01', NULL, 1),
(18, 'A18CS4023', 0x3a3a3100000000000000000000000000, '2021-01-19 02:04:23', NULL, 1),
(19, 'A1esports1', 0x3a3a3100000000000000000000000000, '2021-01-19 04:36:08', '19-01-2021 10:14:57 AM', 1),
(20, 'A18CS4023', 0x3a3a3100000000000000000000000000, '2021-01-19 05:05:25', '19-01-2021 10:39:54 AM', 1),
(21, 'A1esports1', 0x3a3a3100000000000000000000000000, '2021-01-19 06:37:34', '19-01-2021 12:32:30 PM', 1),
(22, 'A18CS4023', 0x3a3a3100000000000000000000000000, '2021-01-19 07:03:42', '19-01-2021 12:41:36 PM', 1),
(23, 'A18CS4023', 0x3a3a3100000000000000000000000000, '2021-01-19 07:48:06', '19-01-2021 01:18:19 PM', 1),
(24, 'A1esports2', 0x3a3a3100000000000000000000000000, '2021-01-19 08:24:57', NULL, 1),
(25, 'A1esports3', 0x3a3a3100000000000000000000000000, '2021-01-19 16:01:02', '19-01-2021 09:32:16 PM', 1),
(26, 'A18CS4023', 0x3a3a3100000000000000000000000000, '2021-01-19 16:07:50', NULL, 1),
(27, 'A18CS4023', 0x3a3a3100000000000000000000000000, '2021-01-19 16:08:39', '19-01-2021 09:40:22 PM', 1),
(28, 'A18CS4023', 0x3a3a3100000000000000000000000000, '2021-01-20 01:56:41', '20-01-2021 07:27:41 AM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
