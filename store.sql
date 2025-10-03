-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2025 at 02:05 AM
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
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(20) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `customer_tel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_tel`) VALUES
('C01', 'ALI', 71321009),
('C02', 'ASMA', 77345823),
('C03', 'Mamadou', 77123456),
('C04', 'Fatou', 77234567),
('C05', 'Omar', 77345678),
('C06', 'Awa', 77456789),
('C07', 'Seydou', 77567890),
('C08', 'Mariama', 77678901),
('C09', 'Cheikh', 77789012),
('C10', 'Binta', 77890123),
('C11', 'Abdou', 77901234),
('C12', 'Ndeye', 78012345),
('C13', 'Ibrahima', 78123456),
('C14', 'Coumba', 78234567),
('C15', 'Amadou', 78345678),
('C16', 'Aissatou', 78456789),
('C17', 'Mohamed', 78567890),
('C18', 'Khady', 78678901),
('C19', 'Ousmane', 78789012),
('C20', 'Sira', 78890123),
('C21', 'Alassane', 78901234),
('C22', 'Aminata', 79012345),
('C23', 'Moussa', 79123456),
('C24', 'Astou', 79234567),
('C25', 'Ibra', 79345678),
('C26', 'Fama', 79456789),
('C27', 'Cheikh', 79567890),
('C28', 'Hawa', 79678901),
('C29', 'Babacar', 79789012),
('C30', 'Ndella', 79890123),
('C31', 'Mamadou', 79901234),
('C32', 'Awa', 70012345),
('C33', 'Omar', 70123456),
('C34', 'Fatou', 70234567),
('C35', 'Seydou', 70345678),
('C36', 'Binta', 70456789),
('C37', 'Abdou', 70567890),
('C38', 'Mariama', 70678901),
('C39', 'Ibrahima', 70789012),
('C40', 'Coumba', 70890123),
('C41', 'Amadou', 70901234),
('C42', 'Aissatou', 71012345),
('C43', 'Mohamed', 71123456),
('C44', 'Khady', 71234567),
('C45', 'Ousmane', 71345678),
('C46', 'Sira', 71456789),
('C47', 'Alassane', 71567890),
('C48', 'Aminata', 71678901),
('C49', 'Moussa', 71789012),
('C50', 'Astou', 71890123),
('C51', 'Ibra', 71901234),
('C52', 'Fama', 72012345);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `order_date` date DEFAULT curdate(),
  `quantity` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `product_id`, `order_date`, `quantity`, `total_amount`) VALUES
