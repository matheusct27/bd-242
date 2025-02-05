-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 04/02/2025 às 01:35
-- Versão do servidor: 8.0.41
-- Versão do PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `MySQL Sample Database`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CLIENTES`
--

CREATE TABLE `TB_CLIENTES` (
  `id_NC` int NOT NULL,
  `nome_do_cliente` text NOT NULL,
  `ultimo_nome_contato` text NOT NULL,
  `primeiro_nome_contato` text NOT NULL,
  `telefone` text NOT NULL,
  `endereco1` text NOT NULL,
  `endereco2` text NOT NULL,
  `cidade` text NOT NULL,
  `estado` text NOT NULL,
  `codigo_postal` int NOT NULL,
  `pais` text NOT NULL,
  `numero_empregado_rep_vendas` int NOT NULL,
  `limite_de_credito` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_CLIENTES`
--

INSERT INTO `TB_CLIENTES` (`id_NC`, `nome_do_cliente`, `ultimo_nome_contato`, `primeiro_nome_contato`, `telefone`, `endereco1`, `endereco2`, `cidade`, `estado`, `codigo_postal`, `pais`, `numero_empregado_rep_vendas`, `limite_de_credito`) VALUES
(1, 'Marcos Tulio', 'Tulio', 'Marcos', '(88)99966-9999', 'Rua dos Trabalhadores', 'Rua das Massas', 'Crateús', 'Ceará', 1, 'Brasil', 1, 1000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_DETALHES_DO_PEDIDO`
--

CREATE TABLE `TB_DETALHES_DO_PEDIDO` (
  `id_NP` int NOT NULL,
  `id_CP` int NOT NULL,
  `quantidade_requisitada` int NOT NULL,
  `preco_de_cada` int NOT NULL,
  `numero_linha_pedido` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_DETALHES_DO_PEDIDO`
--

INSERT INTO `TB_DETALHES_DO_PEDIDO` (`id_NP`, `id_CP`, `quantidade_requisitada`, `preco_de_cada`, `numero_linha_pedido`) VALUES
(1, 1, 100, 20, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_EMPREGADOS`
--

CREATE TABLE `TB_EMPREGADOS` (
  `id_NE` int NOT NULL,
  `ultimo_nome` text NOT NULL,
  `primeiro_nome` text NOT NULL,
  `extensao` text NOT NULL,
  `email` text NOT NULL,
  `codigo_de_escritorio` int NOT NULL,
  `relatorios_para` text NOT NULL,
  `titulo_de_trabalho` text NOT NULL,
  `numero_de_empregado` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_EMPREGADOS`
--

INSERT INTO `TB_EMPREGADOS` (`id_NE`, `ultimo_nome`, `primeiro_nome`, `extensao`, `email`, `codigo_de_escritorio`, `relatorios_para`, `titulo_de_trabalho`, `numero_de_empregado`) VALUES
(1, 'Renes', 'Roger', '15', 'roger.renes.libras@gmail.com', 1, 'Regis Tadeu', 'Servidor', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ESCRITORIOS`
--

CREATE TABLE `TB_ESCRITORIOS` (
  `id_CE` int NOT NULL,
  `cidade` text NOT NULL,
  `telefone` text NOT NULL,
  `endereco1` text NOT NULL,
  `endereco2` text NOT NULL,
  `estado` text NOT NULL,
  `pais` text NOT NULL,
  `codigo_postal` int NOT NULL,
  `territorio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_ESCRITORIOS`
--

INSERT INTO `TB_ESCRITORIOS` (`id_CE`, `cidade`, `telefone`, `endereco1`, `endereco2`, `estado`, `pais`, `codigo_postal`, `territorio`) VALUES
(1, 'Crateús', '(85)99779-4666', 'Rua dos Gurizes', 'Rua da 13 de Maio Benficado', 'Ceará', 'Brasil', 4785, 'Benfica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_LINHAS_DE_PRODUTOS`
--

CREATE TABLE `TB_LINHAS_DE_PRODUTOS` (
  `id_LP` int NOT NULL,
  `descricao` text NOT NULL,
  `descricaoHTML` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_LINHAS_DE_PRODUTOS`
--

INSERT INTO `TB_LINHAS_DE_PRODUTOS` (`id_LP`, `descricao`, `descricaoHTML`, `image`) VALUES
(1, 'Sabonetes incolores', '.color(red)', 'sabonete_invisivel.jpeg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PAGAMENTOS`
--

CREATE TABLE `TB_PAGAMENTOS` (
  `id_NE` int NOT NULL,
  `numero_de_checagem` int NOT NULL,
  `dia_de_pagamento` date NOT NULL,
  `montante` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PAGAMENTOS`
--

INSERT INTO `TB_PAGAMENTOS` (`id_NE`, `numero_de_checagem`, `dia_de_pagamento`, `montante`) VALUES
(1, 2, '2025-02-04', 450);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PEDIDOS`
--

CREATE TABLE `TB_PEDIDOS` (
  `id_NP` int NOT NULL,
  `data_do_pedido` date NOT NULL,
  `data_requisitada` date NOT NULL,
  `data_enviada` date NOT NULL,
  `status` text NOT NULL,
  `comentarios` text NOT NULL,
  `numero_do_cliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PEDIDOS`
--

INSERT INTO `TB_PEDIDOS` (`id_NP`, `data_do_pedido`, `data_requisitada`, `data_enviada`, `status`, `comentarios`, `numero_do_cliente`) VALUES
(1, '2025-02-03', '2025-02-04', '2025-02-03', 'Em envio', 'Sabonetes incolores/sem visibilidade em transporte', 666);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PRODUTOS`
--

CREATE TABLE `TB_PRODUTOS` (
  `id_CP` int NOT NULL,
  `nome_do_produto` text NOT NULL,
  `linha_de_produto` int NOT NULL,
  `escala_de_produto` int NOT NULL,
  `fornecedor_de_produto` text NOT NULL,
  `descricao_de_produto` text NOT NULL,
  `quantidade_em_estoque` int NOT NULL,
  `preco_de_compra` int NOT NULL,
  `MSRP` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PRODUTOS`
--

INSERT INTO `TB_PRODUTOS` (`id_CP`, `nome_do_produto`, `linha_de_produto`, `escala_de_produto`, `fornecedor_de_produto`, `descricao_de_produto`, `quantidade_em_estoque`, `preco_de_compra`, `MSRP`) VALUES
(1, 'Sabonete incolor', 1, 1, 'Sabonetes & Incolores Company', 'Vende-se sabonetes incolores', 666, 7, '.');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  ADD PRIMARY KEY (`id_NC`);

--
-- Índices de tabela `TB_DETALHES_DO_PEDIDO`
--
ALTER TABLE `TB_DETALHES_DO_PEDIDO`
  ADD PRIMARY KEY (`id_NP`,`id_CP`);

--
-- Índices de tabela `TB_EMPREGADOS`
--
ALTER TABLE `TB_EMPREGADOS`
  ADD PRIMARY KEY (`id_NE`);

--
-- Índices de tabela `TB_ESCRITORIOS`
--
ALTER TABLE `TB_ESCRITORIOS`
  ADD PRIMARY KEY (`id_CE`);

--
-- Índices de tabela `TB_LINHAS_DE_PRODUTOS`
--
ALTER TABLE `TB_LINHAS_DE_PRODUTOS`
  ADD PRIMARY KEY (`id_LP`);

--
-- Índices de tabela `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  ADD PRIMARY KEY (`id_NE`,`numero_de_checagem`);

--
-- Índices de tabela `TB_PEDIDOS`
--
ALTER TABLE `TB_PEDIDOS`
  ADD PRIMARY KEY (`id_NP`);

--
-- Índices de tabela `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  ADD PRIMARY KEY (`id_CP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
