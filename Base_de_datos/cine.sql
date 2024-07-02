-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2024 a las 02:09:45
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id_pelicula` int(11) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `duracion` int(11) NOT NULL,
  `anio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id_pelicula`, `titulo`, `duracion`, `anio`) VALUES
(1, 'Intensamente', 95, 2015),
(2, 'Intensamente 2', 96, 2024),
(3, 'Harry Potter y la piedra filosofal', 152, 2001),
(4, 'Harry Potter y la cámara secreta', 161, 2002),
(5, 'Harry Potter y el prisionero de Azkaban', 142, 2004),
(6, 'Harry Potter y el cáliz de fuego', 157, 2005),
(7, 'Harry Potter y el misterio del príncipe', 157, 2009),
(8, 'Harry Potter y reliquias de la muerte 1', 146, 2010),
(9, 'Harry Potter y reliquias de la muerte 2', 130, 2011),
(10, 'Titanic', 195, 1997),
(11, 'Matrix', 136, 1999),
(12, 'Forrest Gump', 142, 1994),
(13, 'Soul', 100, 2020),
(14, 'Dune', 155, 2021),
(15, 'Joker', 122, 2019),
(16, 'La La Land ', 128, 2019),
(17, 'Spider-Man: No Way Home', 148, 2021),
(18, 'Spider-Man: Homecoming', 133, 2017),
(19, 'Spider-Man: Far From Home', 129, 2019),
(20, 'La Comunidad del Anillo', 178, 2001),
(21, 'Las Dos Torres', 179, 2002),
(22, 'El Retorno del Rey', 201, 2003),
(23, 'Deadpool', 108, 2016),
(24, 'Avatar', 162, 2009),
(25, 'Interestelar ', 169, 2014);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id_pelicula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id_pelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
