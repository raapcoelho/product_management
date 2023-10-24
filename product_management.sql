-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: product_management
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `tax_rate` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_tax` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer` varchar(255) DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `tax_rate` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
INSERT INTO `product_types` VALUES (1,'Alimento','Categoria de produtos relacionados a alimentos',0.10,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(2,'Vestuário','Categoria de produtos relacionados a roupas',0.15,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(3,'Eletrônicos','Categoria de produtos relacionados a eletrônicos',0.08,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(4,'Decoração','Categoria de produtos relacionados a decoração',0.12,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(5,'Cosméticos','Categoria de produtos relacionados a cosméticos',0.09,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(6,'Brinquedos','Categoria de produtos relacionados a brinquedos',0.11,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(7,'Esportes','Categoria de produtos relacionados a esportes',0.14,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(8,'Livros','Categoria de produtos relacionados a livros',0.07,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(9,'Ferramentas','Categoria de produtos relacionados a ferramentas',0.13,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(10,'Jóias','Categoria de produtos relacionados a jóias',0.06,'2023-10-23 21:00:50','2023-10-23 21:00:50');
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_type_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,7,'Camisa Polo','Camisa Polo de algodão',29.99,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(2,7,'Tênis Esportivo','Tênis para corrida',79.95,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(3,10,'Smartphone Android','Telefone Android de última geração',399.99,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(4,2,'Máquina de Café','Máquina de café automática',89.99,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(5,9,'Fones de Ouvido Bluetooth','Fones de ouvido sem fio',49.99,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(6,7,'Notebook Ultraleve','Notebook fino e leve',899.50,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(7,7,'Câmera DSLR','Câmera digital profissional',1199.95,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(8,3,'Livro de Ficção','Romance best-seller',14.99,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(9,3,'Ferramenta de Jardinagem','Kit de ferramentas para jardinagem',49.75,'2023-10-23 21:00:50','2023-10-23 21:00:50'),(10,7,'Relógio de Pulso','Relógio elegante para uso diário',199.99,'2023-10-23 21:00:50','2023-10-23 21:00:50');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-23 21:01:56
