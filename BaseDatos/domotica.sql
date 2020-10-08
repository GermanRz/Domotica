-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.11-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para domotica
CREATE DATABASE IF NOT EXISTS `domotica` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `domotica`;

-- Volcando estructura para tabla domotica.gas_historicos
CREATE TABLE IF NOT EXISTS `gas_historicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT NULL,
  `gas` int(11) DEFAULT NULL,
  `id_habitacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.gas_historicos: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `gas_historicos` DISABLE KEYS */;
INSERT INTO `gas_historicos` (`id`, `fecha`, `gas`, `id_habitacion`) VALUES
	(1, '2020-10-08 12:26:19', 15, 1),
	(2, '2020-10-08 12:27:41', 20, 1),
	(3, '2020-10-08 12:28:51', 10, 1),
	(4, '2020-10-08 12:29:03', 5, 1),
	(5, '2020-10-08 12:30:13', 8, 1),
	(6, '2020-10-08 12:31:46', 12, 1),
	(7, '2020-10-08 12:32:01', 15, 1);
/*!40000 ALTER TABLE `gas_historicos` ENABLE KEYS */;

-- Volcando estructura para tabla domotica.hum_historicos
CREATE TABLE IF NOT EXISTS `hum_historicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT NULL,
  `humedad` int(11) DEFAULT NULL,
  `id_habitacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.hum_historicos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `hum_historicos` DISABLE KEYS */;
INSERT INTO `hum_historicos` (`id`, `fecha`, `humedad`, `id_habitacion`) VALUES
	(1, '2020-10-08 13:01:10', 5, 1),
	(2, '2020-10-08 13:02:23', 10, 1),
	(3, '2020-10-08 13:03:34', 15, 1),
	(4, '2020-10-08 13:04:41', 20, 1),
	(5, '2020-10-08 13:05:03', 25, 1),
	(6, '2020-10-08 13:06:13', 15, 1),
	(7, '2020-10-08 13:07:29', 10, 1);
/*!40000 ALTER TABLE `hum_historicos` ENABLE KEYS */;

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

