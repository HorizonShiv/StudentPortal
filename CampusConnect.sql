-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 25, 2023 at 06:25 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CampusConnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `100activity`
--

CREATE TABLE `100activity` (
  `certi_id` int(15) NOT NULL,
  `certi_path` varchar(200) NOT NULL,
  `certi_desc` varchar(1000) NOT NULL,
  `event_date` date NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `certi_cat` varchar(100) NOT NULL,
  `certi_SubCat` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL,
  `position` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `100activity`
--

INSERT INTO `100activity` (`certi_id`, `certi_path`, `certi_desc`, `event_date`, `student_id`, `student_name`, `certi_cat`, `certi_SubCat`, `level`, `position`) VALUES
(2, '020423010451.jpg', 'Learning Engineering', '2023-03-26', '161260107043', 'PATEL RIDDHI KIRTIBHAI', 'Bridge Course', 'Learning Engineering', 'Zonal Level', 1),
(3, '020423010437.jpg', 'STTP', '2023-01-04', '161260107043', 'PATEL RIDDHI KIRTIBHAI', 'Technical / Research Skill', 'STTP', 'Inter-College/University(State Level)', 0),
(4, '020423010412.jpg', 'Culture', '2022-04-16', '161260107043', 'PATEL RIDDHI KIRTIBHAI', 'Sports and Cultural', 'Cultural', 'College Level', 1),
(5, '020423080431.jpg', 'GIC', '2023-04-01', '201260116513', 'PATEL SHIVKUMAR RAJNIKANT', 'Leadership / Management', 'GIC Associates', 'International Level', 0);

-- --------------------------------------------------------

--
-- Table structure for table `activityCat`
--

CREATE TABLE `activityCat` (
  `activityCatId` int(50) NOT NULL,
  `activityCatHead` varchar(100) NOT NULL,
  `activitySubCat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activityCat`
--

INSERT INTO `activityCat` (`activityCatId`, `activityCatHead`, `activitySubCat`) VALUES
(46, 'Bridge Course', 'Village Visit'),
(47, 'Bridge Course', 'Learning Engineering'),
(48, 'Bridge Course', 'History of Science & Technology'),
(49, 'Bridge Course', 'Life Skills'),
(50, 'Sports and Cultural', 'Sports'),
(51, 'Sports and Cultural', 'Cultural'),
(52, 'Technical / Research Skill', 'Group Discussion'),
(53, 'Technical / Research Skill', 'Technical Quiz'),
(54, 'Technical / Research Skill', 'Aptitude / Reasoning'),
(55, 'Technical / Research Skill', 'Tech-Fest'),
(56, 'Technical / Research Skill', 'Workshop'),
(57, 'Technical / Research Skill', 'STTP'),
(58, 'Technical / Research Skill', 'MOOC with Final Assessment'),
(59, 'Technical / Research Skill', 'Paper Presentation'),
(60, 'Technical / Research Skill', 'Poster'),
(61, 'Technical / Research Skill', 'Training / Internship / Professional Certification'),
(62, 'Technical / Research Skill', 'Project (Non Curricular)'),
(63, 'Technical / Research Skill', 'Industrial / Exhibition Visit with report'),
(64, 'Technical / Research Skill', 'Consultancy Proiects'),
(65, 'Community outreach and social initiatives', 'Community Service & Allied Activities (Two Dav)'),
(66, 'Community outreach and social initiatives', 'Community Service & Allied Activities (Up to One Week)'),
(67, 'Community outreach and social initiatives', 'Community Service & Allied Activities (One Month)'),
(68, 'Community outreach and social initiatives', 'Community Service & Allied Activities (One Semester)'),
(69, 'Community outreach and social initiatives', 'Community Service & Allied Activities (One Academic Year)'),
(70, 'Community outreach and social initiatives', 'NSS/NCC (On the successful completion of one year program)'),
(107, 'Innovation / IPR / Entrepreneur ship', 'High Customer Review for Creative Products'),
(108, 'Innovation / IPR / Entrepreneur ship', 'Awards/Recognitions for Products (State, National, or International Level)'),
(109, 'Innovation / IPR / Entrepreneur ship', 'Legally Registered a Start-up Company'),
(110, 'Innovation / IPR / Entrepreneur ship', 'Filed a Patent'),
(111, 'Innovation / IPR / Entrepreneur ship', 'Published Patent'),
(112, 'Innovation / IPR / Entrepreneur ship', 'Completed Prototype Development'),
(113, 'Innovation / IPR / Entrepreneur ship', 'Generated Significant Revenue/Profits'),
(114, 'Innovation / IPR / Entrepreneur ship', 'Patent Approved'),
(115, 'Innovation / IPR / Entrepreneur ship', 'Attracted External Funding (Investor)'),
(116, 'Innovation / IPR / Entrepreneur ship', 'Other Major Industry Specific Achievements'),
(117, 'Innovation / IPR / Entrepreneur ship', 'User / Industry Implementing the Innovation developed by Student'),
(118, 'Innovation / IPR / Entrepreneur ship', 'Significant Value Addition / Augmentation of Grass roots / Social Innovation'),
(119, 'Leadership / Management', 'Hobby Club Activities / E-Cell / Placement Cell / Media Club, etc'),
(120, 'Leadership / Management', 'Festival (Technical / Business / Others) Events'),
(121, 'Leadership / Management', 'Professional Societies (E.g. ASME / ACM / IEEE / SAE, etc.)'),
(122, 'Leadership / Management', 'Special Initiatives'),
(123, 'Leadership / Management', 'GTU Innovation Club / S4 Extension Centre'),
(124, 'Leadership / Management', 'GIC Associates');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `certi_id` int(10) NOT NULL,
  `certi_name` varchar(50) NOT NULL,
  `certi_path` varchar(100) NOT NULL,
  `x_coordinates` int(10) NOT NULL,
  `y_coordinates` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`certi_id`, `certi_name`, `certi_path`, `x_coordinates`, `y_coordinates`) VALUES
(2, 'Sport', 'Sport.jpg', 785, 725),
(3, 'Culture', 'Culture.jpg', 785, 725),
(4, 'Panache', 'Panache.jpg', 785, 725);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` varchar(50) NOT NULL,
  `class_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
('107', 'IT_class'),
('108', 'CE_class');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaint_id` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `err_id` varchar(50) DEFAULT NULL,
  `cat_no` varchar(10) NOT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '127.0.0.1',
  `complaint_type` varchar(20) NOT NULL,
  `complaint_desc` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `cat_type` int(4) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaint_id`, `user_id`, `err_id`, `cat_no`, `ip`, `complaint_type`, `complaint_desc`, `date`, `time`, `cat_type`, `status`) VALUES
