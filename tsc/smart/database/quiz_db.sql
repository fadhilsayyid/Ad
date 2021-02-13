-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 02:29 PM
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
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `option_id` int(30) NOT NULL,
  `is_right` tinyint(1) NOT NULL COMMENT ' 1 = right, 0 = wrong',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `quiz_id`, `question_id`, `option_id`, `is_right`, `date_updated`) VALUES
(5, 12, 2, 4, 32, 1, '2020-09-07 16:59:14'),
(6, 12, 2, 5, 38, 1, '2020-09-07 16:59:14'),
(7, 13, 5, 10, 57, 1, '2021-01-06 21:36:26'),
(8, 13, 5, 11, 62, 0, '2021-01-06 21:36:26'),
(9, 13, 5, 12, 66, 0, '2021-01-06 21:36:26'),
(10, 13, 4, 8, 50, 0, '2021-01-06 21:36:42'),
(11, 13, 4, 9, 53, 1, '2021-01-06 21:36:42'),
(12, 13, 3, 6, 41, 1, '2021-01-09 20:27:53'),
(13, 13, 3, 7, 48, 0, '2021-01-09 20:27:53'),
(14, 14, 4, 8, 49, 1, '2021-01-10 13:18:26'),
(15, 14, 4, 9, 53, 1, '2021-01-10 13:18:26'),
(16, 12, 8, 15, 77, 1, '2021-01-10 13:24:07'),
(17, 12, 8, 16, 81, 1, '2021-01-10 13:24:07'),
(18, 12, 8, 17, 85, 1, '2021-01-10 13:24:07'),
(19, 12, 10, 22, 105, 1, '2021-01-13 09:11:33'),
(20, 12, 10, 23, 110, 0, '2021-01-13 09:11:33'),
(21, 12, 11, 24, 113, 1, '2021-01-13 09:13:48'),
(22, 12, 11, 25, 117, 1, '2021-01-13 09:13:48'),
(23, 12, 11, 26, 122, 0, '2021-01-13 09:13:48'),
(24, 12, 12, 27, 125, 1, '2021-01-13 09:16:51'),
(25, 12, 12, 28, 129, 1, '2021-01-13 09:16:51'),
(26, 12, 12, 30, 137, 1, '2021-01-13 09:16:51'),
(27, 13, 8, 15, 77, 1, '2021-01-20 17:19:06'),
(28, 13, 8, 16, 81, 1, '2021-01-20 17:19:06'),
(29, 13, 8, 17, 85, 1, '2021-01-20 17:19:06'),
(30, 14, 8, 15, 77, 1, '2021-01-24 13:00:58'),
(31, 14, 8, 16, 81, 1, '2021-01-24 13:00:58'),
(32, 14, 8, 17, 86, 0, '2021-01-24 13:00:58'),
(33, 12, 9, 18, 89, 1, '2021-01-24 13:54:28'),
(34, 12, 9, 19, 93, 1, '2021-01-24 13:54:28'),
(35, 12, 9, 20, 97, 1, '2021-01-24 13:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_id`, `subject`, `date_updated`) VALUES
(2, 6, 'Math', '2020-09-07 12:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `score` int(5) NOT NULL,
  `total_score` int(5) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `quiz_id`, `user_id`, `score`, `total_score`, `date_updated`) VALUES
(3, 2, 12, 4, 4, '2020-09-07 16:59:14'),
(4, 5, 13, 15, 45, '2021-01-06 21:36:26'),
(5, 4, 13, 10, 20, '2021-01-06 21:36:42'),
(6, 3, 13, 5, 10, '2021-01-09 20:27:53'),
(7, 4, 14, 20, 20, '2021-01-10 13:18:26'),
(8, 8, 12, 12, 12, '2021-01-10 13:24:07'),
(9, 10, 12, 1, 2, '2021-01-13 09:11:33'),
(10, 11, 12, 2, 3, '2021-01-13 09:13:48'),
(11, 12, 12, 6, 6, '2021-01-13 09:16:51'),
(12, 8, 13, 12, 12, '2021-01-20 17:19:06'),
(13, 8, 14, 8, 12, '2021-01-24 13:00:58'),
(14, 9, 12, 30, 30, '2021-01-24 13:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `qid` int(30) NOT NULL,
  `order_by` int(11) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `qid`, `order_by`, `date_updated`) VALUES
(4, 'asdasd ads ads f ddfg dfgg', 2, 0, '2020-09-07 14:32:18'),
(15, '1+2', 8, 0, '2021-01-10 13:23:03'),
(16, '1+2', 8, 0, '2021-01-10 13:23:04'),
(17, '2+4', 8, 0, '2021-01-10 13:23:25'),
(18, 'door', 9, 0, '2021-01-10 13:34:51'),
(19, 'door', 9, 0, '2021-01-10 13:34:53'),
(20, 'chair', 9, 0, '2021-01-10 13:35:15'),
(31, '1+4', 13, 0, '2021-01-24 12:58:57'),
(32, '1+4', 13, 0, '2021-01-24 12:58:58'),
(33, '7+7', 13, 0, '2021-01-24 12:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `question_opt`
--

CREATE TABLE `question_opt` (
  `id` int(30) NOT NULL,
  `option_txt` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1= right answer',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_opt`
--

INSERT INTO `question_opt` (`id`, `option_txt`, `question_id`, `is_right`, `date_updated`) VALUES
(29, 'dsfsf sdf', 4, 0, '2020-09-07 14:40:57'),
(30, 'dfdf', 4, 0, '2020-09-07 14:40:57'),
(31, ' dfd', 4, 0, '2020-09-07 14:40:57'),
(32, 'dsfsd', 4, 1, '2020-09-07 14:40:57'),
(37, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(38, 'Right', 5, 1, '2020-09-07 14:41:32'),
(39, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(40, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(45, 'a', 7, 1, '2021-01-06 09:55:19'),
(46, 'b', 7, 0, '2021-01-06 09:55:19'),
(47, 'c', 7, 0, '2021-01-06 09:55:19'),
(48, 'd', 7, 0, '2021-01-06 09:55:19'),
(53, 'a', 9, 1, '2021-01-06 10:11:15'),
(54, 'b', 9, 0, '2021-01-06 10:11:15'),
(55, 'c', 9, 0, '2021-01-06 10:11:15'),
(56, 'd', 9, 0, '2021-01-06 10:11:15'),
(61, 'a', 11, 1, '2021-01-06 21:35:31'),
(62, 'b', 11, 0, '2021-01-06 21:35:31'),
(63, 'c', 11, 0, '2021-01-06 21:35:31'),
(64, 'd', 11, 0, '2021-01-06 21:35:31'),
(65, 'a', 12, 0, '2021-01-06 21:35:49'),
(66, 'b', 12, 0, '2021-01-06 21:35:49'),
(67, 'c', 12, 0, '2021-01-06 21:35:49'),
(68, 'd', 12, 0, '2021-01-06 21:35:49'),
(73, 'a', 14, 1, '2021-01-09 20:06:41'),
(74, 'b', 14, 0, '2021-01-09 20:06:41'),
(75, 'c', 14, 0, '2021-01-09 20:06:41'),
(76, 'd', 14, 0, '2021-01-09 20:06:41'),
(77, '3', 15, 1, '2021-01-10 13:23:03'),
(78, '4', 15, 0, '2021-01-10 13:23:03'),
(79, '5', 15, 0, '2021-01-10 13:23:03'),
(80, '6', 15, 0, '2021-01-10 13:23:03'),
(81, '3', 16, 1, '2021-01-10 13:23:04'),
(82, '4', 16, 0, '2021-01-10 13:23:04'),
(83, '5', 16, 0, '2021-01-10 13:23:04'),
(84, '6', 16, 0, '2021-01-10 13:23:04'),
(85, '6', 17, 1, '2021-01-10 13:23:25'),
(86, '7', 17, 0, '2021-01-10 13:23:25'),
(87, '5', 17, 0, '2021-01-10 13:23:25'),
(88, '3', 17, 0, '2021-01-10 13:23:25'),
(89, 'pintu', 18, 1, '2021-01-10 13:34:51'),
(90, 'jendela', 18, 0, '2021-01-10 13:34:51'),
(91, 'lampu', 18, 0, '2021-01-10 13:34:51'),
(92, 'kursi', 18, 0, '2021-01-10 13:34:51'),
(93, 'pintu', 19, 1, '2021-01-10 13:34:53'),
(94, 'jendela', 19, 0, '2021-01-10 13:34:53'),
(95, 'lampu', 19, 0, '2021-01-10 13:34:53'),
(96, 'kursi', 19, 0, '2021-01-10 13:34:53'),
(97, 'kursi', 20, 1, '2021-01-10 13:35:15'),
(98, 'meja', 20, 0, '2021-01-10 13:35:15'),
(99, 'mobil', 20, 0, '2021-01-10 13:35:15'),
(100, 'gelas', 20, 0, '2021-01-10 13:35:15'),
(101, 'a', 21, 1, '2021-01-13 09:10:40'),
(102, 'b', 21, 0, '2021-01-13 09:10:40'),
(103, 'c', 21, 0, '2021-01-13 09:10:40'),
(104, 'd', 21, 0, '2021-01-13 09:10:40'),
(109, 'a', 23, 0, '2021-01-13 09:11:06'),
(110, 'b', 23, 0, '2021-01-13 09:11:06'),
(111, 'c', 23, 0, '2021-01-13 09:11:06'),
(112, 'd', 23, 0, '2021-01-13 09:11:06'),
(117, 'a', 25, 1, '2021-01-13 09:12:45'),
(118, 'b', 25, 0, '2021-01-13 09:12:45'),
(119, 'c', 25, 0, '2021-01-13 09:12:45'),
(120, 'd', 25, 0, '2021-01-13 09:12:45'),
(121, 'a', 26, 0, '2021-01-13 09:13:06'),
(122, 'b', 26, 0, '2021-01-13 09:13:06'),
(123, 'c', 26, 0, '2021-01-13 09:13:06'),
(124, 'd', 26, 0, '2021-01-13 09:13:06'),
(129, 'a', 28, 1, '2021-01-13 09:15:10'),
(130, 'b', 28, 0, '2021-01-13 09:15:10'),
(131, 'c', 28, 0, '2021-01-13 09:15:10'),
(132, 'd', 28, 0, '2021-01-13 09:15:10'),
(133, 'a', 29, 1, '2021-01-13 09:15:30'),
(134, 'b', 29, 0, '2021-01-13 09:15:30'),
(135, 'c', 29, 0, '2021-01-13 09:15:30'),
(136, 'd', 29, 0, '2021-01-13 09:15:30'),
(137, 'a', 30, 1, '2021-01-13 09:15:50'),
(138, 'b', 30, 0, '2021-01-13 09:15:50'),
(139, 'c', 30, 0, '2021-01-13 09:15:50'),
(140, 'd', 30, 0, '2021-01-13 09:15:50'),
(141, '5', 31, 1, '2021-01-24 12:58:57'),
(142, '6', 31, 0, '2021-01-24 12:58:57'),
(143, '7', 31, 0, '2021-01-24 12:58:57'),
(144, '8', 31, 0, '2021-01-24 12:58:57'),
(145, '5', 32, 1, '2021-01-24 12:58:58'),
(146, '6', 32, 0, '2021-01-24 12:58:58'),
(147, '7', 32, 0, '2021-01-24 12:58:58'),
(148, '8', 32, 0, '2021-01-24 12:58:58'),
(149, '13', 33, 0, '2021-01-24 12:59:16'),
(150, '14', 33, 0, '2021-01-24 12:59:16'),
(151, '19', 33, 0, '2021-01-24 12:59:16'),
(152, '20', 33, 0, '2021-01-24 12:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_list`
--

CREATE TABLE `quiz_list` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `qpoints` int(11) NOT NULL DEFAULT 1,
  `user_id` int(20) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_list`
--

INSERT INTO `quiz_list` (`id`, `title`, `qpoints`, `user_id`, `date_updated`) VALUES
(2, 'Test 1', 2, 6, '2021-01-06 10:20:04'),
(7, 'Data Structure Quiz', 4, 0, '2021-01-10 13:22:09'),
(8, 'Data Structure Quiz', 4, 6, '2021-01-10 13:22:36'),
(9, 'English', 10, 6, '2021-01-10 13:33:58'),
(13, 'Quiz 1', 15, 6, '2021-01-24 13:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_student_list`
--

CREATE TABLE `quiz_student_list` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_student_list`
--

INSERT INTO `quiz_student_list` (`id`, `quiz_id`, `user_id`, `date_updated`) VALUES
(5, 2, 12, '2020-09-07 15:05:58'),
(6, 2, 13, '2020-09-07 15:05:58'),
(7, 3, 13, '2021-01-06 09:55:26'),
(8, 4, 13, '2021-01-06 10:11:23'),
(9, 5, 12, '2021-01-06 21:35:57'),
(10, 5, 13, '2021-01-06 21:35:57'),
(11, 6, 13, '2021-01-09 20:06:48'),
(12, 4, 14, '2021-01-10 13:17:55'),
(13, 8, 12, '2021-01-10 13:23:38'),
(14, 8, 13, '2021-01-10 13:23:38'),
(15, 8, 14, '2021-01-10 13:23:38'),
(16, 9, 12, '2021-01-10 13:35:23'),
(17, 10, 12, '2021-01-13 09:11:13'),
(18, 11, 12, '2021-01-13 09:13:18'),
(19, 12, 12, '2021-01-13 09:16:01'),
(20, 13, 12, '2021-01-24 12:59:39'),
(21, 13, 13, '2021-01-24 12:59:39'),
(22, 13, 14, '2021-01-24 12:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `level_section` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `level_section`, `date_updated`) VALUES
(3, 12, 'A18CS0332', '2021-01-06 10:12:23'),
(4, 13, 'A18CS0323', '2021-01-06 10:11:56'),
(5, 14, 'A18CS0333', '2021-01-06 21:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= faculty , 3 = student',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(1, 'Administrator', 1, 'admin', 'admin123', 1, '2020-09-07 09:10:49'),
(6, 'Lecturer', 2, 'lecturer', 'lecturer', 1, '2021-01-06 10:02:38'),
(12, 'Tiara Afdely Putri', 3, 'tiara', 'student', 1, '2021-01-06 10:12:23'),
(13, 'Safira Nurul Izza', 3, 'safira', 'student', 1, '2021-01-06 10:11:56'),
(14, 'Sifra Manalu', 3, 'sifra', 'student', 1, '2021-01-06 21:34:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_opt`
--
ALTER TABLE `question_opt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_list`
--
ALTER TABLE `quiz_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `question_opt`
--
ALTER TABLE `question_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `quiz_list`
--
ALTER TABLE `quiz_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
