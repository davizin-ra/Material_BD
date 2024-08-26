-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Ago-2024 às 13:54
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
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `id_corretor` int(11) NOT NULL,
  `datanascimento` date NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `corretor`
--

INSERT INTO `corretor` (`id_corretor`, `datanascimento`, `nome`, `cpf`, `email`) VALUES
(1, '1978-10-18', 'José Correia', '12345123451', 'jose@corretor.com'),
(2, '1980-03-22', 'Lucas Albuquerque', '22345223452', 'lucas@corretor.com'),
(3, '1985-05-14', 'Mariana Carvalho', '32345323453', 'mariana@corretor.com'),
(4, '1972-11-02', 'Rodrigo Santana', '42345423454', 'rodrigo@corretor.com'),
(5, '1990-08-29', 'Camila Mendes', '52345523455', 'camila@corretor.com'),
(6, '1983-12-05', 'Fernanda Souza', '62345623456', 'fernanda@corretor.com'),
(7, '1976-01-17', 'Tiago Silva', '72345723457', 'tiago@corretor.com'),
(8, '1982-06-09', 'Bruno Oliveira', '82345823458', 'bruno@corretor.com'),
(9, '1979-09-13', 'Patrícia Araújo', '92345923459', 'patricia@corretor.com'),
(10, '1988-04-26', 'Rafael Lima', '02345023450', 'rafael@corretor.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

CREATE TABLE `fiador` (
  `nome` varchar(255) NOT NULL,
  `id_fiador` int(11) NOT NULL,
  `datanascimento` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `fiador`
--

INSERT INTO `fiador` (`nome`, `id_fiador`, `datanascimento`, `email`, `cpf`) VALUES
('Lucas Lima', 1, '1972-05-18', 'lucas@fiador.com', '11122233344'),
('Gabriel Costa', 2, '1968-12-01', 'gabriel@fiador.com', '55566677788'),
('Bruna Souza', 3, '1980-07-10', 'bruna@fiador.com', '99988877766'),
('Juliana Pereira', 4, '1975-09-22', 'juliana@fiador.com', '44433322211'),
('Ricardo Alves', 5, '1982-03-15', 'ricardo@fiador.com', '11133355522'),
('Camila Dias', 6, '1978-11-29', 'camila@fiador.com', '77755533322'),
('Felipe Ferreira', 7, '1983-06-14', 'felipe@fiador.com', '22244466633'),
('Isabela Rocha', 8, '1976-02-20', 'isabela@fiador.com', '33366699944'),
('André Santos', 9, '1985-10-03', 'andre@fiador.com', '44477711155'),
('Larissa Mello', 10, '1981-04-07', 'larissa@fiador.com', '55588822266');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `id_foto` int(11) NOT NULL,
  `midia` varchar(255) NOT NULL,
  `id_imovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`id_foto`, `midia`, `id_imovel`) VALUES
(1, 'foto1.jpg', 1),
(2, 'foto2.jpg', 2),
(3, 'foto3.jpg', 3),
(4, 'foto4.jpg', 4),
(5, 'foto5.jpg', 5),
(6, 'foto6.jpg', 6),
(7, 'foto7.jpg', 7),
(8, 'foto8.jpg', 8),
(9, 'foto9.jpg', 9),
(10, 'foto10.jpg', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `rua` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `id_imovel` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `qtdquartos` int(11) NOT NULL,
  `qtdbanheiro` int(11) NOT NULL,
  `historico` varchar(255) DEFAULT NULL,
  `garagem` bit(1) NOT NULL,
  `piscina` bit(1) NOT NULL,
  `lavanderia` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`rua`, `bairro`, `cidade`, `estado`, `id_imovel`, `area`, `qtdquartos`, `qtdbanheiro`, `historico`, `garagem`, `piscina`, `lavanderia`) VALUES
('Rua das Acácias', 'Centro Alto', 'Ribeirão Pires', 'SP', 1, 120, 3, 2, NULL, b'1', b'0', b'1'),
('Avenida Brasil', 'Vila Bocaina', 'Mauá', 'SP', 2, 150, 4, 3, NULL, b'1', b'1', b'1'),
('Rua Capitão José Gallo', 'Jardim Caçula', 'Rio Grande da Serra', 'SP', 3, 90, 2, 1, NULL, b'0', b'0', b'1'),
('Rua João Domingues de Oliveira', 'Santa Luzia', 'Ribeirão Pires', 'SP', 4, 200, 5, 4, NULL, b'1', b'1', b'1'),
('Avenida Capitão João', 'Jardim Mauá', 'Mauá', 'SP', 5, 110, 3, 2, 'Casa mal assombrada\r\n', b'0', b'0', b'1'),
('Rua Domingos Rigon', 'Vila Conde Siciliano', 'Rio Grande da Serra', 'SP', 6, 130, 4, 3, NULL, b'1', b'0', b'1'),
('Rua Bela Vista', 'Parque Aliança', 'Ribeirão Pires', 'SP', 7, 170, 5, 4, NULL, b'1', b'1', b'1'),
('Rua Vinte e Cinco de Março', 'Vila Noêmia', 'Mauá', 'SP', 8, 100, 3, 2, NULL, b'0', b'0', b'0'),
('Rua Prefeito Carlos José Carlson', 'Jardim Esperança', 'Rio Grande da Serra', 'SP', 9, 140, 4, 3, 'Casa do ex presidente Obama', b'1', b'0', b'1'),
('Avenida Santo André', 'Vila Suíssa', 'Ribeirão Pires', 'SP', 10, 180, 5, 4, 'Construído em cima de um cemitério', b'1', b'1', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `datanascimento` date NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `id_inquilino` int(11) NOT NULL,
  `id_fiador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `inquilino`
--

INSERT INTO `inquilino` (`datanascimento`, `nome`, `email`, `cpf`, `id_inquilino`, `id_fiador`) VALUES
('1990-05-12', 'Paulo Ramos', 'paulo@inquilino.com', '12345678900', 1, 1),
('1985-11-23', 'Carla Nunes', 'carla@inquilino.com', '23456789011', 2, 2),
('1979-04-14', 'Lucas Torres', 'lucas@inquilino.com', '34567890122', 3, 3),
('1987-07-19', 'Ana Ribeiro', 'ana@inquilino.com', '45678901233', 4, 4),
('1991-09-30', 'Ricardo Martins', 'ricardo@inquilino.com', '56789012344', 5, 5),
('1983-02-11', 'Juliana Azevedo', 'juliana@inquilino.com', '67890123455', 6, 6),
('1975-03-25', 'Fernanda Silva', 'fernanda@inquilino.com', '78901234566', 7, 7),
('1989-12-08', 'Tiago Barbosa', 'tiago@inquilino.com', '89012345677', 8, 8),
('1982-08-21', 'Mariana Gomes', 'mariana@inquilino.com', '90123456788', 9, 9),
('1993-06-07', 'Felipe Cruz', 'felipe@inquilino.com', '01234567899', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `possui`
--

CREATE TABLE `possui` (
  `id_proprietario` int(11) DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `possui`
--

INSERT INTO `possui` (`id_proprietario`, `id_imovel`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `id_proprietario` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `datanascimento` date NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `banco` varchar(255) DEFAULT NULL,
  `agencia` varchar(255) DEFAULT NULL,
  `pix` varchar(255) DEFAULT NULL,
  `qtd_imovel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`id_proprietario`, `email`, `telefone`, `datanascimento`, `cpf`, `nome`, `banco`, `agencia`, `pix`, `qtd_imovel`) VALUES
(1, 'joao.silva@email.com', '11987654321', '1980-05-10', '12345678901', 'João Silva', 'Banco do Brasil', '1234', 'joao.pix@bb.com', 3),
(2, 'maria.souza@email.com', '11987654322', '1985-07-15', '12345678902', 'Maria Souza', 'Caixa Econômica', '5678', 'maria.pix@caixa.com', 2),
(3, 'antonio.santos@email.com', '11987654323', '1990-09-20', '12345678911', 'Antônio Santos', 'Bradesco', '9101', 'antonio.bb.pix@bradesco.com', 4),
(4, 'ana.oliveira@email.com', '11987654324', '1975-11-25', '12345678912', 'Ana Oliveira', 'Itaú', '1121', 'ana.caixa.pix@itau.com', 1),
(5, 'carlos.lima@email.com', '11987654325', '1988-02-28', '12345678921', 'Carlos Lima', 'Santander', '3141', 'carlos.pix@santander.com', 3),
(6, 'fernanda.alves@email.com', '11987654326', '1993-03-30', '12345678922', 'Fernanda Alves', 'Banco do Brasil', '5161', 'fernanda.itau.pix@bb.com', 2),
(7, 'lucas.pereira@email.com', '11987654327', '1977-04-05', '12345678931', 'Lucas Pereira', 'Caixa Econômica', '7181', 'lucas.santander.pix@caixa.com', 5),
(8, 'patricia.santos@email.com', '11987654328', '1995-06-12', '12345678932', 'Patrícia Santos', 'Bradesco', '9202', 'patricia.bradesco.pix@caixa.com', 1),
(9, 'roberto.goncalves@email.com', '11987654329', '1982-08-18', '12345678941', 'Roberto Gonçalves', 'Itaú', '1222', 'roberto.brasil.pix@itau.com', 4),
(10, 'eliane.costa@email.com', '11987654330', '1998-10-22', '12345678942', 'Eliane Costa', 'Santander', '3242', 'eliane.banco.pix@santander.com', 3);

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
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`id_corretor`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`id_fiador`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `id_imovel` (`id_imovel`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`id_imovel`);

--
-- Índices para tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`id_inquilino`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `id_fiador` (`id_fiador`);

--
-- Índices para tabela `possui`
--
ALTER TABLE `possui`
  ADD KEY `id_imovel` (`id_imovel`),
  ADD KEY `id_proprietario` (`id_proprietario`);

--
-- Índices para tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`id_proprietario`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `pix` (`pix`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `id_aluguel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `id_fiador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `id_imovel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `id_inquilino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `id_proprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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

--
-- Limitadores para a tabela `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`);

--
-- Limitadores para a tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`id_fiador`) REFERENCES `fiador` (`id_fiador`),
  ADD CONSTRAINT `inquilino_ibfk_2` FOREIGN KEY (`id_fiador`) REFERENCES `fiador` (`id_fiador`);

--
-- Limitadores para a tabela `possui`
--
ALTER TABLE `possui`
  ADD CONSTRAINT `possui_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`),
  ADD CONSTRAINT `possui_ibfk_2` FOREIGN KEY (`id_proprietario`) REFERENCES `proprietario` (`id_proprietario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
