-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Out-2022 às 16:33
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `Cod` int(2) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`Cod`, `Nome`, `valor`) VALUES
(1, 'Basico', '0.49'),
(2, 'Utilit?rio', '0.51'),
(3, 'Luxo', '0.53'),
(4, 'Especial', '0.55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria2022`
--

CREATE TABLE `categoria2022` (
  `Cod` int(2) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria2022`
--

INSERT INTO `categoria2022` (`Cod`, `Nome`, `valor`) VALUES
(1, 'Basico', '0.59'),
(2, 'Utilit?rio', '0.61'),
(3, 'Luxo', '0.64'),
(4, 'Especial', '0.66');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` int(9) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `ende` varchar(60) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `DataNasc` date DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `ende`, `tel`, `cidade`, `DataNasc`, `sexo`) VALUES
(123456780, 'Ana Maria Gomes', 'Av. Fco. Glic?rio - 1240 - Ap.13', '19991233322', 'Campinas', '1970-12-08', 'F'),
(123456781, 'Paulo Jos? Soares', 'R. 23 de Maio - 805', '11991223456', 'S?o Paulo', '1984-11-10', 'M'),
(123456789, 'Jos? da Silva', 'R. da Boa Morte - 123', '19991234567', 'Piracicaba', '1955-01-13', 'M'),
(123456798, 'Jaqueline Fonseca', 'R. XV de Novembro', '19994101234', 'Valinhos', '1968-11-20', 'F'),
(123456799, 'Ant?nio Carlos Sobrinho', 'R. Sua?una - 13', '19999101234', 'Campinas', '1970-09-11', 'M'),
(123549800, 'Maria Ant?nia Rodrigues', 'Av. da Saudade - 1280', '19991235567', 'Campinas', '1974-08-07', 'F'),
(123764598, 'Roberta de S?', 'R. 13 de Maio-899', '19991230800', 'Campinas', '1952-10-09', 'F'),
(128799480, 'Pedro de Oliveira', 'R. do Com?rcio - 38', '1998113500', 'Limeira', '1950-10-08', 'M'),
(129345678, 'Marcelo Nogueira', 'Av. Moraes Sales - 1027', '19991244488', 'Campinas', '1968-03-28', 'M'),
(129778946, 'Paulo Albuquerque', 'R. da Candel?ria - 1390', '11992246699', 'S?o Paulo', '1981-02-25', 'M');

-- --------------------------------------------------------

--
-- Estrutura da tabela `combustivel`
--

CREATE TABLE `combustivel` (
  `Cod` varchar(2) NOT NULL,
  `Nome` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `combustivel`
--

INSERT INTO `combustivel` (`Cod`, `Nome`) VALUES
('A', '?lcool'),
('D', 'Diesel'),
('F', 'Flex'),
('G', 'Gasolina');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `Cod` int(2) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`Cod`, `Nome`) VALUES
(1, 'Atendimento'),
(2, 'Adiministrativo'),
(3, 'Financeiro'),
(4, 'Diretoria'),
(5, 'Copa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `Matricula` int(4) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Depto` int(1) DEFAULT NULL,
  `Salario` decimal(8,1) DEFAULT NULL,
  `Admissao` date DEFAULT NULL,
  `filho` int(1) DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`Matricula`, `Nome`, `Depto`, `Salario`, `Admissao`, `filho`, `genero`, `ativo`) VALUES
(1001, 'Francisco de Oliveira', 1, '1800.0', '2001-11-20', 0, 'm', NULL),
(1002, 'Ana Maria Andrade', 2, '3200.0', '1999-02-13', 1, 'f', NULL),
(1003, 'Ant?nio Andrade de Oliveira', 3, '4800.0', '2007-11-05', 3, 'm', NULL),
(1004, 'Maria Abelarda da Silva', 5, '937.0', '1997-03-01', 5, 'f', NULL),
(1005, 'Manoel Trindade', 4, '7850.5', '1997-01-02', 3, 'm', NULL),
(1006, 'Alexandre Barbosa', 1, '1800.0', '2000-06-08', 2, 'm', NULL),
(1007, 'Rosana Campoy', 2, '3020.0', '2004-07-24', 3, 'f', NULL),
(1008, 'Jana?na Albuquerque', 3, '4500.0', '1999-03-25', 0, 'f', NULL),
(1009, 'Roberto Silva Junior', 1, '1810.0', '2003-07-07', 0, 'm', NULL),
(1010, 'Carlos Eduardo Siqueira', 4, '7890.0', '2009-08-04', 1, 'm', NULL),
(1011, 'Heitor Sampaio', 1, '3450.0', '2011-03-05', 1, 'm', NULL),
(1012, 'C?lia Menezes', 1, '1980.0', '2008-07-18', 0, 'f', NULL),
(1013, 'Jos? Alves Costa', 1, '1650.0', '2000-09-11', 1, 'm', NULL),
(1014, 'Arlinda Medeiros', 5, '937.0', '2000-05-03', 5, 'f', NULL),
(1015, 'Josefina Sarmento', 4, '6789.0', '1997-01-02', 1, 'f', NULL),
(1016, 'Danilo Torquato de Oliveira', 1, '1800.0', '2022-09-26', 0, 'm', 0);

--
-- Acionadores `funcionario`
--
DELIMITER $$
CREATE TRIGGER `criar_usuario` AFTER INSERT ON `funcionario` FOR EACH ROW insert into usuario VALUES ( NEW.matricula, NEW.admissao, 1)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario2022`
--

CREATE TABLE `funcionario2022` (
  `Matricula` int(4) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Depto` int(1) DEFAULT NULL,
  `Salario` decimal(8,1) DEFAULT NULL,
  `Admissao` date DEFAULT NULL,
  `filho` int(1) DEFAULT NULL,
  `genero` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario2022`
--

INSERT INTO `funcionario2022` (`Matricula`, `Nome`, `Depto`, `Salario`, `Admissao`, `filho`, `genero`) VALUES
(1001, 'Francisco de Oliveira', 1, '1980.0', '2001-11-20', 0, 'm'),
(1002, 'Ana Maria Andrade', 2, '3520.0', '1999-02-13', 1, 'f'),
(1003, 'Ant?nio Andrade de Oliveira', 3, '5280.0', '2007-11-05', 3, 'm'),
(1004, 'Maria Abelarda da Silva', 5, '1030.7', '1997-03-01', 5, 'f'),
(1005, 'Manoel Trindade', 4, '8635.6', '1997-01-02', 3, 'm'),
(1006, 'Alexandre Barbosa', 1, '1980.0', '2000-06-08', 2, 'm'),
(1007, 'Rosana Campoy', 2, '3322.0', '2004-07-24', 3, 'f'),
(1008, 'Jana?na Albuquerque', 3, '4950.0', '1999-03-25', 0, 'f'),
(1009, 'Roberto Silva Junior', 1, '1991.0', '2003-07-07', 0, 'm'),
(1010, 'Carlos Eduardo Siqueira', 4, '8679.0', '2009-08-04', 1, 'm'),
(1011, 'Heitor Sampaio', 1, '3795.0', '2011-03-05', 1, 'm'),
(1012, 'C?lia Menezes', 1, '2178.0', '2008-07-18', 0, 'f'),
(1013, 'Jos? Alves Costa', 1, '1815.0', '2000-09-11', 1, 'm'),
(1014, 'Arlinda Medeiros', 5, '1030.7', '2000-05-03', 5, 'f'),
(1015, 'Josefina Sarmento', 4, '7467.9', '1997-01-02', 1, 'f');

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

CREATE TABLE `os` (
  `NUM_OS` int(11) NOT NULL,
  `MAT_FUNC` int(11) NOT NULL,
  `CPF_CLI` int(11) NOT NULL,
  `PLACA_VEIC` varchar(7) NOT NULL,
  `DATA_RET` date NOT NULL,
  `DATA_DEV` date NOT NULL,
  `km_ret` decimal(8,2) DEFAULT NULL,
  `km_dev` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `os`
--

INSERT INTO `os` (`NUM_OS`, `MAT_FUNC`, `CPF_CLI`, `PLACA_VEIC`, `DATA_RET`, `DATA_DEV`, `km_ret`, `km_dev`) VALUES
(1, 1001, 123456789, 'AWV1234', '2022-01-03', '2022-01-05', '1800.59', '2010.89'),
(2, 1011, 123456780, 'AWV1323', '2022-01-03', '2022-01-19', '10.00', '15000.00'),
(3, 1009, 129345678, 'ADX1473', '2022-01-10', '2022-01-30', '8528.00', '9002.00'),
(4, 1006, 129778946, 'AQW1234', '2022-02-02', '2022-02-09', '10.00', '12345.00'),
(5, 1012, 123549800, 'AZX3273', '2022-02-02', '2022-02-03', '34580.00', '39508.00'),
(6, 1001, 128799480, 'ABW4007', '2022-02-05', '2022-02-09', '60050.00', '63083.00'),
(7, 1006, 123456799, 'AWS2365', '2022-02-06', '2022-04-05', '4058.23', '4555.55'),
(8, 1012, 123456798, 'AQX3451', '2022-01-01', '2022-05-10', '60038.00', '62000.15'),
(9, 1012, 123456789, 'ADE3456', '2022-01-01', '2022-05-10', '12058.00', '19000.00'),
(10, 1013, 123764598, 'ACZ3243', '2022-05-01', '2022-05-02', '10000.00', '13580.00'),
(11, 1001, 123456780, 'ACZ3243', '2022-09-12', '0000-00-00', '13580.00', '0.00'),
(12, 1001, 123456798, 'ADW2456', '2022-09-12', '0000-00-00', '10000.00', '0.00');

--
-- Acionadores `os`
--
DELIMITER $$
CREATE TRIGGER `status_veic` BEFORE INSERT ON `os` FOR EACH ROW UPDATE veiculos SET veiculos.locado = 1
    WHERE veiculos.Placa = NEW.PLACA_VEIC
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `login` int(4) NOT NULL,
  `senha` varchar(22) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`login`, `senha`, `status`) VALUES
(1016, '2022-09-26', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `Placa` varchar(7) NOT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `modelo` varchar(15) DEFAULT NULL,
  `cor` varchar(10) DEFAULT NULL,
  `ano` int(4) DEFAULT NULL,
  `comb` varchar(1) DEFAULT NULL,
  `cat` int(1) DEFAULT NULL,
  `locado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`Placa`, `marca`, `modelo`, `cor`, `ano`, `comb`, `cat`, `locado`) VALUES
