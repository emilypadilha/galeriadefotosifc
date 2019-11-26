-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 26-Nov-2019 às 01:57
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galeriadefotosifc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE IF NOT EXISTS `album` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(300) NOT NULL,
  `local` varchar(300) NOT NULL,
  `data` date NOT NULL,
  `capa` varchar(300) NOT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

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

DROP TABLE IF EXISTS `imagem`;
CREATE TABLE IF NOT EXISTS `imagem` (
  `id_imagem` int(11) NOT NULL AUTO_INCREMENT,
  `id_album` int(11) NOT NULL,
  `titulo` varchar(300) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `caminho` varchar(300) NOT NULL,
  `creditoFoto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_imagem`),
  KEY `fk_imagem_album` (`id_album`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `imagem`
--

INSERT INTO `imagem` (`id_imagem`, `id_album`, `titulo`, `descricao`, `caminho`, `creditoFoto`) VALUES
(1, 1, 'Formandos', 'Formandos vestidos com beca e capelo sentados em cadeiras no lado esquerdo, e a mesa de autoridades à direita, ambos no palco do auditório central da instituição.', 'album1/fotos/img1.jpeg', 'CECOM/IFC'),
(2, 1, 'Formandos', 'Formandos em pé, junto com uma de suas professoras, no lado de fora do auditório.', 'album1/fotos/img2.jpeg', 'CECOM/IFC'),
(3, 1, 'Formandos', 'Formandos vestidos com beca e capelo sentados em cadeiras no lado esquerdo, e a mesa de autoridades à direita, ambos no palco do auditório central da instituição.', 'album1/fotos/img3.jpeg', 'CECOM/IFC'),
(4, 1, 'Formanda recebendo diploma', 'Professora entregando à formanda o diploma de conclusão de curso.', 'album1/fotos/img4.jpeg', 'CECOM/IFC'),
(5, 1, 'Formando recebendo diploma', 'Professora entregando ao formando o diploma de conclusão de curso.', 'album1/fotos/img5.jpeg', 'CECOM/IFC'),
(6, 1, 'Formando recebendo diploma', 'Professora entregando ao formando o diploma de conclusão de curso.', 'album1/fotos/img6.jpeg', 'CECOM/IFC'),
(7, 2, 'Formandos levantando os certificados', 'Na foto, há 16 pessoas e 2 crianças, em pé em frente ao palco do auditório do IFC, comemorando a formatura levantando seus certificados.', 'album2/fotos/img1.jpg', 'CECOM/IFC'),
(8, 2, 'Formandos e professores', 'Na foto, estão, em pé e em frente ao auditório do IFC, os professores e formandos do curso de Cuidadores de Idosos.', 'album2/fotos/img2.jpg', 'CECOM/IFC'),
(9, 2, 'Professora e formandos', 'Na foto, professora está em cima do palco do auditório do IFC dando uma palestra aos formandos, que estão sentados nas cadeiras.', 'album2/fotos/img3.jpg', 'CECOM/IFC'),
(10, 2, 'Professora e formandos', 'Na foto, professora está em cima do palco do auditório do IFC dando uma palestra aos formandos, que estão sentados nas cadeiras.', 'album2/fotos/img4.jpg', 'CECOM/IFC'),
(11, 3, 'Flor', 'Flor lilás.', 'album3/fotos/img1.jpg', 'Arthur Klipp Zenzeluk – Aluno IA17'),
(12, 3, 'Detalhes', 'Flor vermelha com uma abelha em seu meio.', 'album3/fotos/img2.jpeg', 'Fernanda Grecillo – Aluna CA19'),
(13, 3, 'Quack', 'Patos e gansos na beira da lagoa.', 'album3/fotos/img3.jpeg', 'Fernanda Grecillo – Aluna CA19'),
(14, 3, 'O Bichinho da Árvore', 'Mini galhos de árvore.', 'album3/fotos/img4.jpg', 'Erick Scheuermann da Silva – Aluno CA17'),
(15, 3, 'Arco Íris', 'Arco íris no céu azul com algumas nuvens, com coqueiros ao fundo.', 'album3/fotos/img5.jpg', 'Isabela Santana – Aluna CA17'),
(16, 3, 'Girassol', 'Girassol.', 'album3/fotos/img6.jpeg', 'Isabela Santana – Aluna CA17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id_login`, `usuario`, `senha`) VALUES
(1, 'usuario', '7751a23fa55170a57e90374df13a3ab78efe0e99');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

DROP TABLE IF EXISTS `perfil`;
CREATE TABLE IF NOT EXISTS `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `descricao`) VALUES
(1, 'Administrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE IF NOT EXISTS `pessoa` (
  `id_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `id_perfil` int(11) NOT NULL,
  `id_login` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  PRIMARY KEY (`id_pessoa`),
  KEY `fk_pessoa_perfil` (`id_perfil`),
  KEY `fk_pessoa_login` (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id_pessoa`, `id_perfil`, `id_login`, `nome`, `sobrenome`, `email`) VALUES
(1, 1, 1, 'User', 'Tester', 'tester@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id_tag` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tag`
--

INSERT INTO `tag` (`id_tag`, `nome`) VALUES
(1, 'Formatura'),
(2, 'Palestra'),
(3, 'Evento'),
(4, 'Feira Científica'),
(5, 'Maratona Fotográfica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tagalbum`
--

DROP TABLE IF EXISTS `tagalbum`;
CREATE TABLE IF NOT EXISTS `tagalbum` (
  `id_tagAlbum` int(11) NOT NULL AUTO_INCREMENT,
  `id_album` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  PRIMARY KEY (`id_tagAlbum`),
  KEY `fk_tagAlbum_album` (`id_album`),
  KEY `fk_tagAlbum_tag` (`id_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tagalbum`
--

INSERT INTO `tagalbum` (`id_tagAlbum`, `id_album`, `id_tag`) VALUES
(1, 1, 3),
(2, 1, 1),
(3, 2, 3),
(4, 2, 1),
(5, 3, 3);

--
-- Constraints for dumped tables
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