('2302204227', '161260107042', '', '108', '127.0.0.1', 'ClsEleP', 'AC is not working properly', '2022-03-23', '20:42:27', 1, 1),
('2302211651', '161260107042', '', '108', '127.0.0.1', 'ClsEnP', 'Black/White Board is broken', '2022-04-23', '21:16:51', 1, 0),
('2402122447', '161260107042', '', 'LIB1', '127.0.0.1', 'LibEleP', 'Fan is not functioning', '2022-04-24', '12:24:47', 2, 0),
('2402122825', '151260105045', '', '108', '127.0.0.1', 'ClsEnP', 'Black/White Board is broken', '2022-05-24', '12:28:25', 1, 0),
('2402122909', '161260107042', 'c-32', '13', '127.0.0.1', 'hardware', 'computer turns on, but still does not work.', '2022-06-24', '12:29:09', 0, 2),
('2402122944', '161260107043', '', 'LIB1', '127.0.0.1', 'LibEnP', 'Seating Arrangement is not good', '2022-07-24', '12:29:44', 2, 2),
('2402123016', '171260105052', '75', '11', '127.0.0.1', 'hardware', 'keyboard is not working', '2022-08-24', '12:30:16', 0, 1),
('2402123042', '171260107113', '', '108', '127.0.0.1', 'ClsEleP', 'Fan is not working properly', '2022-09-24', '12:30:42', 1, 1),
('2402123112', '181260107024', '', 'LIB1', '127.0.0.1', 'LibEleP', 'Lights is not functioning', '2022-12-24', '12:31:12', 2, 2),
('2402123135', '181260107032', '', '108', '127.0.0.1', 'ClsEleP', 'Fan is not working properly', '2022-10-24', '12:31:35', 1, 0),
('2402123200', '181260107048', '', 'LIB1', '127.0.0.1', 'LibEleP', 'Fan is not functioning', '2021-11-24', '12:32:00', 2, 1),
('2402123248', '181260107064', '543', '11', '127.0.0.1', 'hardware', 'computer has insufficient memory.', '2021-01-24', '12:32:48', 0, 0),
('2402123319', '181260107065', '', 'LIB2', '127.0.0.1', 'LibEnP', 'Seating Arrangement is not good', '2023-02-21', '12:33:19', 2, 0),
('2402123353', '181260107080', '', '108', '127.0.0.1', 'ClsEleP', 'Fan is not working properly', '2023-02-24', '12:33:53', 1, 2),
('2402123414', '181260107080', '23', '13', '127.0.0.1', 'software', 'Some software are not available or working', '2020-02-18', '12:34:14', 0, 2),
('2402123423', '181260107080', '', 'LIB2', '127.0.0.1', 'LibEleP', 'Lights is not functioning', '2020-02-10', '12:34:23', 2, 0),
('2402123514', '191260105001', '545', '11', '127.0.0.1', 'other', 'plug is not working\r\n', '2020-02-01', '12:35:14', 0, 0),
('2402123526', '191260105001', '', '108', '127.0.0.1', 'ClsEnP', 'Black/White Board is broken', '2020-02-20', '12:35:26', 1, 1),
('2402123548', '191260105001', '', 'LIB2', '127.0.0.1', 'LibEleP', 'Fan is not functioning', '2020-02-11', '12:35:48', 2, 1),
('2402123919', '191260105002', '123', '13', '127.0.0.1', 'hardware', 'computer turns on, but still does not work.', '2020-02-11', '12:39:19', 0, 0),
('2402123927', '191260105002', '', '108', '127.0.0.1', 'ClsEleP', 'AC is not working properly', '2020-01-20', '12:39:27', 1, 0),
('2402123935', '191260105002', '', 'LIB2', '127.0.0.1', 'LibEleP', 'Fan is not functioning', '2019-01-20', '12:39:35', 2, 1),
('2402124006', '191260105005', 'w34', '13', '127.0.0.1', 'software', 'Too many virus', '2020-01-11', '12:40:06', 0, 2),
('2402124018', '191260105005', '', '107', '127.0.0.1', 'ClsEleP', 'Fan is not working properly', '2019-02-11', '12:40:18', 1, 0),
('2402124027', '191260105005', '', 'LIB2', '127.0.0.1', 'LibEleP', 'Fan is not functioning', '2023-02-09', '12:40:27', 2, 0),
('2402124057', '191260105006', '45', '13', '127.0.0.1', 'software', 'get the blue screen of death.', '2023-02-06', '12:40:57', 0, 0),
('2402124106', '191260105006', '', '107', '127.0.0.1', 'ClsEleP', 'AC is not working properly', '2023-01-03', '12:41:06', 1, 2),
('2402124114', '191260105006', '', 'LIB1', '127.0.0.1', 'LibEleP', 'Lights is not functioning', '2023-02-24', '12:41:14', 2, 2),
('2402124215', '191260105008', '2', '13', '127.0.0.1', 'software', 'Some software are not available or working', '2023-01-17', '12:42:15', 0, 0),
('2402124235', '191260105008', '', '108', '127.0.0.1', 'ClsEnP', 'Banches are broken', '2023-02-24', '12:42:35', 1, 1),
('2402124249', '191260105008', '', 'LIB1', '127.0.0.1', 'LibEnP', 'Seating Arrangement is not good', '2021-01-28', '12:42:49', 2, 1),
('2702115429', '161260107042', '1', '11', '192.168.71.68', 'hardware', 'computer will not turn on.', '2023-02-27', '11:54:29', 0, 0),
('2702115435', '161260107042', '', 'LIB1', '192.168.71.68', 'LibEleP', 'Fan is not functioning', '2023-02-27', '11:54:35', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `documets_process`
--

CREATE TABLE `documets_process` (
  `dp_id` int(20) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `clg_id` int(15) NOT NULL DEFAULT '1',
  `doc_id` varchar(15) NOT NULL,
  `doc_name` varchar(50) NOT NULL,
  `department_id` varchar(20) NOT NULL,
  `Student_department_status` int(2) NOT NULL DEFAULT '0',
  `faculty_id` varchar(20) DEFAULT NULL,
  `faculty_status` int(2) DEFAULT '0',
  `admin_id` varchar(20) NOT NULL,
  `admin_status` int(2) DEFAULT '0',
  `doc_desc` varchar(5000) DEFAULT NULL,
  `doc_path` varchar(50) DEFAULT NULL,
  `print_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documets_process`
--

INSERT INTO `documets_process` (`dp_id`, `student_name`, `student_id`, `clg_id`, `doc_id`, `doc_name`, `department_id`, `Student_department_status`, `faculty_id`, `faculty_status`, `admin_id`, `admin_status`, `doc_desc`, `doc_path`, `print_type`) VALUES
(69, 'PATEL SHIVKUMAR RAJNIKANT', '201260116513', 1, 'b1', 'Bonafide', 'depart1', 1, NULL, NULL, 'Admin', 1, '', '../backend/documents/190423074802.pdf', 'SOFT'),
(70, 'PATEL SHIVKUMAR RAJNIKANT', '201260116513', 1, 'cc1', 'Conduct Certificate', 'depart1', 2, NULL, NULL, 'Admin', 0, '', NULL, 'SOFT'),
(71, 'PATEL SHIVKUMAR RAJNIKANT', '201260116513', 1, 'clc1', 'Clg Leaving Certificate', 'depart1', 0, NULL, NULL, 'Admin', 0, '', NULL, 'SOFT'),
(72, 'PATEL SHIVKUMAR RAJNIKANT', '201260116513', 1, 'lor1', 'LOR', 'depart1', 1, 'faculty1', 1, 'Admin', 0, 'It gives me immense delight to write a letter of recommendation for my student, PATEL RIDDHI KIRTIBHAI, as she is apt to be a part of your university and study in a graduate programme. Riddhi was enthusiastic and curious to learn, explore and grasp everything about networking. An eager and keen student in getting anything new in his field, she has regularly kept himself updated about the latest developments. The perseverant hard worker Riddhi is she performed exceptionally well in the classes and the practical labs. She has been consistent in academics, retaining his position among a few of the most hardworking and diligent students with keen knowledge about all his classes and labs throughout his undergraduate degree. I have seen a glad urge in him to understand engineering concepts beyond the theoretical purview, reflecting his research potential. Riddhi is an independent thinker who seeks to learn more. Riddhi has shown great promise by venturing beyond the limits of the course curriculum. He keeps himself updated with the latest industry developments and reviews various technical literature, as evident from the technical discussions and interviews I have had with him. she is one of my students who believe in performing to the best of his ability. Riddhi will work very hard toward the fulfillment of the responsibility that is designated to him. His zest to constantly be on the path of learning and his time-management abilities will surely take him a long way. I strongly recommend him for his graduate studies admission at your university after she completes his bachelor of engineering.', NULL, 'SOFT'),
(73, 'PATEL SHIVKUMAR RAJNIKANT', '201260116513', 1, 'moi1', 'MOI', 'depart1', 0, NULL, NULL, 'Admin', 0, '', NULL, 'SOFT'),
(74, 'PATEL SHIVKUMAR RAJNIKANT', '201260116513', 1, 'lor1', 'LOR', 'depart1', 0, 'faculty1', 0, 'Admin', 0, 'LOR', NULL, 'SOFT'),
(75, 'PATEL SHIVKUMAR RAJNIKANT', '201260116513', 1, 'b1', 'Bonafide', 'depart1', 1, NULL, NULL, 'Admin', 0, '', NULL, 'HARD'),
(76, 'PATEL RIDDHI KIRTIBHAI', '161260107043', 1, 'b1', 'Bonafide', 'depart1', 1, NULL, NULL, 'Admin', 1, '', '../backend/documents/040523095118.pdf', 'HARD');

-- --------------------------------------------------------

--
-- Table structure for table `doc_types`
--

CREATE TABLE `doc_types` (
  `doc_id` varchar(20) NOT NULL,
  `doc_name` varchar(50) NOT NULL,
  `doc_desc_status` int(1) NOT NULL,
  `doc_faculty_status` int(2) NOT NULL,
  `format_path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doc_types`
--

INSERT INTO `doc_types` (`doc_id`, `doc_name`, `doc_desc_status`, `doc_faculty_status`, `format_path`) VALUES
('b1', 'Bonafide', 1, 1, '../backend/pdfFormates/Bonafide.php'),
('cc1', 'Conduct Certificate', 1, 1, '../backend/pdfFormates/ConductCertificate.php'),
('clc1', 'Clg Leaving Certificate', 1, 1, '../backend/pdfFormates/CollegeLeavingCertificate.php'),
('lor1', 'LOR', 0, 0, '../backend/pdfFormates/LOR.php'),
('moi1', 'MOI', 1, 1, '../backend/pdfFormates/MOI.php');

-- --------------------------------------------------------

--
-- Table structure for table `event_certi`
--

CREATE TABLE `event_certi` (
  `encerti_id` int(10) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `certi_name` varchar(20) NOT NULL,
  `encerti_path` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_certi`
--

INSERT INTO `event_certi` (`encerti_id`, `student_id`, `student_name`, `certi_name`, `encerti_path`) VALUES
(4, '161260107043', 'PATEL RIDDHI KIRTIBHAI', 'Panache', 'CERITFICATE201260116513PATELRIDDHIKIRTIBHAI022416.jpg'),
(6, '161260107042', 'PATEL RAJ BHUPENDRAKUMAR', 'Culture', 'CERITFICATE201260116513PATELRAJBHUPENDRAKUMAR103940.jpg'),
(7, '171260105052', 'VORA HARSHAL ASHVINBHAI', 'Culture', 'CERITFICATE201260116513VORAHARSHALASHVINBHAI105424.jpg'),
(8, '181260107024', 'KANUDAWALA DIVYANG PARESHBHAI', 'Culture', 'CERITFICATE201260116513KANUDAWALADIVYANGPARESHBHAI105424.jpg'),
(9, '181260107032', 'MEHTA MIHIR DHARMESHBHAI', 'Culture', 'CERITFICATE201260116513MEHTAMIHIRDHARMESHBHAI105425.jpg'),
(10, '171260105052', 'VORA HARSHAL ASHVINBHAI', 'Culture', 'CERITFICATEVORAHARSHALASHVINBHAI102433.jpg'),
(11, '181260107024', 'KANUDAWALA DIVYANG PARESHBHAI', 'Culture', 'CERITFICATEKANUDAWALADIVYANGPARESHBHAI102434.jpg'),
(12, '181260107032', 'MEHTA MIHIR DHARMESHBHAI', 'Culture', 'CERITFICATEMEHTAMIHIRDHARMESHBHAI102434.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `FooterStamp`
--

CREATE TABLE `FooterStamp` (
  `fs_id` int(11) NOT NULL,
  `userId` varchar(20) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userPosition` varchar(50) NOT NULL,
  `userClgId` varchar(20) NOT NULL,
  `userClg` varchar(50) NOT NULL,
  `userMail` varchar(50) NOT NULL,
  `userNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FooterStamp`
--

INSERT INTO `FooterStamp` (`fs_id`, `userId`, `userName`, `userPosition`, `userClgId`, `userClg`, `userMail`, `userNumber`) VALUES
(9, 'Admin', 'Dr. Ajay Upadhyaya', 'In Charge Principal', '1', 'SAL Engineering & Technical Institute', 'ajay.upadhyaya@sal.edu.in', '‭‭+91 99097 15620‬‬'),
(10, 'faculty1', 'Piyush Patel', 'Prof', '1', 'SAL Engineering & Technical Institute', 'piyush.patel@sal.edu.in', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `Lab_id` varchar(150) NOT NULL,
  `Lab_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`Lab_id`, `Lab_name`) VALUES
('11', 'All'),
('13', 'All ');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `lib_id` varchar(50) NOT NULL,
  `lib_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`lib_id`, `lib_name`) VALUES
('LIB1', 'SETI_Library'),
('LIB2', 'SCE_Library');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `notice_id` int(20) NOT NULL,
  `notice_heading` varchar(100) NOT NULL,
  `notice_desc` varchar(1000) NOT NULL,
  `notice_document` varchar(100) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `faculty_name` varchar(100) NOT NULL,
  `regi_date` date NOT NULL,
  `regi_time` time NOT NULL,
  `exp_date` date NOT NULL,
  `status` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`notice_id`, `notice_heading`, `notice_desc`, `notice_document`, `faculty_id`, `faculty_name`, `regi_date`, `regi_time`, `exp_date`, `status`) VALUES
(8, 'Mid Result ', 'Mid result for sem 6', '010423080458.pdf', 'faculty1', 'Piyush Patel', '2023-04-01', '08:04:58', '2023-04-08', 0),
(10, 'Student Portal', 'CampusConnect is now available of everyone', '060423110451.pdf', 'Admin', 'Dr. Ajay Upadhyaya-SETI', '2023-04-06', '11:04:51', '2023-04-30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `branch_id` varchar(50) NOT NULL DEFAULT 'Information Technology',
  `mobile_number` varchar(20) NOT NULL,
  `profile` varchar(50) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `clg_id` varchar(15) NOT NULL,
  `clg_name` varchar(50) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `password`, `name`, `father_name`, `branch_id`, `mobile_number`, `profile`, `role`, `email`, `clg_id`, `clg_name`, `user_status`) VALUES
('151260105045', '151260105045', 'PATHAN AAQIB HAFIJURRAHEMAN', NULL, 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('161260107042', '161260107042', 'PATEL RAJ BHUPENDRAKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('161260107043', '161260107043', 'PATEL RIDDHI KIRTIBHAI', 'KIRTIBHAI', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('171260105052', '171260105052', 'VORA HARSHAL ASHVINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('171260107113', '171260107113', 'BHAGAT TUSHAR .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 1),
('181260107024', '181260107024', 'KANUDAWALA DIVYANG PARESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('181260107032', '181260107032', 'MEHTA MIHIR DHARMESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('181260107048', '181260107048', 'PATEL DEVKUMAR MAHESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('181260107064', '181260107064', 'PATEL NISARG JAYANTIBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('181260107065', '181260107065', 'PATEL PRATHAM RAKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('181260107080', '181260107080', 'PATHAN FARHANKHAN ANWARULHAQ', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('181260107083', '181260107083', 'RATHOD CHARMIL MANISHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105002', '191260105002', 'JIYANI  ANIKET', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105003', '191260105003', 'JOGI HARSH SATISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105005', '191260105005', 'NAVI SHAILESH AKNATH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105006', '191260105006', 'PANCHAL  MANSI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105008', '191260105008', 'PATEL  KAVANKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105009', '191260105009', 'PATEL RAJ JAYESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105010', '191260105010', 'PATEL SHREY PRAKASHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105012', '191260105012', 'PATEL  UTTPAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105013', '191260105013', 'PRAJAPATI  ANKIT', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105014', '191260105014', 'PRASAD RAJ KUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105016', '191260105016', 'RIBADIYA HITESH HARSUKHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105017', '191260105017', 'RIWAL DHANIXA RAJU', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105018', '191260105018', 'SAVALIYA NEVIL JAYESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260105019', '191260105019', 'SHRIVASTAVA RUCHI ANUP', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260106001', '191260106001', 'CHAUDHARY SURESHKUMAR VAGTAJI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260106002', '191260106002', 'MODI RIDDHI HITESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260106003', '191260106003', 'PATEL  JAIMINKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107001', '191260107001', 'ADESHARA VAIBHAV JITENDRAKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107002', '191260107002', 'ADIDRAVID RAHUL MUTHUSWAMY', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107003', '191260107003', ' AGRAWAL JAY', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107004', '191260107004', 'BABARIYA JAIMIN RASIKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107006', '191260107006', 'BAJORIA PUNEET AJAYKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107007', '191260107007', 'BHATT KANDARP HITESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107008', '191260107008', 'BHATT SAMARTH PRADIPBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107009', '191260107009', 'BUKHARI AAZIL MOHAMMED', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107010', '191260107010', 'CHAMPANERIYA DARSH NILESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107011', '191260107011', 'CHAUDHARI UNNATI GANESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107012', '191260107012', 'CHAUHAN RAJPALSINH PRAVINSINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107013', '191260107013', 'CHAVDA SUNIL JAGDISHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107014', '191260107014', 'CHOUDHARY DIVESH LALARAM', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107015', '191260107015', 'CHOVATIYA JINKAL KISHORBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107016', '191260107016', 'CHRISTIAN MAX EDWIN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107019', '191260107019', 'DHOLARIYA VATSAL BHUPATBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107020', '191260107020', 'PATEL DHWANI BIPINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107021', '191260107021', 'DUBEY DAKSH VIJAY', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107022', '191260107022', 'DUBEY SAGAR .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107023', '191260107023', 'DUTTA SOUMYAJIT MEGHNATH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107024', '191260107024', 'GABANI ABHI DIPAKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107025', '191260107025', 'GAJIPARA HARSHIT SANJAYKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107026', '191260107026', 'GOSWAMI KATHAN BHARGAVBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107028', '191260107028', 'JAGANI  DHARMIK', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107029', '191260107029', 'JAIN SAUMYA RAJESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107030', '191260107030', 'JAISWAL SOMINDRA JAYPRAKASH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107031', '191260107031', 'JANI KHYATI ATULBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107033', '191260107033', 'JOSHI DEEP', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107034', '191260107034', 'JOSHI PRACHI MAHENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107035', '191260107035', 'KANJHARIYA PARTHKUMAR ASHVINKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107036', '191260107036', 'KAPOPARA SHUBHAM ATULBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107037', '191260107037', 'KASHYAP SIMRAN .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107038', '191260107038', 'KHANT DEVANG RANJITSINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107039', '191260107039', 'LUNAGARIYA JAY PRAMODBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107040', '191260107040', 'MANGUKIYA RUTVIK ASHOKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107041', '191260107041', 'MANSURI MOHAMMD ZAID', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107043', '191260107043', 'MER BIREN MANOJ', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107044', '191260107044', 'PADHIYAR BRIJESH HIRENBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107045', '191260107045', 'PANCHAL YASH MUKESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107047', '191260107047', 'PATEL AASHVI ALPESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107048', '191260107048', 'PATEL ABHI PANKAJBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107050', '191260107050', 'PATEL DHRUV ARVINDBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107051', '191260107051', 'PATEL DHRUV GIRISHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107052', '191260107052', 'PATEL DHVANI NARENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107055', '191260107055', 'PATEL HAPPY ANILKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107056', '191260107056', 'PATEL  HAPPY', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107057', '191260107057', 'PATEL HENIL NAILESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107059', '191260107059', 'PATEL HIMANI JITENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107060', '191260107060', 'PATEL JANVI JAGDISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107061', '191260107061', 'PATEL JAY HITESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107062', '191260107062', 'PATEL JINAL VIJAYKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107063', '191260107063', 'PATEL KANVI SHAILESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107064', '191260107064', 'PATEL KAUSHAL RAJNIKANT', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107065', '191260107065', 'PATEL KRUSHNA CHANDRESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107067', '191260107067', 'PATEL MALAV KETANKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107068', '191260107068', 'PATEL MIT NILESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107069', '191260107069', 'PATEL PARTH MAHESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107070', '191260107070', 'PATEL PARTH MANISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107071', '191260107071', 'PATEL PRINCE GHANSHYAMKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107072', '191260107072', 'PATEL PRINCEKUMAR YOGESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107073', '191260107073', 'PATEL PRIT HARESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107074', '191260107074', 'PATEL PUNIT ALPESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107075', '191260107075', 'PATEL RAJ SHAILESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107077', '191260107077', 'PATEL ROHANKUMAR DIPAKKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107078', '191260107078', 'PATEL RUSHIT', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107079', '191260107079', 'PATEL RUTUL SIRINKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107080', '191260107080', 'PATEL RUTVIBEN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107083', '191260107083', 'PATEL SAHIL RAJESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107084', '191260107084', 'PATEL SHREY JATIN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107085', '191260107085', 'PATEL  SHREY', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107087', '191260107087', 'PATEL SMIT ASHOKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107088', '191260107088', 'PATEL SMIT RAJESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107090', '191260107090', 'PATEL VRAJ SHAILESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107092', '191260107092', 'POKIYA PANTHIL GORDHANBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107093', '191260107093', 'PRAJAPATI YASH NATVARBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107094', '191260107094', 'QURESHI MOHAMED AMMAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107095', '191260107095', 'RAVAL DHRUVI ARUNKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107096', '191260107096', 'ROKAD AKSHIT BHARATBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107097', '191260107097', 'SATWARA TEERTH VIPULKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107098', '191260107098', 'SAVALIAYA SHREYA VASANTBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107100', '191260107100', 'SHAH  MAHEK', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107102', '191260107102', 'SOJITRA KEYUR ARVINDBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107103', '191260107103', 'SOMANI MITA RAKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107105', '191260107105', 'SUMAN RAHUL RAMKRISHNA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107107', '191260107107', 'TILALA YASH HARESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107108', '191260107108', 'TRIVEDI CHANDRESHKUMAR ANUPBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107110', '191260107110', 'VAGHASIYA MITKUMAR JAGADISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107111', '191260107111', 'VAGHELA SHAKTISINH DHARMENDRASINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107112', '191260107112', 'TOSHNIWAL VAIBHAV VINAY', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107113', '191260107113', 'VAISHNAV DIVYA JITENDRA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107114', '191260107114', 'VARMORA JAYKUMAR RAJNIKANTBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107115', '191260107115', 'VARMORA SAGARKUMAR VINODBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260107116', '191260107116', 'VARSHNEY RISHABH PANKAJ', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116001', '191260116001', 'ANSARI ASHFAK HUSSAIN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116002', '191260116002', 'BARIA LEVIN SANTOSHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116003', '191260116003', 'CHAUHAN ABHISHEK RAMKUNVAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116004', '191260116004', 'DESAI JIGAR ANILBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116006', '191260116006', 'DHOLAKIYA DARSHIT NARESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116007', '191260116007', 'DHOLARIYA DHRUVIL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116009', '191260116009', 'GOHEL SNEHAL KALPESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116010', '191260116010', 'GOSAI RISHABHPURI KRUSHNAPURI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116011', '191260116011', 'GOYANI MANTHANKUMAR ARVINDBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116012', '191260116012', 'JOGI KRUNAL JITENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116013', '191260116013', 'JOSHI NACHIKET PARSHOTTAMBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116014', '191260116014', 'KHANDALA KAUSHIK HARESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116015', '191260116015', 'KHIMNANI HARSH SURESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116016', '191260116016', 'KOLADIYA SAGAR JITUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116017', '191260116017', 'KOSHTI HIMANSHU JASWANT', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116019', '191260116019', 'MADHANI JAINAM NIMESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116020', '191260116020', 'MECWAN APURVKUMAR RAMANBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116021', '191260116021', 'MEHTA ANUSHREE', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116022', '191260116022', 'MISTRY HARSHIL DINESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116023', '191260116023', 'MISTRY KAVAN ATULKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116024', '191260116024', 'NAKRANI JANKIBEN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116025', '191260116025', 'PANCHAL HET DEVENDRAKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116026', '191260116026', 'PAREKH SHAILESHKUMAR KISHORBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116027', '191260116027', 'PATEL AKASHKUMAR PANKAJBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116028', '191260116028', 'PATEL ARPITKUMAR PRAVINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116029', '191260116029', 'PATEL AYUSHKUMAR JIGNESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116030', '191260116030', 'PATEL DHARMITKUMAR SURESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116032', '191260116032', 'PATEL JAY VIRENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116034', '191260116034', 'PATEL KHUSHIL NARENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116035', '191260116035', 'PATEL NIDHI ROHITBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116036', '191260116036', 'PATEL POOJAN VIPULBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116037', '191260116037', 'PATEL  RUTVI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116039', '191260116039', 'PATEL SAMAY KALPESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116042', '191260116042', 'PATEL SMIT GIRISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116044', '191260116044', 'PATEL TIRTH UMESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116045', '191260116045', 'PATHAN AZAMKHAN MAZHARKHAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116046', '191260116046', 'PRAJAPATI HARSH JAYESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116047', '191260116047', 'PRAJAPATI VIREN ALPESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116048', '191260116048', 'PUTHAWALA ANAS AMJAD', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116050', '191260116050', 'SATASIYA SWITYBEN GOPALBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116051', '191260116051', 'SAVALIYA PRIYALBEN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116052', '191260116052', 'SHAH AASHAYKUMAR MITESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116054', '191260116054', 'SHAH AGAM SANDIP', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116055', '191260116055', 'SHAIKH AMIRUL ANARUL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116056', '191260116056', 'SHARMA PARTH RAJESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116057', '191260116057', 'SHINGALA SHREYAS BAKULBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116058', '191260116058', 'SIDDHPURA KHUSHBU RAJANIBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116059', '191260116059', 'SONI DHRUMIL HITESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116060', '191260116060', 'SUTARIYA KUNJ SHAILESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116061', '191260116061', 'SUTHAR LALIT VISARAM', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116062', '191260116062', 'TANTI KAUSHIK DINESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116063', '191260116063', 'VADDORIYA PRIYANSHI JAYSUKHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116064', '191260116064', 'VEKARIYA PUNAMKUMAR DALSUKHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191260116065', '191260116065', 'ZINZUWADIA YATHARTH PIYUSHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('191263106004', '191263106004', 'PATEL BIMAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260105501', '201260105501', 'PATEL DARSHAN SURESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260105502', '201260105502', 'BHANDERI BHAUTIK SURESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260105503', '201260105503', 'BHALODIYA RUTVIK BECHARBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260105504', '201260105504', 'SANGANI AKSHIT KAMLESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260105505', '201260105505', 'PATEL RAJ', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260106501', '201260106501', 'SOLANKI DHAVAL RAKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260106502', '201260106502', 'DHAKAN VIVAN NITIN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260106503', '201260106503', 'VAGHELA DIPESH MANOJKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107001', '201260107001', 'VAGHELA HARSHRAJSINH .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107002', '201260107002', 'CHAUHAN YASH .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107003', '201260107003', 'RANA KRUNAL NIKHILKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107004', '201260107004', 'PATEL ABHI JAGDISHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107005', '201260107005', 'PATEL HITARTH BHARATKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107006', '201260107006', 'SAVALIYA KEVIN CHANDUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107007', '201260107007', 'CHAVDA UDITSINH RAJENDRASINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107008', '201260107008', 'JAKHESARA HIMANSHU SAVITA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107009', '201260107009', 'SHAH MAHIMA BHAVANTUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107010', '201260107010', 'BORAD NIHIT DILIPBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107011', '201260107011', 'PATEL PRINCE R', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107012', '201260107012', 'PATEL ANKIT VINAYBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107013', '201260107013', 'SHARMA JITENDRA PAWAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107014', '201260107014', 'KAGADA MEET', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107015', '201260107015', 'PAL ATULKUMAR SATYARAM', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107016', '201260107016', 'MISHRA TANISH RAVISHANKAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107017', '201260107017', 'PANDYA MADHAV RAJIVKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107018', '201260107018', 'PATEL ARYAN KAMLESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107019', '201260107019', 'JANI PIYUSH PRASHANTBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107021', '201260107021', 'VAGHASIA MAHARSHI PARSHOTAMBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107022', '201260107022', 'SHAH RUSHABH PANKAJKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107023', '201260107023', 'PATEL KHUSHI .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107024', '201260107024', 'CHAUDHARY SAHIL ASHOKKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107025', '201260107025', 'VEKARIYA SAHIL BATUKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107026', '201260107026', 'DOSHI DIVY RAKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107027', '201260107027', 'KAPADIYA DEV MANHARKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107028', '201260107028', 'MAKWANA DIPAM .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107029', '201260107029', 'CHAUDHARY MASUM JAYANTIBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107030', '201260107030', 'SHUKLA BHARGAV', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107031', '201260107031', 'PATEL RAJ HIRINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107032', '201260107032', 'THUMMAR RAJ', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107033', '201260107033', 'PATEL SMIT RAKESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107034', '201260107034', 'KAPADIYA HET MUKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107035', '201260107035', 'GUPTA MIHIR PRADEEPKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107036', '201260107036', 'KALARIYA HITEKSHA PRAVINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107037', '201260107037', 'PATEL HETANSHU HEMANTKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107038', '201260107038', 'PATEL ARYAN PANKAJKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107039', '201260107039', 'RAVAL HARSHANGBHAI KALPESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107040', '201260107040', 'BAJPAI ARYAN KRISHAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107041', '201260107041', 'HIRAPARA ADIT PRAVANIBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107042', '201260107042', 'SHAH DHRUVITKUMAR INDRAVADAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107043', '201260107043', 'MODI PARTH VIMALKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107044', '201260107044', 'PATEL PRITU ASHVINKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107045', '201260107045', 'THAKKAR JAANKI JIGARKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107046', '201260107046', 'PATEL DEVARSH TARUN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107047', '201260107047', 'RAVAL SAURAV BIPINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107048', '201260107048', 'PATEL KHUSHI RAJKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107049', '201260107049', 'RATHOD SANJANA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107050', '201260107050', 'TIWARI SHUBHANG SHARAD', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107051', '201260107051', 'SONI KABIR JAYKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107052', '201260107052', 'BHAVSAR ISHAN DHARMENDRAKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107053', '201260107053', 'JOSHI KRISHNA ALKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107054', '201260107054', 'BRAHMBHATT PRATHAM KALPESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107055', '201260107055', 'MATHE AAYUSH .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107056', '201260107056', 'SHETH FREYA HITESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107057', '201260107057', 'SOJITRA BINALBEN PANKAJBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107058', '201260107058', 'VADDORIYA NENSI RAMESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107059', '201260107059', 'THUMMAR YUVRAJ BHARATBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107060', '201260107060', 'KORAPANA DIPAKKUMAR VINODBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107061', '201260107061', 'KACHHADIYA PRIYESH NARESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107062', '201260107062', 'RATHOD DEVARSH KRUSHNAKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107063', '201260107063', 'PATEL MONIL JATIN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107064', '201260107064', 'RAVAL GAURAV ASHOKKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107065', '201260107065', 'PATEL JENIL KIRTIKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107066', '201260107066', 'KANSAGRA ANSH NARESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107067', '201260107067', 'PATEL JEEL HASMUKHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107068', '201260107068', 'AGRAWAL NISHU OMPRAKASH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107072', '201260107072', 'BORSE DEVESH PRAKASH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107073', '201260107073', 'PATEL HARSHKUMAR HITESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107074', '201260107074', 'PATEL PARTH RAVINDRAKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107075', '201260107075', 'ZALA INDRAJEETSINH JAYENDRASINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107076', '201260107076', 'PATEL DVIP .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107077', '201260107077', 'PRAJAPATI JAIMIN VISHNUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107078', '201260107078', 'PATEL VRAJESH .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107501', '201260107501', 'KANANI SUHANI .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107502', '201260107502', 'PANCHAL PURVESH DARSHAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107503', '201260107503', 'DAVE PARTHKUMAR SHARADBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107504', '201260107504', 'SATHWARA DAXKUMAR .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107505', '201260107505', 'MARU DIVYA .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107506', '201260107506', 'MANDAVIYA JIGAR RAJESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107507', '201260107507', 'BHOHARIYA KAMIL .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107508', '201260107508', 'PATHAK DARSHAN HITESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107509', '201260107509', 'NATHANI NANCY BHARATBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107510', '201260107510', 'RAMANI AKASH .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107511', '201260107511', 'PATEL DHVANI NILESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107512', '201260107512', 'VADHER NIDHI AJAYKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107513', '201260107513', 'PATEL NINAD SANJAYBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107514', '201260107514', 'PATEL AYUSHI .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107516', '201260107516', 'VADIWALA PARTH SHETALBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107517', '201260107517', 'SALVI KARINA VIMALBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107518', '201260107518', 'VORA SANKALP DARSHAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107519', '201260107519', 'DOSHI SUTIRTH KALPESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107520', '201260107520', 'PANCHAL KABIR .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107521', '201260107521', 'SAKHIYA MANSHI PARESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107522', '201260107522', 'PANSURIYA KEVIL PRAKASHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0);
INSERT INTO `user` (`user_id`, `password`, `name`, `father_name`, `branch_id`, `mobile_number`, `profile`, `role`, `email`, `clg_id`, `clg_name`, `user_status`) VALUES
('201260107523', '201260107523', 'PATEL PARV VISHNUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107524', '201260107524', 'PATEL MEET .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107525', '201260107525', 'MODI  MEET', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107526', '201260107526', 'JAYSWAL RUTURAJ M', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107527', '201260107527', 'HARSH JOSHI .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107528', '201260107528', 'PATEL MALIKA MINESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107529', '201260107529', 'PATEL ARZOO KAMLESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107530', '201260107530', 'PUROHIT AKSHITA RAKESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107532', '201260107532', 'THAKKAR ABHISHEK .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107533', '201260107533', 'JANI OM DHAVAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107534', '201260107534', 'PATEL DHARMIK HEMAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107535', '201260107535', 'BAGBAN AADIL KHAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107536', '201260107536', 'PATEL RAJ KETAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107537', '201260107537', 'NEELGAR NAMRATA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107538', '201260107538', 'CHANDARIA KARAN PRAFULBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107539', '201260107539', 'KHETARIYA DIPALI KANJIBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107541', '201260107541', 'RAJ NISARG D.', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107542', '201260107542', 'PANCHAL RUDRA .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107543', '201260107543', 'SIRODARIYA ANISHA .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107544', '201260107544', 'RAYTHATHA HET DEVENDRA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107546', '201260107546', 'KOTHEKAR AKSHEN RAJENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107547', '201260107547', 'PRAJAPATI DEVANSHU BALDEVBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107548', '201260107548', 'SOLANKI YASH .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260107549', '201260107549', 'PARMAR TIRTHRAJSINH VIKRAMSINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116001', '201260116001', 'VEKARIYA NILESH MANSUKHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116002', '201260116002', 'THAKKAR DHRUV', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116003', '201260116003', 'MISHRA NAITIK ALKESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116004', '201260116004', 'PATEL TIRTH MAHESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116005', '201260116005', 'DAVE DEV', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116006', '201260116006', 'PATEL DIVYESH BRIJESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116007', '201260116007', 'PATEL KHUSHI .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116008', '201260116008', 'SHAH DEEP RAJESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116010', '201260116010', '. MOHAMMAD ZAKI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116011', '201260116011', 'GOHIL VISHVA ASHOKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116012', '201260116012', 'PATEL DARSHIL .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116013', '201260116013', 'GOSWAMI HRIDAY PUSHPGIRI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116014', '201260116014', 'PATEL YASHKUMAR MAHENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116015', '201260116015', 'SHELADIYA HARSHKUMAR VINODRAY', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116016', '201260116016', 'BORSE DHYEY NAYANKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116017', '201260116017', 'PATEL SAKSHI .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116018', '201260116018', 'JADAV GAURANG .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116019', '201260116019', 'ASODARIYA MEET', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116020', '201260116020', 'NAKRANI DARSHANA MUKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116021', '201260116021', 'DODIYA RAJVI GOPALBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116022', '201260116022', 'PATEL JAINIL NARAYANBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116023', '201260116023', 'PATEL SACHINKUMAR SURESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116024', '201260116024', 'PANCHAL KUSHAL MUKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116025', '201260116025', 'PATEL PRERNA AMITKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116026', '201260116026', 'SHAH VISHWAM', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116027', '201260116027', 'BHORANIYA DEVENDRA RASIKLAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116028', '201260116028', 'DHANANI MEETKUMAR BAKULBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116029', '201260116029', 'ITALIYA SAVAN GOVINDBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116030', '201260116030', 'BHARWAD JAY BACHUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116031', '201260116031', 'PATEL HARSHIL RAKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116032', '201260116032', 'PANCHAL RUSHIL RAKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116033', '201260116033', 'SUHAGIYA OM DIPAKKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116034', '201260116034', 'PARMAR YOGI MAHESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116035', '201260116035', 'JADEJA KULDEEPSINH KIRITSINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116036', '201260116036', 'KALSARIYA PARTH ANANDBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116037', '201260116037', 'MISTRY DARSHIT ASHOKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116038', '201260116038', 'PATEL VIVEK MUKESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116039', '201260116039', 'PRAJAPATI JAY SHAILESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116040', '201260116040', 'BALDANIYA JEET .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116041', '201260116041', 'BALDANIYA JAY BHAVESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116042', '201260116042', 'PATEL DEVANGKUMAR MAHESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116043', '201260116043', 'SORAMIYA YOGESH ASHWINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116044', '201260116044', 'PATEL JAY PANKAJBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116045', '201260116045', 'RAJPUT SHUBHAM JAGANNATH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116046', '201260116046', 'JADAV PINKAL MANSUKHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116047', '201260116047', 'RAKHOLIYA AKSHAY VINUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116048', '201260116048', 'THUMMAR SIDDHANT NITINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116049', '201260116049', 'PATEL ARYA VIPUL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116050', '201260116050', 'SHAH JAINAM NAINESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116051', '201260116051', 'MEHTA ANERI CHETANBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116052', '201260116052', 'DHARANI MILAN KESHUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116053', '201260116053', 'PATEL ADIL .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116055', '201260116055', 'VIRANI HONEYBEN .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116056', '201260116056', 'GOPALANI DEEP JAGDISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116057', '201260116057', 'DHOLAKIYA RAHUL HITESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116058', '201260116058', 'PATEL DEVANG RAJESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116059', '201260116059', 'DWIVEDI SHIVAM UMAKANT', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116501', '201260116501', 'PATEL RUSHALI DILIPKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116502', '201260116502', 'PATEL AYUSHI PRAKASHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116503', '201260116503', 'GAJJAR DHARTI .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116504', '201260116504', 'GANDHI HETVI SUJALKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116505', '201260116505', 'CHAMPAVAT NAMRATA Y.', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116506', '201260116506', 'JETHAVA GAURAV ASHVINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116507', '201260116507', 'DABHI SEJAL DEVENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116508', '201260116508', 'PRAJAPATI ROHIT PRAVINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116509', '201260116509', 'GAJJAR SAHIL HASMUKHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116510', '201260116510', 'SOLANKI DHARTIBEN BHARATBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116511', '201260116511', 'PATEL KHYATI RAMESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116512', '201260116512', 'PATEL JAVLAN JAYBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116513', '201260116513', 'PATEL SHIVKUMAR RAJNIKANT', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116514', '201260116514', 'PATEL URVI DINESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116515', '201260116515', 'PATEL HEET JAYESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116516', '201260116516', 'PATEL ANVI DINESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116517', '201260116517', 'HIRPARA ANIKET .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116518', '201260116518', 'MEWADA HITEN .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260116519', '201260116519', 'BAROT JAY KAMALBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260131001', '201260131001', 'MUKUL JAIN .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260131003', '201260131003', 'PATEL HARSH M.', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260131004', '201260131004', 'PATEL KAUSHALKUMAR BHUPENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260131005', '201260131005', 'KUMAWAT SAROJ SHANKARLAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260131006', '201260131006', 'RAVAL KUSH DILIPKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260131007', '201260131007', 'PATEL ASKABEN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260131009', '201260131009', 'PATEL RUDRAM SUSHRUTKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('201260131010', '201260131010', 'GOLAKIYA SARTHAK JAYESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107001', '211260107001', 'BALAR VISHVKUMAR ASHISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107002', '211260107002', 'GUPTA SARVAGYA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107003', '211260107003', 'RANA KARTVYA SANJAYKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107004', '211260107004', 'PATEL KRIT JITENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107005', '211260107005', 'DHADUK DIVYESH HASMUKHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107006', '211260107006', 'RAJPAL AAYUSH KEYURBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107007', '211260107007', 'PATEL MEET PARESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107008', '211260107008', 'MISTRY SMIT NARESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107009', '211260107009', 'PATEL ANSHU KETANKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107010', '211260107010', 'SAIYED MOHAMMADSADAB KHALIDAHMED', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107011', '211260107011', 'BUTANI ROMAN PARESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107012', '211260107012', 'TALSANIA MEGHA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107013', '211260107013', 'LADANI TIYA MANISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107014', '211260107014', 'SENGHANI HARSHIL DHANJI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107015', '211260107015', 'PRAJAPATI PRINCE RAKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107016', '211260107016', 'SUTHAR PRAKASHKUMAR RANCHHODLAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107017', '211260107017', 'PATEL LIZA JAYESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107018', '211260107018', 'PATEL SHREYAS RAMESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107019', '211260107019', 'THAKER KAVAN ASIM', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107020', '211260107020', 'PATEL PRATHAM JAYESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107021', '211260107021', ' KULDIP', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107022', '211260107022', 'SOLANKI HARSHIDA DAHYABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107023', '211260107023', 'PATEL ISHAN BHAVESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107024', '211260107024', 'GADHIYA VISHVKUMAR KIRITKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107025', '211260107025', 'JANI DHARMIK', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107026', '211260107026', 'PATADIA DEVANSHI TEJAS', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107027', '211260107027', 'PATEL JILKUMAR KAMLESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107028', '211260107028', 'DWIVEDI RADHIKA HARISHANKAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107029', '211260107029', 'RAJYAGURU RUDRA MAHENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107030', '211260107030', 'DALWADI ANSH MUKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107031', '211260107031', 'VAGHELA KUNJAN MAHESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107032', '211260107032', '  ANKIT RAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107033', '211260107033', 'SHARMA MANISH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107034', '211260107034', 'PATEL BANSARI MUKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107035', '211260107035', 'DODIYA VISHAKHA DEVABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107036', '211260107036', 'PATEL MEET KAMLESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107037', '211260107037', 'JADAV VISHAL NATHABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107038', '211260107038', 'PATEL YUG ROHITBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107039', '211260107039', 'PATEL KUSH ASHISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107040', '211260107040', 'SHARMA SUDHIRKUMAR RAKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107041', '211260107041', 'SHAH BHAGYA ALKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107042', '211260107042', 'BHAVSAR JAY ASHOKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107043', '211260107043', 'PANSURIYA DEEP JIGNESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107044', '211260107044', 'KOTADIYA BHAUTIK VALLBHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107045', '211260107045', 'DUNGARANI HASTI LABHUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107046', '211260107046', 'GHORI DISHA MAHESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107047', '211260107047', 'SANGHANI KEVALKUMAR HITESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107048', '211260107048', 'SHIROYA NAYAN VIJAYBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107049', '211260107049', 'PATEL PARAM CHIRAGBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107050', '211260107050', 'VANPARIYA SHYAM PANKAJBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107051', '211260107051', 'POPAT DHRUV ASHVINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107052', '211260107052', 'PATEL DIVYANG NIMESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107053', '211260107053', 'PANDYA SAMIP MUKESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107054', '211260107054', 'PATEL RIDHAM DHARMENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107055', '211260107055', 'GONDALIYA PARTH BATUKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107056', '211260107056', 'SHAH PANKIT', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107057', '211260107057', 'BHIKADIYA MIRAL KALPESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107058', '211260107058', 'GEDIYA JENIL MANISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107059', '211260107059', 'CHIHALA OM DIPAKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107060', '211260107060', 'PIPALIYA RUSHI HITESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107061', '211260107061', 'PATEL JAY VASUDEVBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107062', '211260107062', 'PATEL DIYABEN MAHENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107063', '211260107063', 'PATEL KUSH AMITKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107065', '211260107065', 'CHAUHAN HARSHIT CHANDRESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107066', '211260107066', 'PATEL DHARMIK NALINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107067', '211260107067', 'DAVE JAY NIMESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107068', '211260107068', 'MODH JANKI AMITKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107069', '211260107069', 'PATEL VAIDEHI VIMALKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107070', '211260107070', 'RAJPUT DEVANSH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107071', '211260107071', 'MOVALIYA PARTH ARVINDBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107072', '211260107072', 'AGRAWAL RAJ GHANSHYAMBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107074', '211260107074', 'BHATT SUHANI JATINKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107075', '211260107075', 'VYAS JEET BIPINKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107076', '211260107076', 'CHAUHAN PRINITKUMAR DILIPBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107077', '211260107077', 'VYAS JAY BIPINKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107078', '211260107078', 'JIVARAJANI ABHISHEK VIJAYBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107079', '211260107079', 'CHETTIYAR AMALDAS SIVADAS', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107080', '211260107080', 'MUNUGAPATI DARSHAN VENUGOPAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107081', '211260107081', 'RATHOD YUVRAJSINH PARESHSINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107082', '211260107082', 'NADODA RACHNA RAMESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107083', '211260107083', 'PATEL SAURAV PANKAJKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107084', '211260107084', 'AMIN PARANJ DHIREN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107085', '211260107085', 'PATEL NIKHILKUMAR VASUDEVBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107086', '211260107086', 'TALATI DEVANSHU', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107087', '211260107087', 'VASANI SUJAL MUKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107088', '211260107088', 'JANI MEET PARESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107089', '211260107089', 'CHITARA KRISHIL PRAFULKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107090', '211260107090', 'PATEL URMIK NARESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107091', '211260107091', 'JOSHI PRACHI OMKAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107092', '211260107092', 'PATEL SANJANA BHARATKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107093', '211260107093', 'BAVISHI JENISHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107094', '211260107094', 'AMIN MEET ANANDKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107095', '211260107095', 'THAKOR SANJAYBHAI NATVARJI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107096', '211260107096', 'JOSHI KATHAN NITINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107097', '211260107097', 'PATEL JAAN RAJENDRAKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107098', '211260107098', 'PARMAR PARTH SATISH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107099', '211260107099', 'VACHHETA KIRANBEN HASMUKHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107100', '211260107100', 'PATEL JAY DHARMENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107101', '211260107101', 'SHAH MANSI PARESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107102', '211260107102', 'SONGARA MANISH ARVINDBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107103', '211260107103', 'JADAV SACHINKUMAR NAREN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107104', '211260107104', 'PATEL SHAILY DINESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107105', '211260107105', 'TRIVEDI MEET BHADRESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107106', '211260107106', 'PATEL KUSHAL SHAILESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107107', '211260107107', 'GHANCHI MOHAMED ARSH MOHAMED ARIF', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107108', '211260107108', 'NAKUM KRUSHNARAJSINH VIJAYSINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107109', '211260107109', 'DALWADI DARSHAN ASVINKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107110', '211260107110', 'GALIYEL MEET .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107111', '211260107111', 'CHOTALIYA AASHISH JIVANBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107112', '211260107112', 'CHAVDA ADITYASINH PRAVINSINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107113', '211260107113', '  NEHA SUKHPAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107501', '211260107501', 'PATEL DHAIRYA JAYESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107502', '211260107502', 'PANDYA AUM MIHIR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107503', '211260107503', 'BHORANIYA YASHKUMAR CHAMANBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107504', '211260107504', 'PATEL AKSHAR GHANSHYAMBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107505', '211260107505', 'PANDYA VIDHI PARAS', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107506', '211260107506', 'SUTHAR HARSH JASHVANTKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107507', '211260107507', 'CHAUHAN KRUPEN SANJAYBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107508', '211260107508', 'SHAIKH MOHAMMED ANAS', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107509', '211260107509', 'GAJJAR SMIT KETANKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107510', '211260107510', 'SHAIKH MOHAMMED RAYAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107511', '211260107511', 'SONI MOHIT BHARGAVBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107512', '211260107512', 'SONI KRUNAL PRAVINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107513', '211260107513', 'MAKWANA NEEL KIRITKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107514', '211260107514', 'JINGAR YUKTI KAMLESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107515', '211260107515', 'GHADGE HETVI PIYUSHRAO', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107516', '211260107516', 'PANCHAL NIRAV VIKRAMBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107517', '211260107517', 'DARJI KHUSHI DILIPKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107518', '211260107518', 'SAVALIYA DHARMI VIRENBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107519', '211260107519', 'BHALANI AXAT VYOMESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107520', '211260107520', 'DOMADIA NENSHIBEN YOGESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107521', '211260107521', 'PATEL KRUPA ARVINDBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107522', '211260107522', 'PANCHAL VAIDEHI TANMAYKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107523', '211260107523', 'TOMAR BHARATSINGH DEVENDRASINGH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107524', '211260107524', 'SHAH MANAN TUSHARKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107525', '211260107525', 'SUTHAR SHUBHAM ANILKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107526', '211260107526', 'CHOTALIYA DARSHIL ASHOKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107527', '211260107527', 'PATEL SAHIL DAHYABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107528', '211260107528', 'SUTHAR SHUBHAM VIJAYBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107529', '211260107529', 'PATEL KETAN NARESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107530', '211260107530', 'PATEL PARTH ASHOKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107531', '211260107531', 'GOTECHA YUG CHETAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107532', '211260107532', 'PATEL YUG JAYANTILAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107533', '211260107533', 'DESAI LAKHABHAI BHIKHABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107534', '211260107534', 'PATEL DHARMIK', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107535', '211260107535', 'PATWARI SAKSHI JAYESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107536', '211260107536', 'DHADUK PARTH PRAVINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107537', '211260107537', 'PATEL ABHISHEK RAJESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107538', '211260107538', 'KURESHI ANASHBHAI MANVARBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107539', '211260107539', 'DAVE KHUSHI AJAYKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107540', '211260107540', 'RAVAL HIRVA PRAKASHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107541', '211260107541', 'THAKKAR SHAKSHI VIPULKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107542', '211260107542', 'TRIVEDI MAHARSHI JAGDEEP', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107543', '211260107543', 'NAYAK PRACHI PANKAJKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107544', '211260107544', 'PARMAR DEVAM HARDIKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107545', '211260107545', 'PANCHAL VANDITA VINODBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107546', '211260107546', 'RATHOD SHRUTI KISHORBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107547', '211260107547', 'GANDHI NIHARI JIGNESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107548', '211260107548', 'SHIROYA YASH DINESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107549', '211260107549', 'RAJPUT GOPENDRASINH MRUGESHSINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260107550', '211260107550', 'THAKER VRAJ BHAVESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116001', '211260116001', 'AAHIR SUMIL RAMESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116002', '211260116002', 'PANDYA DIDHITIKUMAR RAJUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116003', '211260116003', 'MEWADA ARYAN MAHENDRAKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116004', '211260116004', 'JANI RUDRA DARSHIN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116005', '211260116005', 'DABHI PARTH PRAVINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116007', '211260116007', 'BALVA ALIRAZA ROSHANALI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116008', '211260116008', 'PANCHAL SMITA BHAGVATILAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116009', '211260116009', 'PATEL HEET DHARMENDRAKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116010', '211260116010', 'BUDDHADEV DRASHTI BHUPENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116011', '211260116011', 'DARJI ROHAN SHAILESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116012', '211260116012', 'PATEL NIMA SUNILKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0);
INSERT INTO `user` (`user_id`, `password`, `name`, `father_name`, `branch_id`, `mobile_number`, `profile`, `role`, `email`, `clg_id`, `clg_name`, `user_status`) VALUES
('211260116013', '211260116013', 'DOBARIYA HIMANSHUKUMAR DINESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116014', '211260116014', 'TALSANIYA SAHIL ASHOKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116015', '211260116015', 'VANPARIYA SUJAL BHAVINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116016', '211260116016', 'DHANKECHA HARSHIL MAHESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116018', '211260116018', 'DOMADIYA TANISHA BATUKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116019', '211260116019', 'PATEL SHREENA ASHVINKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116020', '211260116020', 'KATHROTIYA HARSHILKUMAR CHATURBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116021', '211260116021', 'PATEL PREET SURESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116022', '211260116022', 'SHAIKH MOHAMMAD REHAN MD YUSUF', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116023', '211260116023', 'SAVALIYA HETVI KISHORBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116024', '211260116024', 'MITHAIWALA ABBAS KURESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116025', '211260116025', 'PATEL HENIL JIGNESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116026', '211260116026', 'NAKARANI JENIS PRAKASHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116027', '211260116027', 'PATEL YASH ROHITBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116028', '211260116028', 'PATEL JAXAY DILIPKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116029', '211260116029', 'PATEL HEET PRAVINCHANDRA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116030', '211260116030', 'MAKWANA JINALBEN PUNJAJI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116031', '211260116031', 'GANDHI UTSAV RAMCHANDRA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116032', '211260116032', 'PATEL HARSH DINESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116033', '211260116033', 'RAMI NIKITA KIRTIBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116034', '211260116034', 'DARJI DHIRALI SANJAYKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116035', '211260116035', 'JAIN KRISH PAVAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116036', '211260116036', 'PATEL VISHV MUKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116037', '211260116037', 'PATEL DHRUVI RAJESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116038', '211260116038', 'PANCHAL SAKSHI RAKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116039', '211260116039', 'JAMARIYA HEET', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116040', '211260116040', 'KARANJE JANVI MANOJ', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116041', '211260116041', 'AHIR VAIBHAV ASHISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116042', '211260116042', 'PAWAR NEEL PRAMOD', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116043', '211260116043', 'BRAHMBHATT ARTH JITENDRA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116044', '211260116044', 'ACHARYA BANSRI HETALKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116045', '211260116045', 'PARMAR NETRAA KIRITKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116046', '211260116046', 'PRIYANKAR MEET JIGNESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116047', '211260116047', 'RATHOD PRANAYSINH SHAILENDRASINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116048', '211260116048', 'SAVALIYA KAXIT RAJESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116049', '211260116049', 'CHARI ANIRUDHA ANISH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116050', '211260116050', 'PATEL JAY RAKESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116051', '211260116051', 'PATEL RUTVIKKUMAR ASHVINKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116052', '211260116052', 'RATHOD AKSHAYRAJSINH JASVANTSINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116053', '211260116053', 'PATEL ANUJKUMAR VINODBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116054', '211260116054', 'PATEL JAINAMKUMAR SANJAYBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116055', '211260116055', 'NOGI GURSHIN JOGENDRASING', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116056', '211260116056', 'PRAJAPATI HARDIK VINUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116057', '211260116057', 'PATEL KRISH UMESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116058', '211260116058', 'SINGH NISHAKUMARI BIRBAHADUR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116059', '211260116059', 'THAKKAR VIVEK PRASHANTKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116060', '211260116060', 'PRAJAPATI PRATIK SURESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116061', '211260116061', 'PRAJAPATI DEV PRAKASHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116062', '211260116062', 'PATEL SANDIPKUMAR RAJESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116501', '211260116501', 'DAVE MEET VIPULKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116502', '211260116502', 'JOSHI KUNAL ASHOKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116503', '211260116503', 'PATEL DHRUV HARIKRUSHNABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116504', '211260116504', 'PRAJAPATI DHAIRYA JIGESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116505', '211260116505', 'KADIYA NACHIKETA SITARAM', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116506', '211260116506', 'RANA DEVANG BHARATKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116507', '211260116507', 'MISTRY KINJAL KAMLESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116508', '211260116508', 'SINGH NEHA RAJESHWAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116509', '211260116509', 'PRAJAPATI NIRAV MUKESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116510', '211260116510', 'MEHTA PRACHI PRITESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116511', '211260116511', 'THAKKAR MITALI RAVINDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116512', '211260116512', 'PANCHOLI AKSHIL SHIRISHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116513', '211260116513', 'BHIKADIYA PRIYANK KISHORBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116514', '211260116514', 'GAJJAR DEV BHUPENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116515', '211260116515', 'BOGHARA CHINTAN SHAILESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116516', '211260116516', 'KOSHTI MOHNISH KHEMCHANDBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116517', '211260116517', 'PRAJAPATI TULSI PRAVINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116518', '211260116518', 'BHAVSAR DARSHIL NANDIPKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260116519', '211260116519', 'MODI NEEL SANJAYKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131001', '211260131001', 'PRAJAPATI KAILASH BHARATBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131002', '211260131002', 'PITHADIYA YASH RAJESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131003', '211260131003', 'VASWANI SAUMYA .', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131004', '211260131004', 'PATEL KASHISH DHARMENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131005', '211260131005', 'DABHI VATSALYA ROHITBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131006', '211260131006', 'KODALA TVISHA UPENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131007', '211260131007', 'VIRAMGAMA NITI RASHMINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131008', '211260131008', 'PATEL YASH MAHENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131009', '211260131009', 'PATEL RAVIKUMAR JITENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131010', '211260131010', 'SRIVASTAV SHASHANK SURYAPRAKASH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131011', '211260131011', 'PARMAR RAHIL VISHNUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131012', '211260131012', 'PATEL VISHWA JAYESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131013', '211260131013', 'PATEL DIGESH DHARMENDRAKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131014', '211260131014', 'PATEL ABHA MANISH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131015', '211260131015', 'GIRNARA PRIYANSHI HEMENKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131016', '211260131016', 'SUTARIYA ISHITA BHARATBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131017', '211260131017', 'SONI KHUSHAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131018', '211260131018', 'DAVE RUDRA BHAVIN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131019', '211260131019', 'CHANDEKAR KOMAL PRAFULBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131020', '211260131020', 'KATHIRIYA HARSHIL KIRANKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131022', '211260131022', 'PATEL HIRAK KALPESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131023', '211260131023', 'PRAJAPATI KARN URMISHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131024', '211260131024', 'DESAI KAVAN MOTIBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131025', '211260131025', 'UDANI SIMOLI MITESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131026', '211260131026', 'PANCHAL RAKSHIT NIRAV', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131027', '211260131027', 'PRAJAPATI KIRTAN MAHENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131028', '211260131028', 'THAKKAR DHRUV HARSHADBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131029', '211260131029', 'JOSHI DEV MAYURKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131030', '211260131030', 'DAVE HARSHANSHU PRAGNESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131031', '211260131031', 'PATEL KRISHKUMAR NILESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131032', '211260131032', 'MARETHA KUNAL ANILBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131033', '211260131033', 'SENVA VISHALKUMAR SURESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131034', '211260131034', 'PATEL MANSI DWARKADAS', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131035', '211260131035', 'LATHIYA TIRTH MANJIBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131036', '211260131036', 'PATEL DHRUPAL SANDIPBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131037', '211260131037', 'PATEL OM KALPESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131038', '211260131038', 'TANDEL YASH BHAGWANBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131039', '211260131039', 'MAHESHWARI VEDANSH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131040', '211260131040', 'JYOTIKAR TIRTH ASIT', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131041', '211260131041', 'JOSHI HARD PRADIPKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131042', '211260131042', 'VASHISTHA MANTHAN ANILBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131043', '211260131043', 'DHOLAKIYA BRIJESH AJAYBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131044', '211260131044', 'KANAKIA CHARMI RAJESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131045', '211260131045', 'PATEL HARSH VASUDEVBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131046', '211260131046', 'PATEL TAKSH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131047', '211260131047', 'PATEL HARSH DIVYAKANT', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131048', '211260131048', 'PATEL YASH YATINKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131049', '211260131049', 'DAVE OM BHASKAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131050', '211260131050', 'PUSHKARNA ASHISH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131051', '211260131051', 'PATEL JAIMIN PINESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131052', '211260131052', 'CHAUHAN MEET KAUSHIKKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131053', '211260131053', 'PATEL KRUSHIL ASHOKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131054', '211260131054', 'PATEL DHRUV DILIPKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131055', '211260131055', 'SHAH ANIKET BIJALKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131056', '211260131056', 'CHAUHAN GAGANJEET SINGH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131057', '211260131057', 'MAHESHWARI KASHISH DINESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131058', '211260131058', 'ACHARYA MESHWA KALPESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131059', '211260131059', 'PATEL AMARDEEP SANJAYBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131060', '211260131060', 'YADAV ANURAG RAM', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131061', '211260131061', 'SHAIKH MOHAMAAD AYAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131062', '211260131062', 'PATEL DHARVIK SURESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131501', '211260131501', 'BHATT DHWANIL ANISH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131502', '211260131502', 'TALA AKASH HITESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131503', '211260131503', 'PARIKH ROHAN RAHUL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131504', '211260131504', 'PANCHAL RIYABEN BHADRESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131505', '211260131505', 'JOSHI TANUJ UMESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131506', '211260131506', 'PAREKH HARSH DEEPAKKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131507', '211260131507', 'MAKWANA PARTHKUMAR DIPAKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131508', '211260131508', 'MEHTA HARSH UMESHKANT', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131509', '211260131509', 'KAVAIYA RAJ KAMLESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131510', '211260131510', 'DESAI SHREEYA MAYURESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131511', '211260131511', 'LALAKIYA HARSH GIRISHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131512', '211260131512', 'THAKRAR DIXIT HEMAL', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131513', '211260131513', 'SUREJA KRUSHNAKUMAR ASHOKBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131514', '211260131514', 'LATHIYA JAY BHAVESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131515', '211260131515', 'PARMAR PUSHPRAJSINH KIRITSINH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131516', '211260131516', 'VISHWAKARMA ANURAG MANOJ', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131517', '211260131517', 'SHOW PAWAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260131518', '211260131518', 'DARJI VRAJKUMAR RAKESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132001', '211260132001', 'MESHIYA JENI NARESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132002', '211260132002', 'PORIYA HETVI MEHULKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132003', '211260132003', 'PATHAN GALEEB', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132004', '211260132004', 'PRAJAPATI RUSHIL RAMUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132005', '211260132005', 'PATEL MIT SATISHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132006', '211260132006', 'PATEL PRIYANK DOLLARKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132007', '211260132007', 'GHADIALI ANSH KIRTAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132008', '211260132008', 'BAMBHAROLIYA HARSHIT VIPULKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132009', '211260132009', 'PATEL ANMOL DHARMESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132010', '211260132010', 'GOHEL HARSHKUMAR GHANSHYAMBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132011', '211260132011', 'DESAI PRUSHTI SHAILESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132012', '211260132012', 'VAGHELA KHUSHI DHIRUBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132013', '211260132013', 'LALWANI NEERAJ HARISHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132014', '211260132014', 'PATEL DHRUV NILESHKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132015', '211260132015', 'PATEL JINAL MAHENDRABHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132017', '211260132017', 'PATEL VAIDEHI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132018', '211260132018', 'PATEL JEET MANISH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132019', '211260132019', 'PATEL PARTH DIPAKKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132020', '211260132020', 'JASANI DAXIL GHANSHYAMBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132021', '211260132021', 'CHAUHAN KASHYAP SATISH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132022', '211260132022', 'JOSHI BABLIBEN LAXMINARAYAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132023', '211260132023', 'PATOLIA HARSH JAMANBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132024', '211260132024', 'PADIA KIRTI ATULBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132025', '211260132025', 'AMIN MANAV PRAGNESH', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132026', '211260132026', 'KHATRI ARYAN HEMALKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132027', '211260132027', 'CHAVDA NEEL RAJESHBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132028', '211260132028', 'MANIK KRUNAL VIJAYBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132029', '211260132029', 'KHAPED JINALBEN BHUDARBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132030', '211260132030', 'WALIA SHUBHRA BRIJENDRA', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132031', '211260132031', 'PATHAN ATTAVARIS KHURSHIDALAM', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132032', '211260132032', 'PATEL KEVAL NIKULKUMAR', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132033', '211260132033', 'PATHAN ASFIYABANU ASLAMKHAN', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('211260132034', '211260132034', 'PATEL ABHA JATINBHAI', '', 'Information Technology', '1234567890', NULL, 2, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('aditya1', 'aditya1', 'Aditya', '', 'Information Technology', '1234567890', NULL, 5, 'abc@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('Admin', 'Admin123', 'Dr. Ajay Upadhyaya', '', 'Information Technology', '‭‭+91 99097 15620‬‬', 'HOD.jpg', 0, 'ajay.upadhyaya@sal.edu.in', '1', 'SAL Engineering & Technical Institute', 0),
('depart1', 'depart1', 'Student Department', '', 'Information Technology', '1234567890', NULL, 4, 'student.help@sal.edu.in', '1', 'SAL Engineering & Technical Institute', 0),
('faculty1', 'faculty1', 'Piyush Patel', '', 'Information Technology', '1234567890', NULL, 3, 'piyush.patel@sal.edu.in', '1', 'SAL Engineering & Technical Institute', 0),
('heet12', 'heet12', 'Heet', '', 'Information Technology', '12345678890', NULL, 1, 'heet@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('Jatin27', 'Jatin27', 'Jatin', '', 'Information Technology', '9913321234', NULL, 1, 'jatin@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('javlan12', 'javlan12', 'Javlan', '', 'Information Technology', '9876543210', NULL, 1, 'javlan@gmail.com', '1', 'SAL Engineering & Technical Institute', 0),
('Shiv12', 'Shiv12', 'shiv', '', 'Information Technology', '9876543210', NULL, 1, 'shiv@gmail.com', '1', 'SAL Engineering & Technical Institute', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `100activity`
--
ALTER TABLE `100activity`
  ADD PRIMARY KEY (`certi_id`);

--
-- Indexes for table `activityCat`
--
ALTER TABLE `activityCat`
  ADD PRIMARY KEY (`activityCatId`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`certi_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `documets_process`
--
ALTER TABLE `documets_process`
  ADD PRIMARY KEY (`dp_id`);

--
-- Indexes for table `doc_types`
--
ALTER TABLE `doc_types`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `event_certi`
--
ALTER TABLE `event_certi`
  ADD PRIMARY KEY (`encerti_id`);

--
-- Indexes for table `FooterStamp`
--
ALTER TABLE `FooterStamp`
  ADD PRIMARY KEY (`fs_id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`Lab_id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `100activity`
--
ALTER TABLE `100activity`
  MODIFY `certi_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `activityCat`
--
ALTER TABLE `activityCat`
  MODIFY `activityCatId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `certi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `documets_process`
--
ALTER TABLE `documets_process`
  MODIFY `dp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `event_certi`
--
ALTER TABLE `event_certi`
  MODIFY `encerti_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `FooterStamp`
--
ALTER TABLE `FooterStamp`
  MODIFY `fs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `notice_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