('ABW4007', 'VW', 'Jetta', 'Preto', 2017, 'F', 3, 0),
('ACZ3243', 'VW', 'Fusca', 'Rosa', 1956, 'G', 4, 1),
('ADE3456', 'Chevrolet', 'Camaro', 'Amarelo', 2017, 'G', 4, 0),
('ADW2456', 'VW', 'Gol', 'Vermelho', 2016, 'A', 1, 1),
('ADX1473', 'Ford', 'Ka', 'Branco', 2016, 'A', 1, 0),
('AQW1234', 'Ford', 'Fusion', 'Preto', 2017, 'F', 3, 0),
('AQX3451', 'Porsche', 'Carrera', 'Preto', 2017, 'G', 4, 0),
('AQY2005', 'Chevrolet', 'S10', 'Branco', 2017, 'D', 2, 0),
('ASX3232', 'Ford', 'Ka', 'Marrom', 2017, 'F', 1, 0),
('AVX4003', 'VW', 'Amarok', 'Preto', 2017, 'D', 2, 0),
('AWQ3703', 'Chevrolet', 'Omega', 'Preto', 2017, 'G', 3, 0),
('AWS2365', 'Chevrolet', 'Cruze', 'Azul', 2017, 'F', 3, 0),
('AWV1234', 'Fiat', 'Palio', 'Branco', 2016, 'F', 1, 0),
('AWV1323', 'VW', 'Gol', 'Branco', 2017, 'F', 1, 0),
('AWY4546', 'Fiat', 'Fiorino', 'Branco', 2016, 'A', 2, 0),
('AZX3273', 'VW', 'Fox', 'Azul', 2016, 'F', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos2022`
--

CREATE TABLE `veiculos2022` (
  `Placa` varchar(7) NOT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `modelo` varchar(15) DEFAULT NULL,
  `cor` varchar(10) DEFAULT NULL,
  `ano` int(4) DEFAULT NULL,
  `comb` varchar(1) DEFAULT NULL,
  `cat` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veiculos2022`
--

INSERT INTO `veiculos2022` (`Placa`, `marca`, `modelo`, `cor`, `ano`, `comb`, `cat`) VALUES
('ABW4007', 'VW', 'Jetta', 'Preto', 2022, 'F', 3),
('ACZ3243', 'VW', 'Fusca', 'Rosa', 1956, 'G', 4),
('ADE3456', 'Chevrolet', 'Camaro', 'Amarelo', 2022, 'G', 4),
('ADW2456', 'VW', 'Gol', 'Vermelho', 2021, 'A', 1),
('ADX1473', 'Ford', 'Ka', 'Branco', 2021, 'A', 1),
('AQW1234', 'Ford', 'Fusion', 'Preto', 2022, 'F', 3),
('AQX3451', 'Porsche', 'Carrera', 'Preto', 2022, 'G', 4),
('AQY2005', 'Chevrolet', 'S10', 'Branco', 2022, 'D', 2),
('ASX3232', 'Ford', 'Ka', 'Marrom', 2022, 'F', 1),
('AVX4003', 'VW', 'Amarok', 'Preto', 2022, 'D', 2),
('AWQ3703', 'Chevrolet', 'Omega', 'Preto', 2022, 'G', 3),
('AWS2365', 'Chevrolet', 'Cruze', 'Azul', 2022, 'F', 3),
('AWV1234', 'Fiat', 'Palio', 'Branco', 2021, 'F', 1),
('AWV1323', 'VW', 'Gol', 'Branco', 2022, 'F', 1),
('AWY4546', 'Fiat', 'Fiorino', 'Branco', 2021, 'A', 2),
('AZX3273', 'VW', 'Fox', 'Azul', 2021, 'F', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`Cod`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `combustivel`
--
ALTER TABLE `combustivel`
  ADD PRIMARY KEY (`Cod`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`Cod`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`Matricula`);

--
-- Índices para tabela `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`NUM_OS`),
  ADD KEY `MAT_FUNC` (`MAT_FUNC`),
  ADD KEY `CPF_CLI` (`CPF_CLI`),
  ADD KEY `PLACA_VEIC` (`PLACA_VEIC`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`login`);

--
-- Índices para tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`Placa`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `os`
--
ALTER TABLE `os`
  MODIFY `NUM_OS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `os`
--
ALTER TABLE `os`
  ADD CONSTRAINT `os_ibfk_1` FOREIGN KEY (`MAT_FUNC`) REFERENCES `funcionario` (`Matricula`),
  ADD CONSTRAINT `os_ibfk_2` FOREIGN KEY (`CPF_CLI`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `os_ibfk_3` FOREIGN KEY (`PLACA_VEIC`) REFERENCES `veiculos` (`Placa`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`login`) REFERENCES `funcionario` (`Matricula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
