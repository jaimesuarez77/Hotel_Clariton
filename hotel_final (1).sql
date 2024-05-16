-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2024 a las 13:09:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `Codigo_articulo` varchar(10) NOT NULL,
  `Nombre_articulo` varchar(20) NOT NULL,
  `Descripcion` varchar(20) NOT NULL,
  `Stock` int(10) NOT NULL,
  `Precio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`Codigo_articulo`, `Nombre_articulo`, `Descripcion`, `Stock`, `Precio`) VALUES
('1', 'Toalla de Baño', 'Toalla suave y absor', 100, 10),
('10', 'Hervidor Eléctrico', 'Hervidor eléctrico p', 35, 10),
('11', 'Almohadas Extras', 'Almohadas adicionale', 60, 8),
('12', 'Perchero de Pared', 'Perchero de pared pa', 45, 5),
('13', 'Espejo de Cuerpo Ent', 'Espejo de cuerpo ent', 30, 20),
('14', 'Radio Despertador', 'Radio despertador co', 25, 18),
('15', 'Cortinas Opacas', 'Cortinas opacas para', 20, 40),
('16', 'Lámpara de Mesa', 'Lámpara de mesa para', 55, 15),
('17', 'Escritorio con Silla', 'Escritorio con silla', 30, 50),
('18', 'Cafetera de Cápsulas', 'Cafetera de cápsulas', 20, 80),
('19', 'Set de Platos y Cubi', 'Set de platos, vasos', 40, 25),
('2', 'Televisor LCD de 32 ', 'Televisor con pantal', 20, 200),
('20', 'Perfume de Ambiente', 'Perfume de ambiente ', 50, 8),
('3', 'Mini Bar', 'Mini nevera con vari', 30, 50),
('4', 'Caja de Seguridad', 'Caja de seguridad el', 50, 30),
('5', 'Secador de Pelo', 'Secador de pelo prof', 40, 15),
('6', 'Set de Toallas de Ba', 'Set de toallas de ba', 80, 20),
('7', 'Set de Artículos de ', 'Set de artículos de ', 70, 12),
('8', 'Plancha y Tabla de P', 'Plancha y tabla de p', 25, 25),
('9', 'Aire Acondicionado P', 'Aire acondicionado p', 15, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignar_articulo_habitacion`
--

