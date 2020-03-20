-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 04:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecar`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(32) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `image` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `about` varchar(255) NOT NULL,
  `role_id` varchar(15) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(28) NOT NULL,
  `change_pass` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `image`, `password`, `about`, `role_id`, `is_active`, `date_created`, `change_pass`) VALUES
('ID-U11302', 'Alfian Rochmatul Irman', 'alfianrochmatul77@gmail.com', 'Screenshot_22.png', '$2y$10$VSAF/YHtzaB8XvjTj5lVauOjHK0OVk4tJVhcdG/mutngQ8C4FlJju', 'Jangan lupa Bismillah!!!', '1', 1, 1583394165, 1584344813),
('ID-U11503', 'sayyid', 'sayyidmusthofa89@gmail.com', 'default.jpg', '$2y$10$b2rjuQWLClcrWdlSLLGlgOH4nXGxDOBqI4KaZMmZSMrUmXRFKTiWq', '', '2', 1, 1584288716, 1584288716);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id_access_menu` int(30) NOT NULL,
  `role_id` varchar(30) NOT NULL,
  `menu_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id_access_menu`, `role_id`, `menu_id`) VALUES
(1, '1', '1'),
(7, '1', '5'),
(8, '1', '6'),
(24, '1', '2'),
(27, '2', '2'),
(29, '1', '3'),
(30, '1', 'MN19034'),
(31, '1', 'MN20034');

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id_menu` varchar(30) NOT NULL,
  `menu` varchar(32) NOT NULL,
  `icon_menu` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id_menu`, `menu`, `icon_menu`) VALUES
('1', 'admin', 'https'),
('2', 'User', 'perm_identity'),
('3', 'Menu', 'assignment');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id_role` varchar(28) NOT NULL,
  `role` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id_role`, `role`) VALUES
('1', 'Administrator'),
('2', 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id_user_sub_menu` varchar(30) NOT NULL,
  `id_menu` varchar(30) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id_user_sub_menu`, `id_menu`, `title`, `url`, `icon`, `is_active`) VALUES
('2', '1', 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
('3', '2', 'My Profile', 'user', 'fas fa-fw fa-user', 1),
('4', '2', 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
('5', '3', 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
('6', '3', 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
('7', '1', 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
('8', '2', 'Edit Password', 'user/edit_password', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `email` varchar(128) NOT NULL,
  `token` varchar(50) NOT NULL,
  `date_created` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`email`, `token`, `date_created`) VALUES
('0', '0', 1584259685),
('sayyidmusthofa89@gmail.com', 'BN2FMta3DvMRc22V1CbCZQLakvTnq3aEeQNhCAsfUAE=', 1584288716);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id_access_menu`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id_user_sub_menu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id_access_menu` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
