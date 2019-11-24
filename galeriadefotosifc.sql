-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Nov-2019 às 21:45
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `galeriadefotosifc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `titulo` varchar(300) NOT NULL,
  `local` varchar(300) NOT NULL,
  `data` date NOT NULL,
  `capa` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `album`
--

INSERT INTO `album` (`id_album`, `titulo`, `local`, `data`, `capa`) VALUES
(1, 'Formatura Técnico em Segurança do Trabalho', 'IFC - Campus Camboriú', '2019-08-23', 'album1/capa/capa.jpeg'),
(2, 'Formatura dos Cuidadores de Idosos', 'IFC - Campus Camboriú', '2019-08-06', 'album2/capa/capa.jpg'),
(3, '1ª Maratona Fotográfica do NGA – Natureza Inspira Arte', 'IFC - Campus Camboriú', '2019-06-10', 'album3/capa/capa.jpeg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagem`
--

CREATE TABLE `imagem` (
  `id_imagem` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `titulo` varchar(300) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `caminho` varchar(300) NOT NULL,
  `creditoFoto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `imagem`
--

INSERT INTO `imagem` (`id_imagem`, `id_album`, `titulo`, `descricao`, `caminho`, `creditoFoto`) VALUES
(1, 1, 'Formandos', 'Formandos vestidos com beca e capelo sentados em cadeiras no lado esquerdo, e a mesa de autoridades à direita, ambos no palco do auditório central da instituição.', 'album1/fotos/img1.jpeg', 'by eu'),
(2, 1, 'Formandos', 'Formandos em pé, junto com uma de suas professoras, no lado de fora do auditório.', 'album1/fotos/img2.jpeg', 'by tu'),
(3, 1, 'Formandos', 'Formandos vestidos com beca e capelo sentados em cadeiras no lado esquerdo, e a mesa de autoridades à direita, ambos no palco do auditório central da instituição.', 'album1/fotos/img3.jpeg', 'by João'),
(4, 1, 'Formanda recebendo diploma', 'Professora entregando à formanda o diploma de conclusão de curso.', 'album1/fotos/img4.jpeg', 'by Tico'),
(5, 1, 'Formando recebendo diploma', 'Professora entregando ao formando o diploma de conclusão de curso.', 'album1/fotos/img5.jpeg', 'by Aquele'),
(6, 1, 'Formando recebendo diploma', 'Professora entregando ao formando o diploma de conclusão de curso.', 'album1/fotos/img6.jpeg', 'by Teleco'),
(7, 2, 'Formandos levantando os certificados', 'Na foto, há 16 pessoas e 2 crianças, em pé em frente ao palco do auditório do IFC, comemorando a formatura levantando seus certificados.', 'album2/fotos/img1.jpg', 'by Maria'),
(8, 2, 'Formandos e professores', 'Na foto, estão, em pé e em frente ao auditório do IFC, os professores e formandos do curso de Cuidadores de Idosos.', 'album2/fotos/img2.jpg', 'by TV'),
(9, 2, 'Professora e formandos', 'Na foto, professora está em cima do palco do auditório do IFC dando uma palestra aos formandos, que estão sentados nas cadeiras.', 'album2/fotos/img3.jpg', 'by Google'),
(10, 2, 'Professora e formandos', 'Na foto, professora está em cima do palco do auditório do IFC dando uma palestra aos formandos, que estão sentados nas cadeiras.', 'album2/fotos/img4.jpg', 'by Bing'),
(11, 3, 'Arthur Klipp Zenzeluk – Aluno IA17\r\n', 'Flor lilás.', 'album3/fotos/img1.jpg', 'by Bootstrap'),
(12, 3, 'Detalhes – Fernanda Grecillo – Aluna – CA19', 'Flor vermelha com uma abelha em seu meio.', 'album3/fotos/img2.jpeg', 'by Codeigniter'),
(13, 3, 'Quack – Fernanda Grecillo – Aluna – CA19', 'Patos e gansos na beira da lagoa.', 'album3/fotos/img3.jpeg', 'by Internet'),
(14, 3, 'O Bichinho da Árvore – Erick Scheuermann da Silva – Aluno – CA17', 'Mini galhos de árvore.', 'album3/fotos/img4.jpg', 'by Mais um nome'),
(15, 3, 'Isabela Santana – Aluna – CA17', 'Arco íris no céu azul com algumas nuvens, com coqueiros ao fundo.', 'album3/fotos/img5.jpg', 'by Outro nome'),
(16, 3, 'Isabela Santana – Aluna CA17', 'Girassol.', 'album3/fotos/img6.jpeg', 'by Mais um nome diferente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id_login`, `usuario`, `senha`) VALUES
(1, 'usuario', '7751a23fa55170a57e90374df13a3ab78efe0e99');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `descricao` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `descricao`) VALUES
(1, 'Administrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id_pessoa` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `id_login` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id_pessoa`, `id_perfil`, `id_login`, `nome`, `sobrenome`, `email`) VALUES
(1, 1, 1, 'User', 'Tester', 'tester@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tag`
--

INSERT INTO `tag` (`id_tag`, `nome`) VALUES
(1, 'Formatura'),
(2, 'Palestra'),
(3, 'Evento'),
(4, 'Feira Científica'),
(5, 'Maratona Fotográfica'),
(6, 'Nova tag'),
(7, 'new tag'),
(8, 'tag');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tagalbum`
--

CREATE TABLE `tagalbum` (
  `id_tagAlbum` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tagalbum`
--

INSERT INTO `tagalbum` (`id_tagAlbum`, `id_album`, `id_tag`) VALUES
(1, 1, 3),
(2, 1, 1),
(3, 2, 3),
(4, 2, 1),
(5, 3, 3),
(7, 1, 1),
(8, 1, 2),
(13, 3, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Índices para tabela `imagem`
--
ALTER TABLE `imagem`
  ADD PRIMARY KEY (`id_imagem`),
  ADD KEY `fk_imagem_album` (`id_album`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Índices para tabela `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Índices para tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id_pessoa`),
  ADD KEY `fk_pessoa_perfil` (`id_perfil`),
  ADD KEY `fk_pessoa_login` (`id_login`);

--
-- Índices para tabela `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Índices para tabela `tagalbum`
--
ALTER TABLE `tagalbum`
  ADD PRIMARY KEY (`id_tagAlbum`),
  ADD KEY `fk_tagAlbum_album` (`id_album`),
  ADD KEY `fk_tagAlbum_tag` (`id_tag`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `imagem`
--
ALTER TABLE `imagem`
  MODIFY `id_imagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id_pessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tagalbum`
--
ALTER TABLE `tagalbum`
  MODIFY `id_tagAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `imagem`
--
ALTER TABLE `imagem`
  ADD CONSTRAINT `fk_imagem_album` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`);

--
-- Limitadores para a tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD CONSTRAINT `fk_pessoa_login` FOREIGN KEY (`id_login`) REFERENCES `login` (`id_login`),
  ADD CONSTRAINT `fk_pessoa_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`);

--
-- Limitadores para a tabela `tagalbum`
--
ALTER TABLE `tagalbum`
  ADD CONSTRAINT `fk_tagAlbum_album` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`),
  ADD CONSTRAINT `fk_tagAlbum_tag` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id_tag`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
