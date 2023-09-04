-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 09:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `routewizdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `deptID` varchar(4) DEFAULT NULL,
  `dept_name` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`deptID`, `dept_name`) VALUES
('D001', 'IT'),
('D002', 'CS'),
('D003', 'CIVIL'),
('D004', 'MECHANICAL'),
('D005', 'APPLIED'),
('D006', 'EEE'),
('D007', 'EC'),
('D008', 'MISCELLANEOUS');

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `class_name` varchar(44) DEFAULT NULL,
  `floor_no` varchar(12) DEFAULT NULL,
  `building_name` varchar(17) DEFAULT NULL,
  `deptID` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`class_name`, `floor_no`, `building_name`, `deptID`) VALUES
('Heat Engines Lab(ME)', 'Ground floor', 'KE BLOCK', 'D004'),
('Project Fabrication and Display Room', 'Ground floor', 'KE BLOCK', 'D008'),
('Electrical Workshop(EEE)', 'Ground floor', 'KE BLOCK', 'D006'),
('Physical Education', 'Ground floor', 'KE BLOCK', 'D008'),
('Project Display Room(CE)', 'Ground floor', 'KE BLOCK', 'D003'),
('Survey Lab(CE)', 'Ground floor', 'KE BLOCK', 'D003'),
('Civil Workshop(CE)', 'Ground floor', 'KE BLOCK', 'D003'),
('Hydraulic Machines Lab(ME)', 'Ground floor', 'KE BLOCK', 'D004'),
('Chapel', 'Ground floor', 'KE BLOCK', 'D008'),
('Main Lobby', 'Ground floor', 'KE BLOCK', 'D008'),
('Indoor Badminton Court', 'Ground floor', 'KE BLOCK', 'D008'),
('Metalurgical Testing Lab', '1st floor', 'KE BLOCK', 'D008'),
('Language Lab', '1st floor', 'KE BLOCK', 'D008'),
('Computer Application Lab', '1st floor', 'KE BLOCK', 'D008'),
('Mechanical Measurements Lab(ME)', '1st floor', 'KE BLOCK', 'D004'),
('CAD/CAM Lab(ME)', '1st floor', 'KE BLOCK', 'D004'),
('CNC Room(ME)', '1st floor', 'KE BLOCK', 'D004'),
('Machine Tools Lab(ME)', '1st floor', 'KE BLOCK', 'D004'),
('Mechanical Workshop(ME)', '1st floor', 'KE BLOCK', 'D004'),
('Transportation Lab(CE)', '1st floor', 'KE BLOCK', 'D003'),
('Environmental Lab(CE)', '1st floor', 'KE BLOCK', 'D003'),
('Mechanical Systems Lab(ME)', '1st floor', 'KE BLOCK', 'D004'),
('Staff room(EEE)', '2nd floor', 'KE BLOCK', 'D006'),
('Staff room(IT)', '2nd floor', 'KE BLOCK', 'D001'),
('ULYSSES LAB', '1st floor', 'MAIN BUILDING', 'D008'),
('BOHR LAB', '1st floor', 'MAIN BUILDING', 'D008'),
('STAFFROOM 4 (CS)', '1st floor', 'MAIN BUILDING', 'D002'),
('HEISENBERG LAB', '1st floor', 'MAIN BUILDING', 'D008'),
('PHOTON LAB', '1st floor', 'MAIN BUILDING', 'D008'),
('QUANTUM LAB', '1st floor', 'MAIN BUILDING', 'D008'),
('CETA', '1st floor', 'MAIN BUILDING', 'D008'),
('DEPT LIBRARY (CS/IT)', '1st floor', 'MAIN BUILDING', 'D001'),
('BASIC ELECTRONICS LAB', '1st floor', 'MAIN BUILDING', 'D006'),
('PROJECT LAB', '1st floor', 'MAIN BUILDING', 'D008'),
('ZUSE LAB', '1st floor', 'MAIN BUILDING', 'D008'),
('STAFFROOM 1 (CS)', '1st floor', 'MAIN BUILDING', 'D002'),
('STAFFROOM 2 (CS)', '1st floor', 'MAIN BUILDING', 'D002'),
('STAFFROOM 3 (CS)', '1st floor', 'MAIN BUILDING', 'D002'),
('HERCULES LAB', '1st floor', 'MAIN BUILDING', 'D008'),
('BORON LAB(PHYSICS)', '3rd floor', 'MAIN BUILDING', 'D008'),
('STAFFROOM', '3rd floor', 'MAIN BUILDING', 'D008'),
('DINING ROOM', '3rd floor', 'MAIN BUILDING', 'D008'),
('DST-serb FUNDED PROJECT', '3rd floor', 'MAIN BUILDING', 'D008'),
('PCB LAB', '3rd floor', 'MAIN BUILDING', 'D008'),
('ENGINEERING CHEMISTRY LAB', '3rd floor', 'MAIN BUILDING', 'D008'),
('STAFFROOM (BASIC SCIENCE & HUMANITIES)', '3rd floor', 'MAIN BUILDING', 'D008'),
('STUDENT WELFARE', '3rd floor', 'MAIN BUILDING', 'D008'),
('DEPT LIBRARY (BASIC SCIENCE)', '3rd floor', 'MAIN BUILDING', 'D008'),
('CONFERENCE ROOM', '4th floor', 'KE BLOCK', 'D008'),
('PRAYER ROOM', '4th floor', 'KE BLOCK', 'D008'),
('EXAMINATION CELL', '4th floor', 'KE BLOCK', 'D008'),
('STAFFROOM 2 (IT)', '4th floor', 'KE BLOCK', 'D008'),
('TUTORIAL HALL 5', '4th floor', 'KE BLOCK', 'D008'),
('TUTORIAL HALL 6', '4th floor', 'KE BLOCK', 'D008'),
('EXAM CONTROL ROOM', '4th floor', 'KE BLOCK', 'D008'),
('LH 19', '4th floor', 'KE BLOCK', 'D008'),
('LH 20', '4th floor', 'KE BLOCK', 'D008'),
('SEMINAR HALL (CIVIL)', '4th floor', 'KE BLOCK', 'D003'),
('STAFFROOM 1 (CIVIL)', '4th floor', 'KE BLOCK', 'D003'),
('STAFFROOM 2 (CIVIL)', '4th floor', 'KE BLOCK', 'D003'),
('DEPT LIBRARY (CIVIL)', '4th floor', 'KE BLOCK', 'D003'),
('DEPT CONFERENCE ROOM', '4th floor', 'KE BLOCK', 'D003'),
('GALLERY HALL', 'Ground floor', 'PG BLOCK ENTRANCE', 'D008'),
('SYCAMORE LAB', '3rd floor', 'KE BLOCK', 'D001'),
('STAFFROOM 1 (MECH)', '3rd floor', 'KE BLOCK', 'D004'),
('TUTORIAL HALL 3', '3rd floor', 'KE BLOCK', 'D008'),
('TUTORIAL HALL 4', '3rd floor', 'KE BLOCK', 'D008'),
('STAFFROOM 2 (MECH)', '3rd floor', 'KE BLOCK', 'D004'),
('DEPT LIBRARY (MECH)', '3rd floor', 'KE BLOCK', 'D004'),
('DEPT CONFERENCE ROOM (MECH)', '3rd floor', 'KE BLOCK', 'D004'),
('DRAWING HALL 1', '3rd floor', 'KE BLOCK', 'D008'),
('DRAWING HALL 2', '3rd floor', 'KE BLOCK', 'D008'),
('STAFFROOM 3 (MECH)', '3rd floor', 'KE BLOCK', 'D004'),
('STAFFROOM (EEE)', '2nd floor', 'KE BLOCK', 'D006'),
('STAFFROOM (IT)', '2nd floor', 'KE BLOCK', 'D001'),
('ADVANCED ELECTRICAL MACHINES LAB', '2nd floor', 'KE BLOCK', 'D008'),
('ELECTRICAL MACHINES LAB (EEE)', '2nd floor', 'KE BLOCK', 'D006'),
('POWER ELECTRONICS LAB', '2nd floor', 'KE BLOCK', 'D008'),
('SIMULATION LAB (EEE)', '2nd floor', 'KE BLOCK', 'D006'),
('Heat Engine Lab(Computerised Engine test)', 'Ground floor', 'KE BLOCK', 'D008'),
('KLEINROCK LAB', '2nd floor', 'PG BLOCK', 'D008'),
('TURNING LAB', '2nd floor', 'PG BLOCK', 'D008'),
('ELECTRONICS AND ELECTRICALS WORKSHOP', '2nd floor', 'MAIN BUILDING', 'D006'),
('STAFFROOM 3 (ECE)', '2nd floor', 'MAIN BUILDING', 'D007'),
('SIGNAL PROCESSING LAB', '2nd floor', 'MAIN BUILDING', 'D008'),
('STAFFROOM 4 (EC)', '2nd floor', 'MAIN BUILDING', 'D007'),
('COMMUNICATION ENGINEERING', '2nd floor', 'MAIN BUILDING', 'D007'),
('SEMINAR HALL/LIBRARY (EC)', '2nd floor', 'MAIN BUILDING', 'D007'),
('CENTRAL COMPUTING FACILITY', '2nd floor', 'MAIN BUILDING', 'D008'),
('LOGIC DESIGN LAB', '2nd floor', 'MAIN BUILDING', 'D008'),
('EMBEDDED SYSTEM LAB', '2nd floor', 'MAIN BUILDING', 'D007'),
('STAFFROOM 1 (EC)', '2nd floor', 'MAIN BUILDING', 'D007'),
('STAFFROOM 2 (EC)', '2nd floor', 'MAIN BUILDING', 'D007'),
('SIGNAL AND SYSTEM LAB', '2nd floor', 'MAIN BUILDING', 'D008'),
('MULTIMEDIA HALL', 'Ground floor', 'MAIN BUILDING', 'D008'),
('SUNYA LAB', 'Ground floor', 'MAIN BUILDING', 'D008'),
('STAFFROOM (BASIC SCIENCE)', 'Ground floor', 'MAIN BUILDING', 'D008'),
('ALETHEA LIBRARY', 'Ground floor', 'MAIN BUILDING', 'D008'),
('RECEPTION', 'Ground floor', 'MAIN BUILDING', 'D008'),
('CHAPEL', 'Ground floor', 'MAIN BUILDING', 'D008'),
('PRINCIPAL OFFICE', 'Ground floor', 'MAIN BUILDING', 'D008'),
('OFFICE', 'Ground floor', 'MAIN BUILDING', 'D008'),
('DIRECTOR OFFICE', 'Ground floor', 'MAIN BUILDING', 'D008'),
('VICE PRINCIPAL OFFICE', 'Ground floor', 'MAIN BUILDING', 'D008'),
('BOARD ROOM', 'Ground floor', 'MAIN BUILDING', 'D008'),
('FINANCE', 'Ground floor', 'MAIN BUILDING', 'D008'),
('RAJAGIRI RESEARCH & CONSULTANCY CENTRE(CETA)', 'Ground floor', 'MAIN BUILDING', 'D008'),
('DINING ROOM 2', '4th floor', 'KE BLOCK', 'D008'),
('DINING ROOM 1', '3rd floor', 'KE BLOCK', 'D008'),
('Ladies Washroom', 'ALL floors', 'KE BLOCK', 'NULL'),
('Mens Washroom', 'ALL floors', 'KE BLOCK', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `routewiz__1_`
--

CREATE TABLE `routewiz__1_` (
  `deptID` varchar(4) DEFAULT NULL,
  `LH_no` varchar(5) DEFAULT NULL,
  `class_name` varchar(14) DEFAULT NULL,
  `floor_no` varchar(9) DEFAULT NULL,
  `building_name` varchar(13) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `routewiz__1_`
--

INSERT INTO `routewiz__1_` (`deptID`, `LH_no`, `class_name`, `floor_no`, `building_name`, `video_link`) VALUES
('D006', 'LH 4', 'S8 EE', '2nd floor', 'KE BLOCK', NULL),
('D006', 'LH 5', 'S6 EE', '2nd floor', 'KE BLOCK', NULL),
('D006', 'LH 6', 'S4 EE', '2nd floor', 'KE BLOCK', NULL),
('D002', 'LH 5', 'S4 CS(BETA)', '1st floor', 'MAIN BUILDING', NULL),
('D002', 'LH 4', 'S4 CS(ALPHA)', '1st floor', 'MAIN BUILDING', NULL),
('D002', 'LH 6', 'S4 CS(GAMMA)', '1st floor', 'MAIN BUILDING', NULL),
('D002', 'LH 2', 'S8 CS(BETA)', '1st floor', 'MAIN BUILDING', NULL),
('D002', 'LH 1', 'S8 CS(ALPHA)', '1st floor', 'MAIN BUILDING', NULL),
('D002', 'LH 3', 'S8 CS(GAMMA)', '1st floor', 'MAIN BUILDING', NULL),
('D002', 'LH 7', 'S6 CS(ALPHA)', '1st floor', 'MAIN BUILDING', NULL),
('D002', 'LH 8', 'S6 CS(BETA)', '1st floor', 'MAIN BUILDING', NULL),
('D002', 'LH 9', 'S6 CS(GAMMA)', '1st floor', 'MAIN BUILDING', NULL),
('D001', 'LH 25', 'S2 CSBS', '3rd floor', 'MAIN BUILDING', NULL),
('D004', 'LH 26', 'S2 MECH(ALPHA)', '3rd floor', 'MAIN BUILDING', NULL),
('D001', 'LH 27', 'S2 AD', '3rd floor', 'MAIN BUILDING', NULL),
('D003', 'LH 24', 'S2 CIVIL', '3rd floor', 'MAIN BUILDING', NULL),
('D006', 'LH 23', 'S2 EE', '3rd floor', 'MAIN BUILDING', NULL),
('D005', 'LH 22', 'S2 APPLIED', '3rd floor', 'MAIN BUILDING', NULL),
('D007', 'LH 35', 'S2 EC(GAMMA)', '3rd floor', 'MAIN BUILDING', NULL),
('D007', 'LH 34', 'S2 EC(BETA)', '3rd floor', 'MAIN BUILDING', NULL),
('D007', 'LH 33', 'S2 EC(ALPHA)', '3rd floor', 'MAIN BUILDING', NULL),
('D002', 'LH 32', 'S2 CS(GAMMA)', '3rd floor', 'MAIN BUILDING', NULL),
('D002', 'LH 31', 'S2 CS(BETA)', '3rd floor', 'MAIN BUILDING', NULL),
('D002', 'LH 30', 'S2 CS(ALPHA)', '3rd floor', 'MAIN BUILDING', NULL),
('D004', 'LH 29', 'S2 MECH(BETA)', '3rd floor', 'MAIN BUILDING', NULL),
('D001', 'LH 28', 'S2 IT', '3rd floor', 'MAIN BUILDING', NULL),
('D001', 'LH 15', 'S8 IT', '4th floor', 'KE BLOCK', NULL),
('D003', 'LH 16', 'S8 CIVIL', '4th floor', 'KE BLOCK', NULL),
('D003', 'LH 17', 'S6 CIVIL', '4th floor', 'KE BLOCK', NULL),
('D003', 'LH 18', 'S4 CIVIL', '4th floor', 'KE BLOCK', NULL),
('D001', 'LH 13', 'S4 IT', '4th floor', 'KE BLOCK', NULL),
('D001', 'LH 14', 'S6 IT', '4th floor', 'KE BLOCK', NULL),
('D004', 'LH 7', 'S8 MECH(ALPHA)', '3rd floor', 'KE BLOCK', NULL),
('D004', 'LH 8', 'S8 MECH(BETA)', '3rd floor', 'KE BLOCK', NULL),
('D004', 'LH 9', 'S6 MECH(ALPHA)', '3rd floor', 'KE BLOCK', NULL),
('D004', 'LH 10', 'S6 MECH(BETA)', '3rd floor', 'KE BLOCK', NULL),
('D004', 'LH 11', 'S4 MECH(BETA)', '3rd floor', 'KE BLOCK', NULL),
('D004', 'LH 12', 'S4 MECH(ALPHA)', '3rd floor', 'KE BLOCK', NULL),
('D001', 'LH 3', 'S6 AD', '2nd floor', 'KE BLOCK', NULL),
('D001', 'LH 2', 'S4 AD', '2nd floor', 'KE BLOCK', NULL),
('D007', 'LH 16', 'S6 EC(ALPHA)', '2nd floor', 'MAIN BUILDING', NULL),
('D007', 'LH 18', 'S6 EC(GAMMA)', '2nd floor', 'MAIN BUILDING', NULL),
('D007', 'LH 15', 'S8 EC(ALPHA)', '2nd floor', 'MAIN BUILDING', NULL),
('D007', 'LH 14', 'S8 EC(BETA)', '2nd floor', 'MAIN BUILDING', NULL),
('D007', 'LH 13', 'S8 EC(GAMMA)', '2nd floor', 'MAIN BUILDING', NULL),
('D005', 'LH 12', 'S8 APPLIED', '2nd floor', 'MAIN BUILDING', NULL),
('D005', 'LH 11', 'S6 APPLIED', '2nd floor', 'MAIN BUILDING', NULL),
('D005', 'LH 10', 'S4 APPLIED', '2nd floor', 'MAIN BUILDING', NULL),
('D007', 'LH 21', 'S4 EC(GAMMA)', '2nd floor', 'MAIN BUILDING', NULL),
('D007', 'LH 20', 'S4 EC(BETA)', '2nd floor', 'MAIN BUILDING', NULL),
('D007', 'LH 19', 'S4 EC(ALPHA)', '2nd floor', 'MAIN BUILDING', NULL),
('D001', 'LH 1', 'S4 CSBS', '2nd floor', 'KE BLOCK', NULL),
(NULL, NULL, NULL, NULL, NULL, 'animation/S6 AD.mp4'),
(NULL, NULL, NULL, NULL, NULL, '\'animation/S6 AD.mp4\''),
(NULL, NULL, NULL, NULL, NULL, 'animation/S6 AD.mp4');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
