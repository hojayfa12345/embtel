-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2020 at 08:58 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yyy`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hojayfa', 'hojayfa25@gmail.com', '$2y$10$b65EgSGwxicBOaf8MJeNueqW/bPCB/Q9OnZShvOpB6PFFecbVF0a2', '17fe3e3WIjK7I6LS9EXFZWTZDqRyu0Zvk4OzYnbNdvzTAxPTeRE4txx6Qdlw', '2020-06-20 00:55:52', '2020-06-20 00:55:52'),
(2, 'solman', 'solman25@gmail.com', '$2y$10$hCeyNDZLqY3wCb5CzrlGoODGXLvio3Sva/tMII0LLQklyMPslNtjm', '4UwQEbIPWf3b8xKyMe7TqyLS0Fa94asImkCe84wXaDt8Hlf4WnudmyccBQYv', '2020-06-20 00:56:54', '2020-06-20 00:56:54'),
(3, 'soniya', 'soniya25@gmail.com', '$2y$10$x3efBi51R/ouckuzHf6V2./dO9nwg7LAavNs6mBoPxKbQnXBKTwyi', 'sFU5VwWdYwdzfg6srMF9qKJuKIJ5fm9EGvECnqGJW4Fa1WGhRNCO8LTetcQw', '2020-06-20 00:57:23', '2020-06-20 00:57:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
