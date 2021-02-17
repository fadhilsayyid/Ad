-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2021 at 11:47 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

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
(7, 14, 2, 4, 29, 0, '2020-11-21 21:11:54'),
(8, 14, 2, 5, 38, 1, '2020-11-21 21:11:54'),
(9, 14, 4, 7, 46, 0, '2020-11-27 10:50:37'),
(10, 14, 4, 8, 52, 0, '2020-11-27 10:50:37'),
(11, 14, 4, 9, 55, 0, '2020-11-27 10:50:37'),
(12, 14, 3, 10, 57, 1, '2020-12-13 22:14:48'),
(13, 14, 3, 12, 68, 0, '2020-12-13 22:14:48'),
(14, 14, 3, 13, 70, 0, '2020-12-13 22:14:48'),
(15, 14, 6, 14, 73, 1, '2020-12-29 22:16:45'),
(16, 14, 6, 16, 83, 0, '2020-12-29 22:16:45'),
(17, 16, 6, 14, 73, 1, '2020-12-29 22:23:21'),
(18, 16, 6, 16, 81, 1, '2020-12-29 22:23:21'),
(19, 17, 6, 14, 76, 0, '2020-12-29 22:24:43'),
(20, 17, 6, 16, 81, 1, '2020-12-29 22:24:43'),
(21, 14, 9, 19, 93, 1, '2021-01-02 11:54:35'),
(22, 14, 9, 21, 102, 0, '2021-01-02 11:54:35'),
(23, 14, 9, 22, 106, 0, '2021-01-02 11:54:35'),
(24, 16, 2, 4, 32, 1, '2021-01-03 05:09:38'),
(25, 16, 2, 5, 38, 1, '2021-01-03 05:09:38'),
(26, 16, 10, 23, 109, 1, '2021-01-03 05:10:07'),
(27, 16, 10, 24, 116, 0, '2021-01-03 05:10:07'),
(28, 16, 10, 25, 117, 1, '2021-01-03 05:10:07'),
(29, 16, 10, 26, 123, 0, '2021-01-03 05:10:07');

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
(4, 2, 14, 2, 4, '2020-11-21 21:11:54'),
(5, 4, 14, 0, 15, '2020-11-27 10:50:37'),
(6, 3, 14, 5, 15, '2020-12-13 22:14:48'),
(7, 6, 14, 4, 8, '2020-12-29 22:16:45'),
(8, 6, 16, 8, 8, '2020-12-29 22:23:21'),
(9, 6, 17, 4, 8, '2020-12-29 22:24:43'),
(10, 9, 14, 15, 45, '2021-01-02 11:54:35'),
(11, 2, 16, 10, 10, '2021-01-03 05:09:38'),
(12, 10, 16, 20, 40, '2021-01-03 05:10:07');

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
(5, 'Sample Question', 2, 0, '2020-09-07 14:00:39'),
(7, 'A queue follows', 4, 0, '2020-11-27 10:45:54'),
(8, 'Circular Queue is also known as', 4, 0, '2020-11-27 10:46:57'),
(9, 'The data structure required for Breadth First Traversal on a graph is?', 4, 0, '2020-11-27 10:48:13'),
(14, 'qwertyyu', 6, 0, '2020-12-29 22:15:28'),
(16, 'asdfghj', 6, 0, '2020-12-29 22:15:58'),
(19, 'qwertyuiop', 9, 0, '2021-01-02 11:52:01'),
(21, 'asdfghjkl', 9, 0, '2021-01-02 11:52:35'),
(22, 'zxcvbnm', 9, 0, '2021-01-02 11:53:03'),
(23, 'qwertyuiop', 10, 0, '2021-01-03 05:05:54'),
(24, 'qwertyuiop', 10, 0, '2021-01-03 05:05:55'),
(25, 'asdfghjkl', 10, 0, '2021-01-03 05:06:16'),
(26, 'zxcvbnm', 10, 0, '2021-01-03 05:06:41'),
(27, 'qwertyuiop', 2, 0, '2021-01-03 05:16:26'),
(28, 'What is your favourite food?', 12, 0, '2021-01-19 23:38:05'),
(29, 'What is your favourite food?', 12, 0, '2021-01-19 23:38:07');

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
(41, 'FIFO', 6, 1, '2020-11-27 10:45:46'),
(42, 'LIFO', 6, 0, '2020-11-27 10:45:46'),
(43, 'Ordered array', 6, 0, '2020-11-27 10:45:46'),
(44, 'Linear Tree', 6, 0, '2020-11-27 10:45:46'),
(45, 'FIFO', 7, 1, '2020-11-27 10:45:54'),
(46, 'LIFO', 7, 0, '2020-11-27 10:45:54'),
(47, 'Ordered array', 7, 0, '2020-11-27 10:45:54'),
(48, 'Linear Tree', 7, 0, '2020-11-27 10:45:54'),
(49, 'Ring Buffer', 8, 1, '2020-11-27 10:46:57'),
(50, 'Square Buffer', 8, 0, '2020-11-27 10:46:57'),
(51, 'Rectangle Buffer', 8, 0, '2020-11-27 10:46:57'),
(52, 'Curve Buffer', 8, 0, '2020-11-27 10:46:57'),
(53, 'Stack', 9, 0, '2020-11-27 10:48:13'),
(54, 'Array', 9, 0, '2020-11-27 10:48:13'),
(55, 'Queue', 9, 0, '2020-11-27 10:48:13'),
(56, 'Tree', 9, 0, '2020-11-27 10:48:13'),
(61, 'a', 11, 1, '2020-12-13 22:12:45'),
(62, 'b', 11, 0, '2020-12-13 22:12:45'),
(63, 'c', 11, 0, '2020-12-13 22:12:45'),
(64, 'd', 11, 0, '2020-12-13 22:12:45'),
(65, 'a', 12, 0, '2020-12-13 22:13:34'),
(66, 'b', 12, 0, '2020-12-13 22:13:34'),
(67, 'c', 12, 0, '2020-12-13 22:13:34'),
(68, 'd', 12, 0, '2020-12-13 22:13:34'),
(69, 'a', 13, 0, '2020-12-13 22:13:52'),
(70, 'b', 13, 0, '2020-12-13 22:13:52'),
(71, 'c', 13, 0, '2020-12-13 22:13:52'),
(72, 'd', 13, 0, '2020-12-13 22:13:52'),
(73, 'a', 14, 1, '2020-12-29 22:15:28'),
(74, 'b', 14, 0, '2020-12-29 22:15:28'),
(75, 'c', 14, 0, '2020-12-29 22:15:28'),
(76, 'd', 14, 0, '2020-12-29 22:15:28'),
(77, 'a', 15, 1, '2020-12-29 22:15:34'),
(78, 'b', 15, 0, '2020-12-29 22:15:34'),
(79, 'c', 15, 0, '2020-12-29 22:15:34'),
(80, 'd', 15, 0, '2020-12-29 22:15:34'),
(81, 'a', 16, 1, '2020-12-29 22:15:58'),
(82, 'b', 16, 0, '2020-12-29 22:15:58'),
(83, 'c', 16, 0, '2020-12-29 22:15:58'),
(84, 'd', 16, 0, '2020-12-29 22:15:58'),
(89, 'a', 18, 0, '2020-12-29 22:27:21'),
(90, 'b', 18, 0, '2020-12-29 22:27:21'),
(91, 'c', 18, 0, '2020-12-29 22:27:21'),
(92, 'd', 18, 0, '2020-12-29 22:27:21'),
(93, 'a', 19, 1, '2021-01-02 11:52:01'),
(94, 'b', 19, 0, '2021-01-02 11:52:01'),
(95, 'c', 19, 0, '2021-01-02 11:52:01'),
(96, 'd', 19, 0, '2021-01-02 11:52:01'),
(97, 'a', 20, 1, '2021-01-02 11:52:02'),
(98, 'b', 20, 0, '2021-01-02 11:52:02'),
(99, 'c', 20, 0, '2021-01-02 11:52:02'),
(100, 'd', 20, 0, '2021-01-02 11:52:02'),
(101, 'a', 21, 1, '2021-01-02 11:52:35'),
(102, 'b', 21, 0, '2021-01-02 11:52:35'),
(103, 'c', 21, 0, '2021-01-02 11:52:35'),
(104, 'd', 21, 0, '2021-01-02 11:52:35'),
(105, 'b', 22, 0, '2021-01-02 11:53:03'),
(106, 'a', 22, 0, '2021-01-02 11:53:03'),
(107, 'c', 22, 0, '2021-01-02 11:53:03'),
(108, 'd', 22, 0, '2021-01-02 11:53:03'),
(109, 'a', 23, 1, '2021-01-03 05:05:54'),
(110, 'b', 23, 0, '2021-01-03 05:05:54'),
(111, 'c', 23, 0, '2021-01-03 05:05:54'),
(112, 'd', 23, 0, '2021-01-03 05:05:54'),
(113, 'a', 24, 1, '2021-01-03 05:05:55'),
(114, 'b', 24, 0, '2021-01-03 05:05:55'),
(115, 'c', 24, 0, '2021-01-03 05:05:55'),
(116, 'd', 24, 0, '2021-01-03 05:05:55'),
(117, 'a', 25, 1, '2021-01-03 05:06:16'),
(118, 'b', 25, 0, '2021-01-03 05:06:16'),
(119, 'c', 25, 0, '2021-01-03 05:06:16'),
(120, 'd', 25, 0, '2021-01-03 05:06:16'),
(121, 'a', 26, 1, '2021-01-03 05:06:41'),
(122, 'b', 26, 0, '2021-01-03 05:06:41'),
(123, 'c', 26, 0, '2021-01-03 05:06:41'),
(124, 'd\r\n', 26, 0, '2021-01-03 05:06:41'),
(125, 'a', 27, 1, '2021-01-03 05:16:26'),
(126, 'b', 27, 0, '2021-01-03 05:16:26'),
(127, 'c', 27, 0, '2021-01-03 05:16:26'),
(128, 'd', 27, 0, '2021-01-03 05:16:26'),
(129, 'Burger', 28, 1, '2021-01-19 23:38:05'),
(130, 'Pizza', 28, 0, '2021-01-19 23:38:05'),
(131, 'Chicken fry', 28, 0, '2021-01-19 23:38:05'),
(132, 'Chicken chop', 28, 0, '2021-01-19 23:38:05'),
(133, 'Burger', 29, 1, '2021-01-19 23:38:07'),
(134, 'Pizza', 29, 0, '2021-01-19 23:38:07'),
(135, 'Chicken fry', 29, 0, '2021-01-19 23:38:07'),
(136, 'Chicken chop', 29, 0, '2021-01-19 23:38:07');

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
(2, 'Pre-Test (Math)', 5, 6, '2021-01-03 05:07:24'),
(4, 'Data Structure Quiz', 5, 0, '2020-11-27 10:45:02'),
(5, 'quiz 2', 5, 0, '2020-12-13 20:47:39'),
(6, 'quiz 21', 4, 0, '2020-12-29 22:15:07'),
(9, 'quiz 3', 15, 0, '2021-01-02 11:51:32'),
(10, 'quiz 1', 10, 0, '2021-01-03 05:05:32'),
(11, 'quiz 2', 15, 0, '2021-01-03 05:08:46'),
(12, 'Ad', 6, 6, '2021-01-19 23:36:40');

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
(7, 2, 14, '2020-11-21 21:11:19'),
(8, 4, 14, '2020-11-27 10:48:25'),
(10, 3, 14, '2020-12-13 22:13:09'),
(11, 3, 15, '2020-12-13 22:13:09'),
(12, 6, 14, '2020-12-29 22:16:14'),
(13, 6, 15, '2020-12-29 22:16:14'),
(14, 6, 16, '2020-12-29 22:16:14'),
(15, 6, 17, '2020-12-29 22:16:14'),
(16, 7, 15, '2020-12-29 22:27:29'),
(17, 9, 14, '2021-01-02 11:53:22'),
(18, 9, 16, '2021-01-02 11:53:22'),
(19, 9, 17, '2021-01-02 11:53:22'),
(20, 10, 15, '2021-01-03 05:06:51'),
(21, 10, 16, '2021-01-03 05:06:51'),
(22, 2, 16, '2021-01-03 05:07:34');

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
(5, 14, 'A18CS0323', '2020-12-15 20:13:43'),
(6, 15, 'A18CS0333', '2020-12-15 20:13:51'),
(7, 16, 'A18CS0322', '2020-12-15 20:14:39'),
(8, 17, 'A18CS0555', '2020-12-16 09:36:36'),
(9, 18, '04', '2021-01-19 23:36:18');

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
(1, 'Administrator', 1, 'admin', 'admin', 1, '2020-12-13 21:59:41'),
(6, 'Lecturer', 2, 'lecturer', 'lecturer', 1, '2021-01-06 09:17:50'),
(14, 'Safira Nurul Izza', 3, 'safira', 'student', 1, '2020-11-21 21:10:47'),
(15, 'Najwa Azza Sadida', 3, 'najwa', 'student', 1, '2020-12-13 22:09:24'),
(16, 'Tiara Afdely Putri', 3, 'tiara', 'student', 1, '2020-12-15 20:14:39'),
(17, 'sifra manalu', 3, 'sifra', 'student', 1, '2020-12-16 09:36:36'),
(18, 'Ahona', 3, 'Ahona', 'Ahona', 1, '2021-01-19 23:36:18'),
(19, 'fadhil', 1, 'fadhil', 'fadhil', 1, '2021-02-13 20:09:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `question_opt`
--
ALTER TABLE `question_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `quiz_list`
--
ALTER TABLE `quiz_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
