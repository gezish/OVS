-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2021 at 11:30 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sex` char(1) NOT NULL,
  `middlename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `sex`, `middlename`) VALUES
(1, 'codeprojects', '$2y$10$g4m/PfziRBxoM9fvwqiS9OgxAV29w0y8..XHruyEplYPxYnhZJ6bC', 'Code', 'Projects', 'avatar.png', '', ''),
(3, 'sileshia', '$2y$10$7c3jw9kTg4G5rqvXRCMNkuh8FkZS0LJItZ8SPfASgXCY/4rT4HooW', 'sileshia', '', 'avatar.png', 'm', 'Alamayehuss'),
(4, 'henokt', '$2y$10$P0vJv4edn/aFzAHzlcm0OOVO0XuPOBC6MguBvfjpHypu9P22XLbzu', 'henok', 'Tesfaye', 'dealer-logo.jpg', 'm', 'Tesfaye'),
(5, 'dagm', '$2y$10$c/dbsvXTIk6QVeXKdtUuVOqEiXy0.lCF5VBapdwwYaw0lfX6B.y82', 'dag', 'dagam', 'profile.jpg', 'm', 'mok'),
(6, 'tangm', '$2y$10$dLWBa3VeVkWyGOOkwIpya.xfYGDfhdWLlPVJe0Zo0vdnD4iBy.u0S', 'tangut', '', 'female4.jpg', 'f', 'mal'),
(7, 'tadt', '$2y$10$GhMbYqnwyqkQi5GqhEe39.h.qfaOA3MzkusuETTyTk/49xzWxUmDi', 'tadd', '', 'Capture (2).PNG', 'f', 'tasf'),
(8, 'TEST', '$2y$10$HvxroGHQO3CuTyXrn9NmhuV6SVo3XIyalah/Vln7pjbL7.JFjZ5D6', 'sad', '', 'dealer-logo.jpg', 'F', 'asd'),
(9, 'TURAKO', '$2y$10$YSbO1SaN0jIs.OjharHisOmv1dMWZkjkvX1RQ6NoV9aPTTTEZT38u', 'TURA', '', 'ultron.jpg', 'm', 'SAFU');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `birthdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sex` varchar(5) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`, `middlename`, `sex`) VALUES
(18, 9, 'Gazahagn', 'Abara', 'male.png', '', '', ''),
(25, 10, 'Gedu', 'esibalewu', 'profile.jpg', 'Sample ...............', '', ''),
(26, 8, 'BIrhanu', 'Nagari', 'male2.png', 'sample..', '', ''),
(27, 8, 'sileshi', 'Alamayehu', 'facebook-profile-image.jpeg', '', '', ''),
(28, 10, 'gaz', 'wand', 'avatar.png', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'Vice presidant', 3, 1),
(9, 'University candidate', 5, 2),
(10, 'Presidant', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(5) NOT NULL,
  `firstname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `middlename` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `voters_id` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sex` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `photo` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `firstname`, `middlename`, `lastname`, `voters_id`, `sex`, `photo`, `password`, `department`) VALUES
(18, 'sileshi', 'Alamayehu', 'Abebe', 'Voters_id', 'm', 'admas2.jpg', '$2y$10$XyhGks108vb5XQxmJFqYL.udM5o5JPIo.jURz2t2BS5ozjMh/M3hW', ''),
(19, 'Asme', '', 'G/mekael', 'RlXAaep948MHDKt', '', '', '$2y$10$gHcu3BYGED1r7RJ.BFQJguY6HvF7xEELkgD1XIHb81i1QYiLOj.qe', ''),
(21, 'sileshi', '', 'Alamayehu', 'sileshia', '', '7qMiwNx.jpg', 'asd123!@#', ''),
(22, 'bakare', '', 'shalla', 'bakare', '', 'ebony.jpg', '$2y$10$6aS.YQwR7Ima0wKTqw0mWuCErqvhayr/MUlMUb27JeD5.yUHZVoIK', ''),
(24, 'namarra', '', 'barisso', 'barisso4', '', 'doctor_strange_by_scarlettcindy-daon0ly.jpg', '$2y$10$hM7k/BpPBzMVYXhov9rIn.FMni.ER1h3H0wM2EC4WBKD4AxROtG9C', ''),
(25, 'mangistu', 'nama', 'Alamayehu', 'Voters_id', '', 'dealer-logo.jpg', '$2y$10$21FG3wya/O.c.OGoR8yzDeUcEg7NqSjOCP.nHJhhSHPt/ciq.ipqW', ''),
(26, 'tangut', 'melaku', 'Abera', 'TangutM', '', 'female3.jpg', '$2y$10$0yCTW4oFjLh9MR5V7.vIFOZq8PFJvDar6kofDorME/XVKnzl4T9H.', ''),
(28, 'sino', 'guba', 'bara', 'Voters_id', 'm', 'avatar.png', '$2y$10$Bg7qkOXcpfC8yLWX1pe/7ezYGOfF9ODz7ezpcgORIdYe8MbeVc5Tq', ''),
(51, 'sino', 'guba', '', 'garuma', 'm', '', '$2y$10$ih2esZ/t39aCRZk61dx6O.3ux5yx30yeozaQP61rY6XHEv69yall.', ''),
(52, 'sino', 'guba', '', 'garuma', 'm', '', '$2y$10$VzBQtw5cw5moPad5YCmrhOTXUR6ieehIM20jc6mzmmA/p7McOE0sO', ''),
(53, 'sileshi', 'Alamayehu', '', 'mangasha', 'm', '', '$2y$10$uDvsrSaH.N/O/fENfJQ././1RXUPXAmyO12loojilS4SS18buaSb6', ''),
(55, 'sileshi', 'Alamayehu', '', 'barisso4', 'm', '', '$2y$10$zKVwrYdpeZ2r4HLmvjgXpukkXfceGmyS3ojiRvFElChqmWZXjdJpC', ''),
(56, 'barabarba', 'fnagaasdn', '', 'gudooo', 'm', '', '$2y$10$EX8mT8eSG.jz.prxBSow9uT7j2fy4geDL5txvDDqF8bJZU8E.cOme', ''),
(57, 'barabarba', 'fnagaasdn', '', 'gudooo', 'm', '', '$2y$10$aSvJkWlcVzZ1VhXRyer6Q.aEsRQb1Jo7YDVd9TwvfDXYXGwTCxAiS', ''),
(58, 'gghg', 'hjdghjh', '', 'asd', 'm', '', '$2y$10$4.43kbUwW2sBQ7tBDgtiHOIZbHbjHl9uibmPi6ltLmyaOKglXKyWi', ''),
(59, 'gfhjg', 'jhgkjhjkkl', '', 'jfgkhlj;;\';', 'uytuyoiipo', '', '$2y$10$rRbiljCEx/Br3u8b6shAauNq8uC5c09zBiHxhQzx7BgXqUHaRrskK', ''),
(69, 'dagabo', 'tula', '', 'mine', 'akkas', '', '$2y$10$U4kZaEXRBef8PahwCYlASe2CCFy.8f690EehrPisS.dl6Y7TRQoL.', ''),
(70, 'sileshi', 'Alamayehu', '', 'garbaa', 'm', '', '$2y$10$Pok0GIj4DOr7EbQjhj/Sh.d2UHRybYW5VD0sAz0o85RGMgqdz85Pe', ''),
(71, 'sileshi', 'Alamayehu', '', 'gumabaas', 'f', '', '$2y$10$BiYylpP1gaAbQkiHaJ5knOivXNFWc7dlBqboN.rUnXV68uVy1A6LO', ''),
(72, 'gfd', 'jfghj', '', 'galgaloko', 'm', '', '$2y$10$oprWzrafPYT2EJ9BSbOxf.KjgFx46LzbYQSjBGFB596SdujYdkdpa', ''),
(73, 'gfd', 'jfghj', '', 'galgaloko', 'm', '', '$2y$10$A8tTveNqZ2MQwzA9F9w6me1yrddOpXVWa3e/Zd2ShLJwOYPSoNG5C', ''),
(74, 'fdh', 'fhgjhkj', '', 'ghjk', 'm', '', '$2y$10$F6F.WoKQjaGnLDaP4CuVI.uaqp0O9cUkblGwZr6PbiQPo7ZyBsVKK', ''),
(75, 'fdh', 'fhgjhkj', '', 'ghjk', 'm', '', '$2y$10$vDr85Kxhy9SJj3HyJwdpZ.Ui/NXZye7/Ckm2z4073u1PtnNmH9Z3m', ''),
(76, 'sileshi', 'Alamayehu', '', 'gaban', 'f', '', '$2y$10$U9z.ZZ.3NsXllOQY5U4KD.aqXpIThGnCMAjA7QEirPN9nRcWwge6O', ''),
(77, 'sileshi', 'Alamayehu', '', 'gaban', 'f', '', '$2y$10$h1ANcUYuo996UMu24W9gbeMOE99ptM9NCmNyzJW1rb90/2jqCWtrm', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(128, 22, 26, 8),
(129, 22, 18, 9),
(130, 22, 25, 10),
(131, 24, 26, 8),
(132, 24, 18, 9),
(133, 24, 25, 10),
(134, 40, 26, 8),
(135, 40, 18, 9),
(136, 40, 28, 10),
(137, 41, 26, 8),
(138, 41, 18, 9),
(139, 41, 28, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
