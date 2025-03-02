-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2025 at 04:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secureencryptionplatform`
--

-- --------------------------------------------------------

--
-- Table structure for table `activitylog`
--

CREATE TABLE `activitylog` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activitylog`
--

INSERT INTO `activitylog` (`id`, `userId`, `dateTime`) VALUES
(1, 2, '2025-01-25 00:38:15'),
(2, 2, '2025-01-25 22:34:44'),
(3, 4, '2025-01-26 00:12:12'),
(4, 2, '2025-01-26 00:13:01'),
(5, 4, '2025-01-26 00:17:28'),
(6, 2, '2025-01-26 00:52:03'),
(7, 4, '2025-01-26 04:35:30'),
(8, 2, '2025-01-26 04:36:06'),
(12, 2, '2025-01-26 04:57:25'),
(14, 8, '2025-02-26 17:38:24'),
(15, 4, '2025-02-26 17:45:08'),
(16, 8, '2025-02-26 17:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `password`, `status`) VALUES
(1, 'Haneen', 'admin', 'hanenalbishi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `decrypt`
--

CREATE TABLE `decrypt` (
  `decryptId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `text` text NOT NULL,
  `dateTime` datetime DEFAULT current_timestamp(),
  `decrptionType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `decrypt`
--

INSERT INTO `decrypt` (`decryptId`, `userId`, `text`, `dateTime`, `decrptionType`) VALUES
(1, 2, 'sasd as', '2025-01-24 17:31:34', 'Base64'),
(2, 2, 'sasd as', '2025-01-24 17:37:05', 'Base64'),
(3, 2, 'daaa', '2025-01-25 15:50:58', 'AES'),
(4, 2, 'daaa', '2025-01-25 17:44:42', 'AES'),
(5, 2, 'hi', '2025-01-25 18:56:50', 'RSA'),
(6, 2, 'hi', '2025-01-25 19:02:12', 'RSA'),
(7, 2, 'hi', '2025-01-25 19:11:03', 'RSA'),
(8, 2, 'add', '2025-01-25 19:59:56', 'AES'),
(9, 8, 'Haneen(hanenalbishi@gmail.com)', '2025-02-26 09:39:58', 'RSA'),
(10, 8, 'Haneen(hanenalbishi@gmail.com)', '2025-02-26 09:40:18', 'RSA'),
(11, 8, 'Hi Haneen are you here', '2025-02-26 09:41:41', 'AES'),
(12, 8, 'hi ', '2025-02-26 09:47:51', 'AES');

-- --------------------------------------------------------

--
-- Table structure for table `encrypt`
--

CREATE TABLE `encrypt` (
  `encryptId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `text` text NOT NULL,
  `dateTime` datetime DEFAULT current_timestamp(),
  `encryptiontype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `encrypt`
--

INSERT INTO `encrypt` (`encryptId`, `userId`, `text`, `dateTime`, `encryptiontype`) VALUES
(9, 2, 'd+Op7s4qXHA0zuNAZutXctCE1YcwBUfvmTuwBmO7WSCq4NN5Smies9c8CCwR+/ENH2g3Hcb9+6AECsibX+vayng95MmnubsfXdDoyHQGVrbbK46ZEncXZ7ODL2zRj7ok+4GE3mUsKnWVvVCc56PIF0U/kAhJ8JRKCEQR1OH8nMiHZrrs3/hOVAfAis8gIr8ZvXfPR/l9MVnP1tiawy36XeAzad7sSS2gPLGm5rzNoOMC9UvOhSabdxsB5T8sbQsuER/vTZLJYkV0Obu/yRW8Q5xEsfqp+a5EuHoWgdQXL9Y5+pw5GngqJfwEWwfAqXeyeYpv+8iCl/wqZdWdVtgVUg==', '2025-01-25 18:56:38', 'RSA'),
(11, 2, 'azB6MA==', '2025-01-25 19:59:44', 'AES'),
(12, 8, 'C0RgeZ5giH+k2YnFw0LpJXqlchrS0OQGjJ+iMYl1bg5/N6kQvPjiyuL2LmUG3tm+Ea98i1eU8jp/577Xx+pQJ3/KKWkE9y1qrE1rE9R2dPLdspD1tP7qELTPBD91aMewn2RaGW/2iLHOL4TqSsaSp4bJAp1KDA+sbCKiXw80MNccagxtIPjEhQNN1zYk/3vtaLPm85PmBeHE7JlmrqKVVtboUZK8IvzebQepMPKI5Bz3ZI4xZykrwvqRoybAeff+JEZ4cw9hC/U6fmZtkRvOYIj4J/fk12fVSkc3HwjAopvcMQOzhHgO63PyyEiOUj0CBeKHGPywfDXiqdEgRgqqBA==', '2025-02-26 09:38:59', 'RSA'),
(13, 8, 'dWtHd25OWGxKNXcrZkJsTkdSUkZZdmszeUhWWEZ3PT0=', '2025-02-26 09:40:57', 'AES'),
(14, 8, 'UmFoYWY=', '2025-02-26 09:41:21', 'Base64'),
(15, 4, 'bWtHdw==', '2025-02-26 09:45:47', 'AES'),
(16, 4, 'czIzag==', '2025-02-26 09:45:57', 'AES');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `feedbackText` text NOT NULL,
  `feedbackDate` datetime DEFAULT current_timestamp(),
  `state` varchar(50) DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `userId`, `feedbackText`, `feedbackDate`, `state`) VALUES
(1, 2, 'sad', '2025-01-24 16:39:43', 'resolved'),
(3, 2, 'hi we will solve your problem', '2025-02-26 09:31:30', 'read'),
(4, 8, 'Hi admin i have problem', '2025-02-26 09:48:15', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `sendreceive`
--

CREATE TABLE `sendreceive` (
  `id` int(11) NOT NULL,
  `senderId` int(11) DEFAULT NULL,
  `receiverId` int(11) DEFAULT NULL,
  `messageText` text NOT NULL,
  `dateTime` datetime DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'sent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sendreceive`
--

INSERT INTO `sendreceive` (`id`, `senderId`, `receiverId`, `messageText`, `dateTime`, `status`) VALUES
(51, 4, 2, 'ddd', '2025-01-25 20:08:15', 'read'),
(53, 4, 8, 'bWtHdw==', '2025-02-26 09:45:47', 'read'),
(54, 4, 8, 'czIzag==', '2025-02-26 09:45:57', 'read'),
(55, 4, 8, 'AES', '2025-02-26 09:46:05', 'read'),
(56, 8, 4, 'ok', '2025-02-26 09:47:25', 'sent');

-- --------------------------------------------------------

--
-- Table structure for table `shareaccount`
--

CREATE TABLE `shareaccount` (
  `shareId` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Accept','Reject','Ignore','') NOT NULL,
  `sharedfrom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shareaccount`
--

INSERT INTO `shareaccount` (`shareId`, `username`, `userId`, `datetime`, `status`, `sharedfrom`) VALUES
(8, 'asd1', 2, '2025-01-25 23:10:35', 'Accept', 2),
(9, 'asd', 2, '2025-01-25 23:10:42', 'Accept', 2),
(10, 'Raghad', 8, '2025-02-26 17:43:38', 'Accept', 8),
(11, 'Rabiah', 8, '2025-02-26 17:43:45', 'Ignore', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT 'unactive',
  `accountType` enum('Public','Private') DEFAULT 'Private',
  `profile` text DEFAULT '../images/logo.png',
  `statusOnline` enum('online','close') DEFAULT 'close'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `status`, `accountType`, `profile`, `statusOnline`) VALUES
(2, 'Rabiah', 'Rabiah', 'Rabiah@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'active', 'Public', '../images/20250124235723_DALL·E 2024-12-29 07.37.53 - A modern and expressive logo design for \'الرؤية التقنية\' (Technical Vision), focusing on innovation and digital technology without using eye imagery. .webp', 'close'),
(4, 'Raghad', 'Raghad', 'ghayafoad77@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'active', 'Public', '../images/logo.png', 'close'),
(7, 'Rahaf', 'Rahaf', 'Rahaf@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'active', 'Private', '../images/logo.png', 'close'),
(8, 'Haneen', 'Haneen', 'hanenalbishi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'active', 'Public', '../images/logo.png', 'close');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activitylog`
--
ALTER TABLE `activitylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `decrypt`
--
ALTER TABLE `decrypt`
  ADD PRIMARY KEY (`decryptId`),
  ADD KEY `decrypt_ibfk_1` (`userId`);

--
-- Indexes for table `encrypt`
--
ALTER TABLE `encrypt`
  ADD PRIMARY KEY (`encryptId`),
  ADD KEY `encrypt_ibfk_1` (`userId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`),
  ADD KEY `feedback_ibfk_1` (`userId`);

--
-- Indexes for table `sendreceive`
--
ALTER TABLE `sendreceive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendreceive_ibfk_1` (`senderId`),
  ADD KEY `sendreceive_ibfk_2` (`receiverId`);

--
-- Indexes for table `shareaccount`
--
ALTER TABLE `shareaccount`
  ADD PRIMARY KEY (`shareId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activitylog`
--
ALTER TABLE `activitylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `decrypt`
--
ALTER TABLE `decrypt`
  MODIFY `decryptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `encrypt`
--
ALTER TABLE `encrypt`
  MODIFY `encryptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sendreceive`
--
ALTER TABLE `sendreceive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `shareaccount`
--
ALTER TABLE `shareaccount`
  MODIFY `shareId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `decrypt`
--
ALTER TABLE `decrypt`
  ADD CONSTRAINT `decrypt_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `encrypt`
--
ALTER TABLE `encrypt`
  ADD CONSTRAINT `encrypt_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sendreceive`
--
ALTER TABLE `sendreceive`
  ADD CONSTRAINT `sendreceive_ibfk_1` FOREIGN KEY (`senderId`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sendreceive_ibfk_2` FOREIGN KEY (`receiverId`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
