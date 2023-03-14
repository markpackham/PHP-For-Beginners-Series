-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 10:19 AM
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
-- Database: `myapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `body`, `user_id`) VALUES
(1, 'PHP is the best', 1),
(3, 'This is Bob\'s note', 1),
(4, 'This is Jim\'s note', 2),
(5, 'Jim wrote another note', 2),
(6, 'Bob wrote another note', 1),
(7, 'Bob wrote a long note.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque purus semper eget duis at tellus at urna condimentum. Diam quam nulla porttitor massa. Sed pulvinar proin gravida hendrerit lectus. Blandit turpis cursus in hac habitasse platea dictumst. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Netus et malesuada fames ac turpis egestas. Cras tincidunt lobortis feugiat vivamus. Libero id faucibus nisl tincidunt eget nullam. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla. Erat nam at lectus urna duis convallis. Dolor purus non enim praesent elementum. Cras sed felis eget velit aliquet. Vitae tortor condimentum lacinia quis vel. Sagittis eu volutpat odio facilisis mauris. Leo duis ut diam quam nulla.\r\n\r\nVitae justo eget magna fermentum iaculis eu. Turpis in eu mi bibendum neque egestas. Hac habitasse platea dictumst quisque sagittis purus sit amet volutpat. Ut morbi tincidunt augue interdum velit euismod in pellentesque. Et ligula ullamcorper malesuada proin libero. Integer enim neque volutpat ac tincidunt vitae semper quis lectus. Congue mauris rhoncus aenean vel elit. Lectus arcu bibendum at varius vel pharetra. Nisl suscipit adipiscing bibendum est ultricies integer. Neque laoreet suspendisse interdum consectetur libero id. A diam sollicitudin tempor id eu nisl nunc. Amet consectetur adipiscing elit duis tristique sollicitudin. Scelerisque in dictum non consectetur. Curabitur vitae nunc sed velit dignissim sodales. Bibendum ut tristique et egestas quis ipsum suspendisse ultrices gravida.', 1),
(8, 'Jim wrote a long note.\r\n\r\nEt malesuada fames ac turpis egestas maecenas pharetra. Consectetur a erat nam at lectus urna duis convallis convallis. Quam viverra orci sagittis eu volutpat odio. Gravida dictum fusce ut placerat. Facilisi etiam dignissim diam quis enim. Placerat in egestas erat imperdiet sed euismod nisi porta. Molestie nunc non blandit massa enim nec dui nunc. Sollicitudin ac orci phasellus egestas tellus rutrum tellus. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus et. Purus gravida quis blandit turpis cursus in. Aliquet nec ullamcorper sit amet risus. Aenean euismod elementum nisi quis. Bibendum at varius vel pharetra. Malesuada nunc vel risus commodo viverra maecenas. Morbi tempus iaculis urna id volutpat lacus.\r\n\r\nQuam quisque id diam vel quam elementum pulvinar etiam non. Neque viverra justo nec ultrices dui sapien eget mi. Sit amet consectetur adipiscing elit ut aliquam. Sed arcu non odio euismod lacinia at quis. Molestie nunc non blandit massa enim nec dui nunc. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Viverra accumsan in nisl nisi scelerisque eu ultrices vitae. Consectetur adipiscing elit duis tristique sollicitudin. Nunc non blandit massa enim nec. Laoreet non curabitur gravida arcu ac. Cras semper auctor neque vitae tempus. Dignissim diam quis enim lobortis scelerisque fermentum dui. Eros in cursus turpis massa tincidunt dui.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1, 'Bob', 'bob@email.com'),
(2, 'Jim', 'jim@email.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
