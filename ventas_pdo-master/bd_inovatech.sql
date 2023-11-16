-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2023 a las 07:25:46
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_inovatech`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE `tbl_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `stock` int(10) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `codigo` int(10) NOT NULL,
  `tamano` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_productos`
--

INSERT INTO `tbl_productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `marca`, `codigo`, `tamano`) VALUES
(6, 'Laptop HP Pavilion', 'Laptop con procesador Intel Core i5, 8 GB RAM, 256 GB SSD, pantalla de 14 pulgadas', '849.99', 28, 'HP', 1001, '18 pulgadas'),
(7, 'Monitor Dell Ultrasharp', 'Monitor LED de 27 pulgadas con resolución 2560x1440, tecnología IPS', '349.99', 20, 'Dell', 1002, '27 pulgadas'),
(8, 'Teclado Mecánico Corsair K70', 'Teclado mecánico RGB con interruptores Cherry MX Red', '129.99', 50, 'Corsair', 1003, 'Estándar'),
(9, 'Mouse Logitech MX Master 3', 'Mouse inalámbrico con sensor Darkfield, hasta 4000 DPI', '99.99', 40, 'Logitech', 1004, 'Estándar'),
(10, 'Impresora Brother LaserJet', 'Impresora láser monocromática con capacidad de impresión dúplex', '199.99', 15, 'Brother', 1005, 'Impresora'),
(11, 'Disco Duro Externo Seagate 2TB', 'Disco duro externo portátil con capacidad de 2 terabytes', '79.99', 25, 'Seagate', 1006, '2TB'),
(12, 'Router Inalámbrico ASUS RT-AC1', 'Router inalámbrico de doble banda con velocidad de hasta 1900 Mbps', '149.99', 10, 'ASUS', 1007, 'Router'),
(13, 'Tarjeta Gráfica NVIDIA GeForce', 'Tarjeta gráfica para juegos con 8 GB de memoria GDDR6', '499.99', 35, 'NVIDIA', 1008, '8GB'),
(14, 'Audífonos Gaming SteelSeries A', 'Audífonos inalámbricos para gaming con sonido DTS Headphone:X v2.0', '149.99', 18, 'SteelSeries', 1009, 'Inalámbrico'),
(15, 'Cámara Web Logitech C920', 'Cámara web Full HD con enfoque automático y corrección de luz', '79.99', 22, 'Logitech', 1010, 'Full HD'),
(16, 'Teclado Gamer', 'El teclado es un dispositivo de entrada que utiliza una disposición de teclas, para que actúen como interruptores electrónicos que envían información a la computadora', '600.00', 5, 'BLUE LABEL', 123, '10*10 pulgadas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos_vendidos`
--

CREATE TABLE `tbl_productos_vendidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `cantidad` bigint(20) UNSIGNED NOT NULL,
  `id_venta` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_productos_vendidos`
--

INSERT INTO `tbl_productos_vendidos` (`id`, `id_producto`, `cantidad`, `id_venta`) VALUES
(9, 6, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ventas`
--

CREATE TABLE `tbl_ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL,
  `total` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_ventas`
--

INSERT INTO `tbl_ventas` (`id`, `fecha`, `total`) VALUES
(1, '2023-11-15 18:37:32', '0.00'),
(2, '2023-11-15 18:37:47', '0.00'),
(3, '2023-11-15 18:41:41', '240.00'),
(4, '2023-11-15 18:45:43', '100.00'),
(5, '2023-11-16 02:48:33', '115.00'),
(7, '2023-11-16 03:12:26', '849.99');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_productos_vendidos`
--
ALTER TABLE `tbl_productos_vendidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tbl_productos_vendidos`
--
ALTER TABLE `tbl_productos_vendidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_productos_vendidos`
--
ALTER TABLE `tbl_productos_vendidos`
  ADD CONSTRAINT `tbl_productos_vendidos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `tbl_productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_productos_vendidos_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `tbl_ventas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
