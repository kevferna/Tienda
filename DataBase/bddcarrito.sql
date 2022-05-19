-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2021 a las 00:30:50
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(7) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Nombre`, `Clave`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('1', 'Placas Base', 'La placa base es el componente principal de un ordenador, por lo que comprar una placa base debe ser una decisión meditada.'),
('2', 'Procesadores', 'El procesador es el componente básico de todo equipo y en TienDAW puedes elegir entre el mayor catálogo de CPUs en una tienda online.'),
('3', 'Discos Duros y SSD', 'La mejor promoción de discos duros externos, internos y ssd que puedes encontrar en la red.'),
('4', 'Tarjetas Gráficas', 'En ninguna otra tienda encontrarás mejores precios y un catálogo tan extenso de tarjetas gráficas como en TienDAW.'),
('5', 'Memorias RAM', 'Todos los tipos de memoria DDR4 a los mejores precios.'),
('6', 'Fuentes de Alimentación', 'La fuente de alimentación da vida a nuestros equipos. Y como hay tantas configuraciones como usuarios, existe un gran catálogo de fuentes alimentación con características diversas que se adaptan a cada tipo de PC y configuración.'),
('7', 'Ventiladores/Disipadores', 'Selección de Disipadores y productos de Ventilación para ordenadores y CPU.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`NIT`, `Nombre`, `NombreCompleto`, `Apellido`, `Clave`, `Direccion`, `Telefono`, `Email`) VALUES
('325325', 'ee', 'eee', 'eee', '86871b9b1ab33b0834d455c540d82e89', 'wewewe', '454565666', 'erer@gmail.com'),
('35423835', 'kevinfv', 'Kevin', 'Fernandez', '8e1e635106d107337645ecf9b88db488', 'Avenida del Principado, N21, 1D', '684958435', 'bycaozz@gmail.com'),
('71904676', 'kevinfv', 'Kevin', 'Fernandez', '8e1e635106d107337645ecf9b88db488', 'Pepe Uchiha 34', '661112777', 'asfes@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentabanco`
--

