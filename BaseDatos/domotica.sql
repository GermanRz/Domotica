-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.14-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para domotica
CREATE DATABASE IF NOT EXISTS `domotica` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `domotica`;

-- Volcando estructura para tabla domotica.permisos
CREATE TABLE IF NOT EXISTS `permisos` (
  `Id_Habitacion` int(11) NOT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Permiso_Estado` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '1',
  `Permiso_Noti` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '1',
  PRIMARY KEY (`Id_Habitacion`),
  KEY `FK_perimsos_usuarios` (`Id_Usuario`),
  CONSTRAINT `FK_perimsos_usuarios` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_permisos_temp_habitaciones` FOREIGN KEY (`Id_Habitacion`) REFERENCES `temp_habitaciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.permisos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;

-- Volcando estructura para tabla domotica.temp_habitaciones
CREATE TABLE IF NOT EXISTS `temp_habitaciones` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `temp` varchar(10) DEFAULT '5',
  `hum` varchar(10) DEFAULT '5',
  `tvo` varchar(10) DEFAULT '5',
  `estado_temp` varchar(5) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '0',
  `estado_hum` varchar(5) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '0',
  `estado_tvo` varchar(5) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '0',
  `min_temp` varchar(8) DEFAULT NULL,
  `min_hum` varchar(8) DEFAULT NULL,
  `min_tvo` varchar(8) DEFAULT NULL,
  `max_temp` varchar(8) DEFAULT NULL,
  `max_hum` varchar(8) DEFAULT NULL,
  `max_tvo` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.temp_habitaciones: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `temp_habitaciones` DISABLE KEYS */;
REPLACE INTO `temp_habitaciones` (`id`, `nombre`, `temp`, `hum`, `tvo`, `estado_temp`, `estado_hum`, `estado_tvo`, `min_temp`, `min_hum`, `min_tvo`, `max_temp`, `max_hum`, `max_tvo`) VALUES
<<<<<<< HEAD
  (1, 'Fabian', '90', '90', '90', '1', '0', '0', '2', '3', '4', '5', '6', '7'),
  (2, 'Chile', '80', '50', '30', '1', '0', '0', '9', '7', '5', '8', '6', '4'),
  (3, 'German', '30', '90', '90', '1', '0', '0', '1', '1', '1', '1', '1', '1'),
  (5, 'oscar', '15', '15', '15', '1', '0', '0', '1', '1', '1', '1', '1', '1');
=======
	(1, 'Fabian', '90', '90', '90', '1', '0', '0', '2', '3', '4', '5', '6', '7'),
	(2, 'Chile', '80', '50', '30', '1', '0', '0', '9', '7', '5', '8', '6', '4'),
	(3, 'German', '30', '90', '90', '1', '0', '0', '1', '1', '1', '1', '1', '1'),
	(5, 'oscar', '15', '15', '15', '1', '0', '0', '1', '1', '1', '1', '1', '1');
>>>>>>> Domotica2.0
/*!40000 ALTER TABLE `temp_habitaciones` ENABLE KEYS */;

-- Volcando estructura para tabla domotica.temp_historico_dia
CREATE TABLE IF NOT EXISTS `temp_historico_dia` (
  `Id_Habitacion` int(10) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Temp` varchar(10) NOT NULL,
  `Hum` varchar(10) NOT NULL,
  `Gas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.temp_historico_dia: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `temp_historico_dia` DISABLE KEYS */;
REPLACE INTO `temp_historico_dia` (`Id_Habitacion`, `Fecha`, `Temp`, `Hum`, `Gas`) VALUES
<<<<<<< HEAD
  (1, '2020-10-01 12:02:30', '5', '10', '20'),
  (0, '2020-10-08 16:59:20', '10', '20', '30'),
  (5, '2020-10-08 17:03:02', '15', '15', '15'),
  (1, '2020-10-01 12:02:30', '5', '10', '20'),
  (0, '2020-10-08 16:59:20', '10', '20', '30'),
  (5, '2020-10-08 17:03:02', '15', '15', '15'),
  (1, '2020-10-28 18:54:23', '90', '90', '90');
=======
	(1, '2020-10-01 12:02:30', '5', '10', '20'),
	(0, '2020-10-08 16:59:20', '10', '20', '30'),
	(5, '2020-10-08 17:03:02', '15', '15', '15'),
	(1, '2020-10-01 12:02:30', '5', '10', '20'),
	(0, '2020-10-08 16:59:20', '10', '20', '30'),
	(5, '2020-10-08 17:03:02', '15', '15', '15'),
	(1, '2020-10-28 18:54:23', '90', '90', '90');
>>>>>>> Domotica2.0
/*!40000 ALTER TABLE `temp_historico_dia` ENABLE KEYS */;

-- Volcando estructura para tabla domotica.temp_historico_mes_promedio
CREATE TABLE IF NOT EXISTS `temp_historico_mes_promedio` (
  `id_habitacion` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `temp` varchar(10) DEFAULT NULL,
  `hum` varchar(10) DEFAULT NULL,
  `gas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.temp_historico_mes_promedio: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `temp_historico_mes_promedio` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_historico_mes_promedio` ENABLE KEYS */;

-- Volcando estructura para tabla domotica.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `perfil` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `foto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ultimo_login` datetime DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla domotica.usuarios: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
REPLACE INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
<<<<<<< HEAD
  (29, 'administrador', 'admin', '$2y$10$2xdGX0v0nGMA9j/pgsZnsuC64lPAvt0D7DKiuSiuQBKZz/d4fxb3S', 'Administrador', 'images/usuarios/admin/746.png', '1', '2020-10-28 18:38:00', NULL),
  (61, 'juan valencia', 'juan', '$2y$10$jDbWrrPWtasESGaVDvs8X.Ct6XreSIR40JtelKSd4QmjMFoP0aaAS', 'Administrador', 'images/usuarios/juan/213.png', '1', '2020-05-14 16:45:02', NULL),
  (65, 'andres gonzales', 'andres', '$2y$10$yu4EH9H19oJvVusekRhmkO7o/YXClDimJdEFFa2SGrJMrW68OoNXa', 'Invitado', 'images/usuarios/andres/302.png', '0', '2020-05-13 22:48:35', NULL),
  (71, 'monica aristizabal', 'monica', '$2y$10$sm3lslO0b5gpYZgaJSfsGOofljBWkAzDZvSpePLXWEiF05yz3N2BC', 'Invitado', 'images/usuarios/monica/966.png', '0', '2020-05-11 13:50:07', NULL),
  (73, 'german ramirez', 'german', '$2y$10$QH8Uky5T8uVes6S1NJ292epvzug3E1rgQxQl5OXsHe1pBt7ox/vwq', 'Invitado', 'images/usuarios/german/888.png', '1', '2020-05-14 16:45:52', NULL),
  (74, 'Chile', 'Chile', '$2y$10$km1LLJ.rno91NQGGYXBb7Oy/6rcpAwbLO/VIUeASZmsHPlwFCFYGC', 'Invitado', '', '1', '2020-10-05 16:55:19', NULL);
=======
	(29, 'administrador', 'admin', '$2y$10$2xdGX0v0nGMA9j/pgsZnsuC64lPAvt0D7DKiuSiuQBKZz/d4fxb3S', 'Administrador', 'images/usuarios/admin/746.png', '1', '2020-10-28 18:38:00', NULL),
	(61, 'juan valencia', 'juan', '$2y$10$jDbWrrPWtasESGaVDvs8X.Ct6XreSIR40JtelKSd4QmjMFoP0aaAS', 'Administrador', 'images/usuarios/juan/213.png', '1', '2020-05-14 16:45:02', NULL),
	(65, 'andres gonzales', 'andres', '$2y$10$yu4EH9H19oJvVusekRhmkO7o/YXClDimJdEFFa2SGrJMrW68OoNXa', 'Invitado', 'images/usuarios/andres/302.png', '0', '2020-05-13 22:48:35', NULL),
	(71, 'monica aristizabal', 'monica', '$2y$10$sm3lslO0b5gpYZgaJSfsGOofljBWkAzDZvSpePLXWEiF05yz3N2BC', 'Invitado', 'images/usuarios/monica/966.png', '0', '2020-05-11 13:50:07', NULL),
	(73, 'german ramirez', 'german', '$2y$10$QH8Uky5T8uVes6S1NJ292epvzug3E1rgQxQl5OXsHe1pBt7ox/vwq', 'Invitado', 'images/usuarios/german/888.png', '1', '2020-05-14 16:45:52', NULL),
	(74, 'Chile', 'Chile', '$2y$10$km1LLJ.rno91NQGGYXBb7Oy/6rcpAwbLO/VIUeASZmsHPlwFCFYGC', 'Invitado', '', '1', '2020-10-05 16:55:19', NULL);
>>>>>>> Domotica2.0
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- Volcando estructura para disparador domotica.actualiza_temp_habitaciones_BU
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `actualiza_temp_habitaciones_BU` BEFORE UPDATE ON `temp_habitaciones` FOR EACH ROW INSERT INTO temp_historico_dia(Id_Habitacion, Fecha, Temp, Hum, Gas)

VALUES(NEW.id, NOW(), NEW.temp, NEW.hum, NEW.tvo)//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;