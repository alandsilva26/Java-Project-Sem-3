-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2019 at 12:46 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `practicalmarksheet`
--

CREATE TABLE `practicalmarksheet` (
  `PID` int(11) DEFAULT NULL,
  `Name` varchar(15) DEFAULT NULL,
  `Exp1` int(11) DEFAULT NULL,
  `Exp2` int(11) DEFAULT NULL,
  `Exp3` int(11) DEFAULT NULL,
  `Exp4` int(11) DEFAULT NULL,
  `Exp5` int(11) DEFAULT NULL,
  `Avg_exp` int(11) DEFAULT NULL,
  `Test1` int(11) DEFAULT NULL,
  `Test2` int(11) DEFAULT NULL,
  `Avg_test` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `practicalmarksheet`
--

INSERT INTO `practicalmarksheet` (`PID`, `Name`, `Exp1`, `Exp2`, `Exp3`, `Exp4`, `Exp5`, `Avg_exp`, `Test1`, `Test2`, `Avg_test`) VALUES
(182028, 'Alan Dsilva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182023, 'Sujoy Dchuna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182032, 'Priyen Dsouza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182022, 'Rebecca Dias ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182036, 'Nimisha George ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182004, 'Mark Coutinho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182042, 'Student 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182043, 'Student 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182044, 'Student 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182055, 'Student 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `studentlogindata`
--

CREATE TABLE `studentlogindata` (
  `ID` varchar(20) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Username` int(20) DEFAULT NULL,
  `Password` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentlogindata`
--

INSERT INTO `studentlogindata` (`ID`, `Name`, `Username`, `Password`) VALUES
('1.0', 'Alan Dsilva', 182028, 182028),
('2.0', 'Sujoy Dchuna', 182023, 182023),
('3.0', 'Priyen Dsouza', 182032, 182032),
('4.0', 'Rebecca Dias ', 182022, 2525),
('5.0', 'Nimisha George ', 182036, 182036),
('6.0', 'Mark Coutinho', 182004, 182004),
('7.0', 'Student 2', 182042, 182042),
('8.0', 'Student 3', 182043, 182043),
('9.0', 'Student 4', 182044, 182044),
('10.0', 'Student 5', 182055, 182055);

-- --------------------------------------------------------

--
-- Table structure for table `teacherlogindata`
--

CREATE TABLE `teacherlogindata` (
  `ID` int(11) DEFAULT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Username` int(11) DEFAULT NULL,
  `Password` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacherlogindata`
--

INSERT INTO `teacherlogindata` (`ID`, `Name`, `Username`, `Password`) VALUES
(101, 'Teacher 1', 101, 101),
(102, 'Teacher 2 ', 102, 102),
(103, 'Teacher 3', 103, 103);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
