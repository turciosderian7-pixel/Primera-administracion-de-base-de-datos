-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 26-06-2026 a las 15:23:16
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
-- Base de datos: `zapateria_derian`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categorias` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categorias`, `nombre`) VALUES
(1, 'Deportivo'),
(2, 'Casual'),
(3, 'Formal'),
(4, 'Urbano'),
(5, 'Botas'),
(6, 'Sandalias'),
(7, 'Zapatillas'),
(8, 'Mocasines'),
(9, 'Running'),
(10, 'Skate'),
(11, 'Tacones'),
(12, 'Plataformas'),
(13, 'Estilo Libre'),
(14, 'Montaña'),
(15, 'Seguridad'),
(16, 'Ortopédico'),
(17, 'Escolar'),
(18, 'Playero'),
(19, 'Lona'),
(20, 'Cuero'),
(21, 'Anfibio'),
(22, 'Invernal'),
(23, 'Fútbol'),
(24, 'Baloncesto'),
(25, 'Tenis de Mesa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `telefono`, `email`) VALUES
(1, 'Carlos Mendoza', '7788-9900', 'carlos@mail.com'),
(2, 'Valeria Gómez', '7122-3344', 'valeria@mail.com'),
(3, 'Fernando Rivera', '6055-6677', 'fernando@mail.com'),
(4, 'Gabriela Torres', '7544-8899', 'gaby@mail.com'),
(5, 'Josué Lemus', '7211-2233', 'josue@mail.com'),
(6, 'Alejandra Alfaro', '7988-1122', 'ale@mail.com'),
(7, 'Diego Henríquez', '6122-4455', 'diego@mail.com'),
(8, 'Mariana Batres', '7033-5566', 'mariana@mail.com'),
(9, 'Roberto Orellana', '7455-6611', 'roberto@mail.com'),
(10, 'Elena Palacios', '7899-0011', 'elena@mail.com'),
(11, 'Kevin Flores', '6044-3322', 'kevin@mail.com'),
(12, 'Beatriz Ayala', '7311-5544', 'beatriz@mail.com'),
(13, 'Jonathan Melgar', '7266-8899', 'jonathan@mail.com'),
(14, 'Camila Peña', '7533-1100', 'camila@mail.com'),
(15, 'Manuel Quintanilla', '6155-9988', 'manuel@mail.com'),
(16, 'Sofía Beltrán', '7022-4411', 'sofia@mail.com'),
(17, 'Christian Zelaya', '7644-0033', 'christian@mail.com'),
(18, 'Vanessa Cortéz', '7411-8855', 'vanessa@mail.com'),
(19, 'Ricardo Ramos', '7933-2266', 'ricardo@mail.com'),
(20, 'Adriana Meza', '6011-7788', 'adriana@mail.com'),
(21, 'Luis Miguel Ángel', '7255-4411', 'luis@mail.com'),
(22, 'Tatiana Recinos', '7144-9900', 'tati@mail.com'),
(23, 'Bryan Rodríguez', '7566-3322', 'bryan@mail.com'),
(24, 'Natalia Benítez', '7099-8877', 'natalia@mail.com'),
(25, 'Mauricio Arias', '7388-1144', 'mau@mail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `NOMBRE`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Puma'),
(4, 'Gucci'),
(5, 'Converse'),
(6, 'Under Armour'),
(7, 'Reebok'),
(8, 'New Balance'),
(9, 'Asics'),
(10, 'Vans'),
(11, 'Timberland'),
(12, 'Skechers'),
(13, 'Crocs'),
(14, 'Fila'),
(15, 'Jordan'),
(16, 'Balenciaga'),
(17, 'Prada'),
(18, 'Louis Vuitton'),
(19, 'Dr. Martens'),
(20, 'Clarks'),
(21, 'Zara'),
(22, 'Pull&Bear'),
(23, 'Bershka'),
(24, 'Lacoste'),
(25, 'Tommy Hilfiger');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `talla` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `id_marca`, `id_categoria`, `precio`, `talla`, `stock`) VALUES
(1, 'Air Max 90', 1, 1, 120.00, 40, 15),
(2, 'Ultraboost 22', 2, 9, 180.00, 42, 10),
(3, 'Suede Classic', 3, 4, 75.00, 39, 20),
(4, 'Mocasines Leather', 4, 8, 450.00, 41, 5),
(5, 'Old Skool', 10, 10, 70.00, 38, 25),
(6, 'Charged Assert', 6, 9, 85.00, 41, 12),
(7, 'Classic Leather', 7, 2, 80.00, 43, 18),
(8, '574 Core', 8, 4, 100.00, 40, 14),
(9, 'Gel-Kayano 29', 9, 9, 160.00, 42, 8),
(10, 'Premium 6-Inch', 11, 5, 198.00, 44, 7),
(11, 'D Lites', 12, 16, 65.00, 37, 22),
(12, 'Classic Clog', 13, 6, 50.00, 39, 30),
(13, 'Disruptor II', 14, 12, 75.00, 36, 11),
(14, 'Air Jordan 1 Mid', 15, 24, 135.00, 42, 9),
(15, 'Triple S', 16, 12, 950.00, 41, 3),
(16, 'Cloudbust Thunder', 17, 3, 850.00, 40, 4),
(17, 'Trainer Sneaker', 18, 1, 1200.00, 43, 2),
(18, '1460 Smooth', 19, 5, 170.00, 39, 13),
(19, 'Desert Boot', 20, 20, 150.00, 42, 10),
(20, 'Deportivo Básico', 21, 17, 35.00, 38, 40),
(21, 'Casual Lona', 22, 19, 29.99, 41, 35),
(22, 'Bota Urbana', 23, 5, 45.00, 40, 15),
(23, 'Carnaby Evo', 24, 2, 110.00, 42, 12),
(24, 'Essential Sneaker', 25, 4, 95.00, 41, 16),
(25, 'Chuck Taylor All Star', 5, 19, 65.00, 38, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_cliente`, `id_producto`, `cantidad`, `fecha`) VALUES
(51, NULL, 1, 1, '2026-06-01'),
(52, NULL, 3, 2, '2026-06-02'),
(53, NULL, 5, 1, '2026-06-03'),
(54, NULL, 2, 1, '2026-06-04'),
(55, NULL, 4, 1, '2026-06-05'),
(56, NULL, 6, 1, '2026-06-06'),
(57, NULL, 10, 1, '2026-06-07'),
(58, NULL, 12, 3, '2026-06-08'),
(59, NULL, 7, 1, '2026-06-09'),
(60, NULL, 14, 1, '2026-06-10'),
(61, NULL, 15, 1, '2026-06-11'),
(62, NULL, 9, 1, '2026-06-12'),
(63, NULL, 25, 2, '2026-06-13'),
(64, NULL, 11, 1, '2026-06-14'),
(65, NULL, 20, 2, '2026-06-15'),
(66, NULL, 13, 1, '2026-06-16'),
(67, NULL, 18, 1, '2026-06-17'),
(68, NULL, 21, 1, '2026-06-18'),
(69, NULL, 8, 1, '2026-06-19'),
(70, NULL, 23, 1, '2026-06-20'),
(71, NULL, 24, 1, '2026-06-21'),
(72, NULL, 17, 1, '2026-06-22'),
(73, NULL, 19, 1, '2026-06-23'),
(74, NULL, 22, 1, '2026-06-24'),
(75, NULL, 16, 1, '2026-06-25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categorias`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_marca` (`id_marca`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`) ON DELETE SET NULL,
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categorias`) ON DELETE SET NULL;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
