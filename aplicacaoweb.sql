-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/06/2024 às 21:34
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aplicacaoweb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `Id_produto` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(10000) NOT NULL,
  `custo` float NOT NULL,
  `curriculo` varchar(1000) NOT NULL,
  `foto` varchar(1000) NOT NULL,
  `Pru_destaque` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`Id_produto`, `nome`, `descricao`, `custo`, `curriculo`, `foto`, `Pru_destaque`) VALUES
(1, 'Guilherme Lucio', 'Graduando em Ciências da Computação (Estácio),com previsão de formatura no 1º semestre de 2026.CR 9.32 De 9 diciplinas cursadas.', 3562, 'Colaboradores/guilherme.html', 'Colaboradores/img/Guilherme.png', 1),
(2, 'João Antonio', 'Graduando em Ciências da Computação (Estácio),com previsão de formatura no 1º semestre de 2026.CR 9.10 De 8 diciplinas cursadas.', 3562, 'Colaboradores/Joao.html', 'Colaboradores/img/Joao.png', 0),
(3, 'Jonathan Matheus', 'Graduando em Análise e Desenvolvimento de Sistemas (Estácio),com previsão de formatura no 1º semestre de 2024.CR 8.84 De 20 diciplinas cursadas.', 4638, 'Colaboradores/jonathan.html', 'Colaboradores/img/jonathan.png', 0),
(5, 'Leonardo Vianna', 'Graduando em Análise e Desenvolvimento de Sistemas (Estácio), com previsão de formatura no 1º semestre de 2025.CR 9.74 De 9 diciplinas cursadas.', 3562, 'Colaboradores/leonardo.html', 'Colaboradores/img/leonardo.png', 0),
(6, 'Mayra Franco', 'Graduanda em Ciências da Computação (Estácio),com previsão de formatura no 1º semestre de 2026.CR 8.25 De 8 diciplinas cursadas.', 3562, 'Colaboradores/mayra.html', 'Colaboradores/img/Mayara.png', 0),
(7, 'Ricardo Eduardo', 'Graduando em Ciências da Computação (Estácio),com previsão de formatura no 2º semestre de 2026.CR 8.65 De 8 diciplinas cursadas.\r\n', 3562, 'Colaboradores/ricardo.html', 'Colaboradores/img/Ricardo.png', 0),
(8, 'Sílvia Rausses', 'Graduanda em Análise e Desenvolvimento de Sistemas (Estácio),com previsão de formatura no 1º semestre de 2025.CR 9.52 De 9 diciplinas cursadas.', 6523, 'Colaboradores/silvia.html', 'Colaboradores/img/Silvia.png', 1),
(9, 'Lais Costa', '	Graduando em Análise e Desenvolvimento de Sistemas (Estácio), com previsão de formatura no 2º semestre de 2025.CR 9.17 De 9 diciplinas cursadas.', 3562, 'Colaboradores/lais.html', 'Colaboradores/img/lais.png	', 0),
(37, 'Teste', 'Teste', 500, 'Teste', 'Colaboradores/img/teste.png', 0),
(38, 'Teste2', 'Teste2', 0, 'Teste2', 'Colaboradores/img/teste.png', 0),
(40, 'Produto Aaula2', 'Teste', 1000, 'TESTE', 'TESTE', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `Id_usuario` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Senha` varchar(100) NOT NULL,
  `Nivel_privilegio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`Id_usuario`, `Nome`, `Senha`, `Nivel_privilegio`) VALUES
(1, 'Admin', '4813494d137e1631bba301d5acab6e7bb7aa74ce1185d456565ef51d737677b2', 'Admin'),
(16, 'Guilherme Lucio', 'c1c224b03cd9bc7b6a86d77f5dace40191766c485cd55dc48caf9ac873335d6f', 'Admin'),
(17, 'Mayara', 'c1c224b03cd9bc7b6a86d77f5dace40191766c485cd55dc48caf9ac873335d6f', 'Admin'),
(18, 'Ricardo', 'c1c224b03cd9bc7b6a86d77f5dace40191766c485cd55dc48caf9ac873335d6f', 'Admin'),
(19, 'Silvia', 'c1c224b03cd9bc7b6a86d77f5dace40191766c485cd55dc48caf9ac873335d6f', 'Admin'),
(20, 'Adriano', '7ac1e085e5d6a35272a8542ef6215c2dd1577f6c1b845d7e9b9d236918aad137', 'Padrao');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`Id_produto`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `Id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