CREATE TABLE `cuentabanco` (
  `id` int(50) NOT NULL,
  `NumeroCuenta` varchar(100) NOT NULL,
  `NombreBanco` varchar(100) NOT NULL,
  `NombreBeneficiario` varchar(100) NOT NULL,
  `TipoCuenta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentabanco`
--

INSERT INTO `cuentabanco` (`id`, `NumeroCuenta`, `NombreBanco`, `NombreBeneficiario`, `TipoCuenta`) VALUES
(1, '123456789', 'BBVA', 'TienDAW', 'Empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL,
  `PrecioProd` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`NumPedido`, `CodigoProd`, `CantidadProductos`, `PrecioProd`) VALUES
(6, '56660', 1, '35.99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Descuento` int(2) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Descuento`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`, `Estado`) VALUES
(2, '88923', 'MSI X470 Gaming Plus Max', '1', '124.90', 23, 'X470 Gaming Plus Max', 'MSI', 10, '533138', '88923.jpg', 'admin', 'Activo'),
(3, '37050', 'Gigabyte B450M DS3H V2', '1', '72.99', 0, 'B450M DS3H V2', 'Gigabyte', 20, '533138', '37050.jpg', 'admin', 'Activo'),
(4, '10678', 'Asus TUF GAMING B460-PLUS', '1', '109.90', 0, 'TUF GAMING B460-PLUS', 'Asus', 10, '533138', '10678.jpg', 'admin', 'Activo'),
(5, '15633', 'AsRock H470M-HVS', '1', '75.67', 0, 'H470M-HVS', 'AsRock', 20, '533138', '15633.jpg', 'admin', 'Activo'),
(6, '28366', 'AMD Ryzen 5 3600 3.6GHz', '2', '199.90', 0, 'Ryzen 5 3600 3.6GHz', 'AMD', 10, '533138', '28366.jpg', 'admin', 'Activo'),
(7, '33958', 'AMD Ryzen 9 3950X 4.70 GHz', '2', '844.03', 0, 'Ryzen 9 3950X 4.70 GHz', 'AMD', 10, '533138', '33958.jpg', 'admin', 'Activo'),
(8, '67076', 'AMD Ryzen ThreadRipper Pro', '2', '2849.90', 0, 'Ryzen ThreadRipper Pro 3975WX ', 'AMD', 5, '533138', '67076.jpg', 'admin', 'Activo'),
(9, '10130', 'Intel Core i9-10900K 3.70 GHz', '2', '459.90', 0, 'Core i9-10900K 3.70 GHz', 'Intel', 10, '533138', '10130.jpg', 'admin', 'Activo'),
(10, '28201', 'Intel Core i7-11700K 3.6 GHz', '2', '429.90', 0, 'Core i7-11700K 3.6 GHz', 'Intel', 10, '533138', '28201.jpg', 'admin', 'Activo'),
(11, '33428', 'Nfortec Alcyon X 256GB SSD M.2', '3', '79.59', 0, 'Alcyon X 256GB SSD M.2 NVMe', 'Nfortec', 20, '533138', '33428.jpg', 'admin', 'Activo'),
(12, '24826', 'Kioxia EXCERIA 480GB SSD', '3', '65.59', 14, 'EXCERIA 480GB SSD SATA', 'Kioxia', 20, '533138', '24826.jpg', 'admin', 'Activo'),
(13, '40840', 'Seagate BarraCuda 3.5\" 2TB', '3', '48.99', 0, 'BarraCuda 3.5\" 2TB SATA 3', 'Seagate', 20, '533138', '40840.jpg', 'admin', 'Activo'),
(14, '67594', 'Kingston A400 SSD 240GB', '3', '37.02', 0, 'A400 SSD 240GB', 'Kingston', 20, '533138', '67594.jpg', 'admin', 'Activo'),
(15, '42087', 'Samsung 870 EVO SSD 2.5\" 500GB', '3', '70.94', 9, '870 EVO SSD 2.5\" 500GB SATA3', 'Samsung', 20, '533138', '42087.jpg', 'admin', 'Activo'),
(16, '91737', 'PNY Quadro RTX 6000', '4', '5273.96', 0, 'Quadro RTX 6000 24GB GDDR6X', 'PNY', 5, '533138', '91737.jpg', 'admin', 'Activo'),
(17, '46997', 'AMD Radeon Pro WX 9100', '4', '2335.26', 0, 'Radeon Pro WX 9100 16GB GDDR5', 'AMD', 5, '533138', '46997.jpg', 'admin', 'Activo'),
(18, '37328', 'Gigabyte Radeon RX 6900 XT', '4', '1549.90', 0, 'Radeon RX 6900 XT GAMING OC 16GB DDR6', 'Gigabyte', 5, '533138', '37328.jpg', 'admin', 'Activo'),
(19, '36204', 'Gigabyte AORUS GTX 1650', '4', '474.99', 0, 'AORUS GeForce GTX 1650 D6 OC 4GB GDDR6', 'Gigabyte', 10, '533138', '36204.jpg', 'admin', 'Activo'),
(20, '61281', 'Zotac Gaming RTX 2060 AMP!', '4', '439.90', 0, 'GeForce RTX 2060 AMP! 6GB GDDR6', 'Zotac', 10, '533138', '61281.jpg', 'admin', 'Activo'),
(21, '96977', 'MSI GeForce RTX 3070', '4', '869.91', 0, 'GeForce RTX 3070 GAMING X TRIO 8GB GDDR6', 'MSI', 10, '533138', '96977.jpg', 'admin', 'Activo'),
(22, '50092', 'Kingston HyperX DDR4 16GB', '5', '86.70', 0, 'HyperX Fury Black DDR4 3200Mhz 16GB 2x8GB CL16', 'Kingston', 20, '533138', '50092.jpg', 'admin', 'Activo'),
(23, '56660', 'Crucial DDR4 8GB', '5', '35.99', 0, 'DDR4 2400 8GB CL17', 'Crucial', 19, '533138', '56660.jpg', 'admin', 'Activo'),
(24, '27137', 'Corsair Vengeance DDR4 16G', '5', '109.00', 0, 'Vengeance RGB Pro DDR4 3200 16GB 2x8GB CL16', 'Corsair', 10, '533138', '27137.jpg', 'admin', 'Activo'),
(25, '25389', 'Team Group Delta DDR4 16GB', '5', '93.98', 0, 'Delta White RGB DDR4 3200 16GB 2x8GB CL16', 'Team Group', 20, '533138', '25389.jpg', 'admin', 'Activo'),
(26, '62948', 'G.Skill Trident Z DDR4 16GB', '5', '123.99', 0, 'Trident Z RGB DDR4 3200 16GB 2x8GB CL16', 'G.Skill', 10, '533138', '62948.jpg', 'admin', 'Activo'),
(27, '87005', 'Thermaltake DDR4 16GB', '5', '105.00', 14, 'Thermaltake Toughram Z-One RGB DDR4 3200 2x8GB 16G', 'Thermaltake', 10, '533138', '87005.jpg', 'admin', 'Activo'),
(28, '93767', 'MSI MPG A750GF 750W', '6', '134.99', 19, 'MPG A750GF 750W 80 Plus Gold Modular', 'MSI', 10, '533138', '93767.jpg', 'admin', 'Activo'),
(29, '12653', 'Corsair RM750 750W', '6', '114.99', 0, 'RM750 750W 80 Plus Gold Full Modular', 'Corsair', 10, '533138', '12653.jpg', 'admin', 'Activo'),
(30, '65224', 'Cooler Master MWE 650W', '6', '63.00', 0, 'MWE Bronze V2 650W', 'Cooler Master', 20, '533138', '65224.jpg', 'admin', 'Activo'),
(31, '67361', 'Thermaltake 700W', '6', '69.99', 0, 'Smart RGB 700W 80 Plus', 'Thermaltake', 20, '533138', '67361.jpg', 'admin', 'Activo'),
(32, '37302', 'Thermaltake Cooling Kit', '7', '348.99', 0, 'Pacific M240 D5 Hard Tube Water Cooling Kit', 'Thermaltake', 10, '533138', '37302.jpg', 'admin', 'Activo'),
(33, '34780', 'NZXT Kraken Z73', '7', '258.00', 0, 'Kraken Z73 Kit Refrigración Líquida', 'NZXT', 10, '533138', '34780.jpg', 'admin', 'Activo'),
(34, '71061', 'Thermaltake Floe Riing RGB', '7', '252.63', 0, 'Floe Riing RGB 240 TT Premium Edition', 'Thermaltake', 10, '533138', '71061.jpg', 'admin', 'Activo'),
(35, '10338', 'Asus ROG Kit de RL', '7', '228.27', 0, 'ROG Strix LC 360 RGB Kit de Refrigeración Líquida', 'Asus', 10, '533138', '10338.jpg', 'admin', 'Activo'),
(36, '66497', 'Corsair iCUE Kit de RL', '7', '184.00', 0, 'iCUE H150i ELITE CAPELLIX Kit de Refrigeración Líq', 'Corsair', 10, '533138', '66497.jpg', 'admin', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`) VALUES
('533138', 'Informática SA', 'Calle de Cavanilles, 35 28007 Madrid', '649546894', 'https:informaticasa.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL,
  `NumeroDeposito` varchar(50) NOT NULL,
  `TipoEnvio` varchar(37) NOT NULL,
  `Adjunto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`NumPedido`, `Fecha`, `NIT`, `TotalPagar`, `Estado`, `NumeroDeposito`, `TipoEnvio`, `Adjunto`) VALUES
(6, '18-03-2021', '35423835', '35.99', 'Pendiente', '75456', 'Envio por UPS', 'Sin archivo adjunto');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
