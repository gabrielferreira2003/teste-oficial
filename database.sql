CREATE DATABASE  IF NOT EXISTS `bancoteste` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bancoteste`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: bancoteste
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantProd` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idUsuario` int DEFAULT NULL,
  `idProduto` int DEFAULT NULL,
  `idcompra` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idProduto` (`idProduto`),
  KEY `idcompra` (`idcompra`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `produtos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `compras_ibfk_3` FOREIGN KEY (`idcompra`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imagem` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `preco` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'imagens/produto1.png','Cortador, fatiador e moedor','Com o cortador, fatiador e moedor. Voc?? poder?? otimizar o tempo na cozinha preparando alimentos com cortes perfeitos mais r??pido e seguro.\n\nO  seu design moderno conta com tr??s laminas de A??O INOXID??VEL. Utilit??rio indispens??vel na sua cozinha,  otimizando suas  refei????es com mais sa??de e rapidez.',167.9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'imagens/produto2.png','Massageador de Pesco??o','Chegou a hora de acabar de uma vez por todas com suas dores, estresse e problemas musculares. O Massageador de Pesco??o Pulse simula at?? 8 tipos de tratamentos corporais.\nNos dias de hoje, passamos a maior parte do tempo olhando para nossos dispositivos m??veis ou computadores, seja no trabalho, ou na faculdade, ou em casa. Durante um longo per??odo de tempo, isso pode criar uma enorme quantidade de estresse no nosso pesco??o e no nosso sistema nervoso.\nNosso massageador  foi projetado especificamente para promover o RELAXAMENTO enquanto voc?? passa o dia ocupado.',110.66,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'imagens/produto3.png','Kit Escova De Dentes ','Quanto tempo voc?? passa escovando os dentes?\nTrazemos algo inovador para voc??. N??o se trata apenas de escova el??trica como as que voc?? v?? na farm??cia ou nos mercados. Essa ?? A ESCOVA EL??TRICA 360??!',199,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'imagens/produto4.jpg','Fatiador de legumes','1- Esse excelente utensilio veio para facilitar sua vida na cozinha, fivela de rota????o autom??tica, voc?? pode fatiar e lavar os legumes no mesmo utensilio! \n\n2- Acompanha 7 laminas afiadas e 1 fatiador de legumes de brinde, para usar de acordo suas necessidades \n\n3- Troca r??pidas das lamina, para cortes de v??rios legumes.\n\nOque era chato e trabalhoso, ficou pratico e divertido com nosso cortador de legumes Slicer ',99,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'imagens/produto5.jpg','Liquidificador port??til','Mini Liquidificador JUICE Port??til\n\nQue tal preparar sucos, shakes, batidas, mamadeiras, entre outros l??quidos de forma pr??tica e r??pida?\nChegou o Lan??amento para voc?? que quer cuidar da sua sa??de.\n\nEste produto ir?? trazer praticidade para sua rotina, Otimize o preparo dos l??quidos e melhore sua alimenta????o.\nIdeal para Dietas, Academia, Atletas, Levar para o Trabalho, Utilizar em Casa, Presente para amigos e familiares.',89,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'imagens/produto6.jpg','Bomba de suc????o leite','A IMPORT??NCIA DO LEITE MATERNO\nA amamenta????o do beb?? ?? base de leite materno traz in??meros ben??ficos quer ao beb?? quer ?? m??e. No entanto, principalmente se ?? m??e de primeira viagem poder?? ter d??vidas acerca de como extrair o leite e depois como armazen??-lo, para ser usado quando n??o puder estar com o seu beb??. J?? se conhecem todos os benef??cios do leite materno, tanto para o beb?? como para a m??e. Para al??m destas vantagens todas, amamentar ?? obviamente a forma mais barata de alimentar o beb??. Da?? a vontade de tantas m??es extra??rem o seu leite para poderem continuar a dar ao beb?? quando tiverem de se ausentar ou quando come??arem a trabalhar',189,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'imagens/produto7.png','Lava e seca pinc??is','Bact??rias em suas escovas de maquiagem podem causar fungos  indesejados e manchas na pele. Lavando o rosto diariamente, mas aplicando as mesmas escovas de maquiagem sujas na sua pele? O segredo para a pele impec??vel come??a com manter seus pinc??is limpos e a lavagem das m??os raramente faz o trabalho. Cuide da sua pele, mantendo seus pinc??is limpos',119,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'imagens/produto8.png','Difusor Cactus Essence','A NOVA TECNOLOGIA DO DIFUSOR CACTUS ESSENCE, PERMITE QUE ELE PRODUZA UMA N??VOA QUE ESPALHA O AROMA DOS ??LEOS ESS??NCIAIS E UMIDIFICA O AR DE TODO O AMBIENTE \nO Cactus Essence deixa o ar mais ??mido e hidratado, combate os problemas respirat??rios, previne tosses, sinusite, crises de rinite e  aumenta a qualidade do sono.',133.98,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'imagens/produto9.png','Fone De Ouvido Blitzwolf ','1. C??maras de som independentes com drivers de filme de tit??nio de 10 mm - Produz vocais precisos, baixas frequ??ncias poderosas e freq????ncias m??dias balanceadas.\n2. Carregador port??til com bateria interna de grande capacidade: vem com carregador de 520mAh combina com armazenamento port??til, ultra-conveniente para carregar os fones de ouvido e armazenar.\n3. design ergon??mico, ultra-leve, livre de carga com o desgaste de longo tempo, o atraente ?? extremamente dur??vel e anti-desgaste.\n4. Bluetooth V5.0 & 10M Conex??o Livre de Obst??culo - Liberta as m??os e permite-lhe livrar-se da restri????o com fio.',219,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'imagens/produto10.png','Omeleteira El??trica','iga adeus para as panelas sujas e os ovos grudados na frigideira\nAgora voc?? pode fazer diversas receitas de ovos com apenas 8 minutinhos, com a nossa omeleteira voc?? economiza tempo e esfor??o.',136.99,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'805.773.070-61','GABRIEL FERREIRA DA SILVA','bi194509@gmail.com','111111111','Maria catharina chionha Giabardo, 421, Presidente Prudente, SP, 19028035','2022-03-20 21:07:20','2022-03-20 21:07:20'),(2,'805.773.070-61','GABRIEL FERREIRA DA SILVA','bi194509@gmail.com','123456','Maria catharina chionha Giabardo, 421, Presidente Prudente, SP, 19028035','2022-03-20 21:36:25','2022-03-20 21:36:25');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-20 23:33:58
