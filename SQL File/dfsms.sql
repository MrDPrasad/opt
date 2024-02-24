-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2024 at 04:47 PM
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
-- Database: `dfsms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UpdationDate`) VALUES
(1, 'Admin', 'admin', 1234567899, 'admin@test.com', '202cb962ac59075b964b07152d234b70', '2024-01-07 18:30:00', '2024-02-03 13:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CategoryCode` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `CategoryCode`, `PostingDate`) VALUES
(1, 'EYEGLASSES', 'NDP01', '2024-01-10 16:27:43'),
(2, 'COMPUTER GLASSES', 'NDP02', '2024-01-10 16:27:43'),
(3, 'KIDS GLASSES', 'NDP03', '2024-01-10 16:27:43'),
(4, 'CONTACT LENSES', 'NDP04', '2024-01-10 16:27:43'),
(5, 'SUNGLASSES', 'NDP05', '2024-01-10 16:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `CompanyName`, `PostingDate`) VALUES
(1, 'Vincent Chase', '2024-01-10 03:30:51'),
(2, 'Lenskart Air', '2024-01-10 03:30:51'),
(3, 'John Jacobs', '2024-01-10 03:30:51'),
(4, 'OJOS', '2024-01-10 03:30:51'),
(10, 'New Balance', '2024-01-10 03:30:51'),
(11, 'Lenskart STUDIO', '2024-01-10 03:30:51'),
(12, ' Aqualens', '2024-01-10 03:30:51'),
(13, 'Bausch Lomb', '2024-02-03 16:06:12'),
(14, 'Soflens', '2024-02-03 16:06:24'),
(15, 'Acuvue', '2024-02-03 16:06:36'),
(16, 'Iconnect', '2024-02-03 16:06:46'),
(17, 'Alcon', '2024-02-03 16:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `InvoiceNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(150) DEFAULT NULL,
  `CustomerContactNo` bigint(12) DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `InvoiceGenDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `ProductId`, `Quantity`, `InvoiceNumber`, `CustomerName`, `CustomerContactNo`, `PaymentMode`, `InvoiceGenDate`) VALUES
(9, 2, 2, 170532824, 'Nidpn', 1234567890, 'cash', '2024-02-03 16:19:37'),
(11, 8, 1, 616855430, 'manikanta', 24425436526, 'card', '2024-02-06 04:25:47'),
(12, 2, 2, 616855430, 'Ashith', 24425436526, 'card', '2024-02-06 04:25:47'),
(17, 3, 1, 742283859, 'kittu', 1234567890, 'card', '2024-02-06 04:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `ProductPrice` decimal(10,2) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `CategoryName`, `CompanyName`, `ProductName`, `ProductPrice`, `PostingDate`, `UpdationDate`) VALUES
(1, 'EYEGLASSES', 'Acuvue', 'John Jacobs Transparent Full Rim Rectangle', 3500.00, '2024-02-03 16:09:31', '2024-02-03 16:09:31'),
(2, 'CONTACT LENSES', 'Bausch Lomb', 'Vincent Chase Silver Full Rim Square', 1700.00, '2024-02-03 16:10:19', '2024-02-03 16:10:19'),
(3, 'KIDS GLASSES', 'New Balance', 'Hooper Pink Full Rim Wayfarer', 1000.00, '2024-02-03 16:11:03', '2024-02-03 16:11:03'),
(4, 'SUNGLASSES', 'John Jacobs', 'John Jacobs Gold Full Rim Aviator', 3500.00, '2024-02-03 16:11:53', '2024-02-03 16:11:53'),
(5, 'EYEGLASSES', 'OJOS', 'John Jacobs Silver Full Rim Square', 5000.00, '2024-02-03 16:12:42', '2024-02-03 16:12:42'),
(6, 'CONTACT LENSES', 'Lenskart Air', 'Soflens Daily Disposable 30 Lens Per Box Bausch Lomb', 1499.00, '2024-02-03 16:13:33', '2024-02-03 16:13:33'),
(7, 'COMPUTER GLASSES', 'Vincent Chase', 'Blue Block Screen Glasses: Matte Black Full Rim Round ', 1200.00, '2024-02-03 16:14:31', '2024-02-03 16:14:31'),
(8, 'COMPUTER GLASSES', ' Aqualens', 'Lenskart Hustlr', 3000.00, '2024-02-03 16:08:31', '2024-02-03 16:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `description` text DEFAULT NULL,
  `right_spg` varchar(50) NOT NULL,
  `right_cyl` varchar(50) NOT NULL,
  `right_axis` varchar(50) NOT NULL,
  `left_spg` varchar(50) NOT NULL,
  `left_cyl` varchar(50) NOT NULL,
  `left_axis` varchar(50) NOT NULL,
  `lens` varchar(255) NOT NULL,
  `frames` varchar(255) NOT NULL,
  `delivery_date` date NOT NULL,
  `t_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `dob`, `address`, `email`, `mobile`, `description`, `right_spg`, `right_cyl`, `right_axis`, `left_spg`, `left_cyl`, `left_axis`, `lens`, `frames`, `delivery_date`, `t_no`) VALUES
(1, 'ni_dpn', '2003-03-30', 'sullia-12345', 'ni_dpn@gmail.com', '0987654321', 'done..', '12', '44', '9', '33', '23', '8', 'wfwjhfr', 'wejfh', '2024-02-22', '123456'),
(5, 'dpn', '2024-01-30', 'q344t', 'nk2457607@gmail.com', '765432', 'yujtrhdgsf', '12', '55', '12', '332', '44', '87', 'ewrhy', 'eryjr', '2024-02-23', '3456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CompanyName` (`CompanyName`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`ProductId`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compname` (`CompanyName`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD CONSTRAINT `pid` FOREIGN KEY (`ProductId`) REFERENCES `tblproducts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
