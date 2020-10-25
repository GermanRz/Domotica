-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.13-MariaDB - mariadb.org binary distribution
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

-- Volcando estructura para tabla domotica.bitacorapuertas
CREATE TABLE IF NOT EXISTS `bitacorapuertas` (
  `numero` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `horaFecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.bitacorapuertas: ~326 rows (aproximadamente)
/*!40000 ALTER TABLE `bitacorapuertas` DISABLE KEYS */;
INSERT INTO `bitacorapuertas` (`numero`, `nombre`, `accion`, `horaFecha`) VALUES
	(1, 'lolito', 'La puerta fue creada', '2020-09-11 15:31:35'),
	(2, 'oscaresgei', 'La puerta fue creada', '2020-09-11 15:52:29'),
	(3, 'felipeesgei', 'La puerta fue creada', '2020-09-11 15:55:44'),
	(4, 'caicedoesgei', 'La puerta fue creada', '2020-09-11 15:58:56'),
	(1, 'lolito', 'La puerta fue creada', '2020-09-11 15:31:35'),
	(2, 'oscaresgei', 'La puerta fue creada', '2020-09-11 15:52:29'),
	(3, 'felipeesgei', 'La puerta fue creada', '2020-09-11 15:55:44'),
	(4, 'caicedoesgei', 'La puerta fue creada', '2020-09-11 15:58:56'),
	(1, 'lolito', 'la alarma fue encendida', '2020-09-15 12:23:20'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 12:23:20'),
	(1, 'lolito', 'la alarma fue encendida', '2020-09-15 12:40:05'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 12:40:05'),
	(1, 'lolito', 'la alarma fue encendida', '2020-09-15 12:40:22'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 12:40:22'),
	(1, 'lolito', 'la alarma fue encendida', '2020-09-15 12:40:25'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 12:40:25'),
	(2, 'oscaresgei', 'la alarma fue encendida', '2020-09-15 13:26:43'),
	(2, 'oscaresgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:26:43'),
	(2, 'oscaresgei', 'la alarma fue encendida', '2020-09-15 13:26:46'),
	(2, 'oscaresgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:26:46'),
	(2, 'oscaresgei', 'la alarma fue encendida', '2020-09-15 13:26:52'),
	(2, 'oscaresgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:26:52'),
	(2, 'oscaresgei', 'la alarma fue encendida', '2020-09-15 13:27:09'),
	(2, 'oscaresgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:27:09'),
	(2, 'oscaresgei', 'la alarma fue encendida', '2020-09-15 13:27:36'),
	(2, 'oscaresgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:27:36'),
	(5, 'Dormitorio principal', 'La puerta fue creada', '2020-09-15 13:58:03'),
	(5, 'Dormitorio principal', 'la alarma fue encendida', '2020-09-15 13:58:09'),
	(5, 'Dormitorio principal', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:58:09'),
	(6, 'Dormitorio kevin', 'La puerta fue creada', '2020-09-15 13:58:41'),
	(6, 'Dormitorio kevin', 'la alarma fue encendida', '2020-09-15 13:59:01'),
	(6, 'Dormitorio kevin', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:59:01'),
	(2, 'oscaresgei', 'la alarma fue encendida', '2020-09-15 13:59:24'),
	(2, 'oscaresgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:59:24'),
	(4, 'caicedoesgei', 'la alarma fue encendida', '2020-09-15 13:59:32'),
	(4, 'caicedoesgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:59:32'),
	(6, 'Dormitorio kevin', 'la alarma fue encendida', '2020-09-15 13:59:36'),
	(6, 'Dormitorio kevin', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:59:36'),
	(7, 'Puerta baño', 'La puerta fue creada', '2020-09-16 21:44:43'),
	(8, 'cocina', 'La puerta fue creada', '2020-09-16 21:55:22'),
	(9, 'Garaje', 'La puerta fue creada', '2020-09-17 00:32:44'),
	(10, 'Entrada', 'La puerta fue creada', '2020-09-17 00:38:57'),
	(11, 'Puerta jardin', 'La puerta fue creada', '2020-09-17 00:42:54'),
	(12, 'Garaje 1', 'La puerta fue creada', '2020-09-17 00:47:22'),
	(13, 'Puerta sotano', 'La puerta fue creada', '2020-09-17 00:51:14'),
	(1, 'lolito', 'la alarma fue encendida', '2020-09-17 01:35:56'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 01:35:56'),
	(1, 'lolito', 'la alarma fue encendida', '2020-09-17 09:26:25'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 09:26:25'),
	(1, 'lolito', 'la alarma fue encendida', '2020-09-17 09:29:21'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 09:29:21'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:06:44'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:06:44'),
	(1, 'oscaresgei1', 'El nombre de la puerta ha sido modiicado', '2020-09-17 11:06:44'),
	(1, 'oscaresgei1', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:07:49'),
	(1, 'oscaresgei1', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:07:49'),
	(1, 'lolito', 'El nombre de la puerta ha sido modiicado', '2020-09-17 11:07:49'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:10:22'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:10:22'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:16:29'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:16:29'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:16:55'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:16:55'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:18:46'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:18:46'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:19:50'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:19:50'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:20:14'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:20:14'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:23:01'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:23:01'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:26:34'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:26:34'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:28:58'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:28:58'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:31:42'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:31:42'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:31:58'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:31:58'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:35:55'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:35:55'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:36:21'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:36:21'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:38:04'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:38:04'),
	(1, 'lolito', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:40:44'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:40:44'),
	(14, 'nuevaPuerta', 'La puerta fue creada', '2020-09-17 11:41:49'),
	(1, 'Garaje', 'La puerta fue creada', '2020-09-17 11:44:04'),
	(2, 'Entrada', 'La puerta fue creada', '2020-09-17 11:44:31'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:44:54'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:44:54'),
	(1, 'Garaje', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:45:18'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:45:18'),
	(3, 'Dormitorio principal', 'La puerta fue creada', '2020-09-17 11:52:41'),
	(1, 'Garaje', 'no existe o se eliminò el sendor de alarma.', '2020-09-17 11:53:09'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-17 11:53:09'),
	(1, 'Garaje', 'no existe o se eliminò el sendor de alarma.', '2020-09-23 15:22:32'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-23 15:22:32'),
	(1, 'Garaje', 'no existe o se eliminò el sendor de alarma.', '2020-09-23 15:22:36'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-23 15:22:36'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-09-28 15:05:33'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:05:33'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:05:36'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:05:36'),
	(1, 'Garaje', 'la puerta fue desbloqueada', '2020-09-28 15:05:38'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-09-28 15:05:38'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-09-28 15:05:39'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:05:39'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:05:41'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:05:41'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-09-28 15:05:44'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:05:44'),
	(1, 'Garaje', 'la puerta fue desbloqueada', '2020-09-28 15:05:47'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-09-28 15:05:47'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-09-28 15:05:51'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:05:51'),
	(3, 'Dormitorio principal', 'la puerta fue desbloqueada', '2020-09-28 15:05:54'),
	(3, 'Dormitorio principal', 'la alarma fue encendida', '2020-09-28 15:05:54'),
	(3, 'Dormitorio principal', 'la alarma fue encendida', '2020-09-28 15:06:01'),
	(3, 'Dormitorio principal', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:06:01'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:06:04'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:06:04'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-09-28 15:06:07'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:06:07'),
	(1, 'Garaje', 'la puerta fue desbloqueada', '2020-09-28 15:06:09'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-09-28 15:06:09'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-09-28 15:06:11'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:06:11'),
	(3, 'Dormitorio principal', 'la puerta fue desbloqueada', '2020-09-28 15:06:13'),
	(3, 'Dormitorio principal', 'la alarma fue encendida', '2020-09-28 15:06:13'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-09-28 15:07:14'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:07:14'),
	(1, 'Garaje', 'la puerta fue desbloqueada', '2020-09-28 15:07:16'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-09-28 15:07:16'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:07:43'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:07:43'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 15:07:46'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:07:46'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-09-28 15:07:57'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 15:07:57'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-09-28 15:07:59'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:07:59'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-09-28 15:08:01'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:08:01'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:08:03'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:08:03'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-09-28 15:08:05'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:08:05'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-09-28 15:08:07'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 15:08:07'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 15:08:08'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:08:08'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-09-28 15:08:33'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 15:08:33'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-09-28 15:08:35'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:08:35'),
	(1, 'Garaje', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 15:08:38'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:08:38'),
	(3, 'Dormitorio principal', 'la alarma fue encendida', '2020-09-28 15:54:27'),
	(3, 'Dormitorio principal', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:54:27'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-09-28 15:54:32'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:54:32'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 15:56:17'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:56:17'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-09-28 15:56:38'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:56:38'),
	(1, 'Garaje', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 15:56:41'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:56:41'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-09-28 15:56:58'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:56:58'),
	(1, 'Garaje', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 15:57:03'),
	(1, 'Garaje', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 15:57:03'),
	(1, 'Garaje', 'la puerta fue desbloqueada', '2020-09-28 17:46:01'),
	(1, 'Garaje', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 17:46:01'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-09-28 17:46:03'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 17:46:03'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-09-28 17:46:04'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-09-28 17:46:04'),
	(1, 'lolito', 'La puerta fue creada', '2020-09-11 15:31:35'),
	(2, 'oscaresgei', 'La puerta fue creada', '2020-09-11 15:52:29'),
	(3, 'felipeesgei', 'La puerta fue creada', '2020-09-11 15:55:44'),
	(4, 'caicedoesgei', 'La puerta fue creada', '2020-09-11 15:58:56'),
	(1, 'lolito', 'La puerta fue creada', '2020-09-11 15:31:35'),
	(2, 'oscaresgei', 'La puerta fue creada', '2020-09-11 15:52:29'),
	(3, 'felipeesgei', 'La puerta fue creada', '2020-09-11 15:55:44'),
	(4, 'caicedoesgei', 'La puerta fue creada', '2020-09-11 15:58:56'),
	(1, 'lolito', 'la alarma fue encendida', '2020-09-15 12:23:20'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 12:23:20'),
	(1, 'lolito', 'la alarma fue encendida', '2020-09-15 12:40:05'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 12:40:05'),
	(1, 'lolito', 'la alarma fue encendida', '2020-09-15 12:40:22'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 12:40:22'),
	(1, 'lolito', 'la alarma fue encendida', '2020-09-15 12:40:25'),
	(1, 'lolito', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 12:40:25'),
	(2, 'oscaresgei', 'la alarma fue encendida', '2020-09-15 13:26:43'),
	(2, 'oscaresgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:26:43'),
	(2, 'oscaresgei', 'la alarma fue encendida', '2020-09-15 13:26:46'),
	(2, 'oscaresgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:26:46'),
	(2, 'oscaresgei', 'la alarma fue encendida', '2020-09-15 13:26:52'),
	(2, 'oscaresgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:26:52'),
	(2, 'oscaresgei', 'la alarma fue encendida', '2020-09-15 13:27:09'),
	(2, 'oscaresgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:27:09'),
	(2, 'oscaresgei', 'la alarma fue encendida', '2020-09-15 13:27:36'),
	(2, 'oscaresgei', 'no existe o se elimnò el sensor de bloqueo', '2020-09-15 13:27:36'),
	(1, 'lolito', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(2, 'oscaresgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(3, 'felipeesgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(4, 'caicedoesgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'no existe o se eliminò el sendor de alarma.', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'no existe o se elimnò el sensor de bloqueo', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'La puerta fue creada', '2020-10-08 15:58:55'),
	(63, 'habitacion principal', 'La puerta fue creada', '2020-10-08 15:58:55'),
	(64, 'habitacion felipe', 'La puerta fue creada', '2020-10-08 15:58:55'),
	(64, 'habitacion felipe', 'la alarma fue apagada', '2020-10-14 20:41:14'),
	(64, 'habitacion felipe', 'no existe o se elimnò el sensor de bloqueo', '2020-10-14 20:41:14'),
	(64, 'habitacion felipe', 'no existe o se eliminò el sendor de alarma.', '2020-10-14 20:41:16'),
	(64, 'habitacion felipe', 'no existe o se elimnò el sensor de bloqueo', '2020-10-14 20:41:16'),
	(1, 'Garaje', 'la puerta fue desbloqueada', '2020-10-15 09:55:55'),
	(1, 'Garaje', 'la alarma fue encendida', '2020-10-15 09:55:55'),
	(3, 'Dormitorio principal', 'la puerta fue desbloqueada', '2020-10-15 09:56:07'),
	(3, 'Dormitorio principal', 'la alarma fue apagada', '2020-10-15 09:56:07'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-10-15 09:56:11'),
	(2, 'Entrada', 'no existe o se elimnò el sensor de bloqueo', '2020-10-15 09:56:11'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-10-15 09:56:20'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-10-15 09:56:20'),
	(1, 'lolito', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(2, 'oscaresgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(3, 'felipeesgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(4, 'caicedoesgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'no existe o se eliminò el sendor de alarma.', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'no existe o se elimnò el sensor de bloqueo', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-08 00:00:00'),
	(1, 'lolito', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(2, 'oscaresgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(3, 'felipeesgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(4, 'caicedoesgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'no existe o se eliminò el sendor de alarma.', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'no existe o se elimnò el sensor de bloqueo', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-08 00:00:00'),
	(1, 'lolito', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(2, 'oscaresgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(3, 'felipeesgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(4, 'caicedoesgei', 'La puerta fue creada', '2020-09-11 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'no existe o se eliminò el sendor de alarma.', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-07 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'no existe o se elimnò el sensor de bloqueo', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-08 00:00:00'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-08 00:00:00'),
	(63, 'habitacion principal', 'la alarma fue apagada', '2020-10-15 10:13:09'),
	(63, 'habitacion principal', 'no existe o se elimnò el sensor de bloqueo', '2020-10-15 10:13:09'),
	(63, 'habitacion principal', 'la puerta fue desbloqueada', '2020-10-15 10:13:12'),
	(63, 'habitacion principal', 'la alarma fue apagada', '2020-10-15 10:13:12'),
	(64, 'habitacion felipe', 'la alarma fue apagada', '2020-10-15 10:16:05'),
	(64, 'habitacion felipe', 'no existe o se elimnò el sensor de bloqueo', '2020-10-15 10:16:05'),
	(64, 'habitacion felipe', 'la puerta fue desbloqueada', '2020-10-15 10:16:08'),
	(64, 'habitacion felipe', 'la alarma fue apagada', '2020-10-15 10:16:08'),
	(1, 'Garaje', 'la puerta fue desbloqueada', '2020-10-15 10:17:41'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-10-15 10:17:41'),
	(3, 'Dormitorio principal', 'la puerta fue desbloqueada', '2020-10-15 10:17:52'),
	(3, 'Dormitorio principal', 'la alarma fue encendida', '2020-10-15 10:17:52'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-15 10:19:17'),
	(62, 'habitacion', 'no existe o se eliminò el sendor de alarma.', '2020-10-15 10:19:17'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-10-15 10:19:20'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-10-15 10:19:20'),
	(63, 'habitacion principal', 'la puerta fue desbloqueada', '2020-10-15 10:20:33'),
	(63, 'habitacion principal', 'la alarma fue encendida', '2020-10-15 10:20:33'),
	(1, 'Garaje', 'la puerta fue desbloqueada', '2020-10-15 11:07:45'),
	(1, 'Garaje', 'no existe o se eliminò el sendor de alarma.', '2020-10-15 11:07:45'),
	(64, 'habitacion felipe', 'la puerta fue desbloqueada', '2020-10-15 11:07:49'),
	(64, 'habitacion felipe', 'no existe o se eliminò el sendor de alarma.', '2020-10-15 11:07:49'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-15 11:07:59'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-15 11:07:59'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-10-15 11:08:02'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-10-15 11:08:02'),
	(3, 'Dormitorio principal', 'la puerta fue desbloqueada', '2020-10-15 11:08:27'),
	(3, 'Dormitorio principal', 'la alarma fue encendida', '2020-10-15 11:08:27'),
	(63, 'habitacion principal', 'la puerta fue desbloqueada', '2020-10-15 11:08:36'),
	(63, 'habitacion principal', 'la alarma fue encendida', '2020-10-15 11:08:36'),
	(1, 'Garaje', 'la puerta fue desbloqueada', '2020-10-15 14:39:13'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-10-15 14:39:13'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-10-15 14:39:16'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-10-15 14:39:16'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-15 14:39:20'),
	(62, 'habitacion', 'no existe o se eliminò el sendor de alarma.', '2020-10-15 14:39:20'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-15 14:39:23'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-15 14:39:23'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-10-15 14:39:28'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-10-15 14:39:28'),
	(64, 'habitacion felipe', 'la puerta fue desbloqueada', '2020-10-15 14:39:34'),
	(64, 'habitacion felipe', 'la alarma fue apagada', '2020-10-15 14:39:34'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-10-15 14:39:37'),
	(2, 'Entrada', 'no existe o se eliminò el sendor de alarma.', '2020-10-15 14:39:37'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-15 14:39:49'),
	(62, 'habitacion', 'no existe o se eliminò el sendor de alarma.', '2020-10-15 14:39:49'),
	(64, 'habitacion felipe', 'la puerta fue desbloqueada', '2020-10-15 14:42:03'),
	(64, 'habitacion felipe', 'no existe o se eliminò el sendor de alarma.', '2020-10-15 14:42:03'),
	(1, 'Garaje', 'la puerta fue desbloqueada', '2020-10-15 14:42:05'),
	(1, 'Garaje', 'no existe o se eliminò el sendor de alarma.', '2020-10-15 14:42:05'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-15 14:42:09'),
	(62, 'habitacion', 'la alarma fue apagada', '2020-10-15 14:42:09'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-10-15 14:42:19'),
	(2, 'Entrada', 'la alarma fue apagada', '2020-10-15 14:42:19'),
	(3, 'Dormitorio principal', 'la puerta fue desbloqueada', '2020-10-15 14:42:29'),
	(3, 'Dormitorio principal', 'la alarma fue encendida', '2020-10-15 14:42:29'),
	(63, 'habitacion principal', 'la puerta fue desbloqueada', '2020-10-15 14:42:38'),
	(63, 'habitacion principal', 'la alarma fue encendida', '2020-10-15 14:42:38'),
	(3, 'Dormitorio principal', 'la puerta fue desbloqueada', '2020-10-15 14:46:36'),
	(3, 'Dormitorio principal', 'la alarma fue apagada', '2020-10-15 14:46:36'),
	(63, 'habitacion principal', 'la puerta fue desbloqueada', '2020-10-15 14:46:51'),
	(63, 'habitacion principal', 'la alarma fue apagada', '2020-10-15 14:46:51'),
	(62, 'habitacion', 'la puerta fue desbloqueada', '2020-10-15 14:47:04'),
	(62, 'habitacion', 'la alarma fue encendida', '2020-10-15 14:47:04'),
	(2, 'Entrada', 'la puerta fue desbloqueada', '2020-10-15 14:47:13'),
	(2, 'Entrada', 'la alarma fue encendida', '2020-10-15 14:47:13'),
	(1, 'Garaje', 'la puerta fue desbloqueada', '2020-10-15 14:47:23'),
	(1, 'Garaje', 'la alarma fue apagada', '2020-10-15 14:47:23'),
	(64, 'habitacion felipe', 'la puerta fue desbloqueada', '2020-10-15 14:47:25'),
	(64, 'habitacion felipe', 'la alarma fue apagada', '2020-10-15 14:47:25'),
	(64, 'habitacion felipe', 'la puerta fue desbloqueada', '2020-10-15 14:49:12'),
	(64, 'habitacion felipe', 'no existe o se eliminò el sendor de alarma.', '2020-10-15 14:49:12');
/*!40000 ALTER TABLE `bitacorapuertas` ENABLE KEYS */;

-- Volcando estructura para tabla domotica.estadisticas
CREATE TABLE IF NOT EXISTS `estadisticas` (
  `alarmas` int(11) DEFAULT NULL,
  `sensorBloqueo` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `fechas` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.estadisticas: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `estadisticas` DISABLE KEYS */;
INSERT INTO `estadisticas` (`alarmas`, `sensorBloqueo`, `nombre`, `fechas`) VALUES
	(2, 2, 'Dormitorio principal', '2020-10-15'),
	(2, 2, 'habitacion principal', '2020-10-15'),
	(1, 2, 'habitacion', '2020-10-15'),
	(1, 2, 'Entrada', '2020-10-15'),
	(2, 2, 'Garaje', '2020-10-15'),
	(2, 2, 'habitacion felipe', '2020-10-15'),
	(3, 2, 'habitacion felipe', '2020-10-15');
/*!40000 ALTER TABLE `estadisticas` ENABLE KEYS */;

-- Volcando estructura para tabla domotica.horapuertas
CREATE TABLE IF NOT EXISTS `horapuertas` (
  `numero` int(11) NOT NULL,
  `UltimaHora` datetime DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.horapuertas: ~28 rows (aproximadamente)
/*!40000 ALTER TABLE `horapuertas` DISABLE KEYS */;
INSERT INTO `horapuertas` (`numero`, `UltimaHora`, `nombre`) VALUES
	(1, '2020-10-15 14:47:23', NULL),
	(2, '2020-10-15 14:47:13', NULL),
	(3, '2020-10-15 14:46:36', NULL),
	(4, '2020-09-15 13:59:32', NULL),
	(1, '2020-10-15 14:47:23', NULL),
	(2, '2020-10-15 14:47:13', NULL),
	(3, '2020-10-15 14:46:36', NULL),
	(4, '2020-09-15 13:59:32', NULL),
	(5, '2020-09-15 13:58:09', NULL),
	(6, '2020-09-15 13:59:36', NULL),
	(7, '2020-09-16 21:44:43', NULL),
	(8, '2020-09-16 21:55:22', NULL),
	(9, '2020-09-17 00:32:44', NULL),
	(10, '2020-09-17 00:38:57', NULL),
	(11, '2020-09-17 00:42:54', NULL),
	(12, '2020-09-17 00:47:22', NULL),
	(13, '2020-09-17 00:51:14', NULL),
	(14, '2020-09-17 11:41:49', NULL),
	(1, '2020-10-15 14:47:23', NULL),
	(2, '2020-10-15 14:47:13', NULL),
	(3, '2020-10-15 14:46:36', NULL),
	(1, '2020-10-15 14:47:23', NULL),
	(2, '2020-10-15 14:47:13', NULL),
	(3, '2020-10-15 14:46:36', NULL),
	(4, '2020-09-11 15:58:56', NULL),
	(1, '2020-10-15 14:47:23', NULL),
	(2, '2020-10-15 14:47:13', NULL),
	(3, '2020-10-15 14:46:36', NULL),
	(4, '2020-09-11 15:58:56', NULL),
	(62, '2020-10-15 14:47:04', NULL),
	(63, '2020-10-15 14:46:51', NULL),
	(64, '2020-10-15 14:49:12', NULL),
	(62, '2020-10-15 14:47:04', 'habitacion'),
	(63, '2020-10-15 14:46:51', 'habitacion principal'),
	(64, '2020-10-15 14:49:12', 'habitacion felipe'),
	(62, '2020-10-15 14:47:04', NULL),
	(63, '2020-10-15 14:46:51', NULL),
	(64, '2020-10-15 14:49:12', NULL),
	(62, '2020-10-15 14:47:04', NULL),
	(63, '2020-10-15 14:46:51', NULL),
	(64, '2020-10-15 14:49:12', NULL),
	(62, '2020-10-15 14:47:04', NULL),
	(63, '2020-10-15 14:46:51', NULL),
	(64, '2020-10-15 14:49:12', NULL);
/*!40000 ALTER TABLE `horapuertas` ENABLE KEYS */;

-- Volcando estructura para tabla domotica.puertas
CREATE TABLE IF NOT EXISTS `puertas` (
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` mediumtext NOT NULL DEFAULT '',
  `sensorBloqueo` int(11) NOT NULL,
  `alarma` int(11) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla domotica.puertas: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `puertas` DISABLE KEYS */;
INSERT INTO `puertas` (`numero`, `nombre`, `sensorBloqueo`, `alarma`, `foto`, `estado`) VALUES
	(1, 'Garaje', 2, 2, 'images/puertas/Garaje/554.png', 0),
	(2, 'Entrada', 2, 1, 'images/puertas/Entrada/269.jpg', 0),
	(3, 'Dormitorio principal', 2, 2, '', 0),
	(62, 'habitacion', 2, 1, '', 0),
	(63, 'habitacion principal', 2, 2, '', 0),
	(64, 'habitacion felipe', 2, 3, NULL, 0);
/*!40000 ALTER TABLE `puertas` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla domotica.usuarios: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
	(29, 'administrador', 'admin', '$2y$10$2xdGX0v0nGMA9j/pgsZnsuC64lPAvt0D7DKiuSiuQBKZz/d4fxb3S', 'Administrador', 'images/usuarios/admin/746.png', '1', '2020-10-25 15:46:13', NULL),
	(61, 'juan valencia', 'juan', '$2y$10$jDbWrrPWtasESGaVDvs8X.Ct6XreSIR40JtelKSd4QmjMFoP0aaAS', 'Administrador', 'images/usuarios/juan/213.png', '1', '2020-05-14 16:45:02', NULL),
	(65, 'andres gonzales', 'andres', '$2y$10$yu4EH9H19oJvVusekRhmkO7o/YXClDimJdEFFa2SGrJMrW68OoNXa', 'Invitado', 'images/usuarios/andres/302.png', '0', '2020-05-13 22:48:35', NULL),
	(71, 'monica aristizabal', 'monica', '$2y$10$sm3lslO0b5gpYZgaJSfsGOofljBWkAzDZvSpePLXWEiF05yz3N2BC', 'Invitado', 'images/usuarios/monica/966.png', '0', '2020-05-11 13:50:07', NULL),
	(73, 'german ramirez', 'german', '$2y$10$QH8Uky5T8uVes6S1NJ292epvzug3E1rgQxQl5OXsHe1pBt7ox/vwq', 'Invitado', 'images/usuarios/german/888.png', '1', '2020-05-14 16:45:52', NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- Volcando estructura para disparador domotica.Estadisticas
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `Estadisticas` AFTER UPDATE ON `puertas` FOR EACH ROW BEGIN		
	INSERT INTO Estadisticas values
	(NEW.alarma, NEW.sensorBloqueo, NEW.nombre, CURRENT_DATE());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador domotica.puertas_after_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `puertas_after_insert` AFTER INSERT ON `puertas` FOR EACH ROW BEGIN
	insert into horapuertas values 
		(new.numero,CURRENT_TIMESTAMP(), NEW.nombre);
		
	INSERT INTO bitacorapuertas values
	(NEW.numero, NEW.nombre, "La puerta fue creada",CURRENT_TIMESTAMP());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador domotica.puertas_after_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `puertas_after_update` AFTER UPDATE ON `puertas` FOR EACH ROW BEGIN
	UPDATE horapuertas SET UltimaHora=CURRENT_TIMESTAMP() WHERE numero=NEW.numero;
	
	
	if (NEW.sensorBloqueo = 1) then
	
		insert into bitacorapuertas values 
		(old.numero, old.nombre, "la puerta fue bloqueada", CURRENT_TIMESTAMP());
	END if;
	
	
	
	
	if (NEW.sensorBloqueo = 2) then
	
		insert into bitacorapuertas values 
		(old.numero, old.nombre, "la puerta fue desbloqueada", CURRENT_TIMESTAMP());
	END if;
	
	
	
	if (NEW.alarma = 1) then
		insert into bitacorapuertas values 
		(old.numero, old.nombre, "la alarma fue encendida", CURRENT_TIMESTAMP());
	END if;
	
	
	
	if (NEW.alarma = 2) then
		insert into bitacorapuertas values 
		(old.numero, old.nombre, "la alarma fue apagada", CURRENT_TIMESTAMP());
	END if;
	
	if (NEW.alarma = 3) then
		insert into bitacorapuertas values 
		(old.numero, old.nombre, "no existe o se eliminò el sendor de alarma.", CURRENT_TIMESTAMP());
	END if;
	
	if (NEW.sensorBloqueo = 3) then
	
		insert into bitacorapuertas values 
		(old.numero, old.nombre, "no existe o se elimnò el sensor de bloqueo", CURRENT_TIMESTAMP());
	END if;
	
	if (NEW.nombre <> OLD.nombre) then
	
		insert into bitacorapuertas values 
		(old.numero, new.nombre, "El nombre de la puerta ha sido modiicado", CURRENT_TIMESTAMP());
		
	END if;

	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador domotica.puertas_before_delete
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `puertas_before_delete` BEFORE DELETE ON `puertas` FOR EACH ROW BEGIN
	INSERT INTO bitacorapuertas values
	(old.numero, old.nombre, "La puerta fue eliminada",CURRENT_TIMESTAMP());
	
	DELETE FROM horapuertas WHERE  numero=OLD.numero;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
