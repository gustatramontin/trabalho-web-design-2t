CREATE DATABASE  IF NOT EXISTS `lp_page` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lp_page`;
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: lp_page
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.2

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
-- Table structure for table `info_102`
--

DROP TABLE IF EXISTS `info_102`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_102` (
  `user_name` varchar(100) NOT NULL,
  `real_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `teacher` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_name`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_102`
--

LOCK TABLES `info_102` WRITE;
/*!40000 ALTER TABLE `info_102` DISABLE KEYS */;
INSERT INTO `info_102` VALUES ('10406081913','CARLA EDUARDA NOBRE','carla.eduarda.nobre05@gmail.com',0),('alana.andreazza','ALANA CRISTINA ANDREAZZA','alanaandreazza26@hotmail.com',0),('alex2727','ALEX VIEIRA DIAS','alexvieiradias2019@gmail.com',0),('alice.santos.','ALICE LIMA DOS SANTOS','alicelimasantos@gmail.com',0),('ana.j.cunha','ANA JÚLIA DA CUNHA','dacunhanajulia@gmail.com',0),('andressa.borges','ANDRESSA BORGES','andressaborges694@gmail.com',0),('caio.resner','CAIO GABRIEL RESNER','resnercaiogabriel@gmail.com',0),('camilyghellar','CAMILY DO NASCIMENTO GHELLAR','ghellarcamily@gmail.com',0),('caua.nascimento','CAUÃ FELIPE DE FRANÇA NASCIMENTO','caua.ffranca@gmail.com',0),('eduardo.caitano','EDUARDO CAITANO','eduardocaitano15@gmail.com',0),('emanoela.erthal','EMANOELA RODRIGUES ERTHAL','emanoelaerthal443@gmail.com',0),('gabrielzanella','GABRIEL MOLON ZANELLA','gabrielmolonzanella@gmail.com',0),('gtramontin','GUSTAVO TRAMONTIN PEDRO','mrgustavotramontin@gmail.com',0),('haline.garcia','HALINE GARCIA PRADO DE JESUS','halinegarcia8@gmal.com',0),('hoffmann04','FELIPE JARDIM HOFFMANN','fipahoffmann@gmail.com',0),('hylson.vescovi','HYLSON VESCOVI NETTO','hylson.vescovi@ifc.edu.br',1),('igor.gramkow','IGOR GRAMKOW','gramkowigor@gmail.com',0),('jotaespig','JOÃO VITOR ESPIG','jotinha1300@gmail.com',0),('juan.tomaz','JUAN TOMAZ PEREIRA','zaikrobrrr@gmail.com',0),('kaua.moraes','KAUÃ SILVA MORAES','kauasobre@gmail.com',0),('larissa.branco','LARISSA REITER BRANCO','lreiterbranco@gmail.com',0),('lelesud','LETÍCIA PINTO MARTINS','leticiapintom28@gmail.com',0),('liriel.pisetta','LIRIEL PISETTA','lppisetta@gmail.com',0),('lmanske','LEMUEL KAUE MANSKE DE LIZ','lemuelkaue@gmail.com',0),('lucas222999','LUCAS GABRIEL SIEVERT','lgs22264@gmail.com',0),('luizfelipeficagna','LUIZ FELIPE FICAGNA','lurfox@gmail.com',0),('marcoag','MARCO ANTONIO GOTTARDI ANESI','dileunhas36@gmail.com',0),('matheus.guaitanele','MATHEUS JULIANO TEIXEIRA GUAITANELE','guaitanelematheus@gmail.com',0),('mickael.reichert','MICKAEL REICHERT','mickael.reichert@gmail.com',0),('natha','NATHÃ MACHADO BECK','nathamachadobeck3@gmail.com',0),('paulo.frutos','PAULO ISMAEL SOUZA FRUTOS','ismaelfrutospaulo@gmail.com',0),('paulo.rodacki','PAULO CESAR RODACKI GOMES','paulo.gomes@ifc.edu.br',1),('pedro.fonseca','PEDRO NUNC-NFOONRO DA FONSECA','pedronuncnfoonrodafonseca@gmail.com',0),('samuel_candido_151','SAMUEL JOSÉ CANDIDO','samueljosecandido9@gmail.com',0),('Sem cadastro no sistema','SAMIRA CAVALCANTE PEREIRA','samo.aa@hotmail.com',0),('thayssa.souza','THAYSSA CARMO DE SOUZA SANTOS','tataah290@gmail.com',0),('vagx411','AMADEUS VITOR POLETTI','amadeusv411@gmail.com',0),('vinicius.fernandes','VINÍCIUS FERNANDES DE ALBUQUERQUE','viniciusfernandes84x@gmail.com',0),('vitor.hugo','VITOR HUGO SCHNEIDER PEREIRA','hugohsp1507@gmail.com',0),('yara.rahn','YARA RAHN','yararahn@gmail.com',0),('yuka','ANDRESSA YUKA NARDES MELLO','yukamello@gmail.com',0);
/*!40000 ALTER TABLE `info_102` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Atavidade de avaliação: correção','Boa tarde,\n\n \n\nsegue correção dos horarios da avaliação:\n\n3) Avaliação: faremos nossa avaliação online de multipla escolha nos seguintes dias e horários:\n\n \n\nTurma 101: 3a feira - dia 01/09, das 13h as 14:30h\n\n \n\nTurma 102: 3a feira - dia 01/09, das 15:30h as 17:00h\n\n \n\nAtt,\n\nProf. Rodacki','2020-08-24'),(2,' Novo plano de ensino de AERs','Prezado(a) estudante,\n\n \n\nem decorrência de orientações recebidas na reunião de colegiado de curso na data de hoja, foram feitas alterações no plano de ensino de atividades remotas vigente.\n\nEm resumo, houve redução da quantidade de atividades práticas (uma nova atividade a cada 15 dias apenas), e reorganização da tabela de atividades.\n\nAlém disso, também houve um melhor detalhamento na descrição do cálculo das notas e média trimestral, visto que agora já é certo que não teremos condições de fazer avaliações presenciais (pelo menos para este 1o trimestre).\n\nO novo plano de ensino segue em anexo.\n\n \n\nAtt,\n\nProf Rodacki','2020-08-31'),(3,'Reavaliação trimestral','\n\nPrezado estudante,\n\n \n\nbrevemente, eu gostaria de lembrá-lo que hoje temos prova de reavaliação trimestral online no SIGAA, das 14h as 16h.\n\nA prova tambem vai servir para substituir a nota dos alunos que ficaram com nota zero na nossa ultima avaliacao online.\n\nAtt,\n\nProf Rodacki\n','2020-09-11'),(4,' Aula dia 20/10/2020','\n\nPrezado(a) estudante,\n\namanha dia 20/10/2020 teremos atividade síncrona no Google Meet as 13:00 (https://meet.google.com/cxw-gdsa-sui).\n\nAssunto: revisãop e dúvidas para nossa prova online de 6a feira (23/10/2020).\n\n \n\nAtt,\n\nProf. Rodacki\n','2020-10-19'),(5,'Reavaliação trimestral','\n\nPrezado(a) estudante,\n\namanhã dia 30/10/2020 teremos prova online referente à reavaliação trimestral (2o trimestre). A atividade precisa ser realizada entre 13hs e 15hs no SIGAA. Todos os alunos da disciplina podem realizar a avaliação, mas aqueles que já tiverem media acima de 6,0 no trimestre estão dispensados da fazer a prova, podendo utilizar este tempo para realizar as atividades práticas pendentes.\n\n \n\nEu estarei online no google meet de 13h as 15hs para auxiliar na reavaliação, e também para tirar dúvidas gerais sobre as atividades práticas para quem precisar.\n\n \n\nAtt,\n\nProf. Rodacki\n','2020-10-29');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opinions`
--

DROP TABLE IF EXISTS `opinions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opinions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(70) NOT NULL,
  `class` varchar(10) NOT NULL,
  `opinion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opinions`
--

LOCK TABLES `opinions` WRITE;
/*!40000 ALTER TABLE `opinions` DISABLE KEYS */;
INSERT INTO `opinions` VALUES (1,'Anônimo','102 Info','As aulas são ótimas mas a gente chega a ver muito pouco de programação nesse ano.'),(2,'Anônimo','102 Info','Gosto muito das aulas e do professor.'),(3,'Anônimo','102 Info','Tenho dificuldade de enteder a matéria.'),(4,'Anônimo','102 Info','Não gosto, é muito difícil.');
/*!40000 ALTER TABLE `opinions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaching_plan`
--

DROP TABLE IF EXISTS `teaching_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teaching_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ativ_name` varchar(100) NOT NULL,
  `start_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `ativ_type` char(1) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaching_plan`
--

LOCK TABLES `teaching_plan` WRITE;
/*!40000 ALTER TABLE `teaching_plan` DISABLE KEYS */;
INSERT INTO `teaching_plan` VALUES (1,'While(4)','2020-10-02','2020-10-16','P','https://drive.google.com/file/d/1fvpVXo-1S-LpL7tsayfM9510Te2kqmmi/view'),(2,'While(5)','2020-10-06','2020-10-23','P','https://drive.google.com/file/d/1V0CCLPAqUX2fnBVGwOhxmYmnfXAzZWlA/view'),(3,'While(6)','2020-10-09','2020-10-27','P','https://drive.google.com/file/d/1sQ_cyaxygYHlUh0fTWGrf7dybR9Ac_D0/view'),(4,'Strings(1)','2020-10-13',NULL,'T','https://meet.google.com/rje-oybn-xvf?authuser=0&hs=179'),(5,'Strings(1)','2020-10-16','2020-10-30','P','https://drive.google.com/file/d/1mNiVqB8I2EjPnFCUWFHUA-5lzInWK7mk/view'),(6,'Avaliação(6)','2020-10-23',NULL,'P',NULL),(7,'Strings(2)','2020-10-27','2020-11-10','P','https://drive.google.com/file/d/1mZSpoU61qduVMAFRAzftPJckWTMuIX-q/view'),(8,'Reavaliação Trimestral(2)','2020-10-30',NULL,'P','https://meet.google.com/cxw-gdsa-sui?authuser=0&hs=179'),(9,'Strings(3)','2020-11-03','2020-11-17','P','https://drive.google.com/file/d/1E2llbKuYFKjLgL24jXEcn8v6u3LyURid/view'),(10,'Funções(1)','2020-11-06',NULL,'T','https://drive.google.com/file/d/1tWsb9xSjlgVGPanT0Gy1QNCagQ66JGrJ/view'),(11,'Funções(1)','2020-11-07','2020-11-20','P','https://classroom.google.com/w/NTgyOTY1NjUzODZa/tc/NjcwNzAyMjAyMTBa'),(12,'Funções(2)','2020-11-10','2020-11-24','P','https://classroom.google.com/w/NTgyOTY1NjUzODZa/tc/NjcwNzAyMjAyMTBa'),(13,'Funções(2)','2020-11-17',NULL,'T','meet.google.com/cjb-stvy-mcd'),(14,'Listas','2020-11-27',NULL,'T','meet.google.com/cjb-stvy-mcd'),(15,'Dúvidas sobre Av(6)','2020-12-08',NULL,'T','meet.google.com/cjb-stvy-mcd'),(16,'Dúvidas sobre Trimestral','2020-12-15',NULL,'T','meet.google.com/cjb-stvy-mcd');
/*!40000 ALTER TABLE `teaching_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 16:16:14
