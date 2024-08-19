-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Ago-2024 às 13:40
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

DROP TABLE IF EXISTS `aluguel`;
CREATE TABLE `aluguel` (
  `preco` decimal(6,2) NOT NULL,
  `data` date NOT NULL,
  `id_aluguel` int(11) NOT NULL,
  `id_corretor` int(11) DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL,
  `id_inquilino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `aluguel`
--

INSERT INTO `aluguel` (`preco`, `data`, `id_aluguel`, `id_corretor`, `id_imovel`, `id_inquilino`) VALUES
('1500.00', '2024-01-01', 1, 1, 1, 1),
('2000.00', '2024-02-01', 2, 2, 2, 2),
('1800.00', '2024-03-01', 3, 3, 3, 3),
('2200.00', '2024-04-01', 4, 4, 4, 4),
('1700.00', '2024-05-01', 5, 5, 5, 5),
('1900.00', '2024-06-01', 6, 6, 6, 6),
('1600.00', '2024-07-01', 7, 7, 7, 7),
('2100.00', '2024-08-01', 8, 8, 8, 8),
('2300.00', '2024-09-01', 9, 9, 9, 9),
('2400.00', '2024-10-01', 10, 10, 10, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`id_aluguel`),
  ADD KEY `id_imovel` (`id_imovel`),
  ADD KEY `id_corretor` (`id_corretor`),
  ADD KEY `id_inquilino` (`id_inquilino`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `id_aluguel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`id_corretor`) REFERENCES `corretor` (`id_corretor`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`id_inquilino`) REFERENCES `inquilino` (`id_inquilino`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
