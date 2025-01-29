-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2025 at 04:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `leaving_from` varchar(150) NOT NULL,
  `traveling_to` varchar(150) NOT NULL,
  `number_of_persons` int(11) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_id`, `first_name`, `last_name`, `email`, `phone_number`, `gender`, `leaving_from`, `traveling_to`, `number_of_persons`, `booking_date`) VALUES
(10, 0, 'testing', 'ty', 'test@gmail.com', '3435346456', 'Male', 'Lushnje', 'Netherlands', 5, '2025-01-22 03:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'tahiranwar572@gmail.com', '$2b$10$4wt3P8pF5E.52NClWC2SOuw3Vu89SGNgcHPTsdeBpuLs8p71fkOCm', 'admin', '2025-01-19 18:55:22', '2025-01-19 18:58:02'),
(2, 'test12@gmail.com', '$2a$11$sZt73k7WH5eUWCkmGtQMa.qIV78E3u6e2OE/i6y5Gjz4vMMcToybC', '', '2025-01-20 13:51:20', '2025-01-20 18:51:27'),
(3, 'test21@gmail.com', '$2a$11$DrgDvGZljztvd3P6tnXEGOYwUiZbs6tzTpaKiBw.UVA9rcwU6KRSG', 'admin', '2025-01-20 15:02:07', '2025-01-20 20:02:18'),
(4, 'tr@example.com', '$2a$11$TigVZSvsg1RFDzokbfmFlOl3zYlP.4rpv1QuBrJB9VQJ28tFIcRV6', 'admin', '2025-01-21 14:40:43', '2025-01-21 19:40:43'),
(5, 'uc@gmail.com', '$2a$11$W4XMgQ3SOeWRg6rQgb4Gqup.F3NBsgjyI03C20pYYvXfmSs5wEvta', 'admin', '2025-01-21 15:20:24', '2025-01-21 20:20:26'),
(6, 'awais12@gmail.com', '$2a$11$ZpgZTqti8EzlU19GP4v0mePATHCeKNA6LsRorodKNNiRDZjPTiOWS', 'admin', '2025-01-22 03:31:07', '2025-01-22 08:31:07'),
(7, 'awais124@gmail.com', '$2a$11$AC7ulaJmoJoyIiRvffcMROcEu5wrj6B9WLPz7v/R3zprHvDy30HZK', 'admin', '2025-01-22 03:38:18', '2025-01-22 08:38:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
