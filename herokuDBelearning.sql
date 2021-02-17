CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 8, 1, 'userid'),
(10, '000', 7, 1, 'ExerciseID'),
(12, '000', 34, 1, 'BLOGID'),
(13, '0', 5, 1, 'STUDENTID');

-- --------------------------------------------------------

--
-- Table structure for table `tblexercise`
--

CREATE TABLE `tblexercise` (
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `Question` text NOT NULL,
  `ChoiceA` text NOT NULL,
  `ChoiceB` text NOT NULL,
  `ChoiceC` text NOT NULL,
  `ChoiceD` text NOT NULL,
  `Answer` varchar(90) NOT NULL,
  `ExercisesDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexercise`
--

INSERT INTO `tblexercise` (`ExerciseID`, `LessonID`, `Question`, `ChoiceA`, `ChoiceB`, `ChoiceC`, `ChoiceD`, `Answer`, `ExercisesDate`) VALUES
(20180001, 6, 'What is the title of the video', 'My Father', 'My Mother', 'My Brother', 'My Sister', 'My Sister', '0000-00-00'),
(20180002, 6, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston', '0000-00-00'),
(20210003, 11, 'What is the capital of japan?', 'Tokyo', 'Osaka', 'Kyoto', 'Hiroshima', 'Tokyo', '0000-00-00'),
(20210004, 12, 'How to read ”?” ?', 'A', 'O', 'U', 'E', 'A', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbllesson`
--

CREATE TABLE `tbllesson` (
  `LessonID` int(11) NOT NULL,
  `LessonChapter` varchar(90) NOT NULL,
  `LessonTitle` varchar(90) NOT NULL,
  `FileLocation` text NOT NULL,
  `Category` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllesson`
--

INSERT INTO `tbllesson` (`LessonID`, `LessonChapter`, `LessonTitle`, `FileLocation`, `Category`) VALUES
(6, 'video', 'video', 'files/Deploy Laravel To Shared Hosting The Easy Way - YouTube.MP4', 'Video'),
(7, 'test', 'test', 'files/s.pdf', 'Docs'),
(11, '1', 'Introduction of Japan', 'files/01_introduction to japan.pdf', 'Docs'),
(12, '2', 'Hiragana Table', 'files/02_ Hiragana Table and Practice Sheets.pdf', 'Docs'),
(13, '3', 'Japanese grammar', 'files/(1) Japanese Grammar Yoroshiku?Greeting Words in Japanese! -.mp4', 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `tblscore`
--

CREATE TABLE `tblscore` (
  `ScoreID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `NoItems` int(11) NOT NULL DEFAULT 1,
  `Score` int(11) NOT NULL,
  `Submitted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblscore`
--

INSERT INTO `tblscore` (`ScoreID`, `LessonID`, `ExerciseID`, `StudentID`, `NoItems`, `Score`, `Submitted`) VALUES
(9, 6, 20180001, 1, 1, 1, 1),
(10, 6, 20180002, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `StudentID` int(11) NOT NULL,
  `Fname` varchar(90) NOT NULL,
  `Lname` varchar(90) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `MobileNo` varchar(90) NOT NULL,
  `STUDUSERNAME` varchar(90) NOT NULL,
  `STUDPASS` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`StudentID`, `Fname`, `Lname`, `Address`, `MobileNo`, `STUDUSERNAME`, `STUDPASS`) VALUES
(1, 'a', 'a', 'a', '21', 'a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8'),
(2, 'sd', 'sad', 'sad', '231', 'a', 'a0f1490a20d0211c997b44bc357e1972deab8ae3'),
(3, 'fadhil', 'sayyid', '..', '01131088747', 'fadhil', '9cf949c125e5af6dc3bb8379638be8b32058c7d9'),
(4, 'fadhil', 'sayyid', 'skudai', '0123131', 'fadhilsayyid', '9cf949c125e5af6dc3bb8379638be8b32058c7d9'),
(5, 'fadhil', 'sayyid', 'skudai', '0123131231', 'fadhil', '68008f35c84c247738e02496355ec6c945347bc2');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentquestion`
--

CREATE TABLE `tblstudentquestion` (
  `SQID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Question` varchar(90) NOT NULL,
  `CA` varchar(90) NOT NULL,
  `CB` varchar(90) NOT NULL,
  `CC` varchar(90) NOT NULL,
  `CD` varchar(90) NOT NULL,
  `QA` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudentquestion`
--

INSERT INTO `tblstudentquestion` (`SQID`, `ExerciseID`, `LessonID`, `StudentID`, `Question`, `CA`, `CB`, `CC`, `CD`, `QA`) VALUES
(1, 20180002, 0, 1, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(2, 20180002, 0, 2, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(3, 20210003, 0, 1, 'What is the capital of japan?', 'Tokyo', 'Osaka', 'Kyoto', 'Hiroshima', 'Tokyo'),
(4, 20210003, 0, 2, 'What is the capital of japan?', 'Tokyo', 'Osaka', 'Kyoto', 'Hiroshima', 'Tokyo'),
(5, 20210003, 0, 3, 'What is the capital of japan?', 'Tokyo', 'Osaka', 'Kyoto', 'Hiroshima', 'Tokyo'),
(6, 20210004, 0, 1, 'How to read ”?” ?', 'A', 'O', 'U', 'E', 'A'),
(7, 20210004, 0, 2, 'How to read ”?” ?', 'A', 'O', 'U', 'E', 'A'),
(8, 20210004, 0, 3, 'How to read ”?” ?', 'A', 'O', 'U', 'E', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` int(11) NOT NULL,
  `NAME` varchar(90) NOT NULL,
  `UEMAIL` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `NAME`, `UEMAIL`, `PASS`, `TYPE`) VALUES
(1, 'Fadhil', 'Fadhil', '9cf949c125e5af6dc3bb8379638be8b32058c7d9', 'Administrator');

--
-- Indexes for dumped tables
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
('A17CS0251', NULL, 'fc646ab58bc3535f15cebaf9caa144e6', 'Fadhil', '456517', NULL, NULL, NULL, NULL, '2021-01-24 05:43:25', NULL),
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
(28, 'A18CS4023', 0x3a3a3100000000000000000000000000, '2021-01-20 01:56:41', '20-01-2021 07:27:41 AM', 1),
(29, 'A17CS0251', 0x3132372e302e302e3100000000000000, '2021-01-24 05:43:42', NULL, 1),
(30, 'A17CS0251', 0x3132372e302e302e3100000000000000, '2021-02-06 03:04:36', NULL, 1),
(31, 'A17CS0251', 0x3132372e302e302e3100000000000000, '2021-02-13 11:50:52', NULL, 1),
(32, 'A17CS0251', 0x3132372e302e302e3100000000000000, '2021-02-14 12:44:06', NULL, 1),
(33, 'A17CS0251', 0x3132372e302e302e3100000000000000, '2021-02-14 13:03:58', '14-02-2021 06:34:06 PM', 1),
(34, 'A17CS0251', 0x3132372e302e302e3100000000000000, '2021-02-14 13:42:23', NULL, 1),
(35, 'A17CS0251', 0x3132372e302e302e3100000000000000, '2021-02-14 13:46:47', '14-02-2021 07:17:17 PM', 1),
(36, 'A17CS0251', 0x3132372e302e302e3100000000000000, '2021-02-14 13:59:52', '14-02-2021 07:30:00 PM', 1);

--
-- Indexes for dumped tables
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblexercise`
--
ALTER TABLE `tblexercise`
  ADD PRIMARY KEY (`ExerciseID`);

--
-- Indexes for table `tbllesson`
--
ALTER TABLE `tbllesson`
  ADD PRIMARY KEY (`LessonID`);

--
-- Indexes for table `tblscore`
--
ALTER TABLE `tblscore`
  ADD PRIMARY KEY (`ScoreID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`StudentID`) USING BTREE;

--
-- Indexes for table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  ADD PRIMARY KEY (`SQID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblexercise`
--
ALTER TABLE `tblexercise`
  MODIFY `ExerciseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20210007;

--
-- AUTO_INCREMENT for table `tbllesson`
--
ALTER TABLE `tbllesson`
  MODIFY `LessonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblscore`
--
ALTER TABLE `tblscore`
  MODIFY `ScoreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  MODIFY `SQID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;