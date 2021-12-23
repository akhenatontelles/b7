-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Dez-2021 às 18:14
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `devsbook`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `poostcomments`
--

CREATE TABLE `poostcomments` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postlikes`
--

CREATE TABLE `postlikes` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `userrelations`
--

CREATE TABLE `userrelations` (
  `id` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `work` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `token` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `birthdate`, `city`, `work`, `avatar`, `cover`, `token`) VALUES
(1, 'asasd@aasdas.com', '$2y$10$uDV0hS68HgSCJQ1Bi72BueDN2TKeHGdgxc5ZKXL2nVla2OnKJ2VsW', 'Akhenaton', '2012-12-12', '', '', '', '', '4844b6a9b44f10c952b808ebb89879f9'),
(2, 'asasd@aasdas.com', '$2y$10$H2AgOXo58MQaiE0dI591aebOkwNNQj9OQ4wTIa/bEHoUWH2CBmkJ.', 'Akhenaton', '2012-12-12', '', '', '', '', 'eb01b9203b41b2e9c85646e228316690'),
(3, 'asasd@aasdas.com', '$2y$10$..7qTMS2Lx51yf2xKBaOMOR8i8Chc08LIjWcdz..UkbK90Q/SJHLq', 'Akhenaton', '2012-12-12', '', '', '', '', 'bae03a2ab814d7b3d5b6b86e3df5cd5f'),
(4, 'asasd@aasdas.com', '$2y$10$RGPgpfNxzpMKV91fjNaDyeOr2gkz3QV04r/OTdzQFyARz1ZmmtmSq', 'Akhenaton', '2012-12-12', '', '', '', '', '685f2e578dd494fe02b0b1e0db029ad2'),
(5, 'asasd@aasdas.com', '$2y$10$W3CO6Y7kRzBxdd3J5vjWcOsYXNgN7tfjlZgbPkmPVzGd0JpiQ5jxi', 'Akhenaton', '2012-12-12', '', '', '', '', '9f80af5e00e3deb76903c16e9d270958'),
(6, 'asasd@aasdas.com', '$2y$10$5DB9QXSOncakJhCsijBRpOLfRL2PBjoWvf6MPSuzr3jv2pF2/WEvu', 'Akhenaton', '1111-11-11', '', '', '', '', 'dded9755eb7660ca480b88ac164c65db'),
(7, 'akhenaotntelles@hotmail.com', '$2y$10$Ogv.0Lk47tSV/9IG8eniNOKx1b0dE8cJDLCBdWVs/Rj9kOR9oeX96', 'Akhenaton', '2011-11-11', '', '', '', '', 'cd4467737db6f340d319b22d42c70b53'),
(8, 'akhenaotntelles@hotmail.com', '$2y$10$xdMgdlzyh70ufqI0gR9S1uXYTmR1qP19wsBhXjuG32dwlwuO3ijU2', 'Akhenaton', '2010-10-10', '', '', '', '', '36688698015113d908727c675b450ae7'),
(9, 'akhenaotntelles@hotmail.com', '$2y$10$t.yYpMMy2HXF9ZpNDcrFReDFLuZuAcUQ23DkG3LDbkCzmJVy/tque', 'Akhenaton', '2012-12-12', NULL, NULL, NULL, NULL, '507dc715620b711306a9330ec6846028');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `poostcomments`
--
ALTER TABLE `poostcomments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `postlikes`
--
ALTER TABLE `postlikes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `userrelations`
--
ALTER TABLE `userrelations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `poostcomments`
--
ALTER TABLE `poostcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `postlikes`
--
ALTER TABLE `postlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `userrelations`
--
ALTER TABLE `userrelations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
