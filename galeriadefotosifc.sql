-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 29-Nov-2019 às 12:42
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `album`
--

INSERT INTO `album` (`id_album`, `titulo`, `local`, `data`, `capa`) VALUES
(1, 'Formatura Técnico em Segurança do Trabalho', 'IFC - Campus Camboriú', '2019-08-23', 'album1/capa/capa.jpeg'),
(2, 'Formatura dos Cuidadores de Idosos', 'IFC - Campus Camboriú', '2019-08-06', 'album2/capa/capa.jpg'),
(3, '1ª Maratona Fotográfica do NGA – Natureza Inspira Arte', 'IFC - Campus Camboriú', '2019-06-10', 'album3/capa/capa.jpeg'),
(6, 'Formaturas do Programa Defesa Civil na Escola', 'Penha e Itapema', '2019-09-04', 'Formaturas do Programa Defesa Civil na Escola/capa/WhatsApp-Image-2019-08-23-at-13.28.43.jpeg'),
(8, 'Socialização IFeliCidade', 'IFC - Campus Camboriú', '2019-02-05', 'Socialização IFeliCidade/capa/IMG_0034.jpg'),
(9, 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários', 'IFC - Campus Camboriú', '2019-02-28', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/capa/20190222_210805.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `imagem`
--

INSERT INTO `imagem` (`id_imagem`, `id_album`, `titulo`, `descricao`, `caminho`, `creditoFoto`) VALUES
(1, 1, 'Formandos', 'Formandos vestidos com beca e capelo sentados em cadeiras no lado esquerdo, e a mesa de autoridades à direita, ambos no palco do auditório central da instituição.', 'album1/fotos/img1.jpeg', 'Dulcinéia Paim Reis'),
(2, 1, 'Formandos', 'Formandos em pé, junto com uma de suas professoras, no lado de fora do auditório.', 'album1/fotos/img2.jpeg', 'Dulcinéia Paim Reis'),
(3, 1, 'Formandos', 'Formandos vestidos com beca e capelo sentados em cadeiras no lado esquerdo, e a mesa de autoridades à direita, ambos no palco do auditório central da instituição.', 'album1/fotos/img3.jpeg', 'Dulcinéia Paim Reis'),
(4, 1, 'Formanda recebendo diploma', 'Professora entregando à formanda o diploma de conclusão de curso.', 'album1/fotos/img4.jpeg', 'Dulcinéia Paim Reis'),
(5, 1, 'Formando recebendo diploma', 'Professora entregando ao formando o diploma de conclusão de curso.', 'album1/fotos/img5.jpeg', 'Dulcinéia Paim Reis'),
(6, 1, 'Formando recebendo diploma', 'Professora entregando ao formando o diploma de conclusão de curso.', 'album1/fotos/img6.jpeg', 'Dulcinéia Paim Reis'),
(7, 2, 'Formandos levantando os certificados', 'Na foto, há 16 pessoas e 2 crianças, em pé em frente ao palco do auditório do IFC, comemorando a formatura levantando seus certificados.', 'album2/fotos/img1.jpg', 'CECOM/IFC'),
(8, 2, 'Formandos e professores', 'Na foto, estão, em pé e em frente ao auditório do IFC, os professores e formandos do curso de Cuidadores de Idosos.', 'album2/fotos/img2.jpg', 'CECOM/IFC'),
(9, 2, 'Professora e formandos', 'Na foto, professora está em cima do palco do auditório do IFC dando uma palestra aos formandos, que estão sentados nas cadeiras.', 'album2/fotos/img3.jpg', 'CECOM/IFC'),
(10, 2, 'Professora e formandos', 'Na foto, professora está em cima do palco do auditório do IFC dando uma palestra aos formandos, que estão sentados nas cadeiras.', 'album2/fotos/img4.jpg', 'CECOM/IFC'),
(11, 3, 'Flor', 'Flor lilás.', 'album3/fotos/img1.jpg', 'Arthur Klipp Zenzeluk – Aluno IA17'),
(12, 3, 'Detalhes', 'Flor vermelha com uma abelha em seu meio.', 'album3/fotos/img2.jpeg', 'Fernanda Grecillo – Aluna CA19'),
(13, 3, 'Quack', 'Patos e gansos na beira da lagoa.', 'album3/fotos/img3.jpeg', 'Fernanda Grecillo – Aluna CA19'),
(14, 3, 'O Bichinho da Árvore', 'Mini galhos de árvore.', 'album3/fotos/img4.jpg', 'Erick Scheuermann da Silva – Aluno CA17'),
(15, 3, 'Arco Íris', 'Arco íris no céu azul com algumas nuvens, com coqueiros ao fundo.', 'album3/fotos/img5.jpg', 'Isabela Santana – Aluna CA17'),
(16, 3, 'Girassol', 'Girassol.', 'album3/fotos/img6.jpeg', 'Isabela Santana – Aluna CA17'),
(34, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.36-1.jpeg', 'Arquivo Cleonice Maria Beppler'),
(35, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.37 (1).jpeg', 'Arquivo Cleonice Maria Beppler'),
(36, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.37.jpeg', 'Arquivo Cleonice Maria Beppler'),
(37, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.37-1.jpeg', 'Arquivo Cleonice Maria Beppler'),
(38, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.38.jpeg', 'Arquivo Cleonice Maria Beppler'),
(39, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.38-1.jpeg', 'Arquivo Cleonice Maria Beppler'),
(40, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.38-2.jpeg', 'Arquivo Cleonice Maria Beppler'),
(41, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.39.jpeg', 'Arquivo Cleonice Maria Beppler'),
(42, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.39-1.jpeg', 'Arquivo Cleonice Maria Beppler'),
(43, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.39-2.jpeg', 'Arquivo Cleonice Maria Beppler'),
(44, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.40.jpeg', 'Arquivo Cleonice Maria Beppler'),
(45, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.40-1.jpeg', 'Arquivo Cleonice Maria Beppler'),
(46, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.40-2.jpeg', 'Arquivo Cleonice Maria Beppler'),
(47, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.41.jpeg', 'Arquivo Cleonice Maria Beppler'),
(48, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.41-1.jpeg', 'Arquivo Cleonice Maria Beppler'),
(49, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.42 (1).jpeg', 'Arquivo Cleonice Maria Beppler'),
(50, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.42.jpeg', 'Arquivo Cleonice Maria Beppler'),
(51, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.42-1.jpeg', 'Arquivo Cleonice Maria Beppler'),
(52, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.43.jpeg', 'Arquivo Cleonice Maria Beppler'),
(53, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.43-1.jpeg', 'Arquivo Cleonice Maria Beppler'),
(54, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.43-2.jpeg', 'Arquivo Cleonice Maria Beppler'),
(55, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.44.jpeg', 'Arquivo Cleonice Maria Beppler'),
(56, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.44-1.jpeg', 'Arquivo Cleonice Maria Beppler'),
(57, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.44-2.jpeg', 'Arquivo Cleonice Maria Beppler'),
(58, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.45.jpeg', 'Arquivo Cleonice Maria Beppler'),
(59, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.45-1.jpeg', 'Arquivo Cleonice Maria Beppler'),
(60, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.28.45-2.jpeg', 'Arquivo Cleonice Maria Beppler'),
(62, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.43.41.jpeg', 'Arquivo Cleonice Maria Beppler'),
(63, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.43.41-1.jpeg', 'Arquivo Cleonice Maria Beppler'),
(64, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.43.41-2.jpeg', 'Arquivo Cleonice Maria Beppler'),
(65, 6, NULL, NULL, 'Formaturas do Programa Defesa Civil na Escola/fotos/WhatsApp-Image-2019-08-23-at-13.43.42.jpeg', 'Arquivo Cleonice Maria Beppler'),
(66, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0154.jpg', 'CECOM/IFC'),
(67, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0025.jpg', 'CECOM/IFC'),
(68, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0027.jpg', 'CECOM/IFC'),
(69, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0030.jpg', 'CECOM/IFC'),
(70, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0033.jpg', 'CECOM/IFC'),
(71, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0034.jpg', 'CECOM/IFC'),
(72, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0035.jpg', 'CECOM/IFC'),
(73, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0036.jpg', 'CECOM/IFC'),
(74, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0038.jpg', 'CECOM/IFC'),
(75, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0039.jpg', 'CECOM/IFC'),
(76, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0047.jpg', 'CECOM/IFC'),
(77, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0052.jpg', 'CECOM/IFC'),
(78, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0056.jpg', 'CECOM/IFC'),
(79, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0060.jpg', 'CECOM/IFC'),
(80, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0078.jpg', 'CECOM/IFC'),
(81, 8, NULL, NULL, 'Socialização IFeliCidade/fotos/IMG_0079.jpg', 'CECOM/IFC'),
(82, 9, 'Formandos', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários (formandos com beca e capelo, sentados em cima do auditório, ao lado da mesa de autoridades. À frente deles, há a plateia lotada, sentada nos bancos do auditório).', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/fotos/20190222_210031.jpg', 'CECOM/IFC'),
(83, 9, 'Formandos', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários (formandos com beca e capelo, sentados em cima do auditório, ao lado da mesa de autoridades. À frente deles, há a plateia lotada, sentada nos bancos do auditório).', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/fotos/20190222_210740.jpg', 'CECOM/IFC'),
(84, 9, 'Formandos', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários (formandos com beca e capelo, sentados em cima do auditório, ao lado da mesa de autoridades. À frente deles, há a plateia lotada, sentada nos bancos do auditório).', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/fotos/20190222_210805.jpg', 'CECOM/IFC'),
(85, 9, 'Formandos', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários (formandos com beca e capelo, sentados em cima do auditório, ao lado da mesa de autoridades. À frente deles, há a plateia lotada, sentada nos bancos do auditório).', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/fotos/20190222_210807(0).jpg', 'CECOM/IFC'),
(86, 9, 'Formandos', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários (formandos com beca e capelo, sentados em cima do auditório, ao lado da mesa de autoridades. À frente deles, há a plateia lotada, sentada nos bancos do auditório).', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/fotos/20190222_210815.jpg', 'CECOM/IFC'),
(87, 9, 'Formandos', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários (formandos com beca e capelo, sentados em cima do auditório, ao lado da mesa de autoridades. À frente deles, há a plateia lotada, sentada nos bancos do auditório).', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/fotos/20190222_210827.jpg', 'CECOM/IFC'),
(88, 9, 'Formandos', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários (formandos com beca e capelo, sentados em cima do auditório, ao lado da mesa de autoridades. À frente deles, há a plateia lotada, sentada nos bancos do auditório).', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/fotos/20190222_210856.jpg', 'CECOM/IFC'),
(89, 9, 'Formandos', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários (formandos com beca e capelo, sentados em cima do auditório, ao lado da mesa de autoridades. À frente deles, há a plateia lotada, sentada nos bancos do auditório).', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/fotos/20190222_210859.jpg', 'CECOM/IFC'),
(90, 9, 'Formandos', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários (formandos com beca e capelo, sentados em cima do auditório, ao lado da mesa de autoridades. À frente deles, há a plateia lotada, sentada nos bancos do auditório).', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/fotos/DSCN0009.JPG', 'CECOM/IFC'),
(91, 9, 'Formandos', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários (formandos com beca e capelo, sentados em cima do auditório, ao lado da mesa de autoridades. À frente deles, há a plateia lotada, sentada nos bancos do auditório).', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/fotos/DSCN0013.JPG', 'CECOM/IFC'),
(92, 9, 'Formandos', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários (formandos com beca e capelo, sentados em cima do auditório, ao lado da mesa de autoridades. À frente deles, há a plateia lotada, sentada nos bancos do auditório).', 'Colação de Grau Pedagogia, Matemática e Negócios Imobiliários/fotos/DSCN0022.JPG', 'CECOM/IFC');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tagalbum`
--

INSERT INTO `tagalbum` (`id_tagAlbum`, `id_album`, `id_tag`) VALUES
(1, 1, 1),
(3, 2, 1),
(5, 3, 5),
(14, 6, 1),
(15, 8, 3),
(16, 9, 1);

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
