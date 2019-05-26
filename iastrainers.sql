-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2019 at 04:33 AM
-- Server version: 5.6.13
-- PHP Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iastrainers`
--
CREATE DATABASE IF NOT EXISTS `iastrainers` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `iastrainers`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE IF NOT EXISTS `tbl_course` (
  `courseid` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`courseid`, `title`, `description`) VALUES
(1, 'PHP', 'PHP core full course free');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lesson`
--

CREATE TABLE IF NOT EXISTS `tbl_lesson` (
  `lessonid` int(5) NOT NULL AUTO_INCREMENT,
  `lesson_title` varchar(100) NOT NULL,
  `course` int(5) NOT NULL,
  `videourl` varchar(200) NOT NULL,
  `previewimage` varchar(50) NOT NULL,
  PRIMARY KEY (`lessonid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_lesson`
--

INSERT INTO `tbl_lesson` (`lessonid`, `lesson_title`, `course`, `videourl`, `previewimage`) VALUES
(2, 'demo', 1, 'https://player.vimeo.com/video/97243285?title=0&byline=0&portrait=0', '50264.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE IF NOT EXISTS `tbl_questions` (
  `qid` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `option_one` varchar(50) NOT NULL,
  `option_two` varchar(50) NOT NULL,
  `option_three` varchar(50) NOT NULL,
  `option_four` varchar(50) NOT NULL,
  `answer` varchar(20) NOT NULL,
  `quiz` int(5) NOT NULL,
  `score` int(5) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`qid`, `title`, `option_one`, `option_two`, `option_three`, `option_four`, `answer`, `quiz`, `score`) VALUES
(1, 'What does PHP stand for?', 'Private Home Page', 'PHP : Hypertext Preprocessor', 'Personal Hypertext Processor', 'PHP Preprocessor', 'PHP : Hypertext Prep', 1, 5),
(2, 'PHP server scripts are surrounded by delimiters, which?', '<script>...</script>', '<&>...</&>', '<?php>...</?>', '<?php...?>', '<?php...?>', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quiz`
--

CREATE TABLE IF NOT EXISTS `tbl_quiz` (
  `quizid` int(5) NOT NULL AUTO_INCREMENT,
  `quiz_title` varchar(50) NOT NULL,
  `course` int(5) NOT NULL,
  `image` varchar(50) NOT NULL,
  `timeframe` tinyint(1) DEFAULT NULL,
  `timecount` int(4) DEFAULT NULL,
  `frametype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`quizid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_quiz`
--

INSERT INTO `tbl_quiz` (`quizid`, `quiz_title`, `course`, `image`, `timeframe`, `timecount`, `frametype`) VALUES
(1, 'PHP basics', 1, '19901.png', 0, 1, 'minutes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE IF NOT EXISTS `tbl_register` (
  `regid` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`regid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