-- Volcando estructura para tabla domotica.registro_dia
CREATE TABLE IF NOT EXISTS `registro_dia` (
  `Id_Habitacion` int(10) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Temp` varchar(10) NOT NULL,
  `Hum` varchar(10) NOT NULL,
  `Gas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.registro_dia: ~99 rows (aproximadamente)
/*!40000 ALTER TABLE `registro_dia` DISABLE KEYS */;
INSERT INTO `registro_dia` (`Id_Habitacion`, `Fecha`, `Temp`, `Hum`, `Gas`) VALUES
	(8, '2020-09-30 13:38:14', '90', '90', '90'),
	(2, '2020-09-30 15:57:40', '80', '50', '30'),
	(3, '2020-09-30 15:58:01', '30', '90', '90'),
	(1, '2020-10-01 12:02:30', '90', '90', '90'),
	(2, '2020-10-01 12:22:01', '80', '50', '30'),
	(2, '2020-10-01 12:40:32', '80', '50', '30'),
	(2, '2020-10-01 12:41:08', '80', '50', '30'),
	(2, '2020-10-01 12:41:59', '80', '50', '30'),
	(2, '2020-10-01 13:25:36', '80', '50', '30'),
	(2, '2020-10-01 13:33:56', '80', '50', '30'),
	(1, '2020-10-01 13:35:15', '90', '90', '90'),
	(1, '2020-10-01 13:35:17', '90', '90', '90'),
	(3, '2020-10-01 13:51:21', '30', '90', '90'),
	(1, '2020-10-01 14:04:24', '90', '90', '90'),
	(2, '2020-10-01 14:04:41', '80', '50', '30'),
	(1, '2020-10-01 14:04:46', '90', '90', '90'),
	(5, '2020-10-01 14:13:14', '10', '10', '90'),
	(2, '2020-10-01 14:21:54', '80', '50', '30'),
	(1, '2020-10-01 14:22:09', '90', '90', '90'),
	(1, '2020-10-01 14:22:15', '90', '90', '90'),
	(1, '2020-10-01 14:29:33', '90', '90', '90'),
	(1, '2020-10-01 14:32:03', '90', '90', '90'),
	(2, '2020-10-01 14:32:04', '80', '50', '30'),
	(1, '2020-10-01 14:32:14', '90', '90', '90'),
	(1, '2020-10-01 14:32:35', '90', '90', '90'),
	(2, '2020-10-01 14:32:46', '80', '50', '30'),
	(2, '2020-10-01 14:32:52', '80', '50', '30'),
	(3, '2020-10-01 14:32:54', '30', '90', '90'),
	(1, '2020-10-01 14:38:17', '90', '90', '90'),
	(1, '2020-10-01 14:38:30', '90', '90', '90'),
	(2, '2020-10-01 14:38:31', '80', '50', '30'),
	(3, '2020-10-01 14:38:32', '30', '90', '90'),
	(1, '2020-10-01 14:38:36', '90', '90', '90'),
	(1, '2020-10-01 14:45:51', '90', '90', '90'),
	(1, '2020-10-02 15:22:48', '90', '90', '90'),
	(1, '2020-10-02 15:27:13', '90', '90', '90'),
	(1, '2020-10-02 15:27:26', '90', '90', '90'),
	(1, '2020-10-02 15:27:33', '90', '90', '90'),
	(1, '2020-10-02 15:58:15', '90', '90', '90'),
	(1, '2020-10-02 15:58:20', '90', '90', '90'),
	(2, '2020-10-02 15:58:35', '80', '50', '30'),
	(1, '2020-10-02 15:59:47', '90', '90', '90'),
	(1, '2020-10-02 15:59:48', '90', '90', '90'),
	(3, '2020-10-02 15:59:51', '30', '90', '90'),
	(1, '2020-10-02 16:09:34', '90', '90', '90'),
	(1, '2020-10-02 16:09:36', '90', '90', '90'),
	(2, '2020-10-02 16:09:37', '80', '50', '30'),
	(1, '2020-10-02 16:09:49', '90', '90', '90'),
	(1, '2020-10-02 16:10:01', '90', '90', '90'),
	(2, '2020-10-02 16:10:02', '80', '50', '30'),
	(3, '2020-10-02 16:10:04', '30', '90', '90'),
	(5, '2020-10-02 16:10:05', '10', '10', '90'),
	(3, '2020-10-02 16:10:11', '30', '90', '90'),
	(3, '2020-10-02 16:10:14', '30', '90', '90'),
	(3, '2020-10-02 16:10:22', '30', '90', '90'),
	(3, '2020-10-02 16:10:31', '30', '90', '90'),
	(2, '2020-10-02 16:10:33', '80', '50', '30'),
	(1, '2020-10-02 16:10:35', '90', '90', '90'),
	(1, '2020-10-02 16:10:39', '90', '90', '90'),
	(2, '2020-10-02 16:10:42', '80', '50', '30'),
	(3, '2020-10-02 16:10:43', '30', '90', '90'),
	(5, '2020-10-02 16:10:44', '10', '10', '90'),
	(1, '2020-10-02 16:10:50', '90', '90', '90'),
	(3, '2020-10-02 16:10:55', '30', '90', '90'),
	(2, '2020-10-02 16:11:00', '80', '50', '30'),
	(5, '2020-10-02 16:11:06', '10', '10', '90'),
	(1, '2020-10-02 16:13:50', '90', '90', '90'),
	(1, '2020-10-02 16:13:53', '90', '90', '90'),
	(1, '2020-10-02 16:31:30', '90', '90', '90'),
	(1, '2020-10-02 16:31:40', '90', '90', '90'),
	(1, '2020-10-05 14:41:00', '90', '90', '90'),
	(1, '2020-10-05 14:44:36', '90', '90', '90'),
	(10, '2020-10-05 15:17:04', '5', '5', '5'),
	(1, '2020-10-05 16:17:37', '90', '90', '90'),
	(2, '2020-10-05 16:17:50', '80', '50', '30'),
	(3, '2020-10-05 16:17:59', '30', '90', '90'),
	(5, '2020-10-05 16:18:08', '10', '10', '90'),
	(3, '2020-10-05 16:18:13', '30', '90', '90'),
	(5, '2020-10-05 16:18:16', '10', '10', '90'),
	(1, '2020-10-05 16:21:23', '90', '90', '90'),
	(2, '2020-10-05 16:26:47', '80', '50', '30'),
	(3, '2020-10-05 16:28:38', '30', '90', '90'),
	(1, '2020-10-05 16:40:49', '90', '90', '90'),
	(2, '2020-10-05 16:41:03', '80', '50', '30'),
	(3, '2020-10-05 16:41:11', '30', '90', '90'),
	(5, '2020-10-05 16:41:17', '10', '10', '90'),
	(5, '2020-10-05 16:41:23', '10', '10', '90'),
	(10, '2020-10-05 16:41:27', '5', '5', '5'),
	(1, '2020-10-05 16:42:29', '90', '90', '90'),
	(1, '2020-10-05 16:43:35', '90', '90', '90'),
	(2, '2020-10-05 16:44:00', '80', '50', '30'),
	(3, '2020-10-05 16:44:11', '30', '90', '90'),
	(5, '2020-10-05 16:44:13', '10', '10', '90'),
	(10, '2020-10-05 16:44:14', '5', '5', '5'),
	(1, '2020-10-05 16:46:29', '90', '90', '90'),
	(1, '2020-10-06 17:28:48', '90', '90', '90'),
	(1, '2020-10-06 17:35:23', '90', '90', '90'),
	(1, '2020-10-07 17:54:02', '90', '90', '90'),
	(1, '2020-10-07 17:54:25', '90', '90', '90');
/*!40000 ALTER TABLE `registro_dia` ENABLE KEYS */;

-- Volcando estructura para tabla domotica.registro_promedio
CREATE TABLE IF NOT EXISTS `registro_promedio` (
  `id_habitacion` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `temp` varchar(10) DEFAULT NULL,
  `hum` varchar(10) DEFAULT NULL,
  `gas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.registro_promedio: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `registro_promedio` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_promedio` ENABLE KEYS */;

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

-- Volcando datos para la tabla domotica.temp_habitaciones: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `temp_habitaciones` DISABLE KEYS */;
INSERT INTO `temp_habitaciones` (`id`, `nombre`, `temp`, `hum`, `tvo`, `estado_temp`, `estado_hum`, `estado_tvo`, `min_temp`, `min_hum`, `min_tvo`, `max_temp`, `max_hum`, `max_tvo`) VALUES
	(1, 'Fabian', '90', '90', '90', '1', '0', '0', '2', '3', '4', '5', '6', '7'),
	(2, 'Chile', '80', '50', '30', '1', '0', '0', '9', '7', '5', '8', '6', '4'),
	(3, 'German', '30', '90', '90', '1', '0', '0', '1', '1', '1', '1', '1', '1'),
	(5, 'oscar', '10', '10', '90', '1', '0', '0', '1', '1', '1', '1', '1', '1'),
	(12, 'Rango', '5', '5', '5', '0', '0', '0', '1', '2', '3', '4', '5', '6');
/*!40000 ALTER TABLE `temp_habitaciones` ENABLE KEYS */;

-- Volcando estructura para tabla domotica.temp_historicos
CREATE TABLE IF NOT EXISTS `temp_historicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT NULL,
  `temperatura` int(11) DEFAULT NULL,
  `id_habitacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.temp_historicos: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `temp_historicos` DISABLE KEYS */;
INSERT INTO `temp_historicos` (`id`, `fecha`, `temperatura`, `id_habitacion`) VALUES
	(1, '2020-10-07 19:06:00', -5, 1),
	(2, '2020-10-07 19:07:16', 5, 1),
	(3, '2020-10-07 19:08:25', 10, 1),
	(4, '2020-10-07 19:09:39', 15, 1),
	(5, '2020-10-07 19:10:47', 20, 1),
	(6, '2020-10-07 19:11:55', 15, 1),
	(7, '2020-10-07 19:12:09', 0, 1);
/*!40000 ALTER TABLE `temp_historicos` ENABLE KEYS */;

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
INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
	(29, 'administrador', 'admin', '$2y$10$2xdGX0v0nGMA9j/pgsZnsuC64lPAvt0D7DKiuSiuQBKZz/d4fxb3S', 'Administrador', 'images/usuarios/admin/746.png', '1', '2020-10-08 13:34:34', NULL),
	(61, 'juan valencia', 'juan', '$2y$10$jDbWrrPWtasESGaVDvs8X.Ct6XreSIR40JtelKSd4QmjMFoP0aaAS', 'Administrador', 'images/usuarios/juan/213.png', '1', '2020-05-14 16:45:02', NULL),
	(65, 'andres gonzales', 'andres', '$2y$10$yu4EH9H19oJvVusekRhmkO7o/YXClDimJdEFFa2SGrJMrW68OoNXa', 'Invitado', 'images/usuarios/andres/302.png', '0', '2020-05-13 22:48:35', NULL),
	(71, 'monica aristizabal', 'monica', '$2y$10$sm3lslO0b5gpYZgaJSfsGOofljBWkAzDZvSpePLXWEiF05yz3N2BC', 'Invitado', 'images/usuarios/monica/966.png', '0', '2020-05-11 13:50:07', NULL),
	(73, 'german ramirez', 'german', '$2y$10$QH8Uky5T8uVes6S1NJ292epvzug3E1rgQxQl5OXsHe1pBt7ox/vwq', 'Invitado', 'images/usuarios/german/888.png', '1', '2020-05-14 16:45:52', NULL),
	(74, 'Chile', 'Chile', '$2y$10$km1LLJ.rno91NQGGYXBb7Oy/6rcpAwbLO/VIUeASZmsHPlwFCFYGC', 'Invitado', '', '1', '2020-10-05 16:55:19', NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- Volcando estructura para disparador domotica.actualiza_temp_habitaciones_BU
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `actualiza_temp_habitaciones_BU` BEFORE UPDATE ON `temp_habitaciones` FOR EACH ROW INSERT INTO registro_dia(Id_Habitacion, Fecha, Temp, Hum, Gas)

VALUES(NEW.id, NOW(), NEW.temp, NEW.hum, NEW.tvo)//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
