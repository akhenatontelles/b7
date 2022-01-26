-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Jan-2022 às 04:32
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
  `id_user` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `id_user`, `type`, `created_at`, `body`) VALUES
(3, 2, 'text', '2022-01-19 19:11:43', 'werwer'),
(6, 2, 'text', '2022-01-21 14:33:05', 'reescreverwerw'),
(7, 1, 'text', '2022-01-21 14:34:15', 'Akhenaton POOOOOOOOOOOOOOOOOOST'),
(8, 2, 'text', '2022-01-21 21:07:32', 'asdasdasd'),
(9, 2, 'text', '2022-01-21 21:46:38', 'asdasd'),
(10, 2, 'text', '2022-01-21 21:46:44', 'qqqq'),
(11, 2, 'text', '2022-01-21 21:46:50', 'qqqqqqqqqq'),
(12, 2, 'text', '2022-01-24 17:43:24', 'ola akhenaton tekkes  claussen'),
(13, 2, 'text', '2022-01-24 18:03:00', 'qweqweqweqwedasdasd'),
(14, 2, 'text', '2022-01-24 18:09:54', 'Ola tudo bem, oi vamos tentar\r\nmas um teste todos mentem quem fala que nao mente ja esta mentindo'),
(15, 2, 'text', '2022-01-25 18:18:54', 'fwer\r\nwer\r\nw\r\ner\r\nwer\r\nwe\r\nr\r\nwe\r\nrw\r\ner\r\nw\r\ner'),
(16, 2, 'text', '2022-01-25 18:42:53', 'Novo poste teste'),
(17, 2, 'text', '2022-01-25 18:47:19', 'bora fazer\r\num novo teste\r\nver se funciona\r\nquerem esquecer \r\no lula ia toda hora\r\ndormia no quarto principal\r\n\r\n\r\nreformar o sitio dele\r\ngastaram centena e milhares de centenas sítio de milhares');

-- --------------------------------------------------------

--
-- Estrutura da tabela `userrelations`
--

CREATE TABLE `userrelations` (
  `id` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `userrelations`
--

INSERT INTO `userrelations` (`id`, `user_from`, `user_to`) VALUES
(1, 1, 2);

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
(1, 'akhenatontelles@hotmail.com', '$2y$10$jB5H2DqSRkWWrpGr/cSX4.un2bUn1vbJZFBUR9I05ItKdBLKgP1Dm', 'Akhenaton', '2012-12-12', 'Brasília', '', '', '', '2f6a5441a2c6627640b98eb571d0d8fd'),
(2, 'a@a.a', '$2y$10$9ox6Gl5hKCr7iCNI6YHh0et9sXjdJXeCi6Vg0UMWEhNCRkPtpPUb6', 'a', '2010-10-10', '', '', '', '', 'f24ce43412268fbc571c9b459c7d5f56');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `userrelations`
--
ALTER TABLE `userrelations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
