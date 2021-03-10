-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-03-2021 a las 16:26:58
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loguin`
--

CREATE TABLE `loguin` (
  `Id_Usuario` int(11) NOT NULL,
  `Usuario` varchar(15) NOT NULL,
  `Contraseña` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Codigo_Producto` int(15) NOT NULL,
  `Descripcion_producto` varchar(45) NOT NULL,
  `Peso` int(10) NOT NULL,
  `Marca` varchar(15) NOT NULL,
  `Fecha_Vencimiento` date NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Fecha_ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Usuario` varchar(15) NOT NULL,
  `Nombres` varchar(45) NOT NULL,
  `Apellidos` varchar(45) NOT NULL,
  `Contraseña` varchar(15) NOT NULL,
  `Confirmar contraseña` varchar(15) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `telefono` int(15) NOT NULL,
  `Fecha de Nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `loguin`
--
ALTER TABLE `loguin`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD UNIQUE KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Codigo_Producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
