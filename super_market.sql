-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 10:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `super_market`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_Id` varchar(10) NOT NULL,
  `Emp_Name` varchar(30) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `DOB` date NOT NULL,
  `B_Group` varchar(3) NOT NULL,
  `Post` varchar(15) NOT NULL,
  `Adhaar_no` varchar(12) NOT NULL,
  `Phone_no` bigint(10) NOT NULL,
  `Email_Id` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Pin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_Id`, `Emp_Name`, `Gender`, `DOB`, `B_Group`, `Post`, `Adhaar_no`, `Phone_no`, `Email_Id`, `Address`, `Pin`) VALUES
('1', 'Payal', 'Female', '0000-00-00', 'B+', 'CLERK', '2147483647', 2147483647, 'paayalshah93@gmail.com', 'Kumarswamy Layout', 560078),
('2', 'Aditya', 'Male', '1997-09-15', 'B+', 'CLERK', '234567890123', 2147483657, 'adi1997shah@gmail.com', ' Kumarswamy Layout', 560078),
('3', 'Aranyak', 'Male', '1996-10-13', 'O+', 'HELPER', '123456789012', 9876543211, 'rnyk@gmail.com', 'Asansol,West Bengal', 987738),
('4', 'Praveen', 'Male', '1996-07-31', 'B+', 'SECURITY', '867482837572', 8726562372, 'praveen@gmail.com', 'Dhanbad,Jharkhand ', 888888),
('5', 'Dev', 'Male', '1998-01-17', 'B+', 'CLERK', '634342354364', 8756453235, 'dev@gmail.com', 'jaipur,Rajasthan ', 764364);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Mail_id` varchar(30) NOT NULL,
  `Rate` int(1) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Mail_id`, `Rate`, `Description`) VALUES
('akii@gmail.com', 5, 'Awesome...'),
('dev@gmail.com', 5, 'Accha h..'),
('satish@gmail.com', 5, 'Sirf accha nai..bohot accha h...');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `Password`) VALUES
('1', 'praveen'),
('3', 'rnyk'),
('5', 'dev'),
('Aditya', 'Aditya'),
('admin', 'admin'),
('Payal', 'Payal');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Phno` bigint(10) NOT NULL,
  `Cus_Name` varchar(20) NOT NULL,
  `Email_Id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Phno`, `Cus_Name`, `Email_Id`) VALUES
(9090909090, 'Ajay', 'ajay@gmail.com'),
(9809809809, 'zee', 'zash@gmail.com'),
(9876598765, 'Abrar', 'abr@gmail.com'),
(9879879879, 'Adarsh', 'adarsh@gmail.com'),
(9898767654, 'Ashish', 'ash@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `replenishment`
--

CREATE TABLE `replenishment` (
  `Request_Id` int(100) NOT NULL,
  `Supplier_ID` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Item_id` int(5) NOT NULL,
  `Qty` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `replenishment`
--

INSERT INTO `replenishment` (`Request_Id`, `Supplier_ID`, `Date`, `Type`, `Item_id`, `Qty`) VALUES
(1, 's1', '2023-01-19', 'home_personal_care', 10, 9),
(7, 's1', '2023-01-20', 'grocery', 18, 69),
(17, 's5', '2023-01-20', 'dairy', 18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `Item_id` int(5) NOT NULL,
  `Item_Name` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Quantity` int(4) NOT NULL,
  `Price` float NOT NULL,
  `Supplier_Id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`Item_id`, `Item_Name`, `Type`, `Quantity`, `Price`, `Supplier_Id`) VALUES
(10, 'Fair & Lovely', 'home_personal_care', 20, 50, 's1'),
(11, 'Meglow', 'home_personal_care', 20, 95, 's1'),
(12, 'Milk', 'dairy', 20, 20, 's2'),
(13, 'Paneer', 'dairy', 20, 75, 's2'),
(14, 'Masoor Dal', 'grocery', 15, 90, 's3'),
(15, 'Kabuli Chana', 'grocery', 15, 80, 's3'),
(16, 'Nirma Washing Powder', 'bed_bath', 15, 40, 's4'),
(17, 'Medimix', 'bed_bath', 20, 15, 's4'),
(18, 'TV', 'home_appliances', 20, 30000, 's5'),
(19, 'Microwave', 'home_appliances', 10, 10000, 's5'),
(20, 'Plate', 'Crockery', 20, 20, 's6'),
(21, 'Glass', 'Crockery', 20, 15, 's6');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Supplier_Id` varchar(20) NOT NULL,
  `Supplier_Name` varchar(30) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Contact_No` bigint(10) NOT NULL,
  `Address` text NOT NULL,
  `pin` int(11) DEFAULT NULL,
  `Mail` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supplier_Id`, `Supplier_Name`, `Type`, `Contact_No`, `Address`, `pin`, `Mail`) VALUES
('s1', 'Adii', 'home personal care', 9898989898, 'K.S. Layout				', 560111, 'adiii@gmail.com'),
('s2', 'Akask', 'dairy', 9879879879, 'K.S. Layout,Bangaluru				', 560111, 'akii@gmail.com'),
('s3', 'Arvind', 'grocery', 9888889888, 'K.S. Layout				', 560111, 'arv@gmail.com'),
('s4', 'Zeeshan', 'bed bath', 9876543210, 'Shanti Nagar				', 560027, 'zee@gmail.com'),
('s5', 'Satish', 'home appliances', 9988776655, 'K.s. Layout				', 560111, 'satish@gmail.com'),
('s6', 'Chetan', 'Crockery', 987654398, 'Chikpete				', 560078, 'chetan@gmail.com'),
('s7', 'Baira', 'bed bath', 988680424, 'gandhi bazar,shimoga			', 577201, 'baira@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_no` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_receiver_name` varchar(250) NOT NULL,
  `order_receiver_address` text NOT NULL,
  `order_total_before_tax` decimal(10,2) NOT NULL,
  `order_total_tax1` decimal(10,2) NOT NULL,
  `order_total_tax2` decimal(10,2) NOT NULL,
  `order_total_tax` decimal(10,2) NOT NULL,
  `order_total_after_tax` decimal(10,2) NOT NULL,
  `order_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,2) NOT NULL,
  `order_item_price` decimal(10,2) NOT NULL,
  `order_item_actual_amount` decimal(10,2) NOT NULL,
  `order_item_tax1_rate` decimal(10,2) NOT NULL,
  `order_item_tax1_amount` decimal(10,2) NOT NULL,
  `order_item_tax2_rate` decimal(10,2) NOT NULL,
  `order_item_tax2_amount` decimal(10,2) NOT NULL,
  `order_item_final_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `query` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_Id`),
  ADD UNIQUE KEY `Email_Id` (`Email_Id`),
  ADD UNIQUE KEY `Phone_no` (`Phone_no`),
  ADD UNIQUE KEY `Adhaar_no` (`Adhaar_no`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Mail_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Phno`),
  ADD UNIQUE KEY `Email_Id` (`Email_Id`);

--
-- Indexes for table `replenishment`
--
ALTER TABLE `replenishment`
  ADD PRIMARY KEY (`Request_Id`),
  ADD KEY `SS1` (`Supplier_ID`),
  ADD KEY `SS2` (`Item_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`Item_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supplier_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `replenishment`
--
ALTER TABLE `replenishment`
  ADD CONSTRAINT `SS1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SS2` FOREIGN KEY (`Item_id`) REFERENCES `stock` (`Item_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
