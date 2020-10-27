-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 11:31 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrumdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'name',
  `user_id` int(11) NOT NULL COMMENT 'userCreatedId',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT 'deleted',
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'createdAt',
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'updatedAt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='boards';

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `name`, `user_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'works list', 1, 0, '2020-10-27 10:34:55.000000', '2020-10-27 10:34:55.000000'),
(2, 'works list 1', 1, 0, '2020-10-27 10:34:55.000000', '2020-10-27 10:34:55.000000'),
(3, 'works list 2', 1, 0, '2020-10-27 10:34:55.000000', '2020-10-27 10:34:55.000000'),
(4, 'works list 3', 1, 0, '2020-10-27 10:34:55.000000', '2020-10-27 10:34:55.000000'),
(5, 'works list 4', 1, 0, '2020-10-27 10:34:55.000000', '2020-10-27 10:34:55.000000'),
(6, 'works list 5', 1, 0, '2020-10-27 10:34:55.000000', '2020-10-27 10:34:55.000000');

-- --------------------------------------------------------

--
-- Table structure for table `boards_column_ai`
--

CREATE TABLE `boards_column_ai` (
  `id` int(11) NOT NULL COMMENT 'id',
  `board_id` int(11) DEFAULT NULL COMMENT 'boardId',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT 'deleted',
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'createdAt',
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'updatedAt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='boards_column_ai';

--
-- Dumping data for table `boards_column_ai`
--

INSERT INTO `boards_column_ai` (`id`, `board_id`, `name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'Action Item', NULL, '2020-10-27 10:45:58.000000', '2020-10-27 10:45:58.000000'),
(2, 2, 'Action Item', NULL, '2020-10-27 10:48:14.000000', '2020-10-27 10:48:14.000000'),
(3, 3, 'Action Item', NULL, '2020-10-27 10:48:14.000000', '2020-10-27 10:48:14.000000');

-- --------------------------------------------------------

--
-- Table structure for table `boards_column_ti`
--

