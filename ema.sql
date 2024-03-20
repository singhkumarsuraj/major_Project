-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 10:30 AM
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
-- Database: `ema`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `category_purpose` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_purpose`) VALUES
(1, 'Education', 'income'),
(2, 'Education', 'expense'),
(3, 'salary', 'income'),
(4, 'Clothing', 'expense'),
(5, 'Testing', 'income'),
(6, 'Electronics', 'expense'),
(7, 'Testing', 'income'),
(8, 'Testing', 'income'),
(9, 'Final Test', 'income'),
(10, 'Computer', 'expense'),
(11, 'Wednesday', 'income');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `income_id` int(11) NOT NULL,
  `income_amount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `income_details` varchar(255) NOT NULL,
  `income_receipt` varchar(255) NOT NULL,
  `income_date` varchar(255) NOT NULL,
  `income_month` varchar(255) NOT NULL,
  `income_year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`income_id`, `income_amount`, `category_id`, `income_details`, `income_receipt`, `income_date`, `income_month`, `income_year`) VALUES
(1, 10000, 1, 'No Details', '', '2024-03-20', '03', '2024'),
(2, 20000, 11, 'Final Testing', '', '2024-03-20', '03', '2024'),
(3, 20000, 11, 'Final Testing', '', '2024-03-20', '03', '2024'),
(4, 20000, 11, 'Final Testing', '', '2024-03-20', '03', '2024'),
(5, 20000, 11, 'Final Testing', '', '2024-03-20', '03', '2024'),
(6, 20000, 1, 'This is a Sample Receipt for Testing', 'sample_receipt.png', '2024-03-20', '03', '2024'),
(7, 20000, 1, 'This is a Sample Receipt for Testing', 'sample_receipt.png', '2024-03-20', '03', '2024'),
(8, 150000, 9, 'Final Testing', 'sample_receipt.png', '2024-03-20', '03', '2024'),
(9, 1, 1, 'Testing', 'sample_receipt.png', '2024-03-20', '03', '2024'),
(10, 10000, 1, 'Testing', 'sample_receipt.png', '2024-03-20', '03', '2024'),
(11, 1000, 5, 'Grocery Receipt Upload Testing', 'grocery.jfif', '2024-03-20', '03', '2024'),
(12, 1000, 5, 'Grocery Receipt Upload Testing', 'grocery.jfif', '2024-03-20', '03', '2024'),
(13, 0, 1, 'Rs. 0 Sample Amount Receipt Added for Testing', 'education.jfif', '2024-03-20', '03', '2024'),
(14, 1000000, 1, '100000', 'education.jfif', '2024-03-20', '03', '2024'),
(15, 10000, 1, 'Random es', 'education.jfif', '2024-03-31', '03', '2024'),
(16, 100000, 1, 'final', 'final.png', '2024-03-20', '03', '2024');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`income_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `income_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
