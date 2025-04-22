-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 09:05 AM
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
-- Database: `u652554119_admissions`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales_history`
--

CREATE TABLE `sales_history` (
  `sale_id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sale_date` datetime DEFAULT current_timestamp(),
  `rfid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_history`
--

INSERT INTO `sales_history` (`sale_id`, `buyer_id`, `product_name`, `quantity`, `sale_date`, `rfid`) VALUES
(33, 22, 'Crayons', 1, '2025-03-18 07:48:25', 2558453492),
(34, 23, 'Uniforms', 1, '2025-03-18 07:48:58', 2573032184),
(35, 24, 'ID', 1, '2025-03-18 07:49:17', NULL),
(36, 22, 'Day Unifrom', 20, '2025-03-18 07:50:31', 2558453492),
(37, 25, 'P.E Uniform', 1, '2025-03-19 01:16:48', NULL),
(38, 26, 'ID', 7, '2025-03-19 01:37:58', 2566721524),
(39, 24, 'Computers', 1, '2025-04-03 02:55:26', NULL),
(40, 27, 'Crayons', 2000, '2025-04-03 02:59:54', NULL),
(41, 27, 'P.E Uniform', 2, '2025-04-07 01:20:03', NULL),
(42, 28, 'Pencil', 3, '2025-04-07 02:26:42', NULL),
(43, 28, 'P.E Uniform', 3, '2025-04-07 02:26:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales_history`
--
ALTER TABLE `sales_history`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales_history`
--
ALTER TABLE `sales_history`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales_history`
--
ALTER TABLE `sales_history`
  ADD CONSTRAINT `sales_history_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`buyer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
