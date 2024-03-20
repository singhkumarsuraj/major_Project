-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 08:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
(1, 'Education', 'expense'),
(2, 'Real Estate', 'expense'),
(3, 'Salary', 'income'),
(4, 'Grocery', 'expense'),
(5, 'LIC', 'expense'),
(6, 'Tution Fees', 'income'),
(7, 'Grocery', 'income');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `expense_id` int(11) NOT NULL,
  `expense_amount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `expense_details` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expense_receipt` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expense_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expense_month` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expense_year` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`expense_id`, `expense_amount`, `category_id`, `expense_details`, `expense_receipt`, `expense_date`, `expense_month`, `expense_year`) VALUES
(1, 10000, 1, 'Testing of Add Expense', 'C250124-0014.pdf', '2024-03-20', '03', '2024'),
(2, 30000, 2, 'Bricks', '', '2024-03-20', '03', '2024');

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
(1, 3000, 7, 'Purchased Some Products form Reliance Smart Point ', '', '2024-03-20', '03', '2024'),
(2, 17500, 6, 'Tution Fees Submitted Rs.17,500', '', '2024-03-04', '03', '2024'),
(3, 90000, 3, 'Salary of Rs. 90,000', '', '2024-03-20', '03', '2024'),
(4, 16250, 6, 'Second Installment of Fee Rs.16250 Submitted Successfully', 'C250124-0014.pdf', '2024-01-25', '03', '2024');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`expense_id`);

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
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `income_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