CREATE TABLE `asignar_articulo_habitacion` (
  `Codigo_asignacion` int(11) NOT NULL,
  `Codigo_habitacion` varchar(15) NOT NULL,
  `Codigo_articulo` varchar(15) NOT NULL,
  `Cantidad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignar_articulo_habitacion`
--

INSERT INTO `asignar_articulo_habitacion` (`Codigo_asignacion`, `Codigo_habitacion`, `Codigo_articulo`, `Cantidad`) VALUES
(1, '101', '1', 1),
(2, '101', '2', 1),
(3, '101', '3', 1),
(4, '101', '4', 1),
(5, '101', '5', 1),
(6, '101', '6', 1),
(7, '101', '7', 1),
(8, '101', '8', 1),
(9, '101', '9', 1),
(10, '101', '10', 1),
(11, '101', '11', 1),
(12, '101', '12', 1),
(13, '101', '13', 1),
(14, '101', '14', 1),
(15, '101', '15', 1),
(16, '101', '16', 1),
(17, '101', '17', 1),
(18, '101', '18', 1),
(19, '101', '19', 1),
(20, '101', '20', 1),
(21, '102', '1', 1),
(22, '102', '2', 1),
(23, '102', '3', 1),
(24, '102', '4', 1),
(25, '102', '5', 1),
(26, '102', '6', 1),
(27, '102', '7', 1),
(28, '102', '8', 1),
(29, '102', '9', 1),
(30, '102', '10', 1),
(31, '102', '11', 1),
(32, '102', '12', 1),
(33, '102', '13', 1),
(34, '102', '14', 1),
(35, '102', '15', 1),
(36, '102', '16', 1),
(37, '102', '17', 1),
(38, '102', '18', 1),
(39, '102', '19', 1),
(40, '102', '20', 1),
(41, '103', '1', 1),
(42, '103', '2', 1),
(43, '103', '3', 1),
(44, '103', '4', 1),
(45, '103', '5', 1),
(46, '103', '6', 1),
(47, '103', '7', 1),
(48, '103', '8', 1),
(49, '103', '9', 1),
(50, '103', '10', 1),
(51, '103', '11', 1),
(52, '103', '12', 1),
(53, '103', '13', 1),
(54, '103', '14', 1),
(55, '103', '15', 1),
(56, '103', '16', 1),
(57, '103', '17', 1),
(58, '103', '18', 1),
(59, '103', '19', 1),
(60, '103', '20', 1),
(61, '104', '1', 1),
(62, '104', '2', 1),
(63, '104', '3', 1),
(64, '104', '4', 1),
(65, '104', '5', 1),
(66, '104', '6', 1),
(67, '104', '7', 1),
(68, '104', '8', 1),
(69, '104', '9', 1),
(70, '104', '10', 1),
(71, '104', '11', 1),
(72, '104', '12', 1),
(73, '104', '13', 1),
(74, '104', '14', 1),
(75, '104', '15', 1),
(76, '104', '16', 1),
(77, '104', '17', 1),
(78, '104', '18', 1),
(79, '104', '19', 1),
(80, '104', '20', 1),
(81, '105', '1', 1),
(82, '105', '2', 1),
(83, '105', '3', 1),
(84, '105', '4', 1),
(85, '105', '5', 1),
(86, '105', '6', 1),
(87, '105', '7', 1),
(88, '105', '8', 1),
(89, '105', '9', 1),
(90, '105', '10', 1),
(91, '105', '11', 1),
(92, '105', '12', 1),
(93, '105', '13', 1),
(94, '105', '14', 1),
(95, '105', '15', 1),
(96, '105', '16', 1),
(97, '105', '17', 1),
(98, '105', '18', 1),
(99, '105', '19', 1),
(100, '105', '20', 1),
(101, '106', '1', 1),
(102, '106', '2', 1),
(103, '106', '3', 1),
(104, '106', '4', 1),
(105, '106', '5', 1),
(106, '106', '6', 1),
(107, '106', '7', 1),
(108, '106', '8', 1),
(109, '106', '9', 1),
(110, '106', '10', 1),
(111, '106', '11', 1),
(112, '106', '12', 1),
(113, '106', '13', 1),
(114, '106', '14', 1),
(115, '106', '15', 1),
(116, '106', '16', 1),
(117, '106', '17', 1),
(118, '106', '18', 1),
(119, '106', '19', 1),
(120, '106', '20', 1),
(121, '107', '1', 1),
(122, '107', '2', 1),
(123, '107', '3', 1),
(124, '107', '4', 1),
(125, '107', '5', 1),
(126, '107', '6', 1),
(127, '107', '7', 1),
(128, '107', '8', 1),
(129, '107', '9', 1),
(130, '107', '10', 1),
(131, '107', '11', 1),
(132, '107', '12', 1),
(133, '107', '13', 1),
(134, '107', '14', 1),
(135, '107', '15', 1),
(136, '107', '16', 1),
(137, '107', '17', 1),
(138, '107', '18', 1),
(139, '107', '19', 1),
(140, '107', '20', 1),
(141, '108', '1', 1),
(142, '108', '2', 1),
(143, '108', '3', 1),
(144, '108', '4', 1),
(145, '108', '5', 1),
(146, '108', '6', 1),
(147, '108', '7', 1),
(148, '108', '8', 1),
(149, '108', '9', 1),
(150, '108', '10', 1),
(151, '108', '11', 1),
(152, '108', '12', 1),
(153, '108', '13', 1),
(154, '108', '14', 1),
(155, '108', '15', 1),
(156, '108', '16', 1),
(157, '108', '17', 1),
(158, '108', '18', 1),
(159, '108', '19', 1),
(160, '108', '20', 1),
(161, '109', '1', 1),
(162, '109', '2', 1),
(163, '109', '3', 1),
(164, '109', '4', 1),
(165, '109', '5', 1),
(166, '109', '6', 1),
(167, '109', '7', 1),
(168, '109', '8', 1),
(169, '109', '9', 1),
(170, '109', '10', 1),
(171, '109', '11', 1),
(172, '109', '12', 1),
(173, '109', '13', 1),
(174, '109', '14', 1),
(175, '109', '15', 1),
(176, '109', '16', 1),
(177, '109', '17', 1),
(178, '109', '18', 1),
(179, '109', '19', 1),
(180, '109', '20', 1),
(181, '110', '1', 1),
(182, '110', '2', 1),
(183, '110', '3', 1),
(184, '110', '4', 1),
(185, '110', '5', 1),
(186, '110', '6', 1),
(187, '110', '7', 1),
(188, '110', '8', 1),
(189, '110', '9', 1),
(190, '110', '10', 1),
(191, '110', '11', 1),
(192, '110', '12', 1),
(193, '110', '13', 1),
(194, '110', '14', 1),
(195, '110', '15', 1),
(196, '110', '16', 1),
(197, '110', '17', 1),
(198, '110', '18', 1),
(199, '110', '19', 1),
(200, '110', '20', 1),
(201, '111', '1', 1),
(202, '111', '2', 1),
(203, '111', '3', 1),
(204, '111', '4', 1),
(205, '111', '5', 1),
(206, '111', '6', 1),
(207, '111', '7', 1),
(208, '111', '8', 1),
(209, '111', '9', 1),
(210, '111', '10', 1),
(211, '111', '11', 1),
(212, '111', '12', 1),
(213, '111', '13', 1),
(214, '111', '14', 1),
(215, '111', '15', 1),
(216, '111', '16', 1),
(217, '111', '17', 1),
(218, '111', '18', 1),
(219, '111', '19', 1),
(220, '111', '20', 1),
(221, '112', '1', 1),
(222, '112', '2', 1),
(223, '112', '3', 1),
(224, '112', '4', 1),
(225, '112', '5', 1),
(226, '112', '6', 1),
(227, '112', '7', 1),
(228, '112', '8', 1),
(229, '112', '9', 1),
(230, '112', '10', 1),
(231, '112', '11', 1),
(232, '112', '12', 1),
(233, '112', '13', 1),
(234, '112', '14', 1),
(235, '112', '15', 1),
(236, '112', '16', 1),
(237, '112', '17', 1),
(238, '112', '18', 1),
(239, '112', '19', 1),
(240, '112', '20', 1),
(241, '113', '1', 1),
(242, '113', '2', 1),
(243, '113', '3', 1),
(244, '113', '4', 1),
(245, '113', '5', 1),
(246, '113', '6', 1),
(247, '113', '7', 1),
(248, '113', '8', 1),
(249, '113', '9', 1),
(250, '113', '10', 1),
(251, '113', '11', 1),
(252, '113', '12', 1),
(253, '113', '13', 1),
(254, '113', '14', 1),
(255, '113', '15', 1),
(256, '113', '16', 1),
(257, '113', '17', 1),
(258, '113', '18', 1),
(259, '113', '19', 1),
(260, '113', '20', 1),
(261, '114', '1', 1),
(262, '114', '2', 1),
(263, '114', '3', 1),
(264, '114', '4', 1),
(265, '114', '5', 1),
(266, '114', '6', 1),
(267, '114', '7', 1),
(268, '114', '8', 1),
(269, '114', '9', 1),
(270, '114', '10', 1),
(271, '114', '11', 1),
(272, '114', '12', 1),
(273, '114', '13', 1),
(274, '114', '14', 1),
(275, '114', '15', 1),
(276, '114', '16', 1),
(277, '114', '17', 1),
(278, '114', '18', 1),
(279, '114', '19', 1),
(280, '114', '20', 1),
(281, '115', '1', 1),
(282, '115', '2', 1),
(283, '115', '3', 1),
(284, '115', '4', 1),
(285, '115', '5', 1),
(286, '115', '6', 1),
(287, '115', '7', 1),
(288, '115', '8', 1),
(289, '115', '9', 1),
(290, '115', '10', 1),
(291, '115', '11', 1),
(292, '115', '12', 1),
(293, '115', '13', 1),
(294, '115', '14', 1),
(295, '115', '15', 1),
(296, '115', '16', 1),
(297, '115', '17', 1),
(298, '115', '18', 1),
(299, '115', '19', 1),
(300, '115', '20', 1),
(301, '116', '1', 1),
(302, '116', '2', 1),
(303, '116', '3', 1),
(304, '116', '4', 1),
(305, '116', '5', 1),
(306, '116', '6', 1),
(307, '116', '7', 1),
(308, '116', '8', 1),
(309, '116', '9', 1),
(310, '116', '10', 1),
(311, '116', '11', 1),
(312, '116', '12', 1),
(313, '116', '13', 1),
(314, '116', '14', 1),
(315, '116', '15', 1),
(316, '116', '16', 1),
(317, '116', '17', 1),
(318, '116', '18', 1),
(319, '116', '19', 1),
(320, '116', '20', 1),
(321, '117', '1', 1),
(322, '117', '2', 1),
(323, '117', '3', 1),
(324, '117', '4', 1),
(325, '117', '5', 1),
(326, '117', '6', 1),
(327, '117', '7', 1),
(328, '117', '8', 1),
(329, '117', '9', 1),
(330, '117', '10', 1),
(331, '117', '11', 1),
(332, '117', '12', 1),
(333, '117', '13', 1),
(334, '117', '14', 1),
(335, '117', '15', 1),
(336, '117', '16', 1),
(337, '117', '17', 1),
(338, '117', '18', 1),
(339, '117', '19', 1),
(340, '117', '20', 1),
(341, '118', '1', 1),
(342, '118', '2', 1),
(343, '118', '3', 1),
(344, '118', '4', 1),
(345, '118', '5', 1),
(346, '118', '6', 1),
(347, '118', '7', 1),
(348, '118', '8', 1),
(349, '118', '9', 1),
(350, '118', '10', 1),
(351, '118', '11', 1),
(352, '118', '12', 1),
(353, '118', '13', 1),
(354, '118', '14', 1),
(355, '118', '15', 1),
(356, '118', '16', 1),
(357, '118', '17', 1),
(358, '118', '18', 1),
(359, '118', '19', 1),
(360, '118', '20', 1),
(361, '119', '1', 1),
(362, '119', '2', 1),
(363, '119', '3', 1),
(364, '119', '4', 1),
(365, '119', '5', 1),
(366, '119', '6', 1),
(367, '119', '7', 1),
(368, '119', '8', 1),
(369, '119', '9', 1),
(370, '119', '10', 1),
(371, '119', '11', 1),
(372, '119', '12', 1),
(373, '119', '13', 1),
(374, '119', '14', 1),
(375, '119', '15', 1),
(376, '119', '16', 1),
(377, '119', '17', 1),
(378, '119', '18', 1),
(379, '119', '19', 1),
(380, '119', '20', 1),
(381, '120', '1', 1),
(382, '120', '2', 1),
(383, '120', '3', 1),
(384, '120', '4', 1),
(385, '120', '5', 1),
(386, '120', '6', 1),
(387, '120', '7', 1),
(388, '120', '8', 1),
(389, '120', '9', 1),
(390, '120', '10', 1),
(391, '120', '11', 1),
(392, '120', '12', 1),
(393, '120', '13', 1),
(394, '120', '14', 1),
(395, '120', '15', 1),
(396, '120', '16', 1),
(397, '120', '17', 1),
(398, '120', '18', 1),
(399, '120', '19', 1),
(400, '120', '20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignar_habitacion`
--

CREATE TABLE `asignar_habitacion` (
  `Codigo_huesped` varchar(15) NOT NULL,
  `Codigo_habitacion` varchar(15) NOT NULL,
  `Codigo_check` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignar_servicio`
--

CREATE TABLE `asignar_servicio` (
  `Codigo_servicio` varchar(15) NOT NULL,
  `Codig_check_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `check-in`
--

CREATE TABLE `check-in` (
  `Codigo_check-in` int(11) NOT NULL,
  `Id_huesped` varchar(15) NOT NULL,
  `Id_empleado` varchar(15) NOT NULL,
  `Codigo_reserva` varchar(15) NOT NULL,
  `Fecha_ingreso` varchar(15) NOT NULL,
  `Hora_ingreso` varchar(10) NOT NULL,
  `Equipaje` varchar(10) NOT NULL,
  `Fecha_salida` varchar(15) NOT NULL,
  `Numero_adultos` int(3) NOT NULL,
  `Numero_ninos` int(2) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `check-in`
--

INSERT INTO `check-in` (`Codigo_check-in`, `Id_huesped`, `Id_empleado`, `Codigo_reserva`, `Fecha_ingreso`, `Hora_ingreso`, `Equipaje`, `Fecha_salida`, `Numero_adultos`, `Numero_ninos`, `Estado`) VALUES
(1, '3362277', '3362277', '0', '2024-05-12', '14:00', '2024-05-17', 'Si', 2, 1, 'activo'),
(2, '32228084', '3362277', '1', '2024-05-13', '15:45', '2024-05-18', 'Si', 2, 0, 'activo'),
(4, '10031425673', '3362277', '2', '2024-05-14', '19:10', '2024-05-18', 'Si', 2, 1, 'activo'),
(5, '10031425673', '3362277', '2', '2024-05-14', '19:10', '2024-05-18', 'Si', 2, 1, 'activo'),
(6, '10031425673', '3362277', '2', '2024-05-14', '19:10', '2024-05-18', 'Si', 2, 1, 'activo'),
(7, '10031425673', '3362277', '2', '2024-05-14', '19:10', '2024-05-18', 'Si', 2, 1, 'activo'),
(8, '10031425673', '3362277', '2', '2024-05-14', '19:10', '2024-05-18', 'Si', 2, 1, 'activo'),
(9, '10031425673', '3362277', '2', '2024-05-14', '19:10', '2024-05-18', 'Si', 2, 1, 'activo'),
(10, '10031425673', '3362277', '2', '2024-05-14', '19:10', '2024-05-18', 'Si', 2, 1, 'activo'),
(11, '10031425673', '3362277', '2', '2024-05-14', '19:10', '2024-05-18', 'Si', 2, 1, 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `check-out`
--

CREATE TABLE `check-out` (
  `Codigo_check_out` int(11) NOT NULL,
  `Cobro_habitacion` int(10) NOT NULL,
  `Cobro_servicio` int(10) NOT NULL,
  `Otros_cobros` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Id_empleado` varchar(15) NOT NULL,
  `Nombre_empleado` varchar(30) NOT NULL,
  `Cargo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`Id_empleado`, `Nombre_empleado`, `Cargo`) VALUES
('10031425673', 'samuel Suarez', 'Operario'),
('102364854', 'sofia suarez', 'Operario'),
('32228084', 'Marina Correa', 'Administrador'),
('32300362', 'Maria Alicia Rodriguez', 'Administrador'),
('3362277', 'jaime a suarez rodriguez', 'Administrador'),
('43112239', 'Luz Stella ', 'Encargado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `Codigo_habitacion` varchar(15) NOT NULL,
  `Descripcion` varchar(20) NOT NULL,
  `Tipo` varchar(15) NOT NULL,
  `Estado` varchar(15) NOT NULL,
  `Precio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`Codigo_habitacion`, `Descripcion`, `Tipo`, `Estado`, `Precio`) VALUES
('101', 'Habitación Sencilla ', 'Sencilla', 'Disponible', 100),
('102', 'Habitación Estándar ', 'Estándar', 'Disponible', 120),
('103', 'Habitación Doble con', 'Doble', 'Ocupada', 150),
('104', 'Suite Ejecutiva con ', 'Suite', 'Disponible', 250),
('105', 'Habitación Sencilla ', 'Sencilla', 'Disponible', 90),
('106', 'Habitación Estándar ', 'Estándar', 'Disponible', 130),
('107', 'Habitación Doble con', 'Doble', 'Ocupada', 170),
('108', 'Suite de Lujo con Te', 'Suite', 'Disponible', 300),
('109', 'Habitación Sencilla ', 'Sencilla', 'Disponible', 110),
('110', 'Habitación Estándar ', 'Estándar', 'Disponible', 140),
('111', 'Habitación Doble con', 'Doble', 'Disponible', 160),
('112', 'Suite Familiar con D', 'Suite', 'Ocupada', 350),
('113', 'Habitación Sencilla ', 'Sencilla', 'Disponible', 95),
('114', 'Habitación Estándar ', 'Estándar', 'Disponible', 125),
('115', 'Habitación Doble con', 'Doble', 'Disponible', 180),
('116', 'Suite Presidencial c', 'Suite', 'Disponible', 500),
('117', 'Habitación Sencilla ', 'Sencilla', 'Ocupada', 105),
('118', 'Habitación Estándar ', 'Estándar', 'Disponible', 135),
('119', 'Habitación Doble con', 'Doble', 'Disponible', 200),
('120', 'Suite de Luna de Mie', 'Suite', 'Disponible', 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huesped`
--

CREATE TABLE `huesped` (
  `Id_huesped` varchar(15) NOT NULL,
  `Nombre_huesped` varchar(30) NOT NULL,
  `Apellido_huesped` varchar(30) NOT NULL,
  `Edad` int(2) NOT NULL,
  `Sexo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `huesped`
--

INSERT INTO `huesped` (`Id_huesped`, `Nombre_huesped`, `Apellido_huesped`, `Edad`, `Sexo`) VALUES
('10031425673', 'sofia suarez', 'Suarez Rodriguez', 17, 'Femenino'),
('32228084', 'Marina', 'Correa', 40, 'Femenino'),
('3362277', 'jaime a ', 'Suarez Rodriguez', 47, 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `Codigo_reserva` int(10) NOT NULL,
  `Fecha_reserva` varchar(15) NOT NULL,
  `Fecha_ingreso` varchar(15) NOT NULL,
  `Fecha_salida` varchar(15) NOT NULL,
  `Id_empleado` varchar(15) NOT NULL,
  `Id_huesped` varchar(15) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`Codigo_reserva`, `Fecha_reserva`, `Fecha_ingreso`, `Fecha_salida`, `Id_empleado`, `Id_huesped`, `Estado`) VALUES
(1, '15/05/2024', '20/05/2024', '25/05/2024', '32300362', '3362277', 'Activa'),
(2, '15/05/2024', '20/05/2024', '25/05/2024', '32300362', '3362277', 'Activa'),
(3, '15/05/2024', '20/05/2024', '25/05/2024', '32300362', '3362277', 'Activa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `Codigo_servicio` varchar(15) NOT NULL,
  `Nombre_servicio` varchar(15) NOT NULL,
  `Valor_servicio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`Codigo_servicio`, `Nombre_servicio`, `Valor_servicio`) VALUES
('01', 'Lavado', 30000),
('02', 'Caja fuerte', 50000),
('03', 'Wi-fi', 10000),
('04', 'Agua caliente', 15000),
('05', 'Escritorio', 20000),
('06', 'Gimnasio', 35000),
('07', 'Discoteca', 50000),
('08', 'Televisi?n inte', 18000),
('09', 'Aparcamiento', 35000),
('10', 'Cama con extras', 60000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`Codigo_articulo`);

--
-- Indices de la tabla `asignar_articulo_habitacion`
--
ALTER TABLE `asignar_articulo_habitacion`
  ADD PRIMARY KEY (`Codigo_asignacion`),
  ADD KEY `Codigo_articulo` (`Codigo_articulo`),
  ADD KEY `Codigo_asig_art` (`Codigo_habitacion`) USING BTREE;

--
-- Indices de la tabla `asignar_habitacion`
--
ALTER TABLE `asignar_habitacion`
  ADD KEY `Codigo_cliente` (`Codigo_huesped`),
  ADD KEY `Codigo_habitacion` (`Codigo_habitacion`),
  ADD KEY `Codigo_check` (`Codigo_check`),
  ADD KEY `Codigo_check_2` (`Codigo_check`);

--
-- Indices de la tabla `asignar_servicio`
--
ALTER TABLE `asignar_servicio`
  ADD KEY `Codigo_servicio` (`Codigo_servicio`),
  ADD KEY `Codig_check_in` (`Codig_check_in`);

--
-- Indices de la tabla `check-in`
--
ALTER TABLE `check-in`
  ADD PRIMARY KEY (`Codigo_check-in`),
  ADD UNIQUE KEY `Codigo_check-in` (`Codigo_check-in`),
  ADD KEY `Id_cliente` (`Id_huesped`),
  ADD KEY `Id_empleado` (`Id_empleado`),
  ADD KEY `Codigo_reserva` (`Codigo_reserva`),
  ADD KEY `Codigo_reserva_2` (`Codigo_reserva`);

--
-- Indices de la tabla `check-out`
--
ALTER TABLE `check-out`
  ADD PRIMARY KEY (`Codigo_check_out`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Id_empleado`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`Codigo_habitacion`);

--
-- Indices de la tabla `huesped`
--
ALTER TABLE `huesped`
  ADD PRIMARY KEY (`Id_huesped`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`Codigo_reserva`),
  ADD KEY `Id_usuario` (`Id_empleado`),
  ADD KEY `Id_cliente` (`Id_huesped`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`Codigo_servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignar_articulo_habitacion`
--
ALTER TABLE `asignar_articulo_habitacion`
  MODIFY `Codigo_asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT de la tabla `check-in`
--
ALTER TABLE `check-in`
  MODIFY `Codigo_check-in` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `check-out`
--
ALTER TABLE `check-out`
  MODIFY `Codigo_check_out` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `Codigo_reserva` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignar_articulo_habitacion`
--
ALTER TABLE `asignar_articulo_habitacion`
  ADD CONSTRAINT `asignar_articulo_habitacion_ibfk_1` FOREIGN KEY (`Codigo_articulo`) REFERENCES `articulo` (`Codigo_articulo`),
  ADD CONSTRAINT `asignar_articulo_habitacion_ibfk_2` FOREIGN KEY (`Codigo_habitacion`) REFERENCES `habitacion` (`Codigo_habitacion`);

--
-- Filtros para la tabla `asignar_habitacion`
--
ALTER TABLE `asignar_habitacion`
  ADD CONSTRAINT `asignar_habitacion_ibfk_1` FOREIGN KEY (`Codigo_huesped`) REFERENCES `huesped` (`Id_huesped`),
  ADD CONSTRAINT `asignar_habitacion_ibfk_2` FOREIGN KEY (`Codigo_habitacion`) REFERENCES `habitacion` (`Codigo_habitacion`),
  ADD CONSTRAINT `asignar_habitacion_ibfk_3` FOREIGN KEY (`Codigo_check`) REFERENCES `check-in` (`Codigo_check-in`);

--
-- Filtros para la tabla `asignar_servicio`
--
ALTER TABLE `asignar_servicio`
  ADD CONSTRAINT `asignar_servicio_ibfk_1` FOREIGN KEY (`Codig_check_in`) REFERENCES `check-in` (`Codigo_check-in`),
  ADD CONSTRAINT `asignar_servicio_ibfk_2` FOREIGN KEY (`Codigo_servicio`) REFERENCES `servicio` (`Codigo_servicio`);

--
-- Filtros para la tabla `check-in`
--
ALTER TABLE `check-in`
  ADD CONSTRAINT `check-in_ibfk_1` FOREIGN KEY (`Id_empleado`) REFERENCES `empleado` (`Id_empleado`),
  ADD CONSTRAINT `check-in_ibfk_3` FOREIGN KEY (`Id_huesped`) REFERENCES `huesped` (`Id_huesped`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`Id_empleado`) REFERENCES `empleado` (`Id_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
