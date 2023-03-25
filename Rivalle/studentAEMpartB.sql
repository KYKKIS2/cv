-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 03:42 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnjs`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `text` varchar(300) NOT NULL,
  `assignment` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `date`, `subject`, `text`, `assignment`) VALUES
(1, '01/02/2022', 'Ανακοίνωση 1ης εργασίας', 'Ανακοίνωση 1ης εργασίας', 1),
(2, '05/01/2022', 'Ανακοίνωση 2ης εργασίας', 'Ανακοίνωση 2ης εργασίας', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `ergID` int(11) NOT NULL,
  `targets` varchar(100) NOT NULL,
  `filePath` varchar(100) NOT NULL,
  `deliverables` varchar(100) NOT NULL,
  `deadline` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`ergID`, `targets`, `filePath`, `deliverables`, `deadline`) VALUES
(1, 'Εξοικείωση με τις βασικές εντολές της Javascript.', 'uploads/1stAssignment.pdf', '1. Αρχείο pdf με τις απαντήσεις σας (αποτελέσματα + screenshot)\r\n\r\n2. Μικρή αναφορά σε αρχείο .doc', '06/02/2022'),
(2, 'Εξοικείωση με τις εντολές συνθήκης και επανάληψης της Javascript.', 'uploads/2ndAssignment.pdf', '1. Αρχείο pdf με τις απαντήσεις σας (αποτελέσματα + screenshot)\r\n\r\n2. Μικρή αναφορά σε αρχείο .doc', '13/02/2022');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `docID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `filePath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`docID`, `title`, `description`, `filePath`) VALUES
(1, 'Εισαγωγή', 'Μια εισαγωγή στις βασικές εντολές της Javascript', 'uploads/Document1.pdf'),
(2, 'Εντολές επιλογής', 'Εντολές επιλογής της Javascript', 'uploads/Document2.pdf'),
(3, 'Εντολές επανάληψης', 'Εντολές επανάληψης της Javascript', 'uploads/Document3.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersID` int(11) NOT NULL,
  `usersEmail` varchar(100) NOT NULL,
  `usersPass` varchar(100) NOT NULL,
  `usersName` varchar(100) NOT NULL,
  `usersSur` varchar(100) NOT NULL,
  `userAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `usersEmail`, `usersPass`, `usersName`, `usersSur`, `userAdmin`) VALUES
(1, 'tutor1@email.com', 'tutor1', 'Alex', 'Dermaris', 1),
(2, 'user1@email.com', 'user1', 'Kykkis', 'Karlettis', 0),
(3, 'user2@email.com', 'user2', 'Giannis', 'Pieris', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`ergID`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`docID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `ergID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `docID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
