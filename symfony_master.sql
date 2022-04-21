-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-04-2022 a las 01:13:24
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `symfony_master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `topic` varchar(20) DEFAULT NULL,
  `words` int(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `image` longblob,
  PRIMARY KEY (`id`),
  KEY `fk_task_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `content`, `topic`, `words`, `created_at`, `image`) VALUES
(1, 1, 'Blog 1', 'Contenido de prueba 1', 'Ciencia', 40, '2022-04-20 01:45:21', NULL),
(2, 1, 'Blog 2', 'Contenido de prueba 2', 'Matematicas', 20, '2022-04-20 01:45:21', NULL),
(3, 2, 'Blog 3', 'Contenido de prueba 3', 'Programacion', 10, '2022-04-20 01:45:21', NULL),
(4, 3, 'Blog 4', 'Contenido de prueba 4', 'Quimica', 50, '2022-04-20 01:45:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(200) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `surname`, `email`, `password`, `created_at`) VALUES
(1, 'ROLE_USER', 'VÃ­ctor', 'Robles', 'victor@victor.com', 'password', '2022-04-20 01:45:20'),
(2, 'ROLE_USER', 'Manolo', 'Perez', 'manolo@manolo.com', 'password', '2022-04-20 01:45:21'),
(3, 'ROLE_USER', 'Carlos', 'Sanchez', 'carlos@carlos.com', 'password', '2022-04-20 01:45:21'),
(4, 'ROLE_USER', 'daniel', 'camargo', 'daniel@daniel.com', '$2y$04$6FJOsVnXdH4gxXxlB/6dceG5EpVj18UFjTK4zE5kQijj5PzFpWnFW', '2022-04-20 17:53:08'),
(5, 'ROLE_USER', 'prueba', 'prueba', 'isabel@isabel.com', '$2y$04$zvwzOMY3YiN.dgVK3/L7Puu27FGRXQViV06GgGP3KUuScr3.HYOnq', '2022-04-20 18:02:06');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `fk_task_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
