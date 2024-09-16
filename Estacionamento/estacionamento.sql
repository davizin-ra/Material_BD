-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2024 às 14:09
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `datanascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(20) NOT NULL,
  `modelo` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