CREATE TABLE `boards_column_ti` (
  `id` int(11) NOT NULL COMMENT 'id',
  `board_id` int(11) DEFAULT NULL COMMENT 'boardId',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT 'deleted',
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'createdAt',
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'updatedAt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='boards_column_ti';

--
-- Dumping data for table `boards_column_ti`
--

INSERT INTO `boards_column_ti` (`id`, `board_id`, `name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'To Improve', NULL, '2020-10-27 10:48:14.000000', '2020-10-27 10:48:14.000000'),
(2, 2, 'To Improve', NULL, '2020-10-27 10:48:14.000000', '2020-10-27 10:48:14.000000'),
(3, 3, 'To Improve', NULL, '2020-10-27 10:48:14.000000', '2020-10-27 10:48:14.000000');

-- --------------------------------------------------------

--
-- Table structure for table `boards_column_ww`
--

CREATE TABLE `boards_column_ww` (
  `id` int(11) NOT NULL COMMENT 'id',
  `board_id` int(11) DEFAULT NULL COMMENT 'boardId',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT 'deleted',
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'createdAt',
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'updatedAt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='boards_column_ww';

--
-- Dumping data for table `boards_column_ww`
--

INSERT INTO `boards_column_ww` (`id`, `board_id`, `name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'Went Well', NULL, '2020-10-27 10:48:14.000000', '2020-10-27 10:48:14.000000'),
(2, 2, 'Went Well', NULL, '2020-10-27 10:48:14.000000', '2020-10-27 10:48:14.000000'),
(3, 3, 'Went Well', NULL, '2020-10-27 10:48:14.000000', '2020-10-27 10:48:14.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL COMMENT 'id',
  `ww_id` int(11) DEFAULT NULL COMMENT 'columnWw',
  `ti_id` int(11) DEFAULT NULL COMMENT 'columnTI',
  `ac_id` int(11) DEFAULT NULL COMMENT 'columnAI',
  `user_id` int(11) DEFAULT NULL COMMENT 'userId',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT 'deleted',
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'createdAt',
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'updatedAt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tags';

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `ww_id`, `ti_id`, `ac_id`, `user_id`, `name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 1, 'duy làm việc ngày 1', NULL, '2020-10-27 11:30:24.000000', '2020-10-27 11:30:24.000000'),
(2, 1, NULL, NULL, 1, 'duy làm việc ngày 2', NULL, '2020-10-27 11:30:24.000000', '2020-10-27 11:30:24.000000'),
(3, NULL, 1, NULL, 1, 'duy làm việc ngày 3', NULL, '2020-10-27 11:30:24.000000', '2020-10-27 11:30:24.000000'),
(4, NULL, 1, NULL, 1, 'duy làm việc ngày 4', NULL, '2020-10-27 11:30:24.000000', '2020-10-27 11:30:24.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL COMMENT 'id',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name',
  `expired_at` int(11) DEFAULT NULL COMMENT 'columnWw',
  `user_id` int(11) DEFAULT NULL COMMENT 'userId',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT 'deleted',
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'createdAt',
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'updatedAt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tokens';

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT 'userId',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'name',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'email',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'password',
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'address',
  `phone_number` int(11) NOT NULL COMMENT 'phoneNumber',
  `gender` varchar(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'gender',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT 'deleted',
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'createdAt',
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'updatedAt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='users';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone_number`, `gender`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Phạm Quang Duy', 'example3@example.com', 'e10adc3949ba59abbe56e057f20f883e', 'sài gon', 123456789, 'nam', NULL, '2020-10-27 10:31:37.000000', '2020-10-27 10:31:37.000000'),
(2, 'nguyễn văn a', 'example4@example.com', 'e10adc3949ba59abbe56e057f20f883e', 'sài gòn', 1346431643, 'Nữ', NULL, '2020-10-27 11:16:39.000000', '2020-10-27 11:16:39.000000'),
(3, 'nguyễn văn b', 'example5@example.com', 'e10adc3949ba59abbe56e057f20f883e', 'sài gòn', 1346431643, 'Nữ', NULL, '2020-10-27 11:16:39.000000', '2020-10-27 11:16:39.000000');

-- --------------------------------------------------------

--
-- Table structure for table `user_share_boards`
--

CREATE TABLE `user_share_boards` (
  `id` int(11) NOT NULL COMMENT 'id',
  `board_id` int(11) DEFAULT NULL COMMENT 'boardId',
  `user_id` int(11) NOT NULL COMMENT 'userId',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT 'deleted',
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'createdAt',
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'updatedAt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user_share_boards';

--
-- Dumping data for table `user_share_boards`
--

INSERT INTO `user_share_boards` (`id`, `board_id`, `user_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, '2020-10-27 11:33:38.000000', '2020-10-27 11:33:38.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `boards_column_ai`
--
ALTER TABLE `boards_column_ai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `board_id` (`board_id`);

--
-- Indexes for table `boards_column_ti`
--
ALTER TABLE `boards_column_ti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `board_id` (`board_id`);

--
-- Indexes for table `boards_column_ww`
--
ALTER TABLE `boards_column_ww`
  ADD PRIMARY KEY (`id`),
  ADD KEY `board_id` (`board_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ww_id` (`ww_id`),
  ADD KEY `ti_id` (`ti_id`),
  ADD KEY `ac_id` (`ac_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_share_boards`
--
ALTER TABLE `user_share_boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `board_id` (`board_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `boards_column_ai`
--
ALTER TABLE `boards_column_ai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `boards_column_ti`
--
ALTER TABLE `boards_column_ti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `boards_column_ww`
--
ALTER TABLE `boards_column_ww`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id';

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'userId', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_share_boards`
--
ALTER TABLE `user_share_boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boards`
--
ALTER TABLE `boards`
  ADD CONSTRAINT `boards_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `boards_column_ai`
--
ALTER TABLE `boards_column_ai`
  ADD CONSTRAINT `boards_column_ai_ibfk_1` FOREIGN KEY (`board_id`) REFERENCES `boards` (`id`);

--
-- Constraints for table `boards_column_ti`
--
ALTER TABLE `boards_column_ti`
  ADD CONSTRAINT `boards_column_ti_ibfk_1` FOREIGN KEY (`board_id`) REFERENCES `boards` (`id`);

--
-- Constraints for table `boards_column_ww`
--
ALTER TABLE `boards_column_ww`
  ADD CONSTRAINT `boards_column_ww_ibfk_1` FOREIGN KEY (`board_id`) REFERENCES `boards` (`id`);

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`ww_id`) REFERENCES `boards_column_ww` (`id`),
  ADD CONSTRAINT `tags_ibfk_2` FOREIGN KEY (`ti_id`) REFERENCES `boards_column_ti` (`id`),
  ADD CONSTRAINT `tags_ibfk_3` FOREIGN KEY (`ac_id`) REFERENCES `boards_column_ai` (`id`),
  ADD CONSTRAINT `tags_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_share_boards`
--
ALTER TABLE `user_share_boards`
  ADD CONSTRAINT `user_share_boards_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_share_boards_ibfk_2` FOREIGN KEY (`board_id`) REFERENCES `boards` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
