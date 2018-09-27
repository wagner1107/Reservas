-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27-Set-2018 às 22:54
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto_reservas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carros`
--

CREATE TABLE `carros` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carros`
--

INSERT INTO `carros` (`id`, `nome`) VALUES
(1, 'Palio'),
(2, 'Voyage'),
(3, 'Corolla'),
(4, 'Hilux'),
(5, 'Camaro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `id_carro` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `pessoa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `reservas`
--

INSERT INTO `reservas` (`id`, `id_carro`, `data_inicio`, `data_fim`, `pessoa`) VALUES
(1, 2, '2018-01-05', '2018-01-10', 'Bonieky'),
(3, 4, '2017-01-05', '2017-01-10', 'Paulo'),
(4, 2, '2017-01-01', '2017-01-04', 'Pedro'),
(5, 2, '2017-01-11', '2017-01-13', 'Hen'),
(6, 4, '2017-01-01', '2017-01-04', 'Henrique'),
(14, 5, '2017-12-01', '2017-02-13', 'Jose'),
(15, 5, '2017-12-01', '2018-02-13', 'Wagner'),
(16, 1, '2017-01-01', '2017-01-04', 'Henrique');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carros`
--
ALTER TABLE `carros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carros`
--
ALTER TABLE `carros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