(1, 'C01', 'P02', NULL, 2, 9128),
(2, 'C02', 'P01', '0000-00-00', 1, 3299),
(3, 'C03', 'P02', '2025-10-01', 1, 4599),
(4, 'C03', 'P02', '2020-10-03', 2, 9198),
(5, 'C03', 'P02', '2020-07-05', 1, 4599),
(6, 'C03', 'P03', '2020-07-06', 1, 3999),
(7, 'C03', 'P03', '2020-07-08', 2, 7998),
(8, 'C04', 'P04', '2025-10-02', 1, 5999),
(9, 'C04', 'P04', '2020-10-29', 2, 11998),
(10, 'C04', 'P04', '2025-10-06', 1, 5999),
(11, 'C04', 'P04', '2020-03-07', 1, 5999),
(12, 'C05', 'P05', '2020-10-20', 1, 12990),
(13, 'C05', 'P05', '2020-03-05', 2, 25980),
(14, 'C05', 'P06', '2020-01-06', 1, 199),
(15, 'C05', 'P06', '2025-10-08', 2, 398),
(16, 'C05', 'P06', '2020-02-09', 1, 199),
(17, 'C06', 'P07', '2020-03-04', 1, 4599),
(18, 'C06', 'P07', '2020-10-07', 1, 4599),
(19, 'C06', 'P08', '2025-10-08', 1, 4999),
(20, 'C06', 'P08', '2020-10-17', 2, 9998),
(21, 'C06', 'P08', '2025-10-11', 1, 4999),
(22, 'C07', 'P09', '2025-10-05', 1, 799),
(23, 'C07', 'P09', '2025-10-07', 2, 1598),
(24, 'C07', 'P09', '2025-10-09', 1, 799),
(25, 'C07', 'P09', '2025-10-10', 3, 2397),
(26, 'C08', 'P10', '2025-10-06', 1, 2999),
(27, 'C08', 'P10', '2025-07-08', 2, 5998),
(28, 'C08', 'P10', '2025-07-09', 1, 2999),
(29, 'C08', 'P11', '2025-07-10', 2, 2998),
(30, 'C08', 'P11', '2025-07-12', 1, 1499),
(31, 'C09', 'P12', '2025-10-11', 1, 149),
(32, 'C09', 'P12', '2025-07-13', 2, 298),
(33, 'C09', 'P13', '2025-07-14', 1, 26999),
(34, 'C09', 'P13', '2025-10-16', 1, 26999),
(35, 'C09', 'P13', '2025-07-17', 2, 53998),
(36, 'C10', 'P14', '2025-10-12', 3, 1197),
(37, 'C10', 'P14', '2025-07-14', 1, 399),
(38, 'C10', 'P15', '2025-07-15', 1, 52990),
(39, 'C10', 'P15', '2025-10-16', 2, 105980),
(40, 'C10', 'P15', '2025-07-17', 1, 52990),
(41, 'C10', 'P15', '2025-07-18', 1, 52990);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` varchar(20) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL CHECK (`price` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `category`, `price`) VALUES
('P01', 'Samsung Galaxy S20', 'Smartphone', 32990),
('P02', 'ASUS Notebook', 'PC', 4599),
('P03', 'HP Laptop', 'PC', 3999),
('P04', 'iPhone 12', 'Smartphone', 5999),
('P05', 'Dell Monitor', 'Monitor', 12990),
('P06', 'Logitech Mouse', 'Accessory', 199),
('P07', 'Lenovo Laptop', 'PC', 4599),
('P08', 'Google Pixel', 'Smartphone', 4999),
('P09', 'Canon Printer', 'Printer', 799),
('P10', 'Samsung Tab', 'Tablet', 2999),
('P11', 'Asus Monitor', 'Monitor', 1499),
('P12', 'HP Keyboard', 'Accessory', 149),
('P13', 'LG TV', 'TV', 26999),
('P14', 'Sony Headphones', 'Accessory', 399),
('P15', 'Microsoft Surface', 'PC', 52990),
('P16', 'Xiaomi Phone', 'Smartphone', 2699),
('P17', 'Acer Laptop', 'PC', 4299),
('P18', 'Dell Keyboard', 'Accessory', 179),
('P19', 'Samsung Monitor', 'Monitor', 1599),
('P20', 'Canon Camera', 'Camera', 23997),
('P21', 'Sony TV', 'TV', 6499),
('P22', 'Logitech Webcam', 'Accessory', 249),
('P23', 'iPad', 'Tablet', 3999),
('P24', 'Huawei Phone', 'Smartphone', 3499),
('P25', 'Asus Notebook', 'PC', 14599),
('P26', 'Lenovo Monitor', 'Monitor', 1399),
('P27', 'HP Laptop Pro', 'PC', 4999),
('P28', 'Samsung Galaxy S21', 'Smartphone', 3999),
('P29', 'Canon Scanner', 'Printer', 899),
('P30', 'LG Monitor', 'Monitor', 1299),
('P31', 'Dell Laptop', 'PC', 4499),
('P32', 'Sony Headset', 'Accessory', 299),
('P33', 'Microsoft Keyboard', 'Accessory', 149),
('P34', 'Acer Monitor', 'Monitor', 1499),
('P35', 'Apple Watch', 'Accessory', 1999),
('P36', 'Samsung TV', 'TV', 5999),
('P37', 'Google Nest', 'Smart Home', 899),
('P38', 'HP Printer', 'Printer', 799),
('P39', 'Lenovo Tablet', 'Tablet', 3299),
('P40', 'Xiaomi Tablet', 'Tablet', 2499),
('P41', 'Canon Lens', 'Camera', 1499),
('P42', 'Sony Camera', 'Camera', 2999),
('P43', 'Dell Mouse', 'Accessory', 149),
('P44', 'Logitech Keyboard', 'Accessory', 199),
('P45', 'Asus Laptop Pro', 'PC', 4799),
('P46', 'Samsung Galaxy S22', 'Smartphone', 4499),
('P47', 'HP Desktop', 'PC', 3999),
('P48', 'LG TV OLED', 'TV', 7999),
('P49', 'Microsoft Surface Pr', 'PC', 5599),
('P50', 'Apple MacBook', 'PC', 6999),
('P51', 'Lenovo ThinkPad', 'PC', 4999),
('P52', 'Asus Zenbook', 'PC', 4299);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
