-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2021 at 10:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_mvc_framework`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `migration` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `created_at`) VALUES
(1, 'm01_initial.php', '2021-09-16 16:50:16'),
(2, 'm02_add_password.php', '2021-09-16 16:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `status`, `created_at`, `password`) VALUES
(1, 'azad@gamil.com', 'Azadul', 'Islam', 0, '2021-09-16 16:50:32', 'azad1234'),
(2, 'azad2@gamil.com', 'Azadul2', 'Islam23', 0, '2021-09-16 16:55:33', 'azad1234azad'),
(3, 'azad2@gamil.com', 'Azadul2', 'Islam23', 0, '2021-09-16 16:56:35', 'azad1234azad'),
(4, 'azad2@gamil.com', 'Azadul2', 'Islam23', 0, '2021-09-16 17:00:19', 'azad1234azad'),
(5, 'azad2@gamil.com', 'Azadul2', 'Islam23', 0, '2021-09-16 17:13:51', '$2y$10$JvusxTdpwlErdBPzseflaeyTdUWvayh68KQDUnEHLc1UPJwel2n6u'),
(6, 'azad2@gamil.com', 'Azadul2', 'Islam23', 0, '2021-09-16 17:20:11', '$2y$10$KbxIM1NCtQGdiDtSsSS9XePWeDuGh6IkYUAqX77ynpvxwM5O.U39K'),
(7, 'azad2@gamil.com', 'Azadul2', 'Islam23', 1, '2021-09-16 17:20:54', '$2y$10$aIBT42YEZSncm7Hqjf0CBeJ5297ObUHmz0p9mvt4NtPR6FVpnH2Ti'),
(8, 'azad@gamil.com2', 'Azadul', 'Islam', 0, '2021-11-07 00:32:03', '$2y$10$ULoM7yFHI4YWYh4CxYiQjuW4ldVQd54pqOVP85VL9ffYiXcJfF5oi'),
(9, 'azad@gamil.com23', 'Azadul', 'Islam', 0, '2021-11-07 00:44:36', '$2y$10$Bfc5Z/lai6d8gE9t.Bi25ucfwZvPwFs0ylduIZE4RamNi4KS9CvOK'),
(10, 'azad@gamil.com23', 'Azadul', 'Islam', 0, '2021-11-07 00:48:28', '$2y$10$5B8IHwoPttvRgCpFj/XaBuQKaa7bltidIy8S.HVNOj3QTJvW.DbT.'),
(11, 'azad@gamil.com', 'Azadul', 'Islam', 0, '2021-11-07 00:50:01', '$2y$10$s6RzK3eQ977.g1UHXlcvZOSqKGZMmEPoR.2DeUt2wtFSFYsIucAs.'),
(12, 'azad@gamil.com34', 'Azadul', 'Islam', 0, '2021-11-07 00:53:31', '$2y$10$10CjJZn6kOJK8VqASjDddepuQiXlXZIr.U.Nr7gh84yvznD85B6Si'),
(13, 'azad@gamil.com344', 'Azadul', 'Islam', 0, '2021-11-07 00:54:08', '$2y$10$ckF6Xakl2AfvK5fQi.ZQ8.IiHsurWJRPFsfdInrXcQ.o48rT2DLDK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
