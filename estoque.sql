-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Tempo de geração: 05-Abr-2024 às 22:03
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estoque`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcursos` int(11) NOT NULL,
  `NomeCurso` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`idcursos`, `NomeCurso`) VALUES
(1, 'Estética'),
(2, 'Cabelereiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `operacoes`
--

CREATE TABLE `operacoes` (
  `id` int(11) NOT NULL,
  `tipoOperacao` int(2) NOT NULL,
  `iduser` varchar(45) NOT NULL,
  `idproduto` varchar(45) NOT NULL,
  `data` varchar(45) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `operacoes`
--

INSERT INTO `operacoes` (`id`, `tipoOperacao`, `iduser`, `idproduto`, `data`, `quantidade`) VALUES
(1, 0, '5', '35', '05/04/2024', 1),
(2, 1, '4', '8', '05-04-2024 13:47:45', 1),
(3, 1, '5', '35', '05/04/2024', 1),
(4, 1, '5', '35', '05/04/2024', 1),
(5, 0, '4', '8', '05-04-2024 13:49:04', 1),
(6, 1, '5', '35', '05/04/2024', 1),
(7, 0, '4', '8', '05-04-2024 13:49:38', 1),
(9, 1, '4', '78', '05-04-2024 14:20:43', 1),
(10, 0, '4', '78', '05-04-2024 14:20:46', 1),
(11, 0, '4', '78', '05-04-2024 14:20:48', 1),
(12, 1, '4', '87', '05-04-2024 14:23:13', 1),
(13, 0, '4', '87', '05-04-2024 14:23:15', 1),
(14, 0, '4', '87', '05-04-2024 14:23:17', 1),
(15, 1, '4', '93', '05-04-2024 14:29:27', 1),
(16, 1, '4', '97', '05-04-2024 14:48:18', 1),
(17, 1, '4', '97', '05-04-2024 14:48:21', 1),
(18, 0, '4', '97', '05-04-2024 14:48:24', 1),
(19, 0, '4', '97', '05-04-2024 14:48:27', 1),
(20, 0, '4', '97', '05-04-2024 14:48:29', 1),
(21, 0, '4', '97', '05-04-2024 15:49:10', 1),
(22, 0, '4', '139', '05-04-2024 16:03:21', 1),
(23, 1, '4', '139', '05-04-2024 16:03:28', 1),
(24, 0, '4', '139', '05-04-2024 16:03:30', 1),
(25, 0, '4', '139', '05-04-2024 16:03:32', 1),
(26, 1, '5', '140', '05/04/202416:05:47', 1),
(27, 1, '4', '162', '05-04-2024 16:11:55', 1),
(28, 1, '4', '162', '05-04-2024 16:11:59', 1),
(29, 1, '4', '162', '05-04-2024 16:12:02', 1),
(30, 0, '4', '162', '05-04-2024 16:12:08', 1),
(31, 1, '4', '162', '05-04-2024 16:12:45', 1),
(32, 0, '1', '164', 'sexta-feira, 05 de abril de 2024 ', 1),
(33, 1, '1', '164', 'sexta-feira, 05 de abril de 2024 ', 1),
(34, 1, '4', '189', '05-04-2024 16:28:23', 1),
(35, 0, '4', '189', '05-04-2024 16:28:25', 1),
(36, 0, '4', '189', '05-04-2024 16:28:27', 1),
(37, 1, '4', '189', '05-04-2024 16:28:36', 1),
(38, 1, '1', '164', '05/04/24', 1),
(39, 1, '4', '184', '05-04-2024 16:30:48', 1),
(40, 0, '4', '181', '05-04-2024 16:37:14', 1),
(41, 1, '4', '181', '05-04-2024 16:37:21', 1),
(42, 0, '1', '184', 'sexta-feira, 05 de abril de 2024 ', 1),
(43, 0, '5', '165', 'sexta-feira, 05 de abril de 2024 ', 1),
(44, 1, '1', '184', 'sexta-feira, 05 de abril de 2024 16:51:54', 1),
(45, 0, '', '', 'sexta-feira, 05 de abril de 2024 16:52:52', 1),
(46, 1, '4', '192', '05-04-2024 16:54:18', 1),
(47, 1, '4', '192', '05-04-2024 16:54:21', 1),
(48, 0, '4', '192', '05-04-2024 16:54:23', 1),
(49, 0, '4', '192', '05-04-2024 16:54:25', 1),
(50, 1, '4', '192', '05-04-2024 16:54:31', 1),
(51, 0, '1', '184', 'sexta-feira, 05 de abril de 2024 16:56:46', 1),
(52, 0, '1', '184', 'sexta-feira, 05 de abril de 2024 16:57:33', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idprodutos` int(11) NOT NULL,
  `produtoDescri` varchar(45) DEFAULT NULL,
  `produtoQtd` int(11) DEFAULT NULL,
  `produtoValidade` varchar(45) DEFAULT NULL,
  `produtoLote` varchar(45) DEFAULT NULL,
  `produtosCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idprodutos`, `produtoDescri`, `produtoQtd`, `produtoValidade`, `produtoLote`, `produtosCurso`) VALUES
(161, 'eu sou teu pai ', NULL, '0006-05-06', '34', 1),
(164, 'Creme', 11, '2025-12-12', '00000002', 2),
(165, 'Loção', 119, '2025-11-25', '00000002', 2),
(166, 'eu sou teu pai ', 3, '0004-04-04', '2', 1),
(168, 'eu sou teu pai ', NULL, '0003-03-03', '2', 1),
(179, NULL, NULL, NULL, NULL, NULL),
(184, 'Cristiano Ronaldo', 5, '2024-04-09', '200', 1),
(186, '33242432', NULL, '0032-04-23', '23', 1),
(188, 'eu sou teu pai ', NULL, '0022-02-22', '2', 2),
(192, 'Shampoo', 51, '2024-09-30', 'ABC987654', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `idcurso` int(1) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `senhaCripto` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`idUser`, `Nome`, `celular`, `idcurso`, `senha`, `senhaCripto`, `email`) VALUES
(1, 'Edu', '(85) 99408-7509', 1, 'admin123', '0192023a7bbd73250516f069df18b500', 'admin13@gmail.com'),
(3, 'Hildemberg', '35 9 9271-9089', 2, '123456', '', 'hilmengo@gmail.com'),
(4, 'Camila', '35991362018', 1, '@123', '865bedd2fba8fe20b828ed07600c64a4', 'camila@email.com'),
(5, 'Rafael', '992356302', 2, '123', '202cb962ac59075b964b07152d234b70', 'rafael@gmail.com'),
(6, 'Alexandre', '4002 8922', 1, '123', '', 'alex@gmail.com'),
(10, 'Marcelo', '1234', 1, '1234', NULL, 'marcelo@mail.com'),
(11, 'Cristian', '998382861', 1, '123', '123', 'zd4rks@gmail.com'),
(12, 'Cosmo', '(35) 9 9999-9999', 1, '123', 'cos123smo', 'cosmo@zeus.com'),
(13, 'Cosma', '(35) 9 8888-8888', 2, '123', 'cos123sma', 'cosma@zeus.com'),
(14, 'Carlos', '245584', 1, '123', '123', 'email@gmail.com'),
(24, '23', '45', 2, '88772115az  ', NULL, 'cunhalorran56@gmail.com'),
(25, '23', '45', 2, '88772115az        ', NULL, 'cunhalorran56@gmail.com'),
(28, 'Lais Sirino Novais', '(35) 9 8476-5225', 1, '1231236', '24bf6e223bbf0d4a3f3c976baaa61990', 'novaislais1@gmail.com'),
(33, 'Samuel', '88114477', 2147483647, '123456', '5ws141s12', 'skvictor@gm.com'),
(34, 'THEYLLON', '(35)98407-3166', 2, '   887 72115az   ', NULL, 'ratatue@gm.com'),
(36, 'THEYLLON', '(35)98407-3166', 1, ' 88772115az ', NULL, 'ratatue@gm.com'),
(37, 'THEYLLON', '(35)98407-3166', 1, '88772115az    ', NULL, 'rtrjogos@gmail.com'),
(38, 'THEYLLON', '445', 21323, '7410    ', NULL, 'ratatue@gm.com'),
(39, 'THEYLLON', '(35)98407-3166', 2, '88772115az    ', NULL, 'cunhalorran8@gmail.com'),
(40, 'Catia', '35990000000', 2, '@123', '865bedd2fba8fe20b828ed07600c64a4', 'catia@email.com'),
(41, 'THEYLLON', '(35)98407-3166', 4, '   88772115az   ', NULL, 'ratatue@gm.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcursos`);

--
-- Índices para tabela `operacoes`
--
ALTER TABLE `operacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idprodutos`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idcursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `operacoes`
--
ALTER TABLE `operacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idprodutos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
