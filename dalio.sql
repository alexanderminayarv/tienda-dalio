-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dalio
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Moto Eléctrica'),(2,'Accesorios');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Dni` varchar(9) DEFAULT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Rol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'74136532','Alexander Minaya Rosas de la Vega','Jr. Sucre 306','alex2022@dalio.com','12345','Administrador'),(2,'74136500','Julio Marcapiña Aliaga','Jr. Los Cisnes 852','julio2022@dalio.com','12345','Usuario'),(3,'74136501','Carlos Valenzuela Diaz','Jr. Los Cisnes 850','carlos2022@dalio.com','12345','Usuario');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `idCompras` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) unsigned NOT NULL,
  `FechaCompras` varchar(11) DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCompras`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,1,'2022-05-19',4100,'Cancelado - En Proceso de Envio'),(2,2,'2022-05-19',4200,'Cancelado - En Proceso de Envio'),(3,2,'2022-05-22',5300,'Cancelado - En Proceso de Envio'),(4,2,'2022-05-22',3600,'Cancelado - En Proceso de Envio');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compras`
--

DROP TABLE IF EXISTS `detalle_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_compras` (
  `idDetalle` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) unsigned NOT NULL,
  `idCompras` int(11) unsigned NOT NULL,
  `Cantidad` int(11) unsigned DEFAULT NULL,
  `PrecioCompra` double DEFAULT NULL,
  PRIMARY KEY (`idDetalle`,`idProducto`,`idCompras`),
  KEY `Producto_has_Compras_FKIndex1` (`idProducto`),
  KEY `Producto_has_Compras_FKIndex2` (`idCompras`),
  CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`idCompras`) REFERENCES `compras` (`idCompras`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compras`
--

LOCK TABLES `detalle_compras` WRITE;
/*!40000 ALTER TABLE `detalle_compras` DISABLE KEYS */;
INSERT INTO `detalle_compras` VALUES (1,2,1,3,1000),(2,4,1,1,1100),(3,2,2,2,1000),(4,4,2,2,1100),(5,1,3,5,360),(6,2,3,3,1000),(7,6,3,5,100),(8,1,4,10,360);
/*!40000 ALTER TABLE `detalle_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje` (
  `idMensaje` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje` text NOT NULL,
  `idCliente` int(11) unsigned NOT NULL,
  PRIMARY KEY (`idMensaje`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES (1,'Holaaaa',2),(2,'Holaaaa',2),(3,'Holaaaa',2),(4,'Holaaaa',2),(5,'hola anderson',2),(7,'hola alex',1),(8,'Hola pruebaaa2020',2),(9,'Hola pruebaaa2020',2),(10,'rfrfrfrf',2);
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idProducto` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(255) DEFAULT NULL,
  `Foto` varchar(255) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Stock` int(11) unsigned DEFAULT NULL,
  `Categoria` int(11) NOT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `Categoria` (`Categoria`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Categoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Sunra Hawk','http://localhost/carrito/Sunra-Hawk.png','El segmento scooter es el más elegido para desarrollar el mercado eléctrico, y uno de los mejores en este apartado es el Sunra Hawk, ideal para uso urbano, ir y volver del trabajo o viajes cortos dentro de la ciudad. Utiliza un motor capaz de desarrollar 3.000 W, similares a unos 4 CV de potencia y alcanza una velocidad máxima de 45 kilómetros por hora. Sus baterías pueden ser de Ácido en gel, no extraíble, o litio, estas Últimas más recomendadas ya que permiten la extracción de las mismas y tienen una velocidad de carga más rápida que las de Ácido: lo hacen completamente en la mitad del tiempo (4 horas, contra las 8 del Ácido) y pesan considerablemente menos (12 kilos por batería de litio, contra los 42 de las de Ácido). Por otra parte, resisten hasta 800 ciclos de carga.',360,100,1),(2,'Super Soco CPX','http://localhost/carrito/Super-Soco-CPX.png','Continuamos en el segmento scooter y toca repasar al Super Soco CPX, que comparte las características urbanas del Sunra Hawk pero mejora algunas cuestiones claves como potencia y velocidad máxima. Este modelo está impulsado por un motor que genera 4.000 W de potencia, equivalentes a 5,4 CV, que permiten alcanzar una velocidad máxima de 90 kilómetros por hora, el doble que el modelo previamente seleccionado. Utiliza una batería ATL de 60V 45 Ah extraíble, que se recarga en 3 horas y media y permite una autonomía de aproximadamente 80 kilómetros, siempre dependiendo del peso soportado y condiciones de manejo. El apartado de suspensiones está a cargo de una horquilla convencional en la rueda delantera y un monobrazo central en la rueda trasera, con frenos a disco y llantas de 16 pulgadas en ambos ejes. El peso total es de 110 kg sin batería.',1000,97,1),(3,'Gilera EG II','http://localhost/carrito/Gilera-EG-II.png','Goza de los 1200 W que genera su motor enteramente eléctrico, la iluminación de sus faros es full LED y pesa 76 kg. Presenta una horquilla hidráulica en la suspensión delantera y un monoshock para la trasera, sus frenos son a disco y tambor adelante y atrás respectivamente y la medida de sus cauchos son 3.00-10 adelante y 100/80-10 detrás. Con su batería de litio 60 V 24 Ah alcanza una autonomía de 60 km, suficiente para recorrer la ciudad, viajar al trabajo y moverse los fines de semana siempre cerca del domicilio.',350,100,1),(4,'Super Soco TC Max','http://localhost/carrito/Super-Soco-TC-Max.png','El chasis es de doble viga de aluminio, está asociado a una horquilla invertida de 35mm de diámetro y 110mm de recorrido para la suspensión delantera y doble brazo basculante de aluminio con un monoshock para la trasera. Los frenos, firmados por la prestigiosa y famosa Brembo, utilizan discos en ambas ruedas (240mm adelante y 180mm atrás) e incorpora neumáticos sin cámara 90/80 adelante y 110/70 atrás, ambos con llantas de 17 pulgadas. El bloque impulsor es un motor Bosch de 4.500 W capaz de alcanzar una velocidad máxima de 95 km/h con un peso total de la moto declarado de 84 kg. Las baterías de 72 V y 45 Ah permiten una autonomía aproximada de 110 kilómetros, más que suficientes para un viaje corto y ser utilizada a diario en la ciudad.',1100,100,1),(5,'Sur Ron Light Bee X','http://localhost/carrito/Sur-Ron-Light-Bee-X.png','El segmento on/off tampoco se quedó afuera del movimiento eléctrico y Sur Ron nos trae su Light Bee X, una moto apta tanto para el asfalto como para aventurarse en caminos de tierra y sin asfaltar. Utiliza un motor con dos modos de conducción: uno económico que limita la potencia hasta los 3.600 W y otro deportivo que libera toda la furia del bloque, alcanza los 7.000 W y convierte a la Light Bee X en la más potente del listado. La velocidad máxima declarada es de 75 km/h. Sus baterías de 60 V y 32 Ah se recargan en un máximo de 4 horas y le entregan al modelo una autonomía de 120 kilómetros, aproximadamente, que junto con la horquilla hidráulica Killah RST de la suspensión delantera, con 203mm de recorrido forman un equipo perfecto para prácticas deportivas o moverse en ruta.',1300,100,1),(6,'Casco de moto AGV','http://localhost/carrito/Casco-de-moto-AGV.png','Es un accesorio protector para la cabeza del conductor(a) y hecha generalmente de metal o de algún otro material resistente, típicamente para la protección de la cabeza contra objetos que caen o colisiones a alta velocidad. Un casco cubre mínimamente la coronilla, la frente y las sienes.',100,95,2),(7,'Casco de moto','http://localhost/carrito/Casco-de-moto.png','Un casco de protección tiene que tener: Capacidad de amortiguación de los choques. Resistencia al impacto en caída libre. Resistencia a las proyecciones de objetos a velocidad.',70,100,2),(8,'Freno izquierdo para moto Citycoco','http://localhost/carrito/Freno-izquierdo-para-moto-Citycoco.png','Sistema de freno posterior moto eléctrica modelo Citycoco NUEVO\r\n\r\nIncluye\r\n- Manillar completo (pernos de ajuste) - Base de espejo - Manguera - Caliper - 2 Pastillas - Liquido de freno - Interruptor LED con el cableado y PLUG',90,100,2);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-24 22:02:53
