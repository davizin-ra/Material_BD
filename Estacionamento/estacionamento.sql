-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Set-2024 às 14:04
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
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(11) NOT NULL,
  `andar` varchar(20) NOT NULL,
  `capacidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `andar`, `capacidade`) VALUES
(1, 'Térreo', 50),
(2, '1º Andar', 45),
(3, '2º Andar', 40),
(4, '3º Andar', 35),
(5, '4º Andar', 30),
(6, '5º Andar', 25),
(7, '6º Andar', 20),
(8, '7º Andar', 15),
(9, '8º Andar', 10),
(10, '9º Andar', 10),
(11, 'Subsolo 1', 55),
(12, 'Subsolo 2', 60),
(13, 'Subsolo 3', 65),
(14, 'Cobertura', 15),
(15, 'Anexo 1', 50),
(16, 'Anexo 2', 45),
(17, 'Garagem A', 40),
(18, 'Garagem B', 35),
(19, 'Garagem C', 30),
(20, 'Garagem D', 25);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `datanascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `datanascimento`) VALUES
('01234567890', 'Roberta Gonçalves', '2001-10-01'),
('10111223344', 'Tatiane Moraes', '1993-08-30'),
('11223344556', 'Paulo Pereira', '1987-11-11'),
('12345678901', 'João Silva', '1990-01-01'),
('22334455667', 'Larissa Alves', '1991-12-12'),
('23456789012', 'Maria Souza', '1985-02-12'),
('33445566778', 'Ricardo Mendes', '1980-01-13'),
('34567890123', 'Pedro Santos', '1995-03-23'),
('44556677889', 'Amanda Farias', '1975-02-24'),
('45678901234', 'Ana Costa', '2000-04-14'),
('55667788990', 'Fábio Borges', '1989-03-15'),
('56789012345', 'Carlos Nunes', '1988-05-05'),
('66778899001', 'Camila Silva', '1996-04-06'),
('67890123456', 'Bruna Oliveira', '1992-06-16'),
('77889900112', 'Douglas Carvalho', '1983-05-27'),
('78901234567', 'Renato Lima', '1978-07-27'),
('88990011223', 'Juliana Rocha', '1997-06-08'),
('89012345678', 'Fernanda Teixeira', '1999-08-18'),
('90123456789', 'Thiago Martins', '1994-09-09'),
('99001122334', 'Eduardo Brito', '1984-07-19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod` int(11) NOT NULL,
  `horaentrada` datetime NOT NULL,
  `dataentrada` datetime NOT NULL,
  `horasaida` datetime NOT NULL,
  `datasaida` datetime NOT NULL,
  `placa` varchar(11) NOT NULL,
  `codlugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`cod`, `horaentrada`, `dataentrada`, `horasaida`, `datasaida`, `placa`, `codlugar`) VALUES
(1, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'ABC1D23', 1),
(2, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'DEF4G56', 2),
(3, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'GHI7J89', 3),
(4, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'JKL0M12', 4),
(5, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'MNO3P45', 5),
(6, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'PQR6S78', 6),
(7, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'TUV9W01', 7),
(8, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'XYZ2A34', 8),
(9, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'BCD5E67', 9),
(10, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'EFG8H90', 10),
(11, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'HIJ1K23', 11),
(12, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'KLM4N56', 12),
(13, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'NOP7Q89', 13),
(14, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'QRS0T12', 14),
(15, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'UVW3X45', 15),
(16, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'YZA6B78', 16),
(17, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'CDE9F01', 17),
(18, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'FGH2I34', 18),
(19, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'IJK5L67', 19),
(20, '0000-00-00 00:00:00', '2024-09-01 00:00:00', '0000-00-00 00:00:00', '2024-09-01 00:00:00', 'LMN8O90', 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(20) NOT NULL,
  `modelo` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

CREATE TABLE `motorista` (
  `cpf` varchar(20) NOT NULL,
  `placa` varchar(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `codmodelo` int(11) NOT NULL,
  `dataentrada` datetime NOT NULL,
  `datasaida` datetime NOT NULL,
  `horaentrada` datetime NOT NULL,
  `horasaida` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(20) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `codmodelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codmodelo`) VALUES
('ABC1D23', 'Preto', '12345678901', 1),
('BCD5E67', 'Preto', '90123456789', 9),
('CDE9F01', 'Branco', '77889900112', 17),
('DEF4G56', 'Branco', '23456789012', 2),
('EFG8H90', 'Branco', '01234567890', 10),
('FGH2I34', 'Preto', '88990011223', 18),
('GHI7J89', 'Vermelho', '34567890123', 3),
('HIJ1K23', 'Vermelho', '11223344556', 11),
('IJK5L67', 'Azul', '99001122334', 19),
('JKL0M12', 'Azul', '45678901234', 4),
('KLM4N56', 'Cinza', '22334455667', 12),
('LMN8O90', 'Vermelho', '10111223344', 20),
('MNO3P45', 'Cinza', '56789012345', 5),
('NOP7Q89', 'Azul', '33445566778', 13),
('PQR6S78', 'Verde', '67890123456', 6),
('QRS0T12', 'Verde', '44556677889', 14),
('TUV9W01', 'Prata', '78901234567', 7),
('UVW3X45', 'Prata', '55667788990', 15),
('XYZ2A34', 'Amarelo', '89012345678', 8),
('YZA6B78', 'Amarelo', '66778899001', 16);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD UNIQUE KEY `codlugar` (`codlugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod`),
  ADD UNIQUE KEY `placa` (`placa`),
  ADD UNIQUE KEY `codlugar` (`codlugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices para tabela `motorista`
--
ALTER TABLE `motorista`
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `placa` (`placa`),
  ADD UNIQUE KEY `cpf_2` (`cpf`,`placa`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `codmodelo` (`codmodelo`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `codlugar` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`),
  ADD CONSTRAINT `placa` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `codmodelo` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`),
  ADD CONSTRAINT `cpf` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
