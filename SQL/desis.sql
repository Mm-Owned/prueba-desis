-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-10-2023 a las 04:12:04
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

DROP TABLE IF EXISTS `candidato`;
CREATE TABLE IF NOT EXISTS `candidato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidato` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`id`, `candidato`) VALUES
(1, 'cadidato 1'),
(2, 'cadidato 2'),
(3, 'cadidato 3'),
(4, 'cadidato 4'),
(5, 'cadidato 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

DROP TABLE IF EXISTS `comuna`;
CREATE TABLE IF NOT EXISTS `comuna` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_comuna` int NOT NULL,
  `comuna` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_region` (`id_comuna`)
) ENGINE=MyISAM AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`id`, `id_comuna`, `comuna`) VALUES
(1, 1, 'Arica'),
(2, 1, 'Camarones'),
(3, 1, 'General Lagos'),
(4, 1, 'Putre'),
(5, 2, 'Alto Hospicio'),
(6, 2, 'Camiña'),
(7, 2, 'Colchane'),
(8, 2, 'Huara'),
(9, 2, 'Iquique'),
(10, 2, 'Pica'),
(11, 2, 'Pozo Almonte'),
(12, 3, 'Antofagasta'),
(13, 3, 'Calama'),
(14, 3, 'María Elena'),
(15, 3, 'Mejillones'),
(16, 3, 'Ollagüe'),
(17, 3, 'San Pedro de Atacama'),
(18, 3, 'Sierra Gorda'),
(19, 3, 'Taltal'),
(20, 3, 'Tocopilla'),
(21, 4, 'Alto del Carmen'),
(22, 4, 'Caldera'),
(23, 4, 'Chañaral'),
(24, 4, 'Copiapó'),
(25, 4, 'Diego de Almagro'),
(26, 4, 'Freirina'),
(27, 4, 'Huasco'),
(28, 4, 'Tierra Amarilla'),
(29, 4, 'Vallenar'),
(30, 5, 'Andacollo'),
(31, 5, 'Canela'),
(32, 5, 'Combarbalá'),
(33, 5, 'Coquimbo'),
(34, 5, 'Illapel'),
(35, 5, 'La Higuera'),
(36, 5, 'La Serena'),
(37, 5, 'Los Vilos'),
(38, 5, 'Monte Patria'),
(39, 5, 'Ovalle'),
(40, 5, 'Paihuano'),
(41, 5, 'Punitaqui'),
(42, 5, 'Río Hurtado'),
(43, 5, 'Salamanca'),
(44, 5, 'Vicuña'),
(45, 6, 'Algarrobo'),
(46, 6, 'Cabildo'),
(47, 6, 'Calera'),
(48, 6, 'Calle Larga'),
(49, 6, 'Cartagena'),
(50, 6, 'Casablanca'),
(51, 6, 'Catemu'),
(52, 6, 'Concón'),
(53, 6, 'El Quisco'),
(54, 6, 'El Tabo'),
(55, 6, 'Hijuelas'),
(56, 6, 'Isla de Pascua'),
(57, 6, 'Juan Fernández'),
(58, 6, 'La Cruz'),
(59, 6, 'La Ligua'),
(60, 6, 'Limache'),
(61, 6, 'Llaillay'),
(62, 6, 'Los Andes'),
(63, 6, 'Catemu'),
(64, 6, 'Nogales'),
(65, 6, 'Olmué'),
(66, 6, 'Panquehue'),
(67, 6, 'Papudo'),
(68, 6, 'Petorca'),
(69, 6, 'Puchuncaví'),
(70, 6, 'Putaendo'),
(71, 6, 'Quillota'),
(72, 6, 'Quilpué'),
(73, 6, 'Quintero'),
(74, 6, 'Rinconada'),
(75, 6, 'San Antonio'),
(76, 6, 'San Esteban'),
(77, 6, 'San Felipe'),
(78, 6, 'Santa María'),
(79, 6, 'Santo Domingo'),
(80, 6, 'Valparaíso'),
(81, 6, 'Villa Alemana'),
(82, 6, 'Viña del Mar'),
(83, 6, 'Zapallar'),
(84, 7, 'Alhué'),
(85, 7, 'Buin'),
(86, 7, 'Calera de Tango'),
(87, 7, 'Cerrillos'),
(88, 7, 'Cerro Navia'),
(89, 7, 'Colina'),
(90, 7, 'Conchalí'),
(91, 7, 'Curacaví'),
(92, 7, 'El Bosque'),
(93, 7, 'El Monte'),
(94, 7, 'Estación Central'),
(95, 7, 'Huechuraba'),
(96, 7, 'Independencia'),
(97, 7, 'Isla de Maipo'),
(98, 7, 'La Cisterna'),
(99, 7, 'La Florida'),
(100, 7, 'La Granja'),
(101, 7, 'Lampa'),
(102, 7, 'La Pintana'),
(103, 7, 'La Reina'),
(104, 7, 'Las Condes'),
(105, 7, 'Lo Barnechea'),
(106, 7, 'Lo Espejo'),
(107, 7, 'Lo Prado'),
(108, 7, 'Macul'),
(109, 7, 'Maipú'),
(110, 7, 'María Pinto'),
(111, 7, 'Melipilla'),
(112, 7, 'Ñuñoa'),
(113, 7, 'Padre Hurtado'),
(114, 7, 'Paine'),
(115, 7, 'Pedro Aguirre Cerda'),
(116, 7, 'Peñaflor'),
(117, 7, 'Peñalolén'),
(118, 7, 'Pirque'),
(119, 7, 'Providencia'),
(120, 7, 'Pudahuel'),
(121, 7, 'Puente Alto'),
(122, 7, 'Quilicura'),
(123, 7, 'Quinta Normal'),
(124, 7, 'Recoleta'),
(125, 7, 'Renca'),
(126, 7, 'San Bernardo'),
(127, 7, 'San Joaquín'),
(128, 7, 'San José de Maipo'),
(129, 7, 'San Miguel'),
(130, 7, 'San Pedro'),
(131, 7, 'San Ramón'),
(132, 7, 'Santiago'),
(133, 7, 'Talagante'),
(134, 7, 'Tiltil'),
(135, 8, 'Chépica'),
(136, 8, 'Chimbarongo'),
(137, 8, 'Codegua'),
(138, 8, 'Coínco'),
(139, 8, 'Coltauco'),
(140, 8, 'Doñihue'),
(141, 8, 'Graneros'),
(142, 8, 'La Estrella'),
(143, 8, 'Las Cabras'),
(144, 8, 'Litueche'),
(145, 8, 'Lolol'),
(146, 8, 'Machalí'),
(147, 8, 'Malloa'),
(148, 8, 'Marchihue'),
(149, 8, 'Mostazal'),
(150, 8, 'Nancagua'),
(151, 8, 'Navidad'),
(152, 8, 'Olivar'),
(153, 8, 'Palmilla'),
(154, 8, 'Paredones'),
(155, 8, 'Peralillo'),
(156, 8, 'Peumo'),
(157, 8, 'Paredones'),
(158, 8, 'Pichidegua'),
(159, 8, 'Pichilemu'),
(160, 8, 'Placilla'),
(161, 8, 'Pumanque'),
(162, 8, 'Quinta de Tilcoco'),
(163, 8, 'Rancagua'),
(164, 8, 'Rengo'),
(165, 8, 'Requínoa'),
(166, 8, 'San Fernando'),
(167, 8, 'Santa Cruz'),
(168, 9, 'Cauquenes'),
(169, 9, 'Chanco'),
(170, 9, 'Colbún'),
(171, 9, 'Constitución'),
(172, 9, 'Curepto'),
(173, 9, 'Curicó'),
(174, 9, 'Empedrado'),
(175, 9, 'Hualañé'),
(176, 9, 'Licantén'),
(177, 9, 'Linares'),
(178, 9, 'Longaví'),
(179, 9, 'Maule'),
(180, 9, 'Molina'),
(181, 9, 'Parral'),
(182, 9, 'Pelarco'),
(183, 9, 'Pelluhue'),
(184, 9, 'Pencahue'),
(185, 9, 'RaCoelemuuco'),
(186, 9, 'Retiro'),
(187, 9, 'Río Claro'),
(188, 9, 'Romeral'),
(189, 10, 'Bulnes'),
(190, 10, 'Chillán'),
(191, 10, 'Chillán Viejo'),
(192, 10, 'Cobquecura'),
(193, 10, 'Coelemu'),
(194, 10, 'Coihueco'),
(195, 10, 'El Carmen'),
(196, 10, 'Ninhue'),
(197, 10, 'Ñiquén'),
(198, 10, 'Romeral'),
(199, 10, 'Pemuco'),
(200, 10, 'Pinto'),
(201, 10, 'Portezuelo'),
(202, 10, 'Quillón'),
(203, 10, 'Quirihue'),
(204, 10, 'Ránquil'),
(205, 10, 'San Carlos'),
(206, 10, 'San Fabián'),
(207, 10, 'San Ignacio'),
(208, 10, 'San Nicolás'),
(209, 10, 'Treguaco'),
(210, 10, 'Yungay'),
(211, 11, 'Alto Biobío'),
(212, 11, 'Antuco'),
(213, 11, 'Arauco'),
(214, 11, 'Cabrero'),
(215, 11, 'Cañete'),
(216, 11, 'Chiguayante'),
(217, 11, 'Concepción'),
(218, 11, 'Contulmo'),
(219, 11, 'Coronel'),
(220, 11, 'Curanilahue'),
(221, 11, 'Florida'),
(222, 11, 'Hualpén'),
(223, 11, 'Hualqui'),
(224, 11, 'Laja'),
(225, 11, 'Lebu'),
(226, 11, 'Los Alamos'),
(227, 11, 'Los Angeles'),
(228, 11, 'Lota'),
(229, 11, 'Mulchén'),
(230, 11, 'Nacimiento'),
(231, 11, 'Negrete'),
(232, 12, 'Angol'),
(233, 12, 'Carahue'),
(234, 12, 'Cholchol'),
(235, 12, 'Collipulli'),
(236, 12, 'Cunco'),
(237, 12, 'Curacautín'),
(238, 12, 'Curarrehue'),
(239, 12, 'Ercilla'),
(240, 12, 'Freire'),
(241, 12, 'Galvarino'),
(242, 12, 'Gorbea'),
(243, 12, 'Loncoche'),
(244, 12, 'Lonquimay'),
(245, 12, 'Los Sauces'),
(246, 12, 'Lumaco'),
(247, 12, 'Melipeuco'),
(248, 12, 'Nueva Imperial'),
(249, 12, 'Padre Las Casas'),
(250, 12, 'Perquenco'),
(251, 12, 'Pitrufquén'),
(252, 12, 'Pucón'),
(253, 12, 'Renaico'),
(254, 12, 'Saavedra'),
(255, 12, 'Temuco'),
(256, 12, 'Teodoro Schmidt'),
(257, 12, 'Toltén'),
(258, 12, 'Traiguén'),
(259, 12, 'Victoria'),
(260, 12, 'Vilcún'),
(261, 12, 'Villarrica'),
(262, 13, 'Corral'),
(263, 13, 'Futrono'),
(264, 13, 'Lago Ranco'),
(265, 13, 'Lanco'),
(266, 13, 'La Unión'),
(267, 13, 'Los Lagos'),
(268, 13, 'Máfil'),
(269, 13, 'Mariquina'),
(270, 13, 'Paillaco'),
(271, 13, 'Panguipulli'),
(272, 13, 'Río Bueno'),
(273, 13, 'Valdivia'),
(274, 14, 'Ancud'),
(275, 14, 'Calbuco'),
(276, 14, 'Castro'),
(277, 14, 'Chaitén'),
(278, 14, 'Chonchi'),
(279, 14, 'Cochamó'),
(280, 14, 'Curaco de Vélez'),
(281, 14, 'Dalcahue'),
(282, 14, 'Fresia'),
(283, 14, 'Frutillar'),
(284, 14, 'Futaleufú'),
(285, 14, 'Hualaihué'),
(286, 14, 'Llanquihue'),
(287, 14, 'Los Muermos'),
(288, 14, 'Maullín'),
(289, 14, 'Osorno'),
(290, 14, 'Palena'),
(291, 14, 'Puerto Montt'),
(292, 14, 'Puerto Octay'),
(293, 14, 'Puerto Varas'),
(294, 14, 'Puqueldón'),
(295, 14, 'Purranque'),
(296, 14, 'Puyehue'),
(297, 14, 'Queilén'),
(298, 14, 'Quellón'),
(299, 14, 'Quemchi'),
(300, 14, 'Quinchao'),
(301, 14, 'Río Negro'),
(302, 14, 'San Juan de la Costa'),
(303, 14, 'Río Negro'),
(304, 14, 'San Pablo'),
(305, 15, 'Aysén'),
(306, 15, 'Chile Chico'),
(307, 15, 'Cisnes'),
(308, 15, 'Cochrane'),
(309, 15, 'Coyhaique'),
(310, 15, 'Guaitecas'),
(311, 15, 'Lago Verde'),
(312, 15, 'OHiggins'),
(313, 15, 'Río Ibáñez'),
(314, 15, 'Tortel'),
(315, 16, 'Antártica'),
(316, 16, 'Cabo de Hornos'),
(317, 16, 'Laguna Blanca'),
(318, 16, 'Natales'),
(319, 16, 'Porvenir'),
(320, 16, 'Primavera'),
(321, 16, 'Punta Arenas'),
(322, 16, 'Río Verde'),
(323, 16, 'San Gregorio'),
(324, 16, 'Timaukel'),
(325, 16, 'Torres del Paine');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `id_region` int NOT NULL AUTO_INCREMENT,
  `region` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_region`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`id_region`, `region`) VALUES
(1, 'Región de Arica y Parinacota'),
(2, 'Región de Tarapacá'),
(3, 'Región de Antofagasta'),
(4, 'Región de Atacama'),
(5, 'Región de Coquimbo'),
(6, 'Región de Valparaíso'),
(7, 'Región Metropolitana'),
(8, 'Región de O’Higgins'),
(9, 'Región del Maule'),
(10, 'Región del Ñuble'),
(11, 'Región del Biobío'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Ríos'),
(14, 'Región de Los Lagos'),
(15, 'Región de Aysén'),
(16, 'Región de Magallanes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

DROP TABLE IF EXISTS `votos`;
CREATE TABLE IF NOT EXISTS `votos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `rut` varchar(20) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `region` varchar(50) NOT NULL,
  `comuna` varchar(50) NOT NULL,
  `candidato` varchar(10) NOT NULL,
  `web` varchar(15) DEFAULT NULL,
  `tv` varchar(15) DEFAULT NULL,
  `redes_sociales` varchar(15) DEFAULT NULL,
  `amigo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `votos`
--

INSERT INTO `votos` (`id`, `nombre`, `alias`, `rut`, `mail`, `region`, `comuna`, `candidato`, `web`, `tv`, `redes_sociales`, `amigo`) VALUES
(24, 'contacto@foamcrete.cl', 'qweqw23', '1-1', 'felipe.ulloa.santelices@gmail.com', 'Región de Tarapacá', 'Camiña', 'cadidato 2', 'true', 'true', 'false', 'false'),
(25, 'contacto@foamcrete.cl', 'sdas13', '1231-1', 'felipe.ulloa.santelices@gmail.com', 'Región de Arica y Parinacota', 'Arica', 'cadidato 1', 'false', 'true', 'true', 'false');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
