-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2024 at 08:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `market`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `BidID` int(11) NOT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `BidDate` date DEFAULT NULL,
  `TaskID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`BidID`, `Amount`, `BidDate`, `TaskID`, `UserID`) VALUES
(1, 55.00, '2023-01-11', 1, 2),
(2, 210.00, '2023-02-17', 2, 4),
(3, 160.00, '2023-03-22', 3, 6),
(4, 80.00, '2023-04-06', 4, 8),
(5, 45.00, '2023-05-02', 5, 10),
(6, 35.00, '2023-06-11', 6, 12),
(7, 105.00, '2023-07-14', 7, 2),
(8, 130.00, '2023-08-12', 8, 4),
(9, 260.00, '2023-09-07', 9, 6),
(10, 30.00, '2023-10-03', 10, 8),
(11, 85.00, '2023-11-16', 11, 10),
(12, 185.00, '2023-12-02', 12, 12),
(13, 45.00, '2024-09-16', 21, 13),
(23, 25.00, '2024-09-07', 22, 15),
(33, 20.00, '2024-09-24', 23, 17),
(43, 15.00, '2024-09-21', 24, 16);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `PaymentID` int(11) NOT NULL,
  `AmountPaid` decimal(10,2) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `TaskID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`PaymentID`, `AmountPaid`, `PaymentDate`, `TaskID`) VALUES
(1, 55.00, '2023-01-16', 1),
(2, 210.00, '2023-02-28', 2),
(3, 160.00, '2023-03-26', 3),
(4, 80.00, '2023-04-10', 4),
(5, 45.00, '2023-05-06', 5),
(6, 35.00, '2023-06-13', 6),
(7, 105.00, '2023-07-21', 7),
(8, 130.00, '2023-08-16', 8),
(9, 260.00, '2023-09-16', 9),
(10, 30.00, '2023-10-06', 10),
(11, 85.00, '2023-11-21', 11),
(12, 185.00, '2023-12-06', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `TaskID` int(11) NOT NULL,
  `TaskDescription` text DEFAULT NULL,
  `Budget` decimal(10,2) DEFAULT NULL,
  `PostDate` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`TaskID`, `TaskDescription`, `Budget`, `PostDate`, `DueDate`, `UserID`) VALUES
(1, 'Fix my leaking sink', 50.00, '2023-01-10', '2023-01-15', 1),
(2, 'Paint my living room', 200.00, '2023-02-15', '2023-02-28', 3),
(3, 'Move furniture to a new house', 150.00, '2023-03-20', '2023-03-25', 5),
(4, 'Assemble IKEA furniture', 75.00, '2023-04-05', '2023-04-10', 7),
(5, 'Install a new light fixture', 40.00, '2023-05-01', '2023-05-05', 9),
(6, 'Mow my lawn', 30.00, '2023-06-10', '2023-06-12', 11),
(7, 'Clean my house', 100.00, '2023-07-12', '2023-07-20', 1),
(8, 'Fix my broken window', 120.00, '2023-08-10', '2023-08-15', 3),
(9, 'Transport heavy goods', 250.00, '2023-09-05', '2023-09-15', 5),
(10, 'Clean my car', 25.00, '2023-10-02', '2023-10-05', 7),
(11, 'Move boxes to storage', 80.00, '2023-11-15', '2023-11-20', 9),
(12, 'Repair my fence', 175.00, '2023-12-01', '2023-12-05', 11),
(21, 'Clean the house', 50.00, '2024-09-15', '2024-09-20', 12),
(22, 'Wash the car', 30.00, '2024-09-05', '2024-09-10', 14),
(23, 'Walk the dog', 15.00, '2024-09-23', '2024-09-26', 18),
(24, 'Grocery shopping', 100.00, '2024-09-20', '2024-09-28', 13),
(25, 'Babysitting', 40.00, '2024-09-24', '2024-09-27', 19);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `RegistrationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Name`, `Email`, `Password`, `Role`, `RegistrationDate`) VALUES
(1, 'Alice Smith', 'alice.smith@example.com', 'password123', 'Customer', '2023-01-05'),
(2, 'Bob Johnson', 'bob.johnson@example.com', 'password456', 'Service Provider', '2023-02-10'),
(3, 'Charlie Davis', 'charlie.davis@example.com', 'password789', 'Customer', '2023-03-15'),
(4, 'Diana White', 'diana.white@example.com', 'password101', 'Service Provider', '2023-04-20'),
(5, 'Eve Brown', 'eve.brown@example.com', 'password102', 'Customer', '2023-05-25'),
(6, 'Frank Green', 'frank.green@example.com', 'password103', 'Service Provider', '2023-06-01'),
(7, 'Grace Adams', 'grace.adams@example.com', 'password104', 'Customer', '2023-07-05'),
(8, 'Henry Wilson', 'henry.wilson@example.com', 'password105', 'Service Provider', '2023-08-10'),
(9, 'Ivy Taylor', 'ivy.taylor@example.com', 'password106', 'Customer', '2023-09-15'),
(10, 'Jack Thomas', 'jack.thomas@example.com', 'password107', 'Service Provider', '2023-10-01'),
(11, 'Karen Harris', 'karen.harris@example.com', 'password108', 'Customer', '2023-11-05'),
(12, 'Leo Martin', 'leo.martin@example.com', 'password109', 'Service Provider', '2023-12-10'),
(13, 'Bob Johnson', 'bob@example.com', 'hashed_password_2', 'Service Provider', '2024-09-20'),
(14, 'Charlie Brown', 'charlie@example.com', 'hashed_password_3', 'Customer', '2024-08-31'),
(15, 'David Wilson', 'david@example.com', 'hashed_password_4', 'Service Provider', '2024-09-10'),
(16, 'Eva Adams', 'eva@example.com', 'hashed_password_5', 'Customer', '2024-08-21'),
(17, 'Frank Miller', 'frank@example.com', 'hashed_password_6', 'Service Provider', '2024-09-05'),
(18, 'Grace Lee', 'grace@example.com', 'hashed_password_7', 'Customer', '2024-09-23'),
(19, 'Henry Taylor', 'henry@example.com', 'hashed_password_8', 'Service Provider', '2024-09-24'),
(20, 'Isla Davis', 'isla@example.com', 'hashed_password_9', 'Customer', '2024-08-26'),
(21, 'Jack Thompson', 'jack@example.com', 'hashed_password_10', 'Service Provider', '2024-08-16'),
(22, 'Liam Garcia', 'liam@example.com', 'hashed_password_11', 'Customer', '2024-07-27'),
(23, 'Mia Rodriguez', 'mia@example.com', 'hashed_password_12', 'Service Provider', '2024-08-11'),
(132, 'Alice Smith', 'alice@example.com', 'hashed_password_1', 'Customer', '2024-09-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`BidID`),
  ADD KEY `TaskID` (`TaskID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `TaskID` (`TaskID`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`TaskID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `BidID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `TaskID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_ibfk_1` FOREIGN KEY (`TaskID`) REFERENCES `tasks` (`TaskID`),
  ADD CONSTRAINT `bids_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`TaskID`) REFERENCES `tasks` (`TaskID`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
