-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2015 a las 15:51:33
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dstecco_manosdeoro2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE IF NOT EXISTS `administrador` (
`idadministrador` int(11) NOT NULL,
  `primerNom` varchar(80) COLLATE utf8_bin NOT NULL,
  `segundoNom` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `primerApe` varchar(80) COLLATE utf8_bin NOT NULL,
  `segundoApe` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(80) COLLATE utf8_bin NOT NULL,
  `password` varchar(80) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`idadministrador`, `primerNom`, `segundoNom`, `primerApe`, `segundoApe`, `username`, `password`, `email`, `tipo`) VALUES
(1, 'Sebastián', NULL, 'Landínez', NULL, 'sflang', 'abcdef', 'landinez@unicauca.edu.co', 1),
(2, 'Andrés', NULL, 'Borreo', NULL, 'felbo123', 'abcdef', 'felbo123@gmail.com', 0),
(3, 'felix', 'camargo', 'camrgo', 'camrgo', 'fx', '123', 'felix@gmail.com', 0),
(4, 'jeferson', 'jeferson', 'jeferson', 'jeferson', 'jf', '123', 'jf@gmail.com', 1),
(5, 'pablo', 'muñoz', 'muñoz', 'muñoz', 'polo', 'polo', 'pablosanjuanm@gmail.com', 18),
(6, 'pablo', 'muñoz', 'muñoz', 'muñoz', 'polo', 'polo', 'pablosanjuanm@gmail.com', 18),
(7, 'secre', 'secre', 'secre', 'secre', 'polosecre', 'secre', 'pablosanjuanm@gmail.com', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artesano`
--

CREATE TABLE IF NOT EXISTS `artesano` (
`idArtesano` int(11) NOT NULL,
  `TipoDoc` int(11) NOT NULL,
  `NroDoc` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(40) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(200) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(30) COLLATE utf8_bin NOT NULL,
  `telefono2` varchar(25) COLLATE utf8_bin NOT NULL,
  `username` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_bin NOT NULL,
  `celular` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(70) COLLATE utf8_bin NOT NULL,
  `certificacion` tinyint(4) NOT NULL,
  `nivelestudio` int(11) NOT NULL,
  `aprendices` text COLLATE utf8_bin,
  `cursos` text COLLATE utf8_bin,
  `formatofoto` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=50 ;

--
-- Volcado de datos para la tabla `artesano`
--

INSERT INTO `artesano` (`idArtesano`, `TipoDoc`, `NroDoc`, `password`, `direccion`, `telefono`, `telefono2`, `username`, `estado`, `nombre`, `celular`, `email`, `certificacion`, `nivelestudio`, `aprendices`, `cursos`, `formatofoto`) VALUES
(45, 0, '123', 'manosdeoro', 'calle', '11111', '', '123', 2, 'cesar  sanjuan ', '11111', 'pablosanjuanm@gmail.com', 0, 2, '', '', 1),
(46, 0, '1061788569', 'abcdef', 'Cra 5E No. 57 N 03', '8363106', '', '1061788569', 2, 'Sebastián Felipe Landínez García', '3002695941', 'slandinezg@gmail.com', 0, 2, '', '', 1),
(47, 0, '79310380', 'abcdef', 'Por ahí', '8363106', '8212000', '79310380', 2, 'Néstor  Landínez ', '3004568127', 'a@gmail.com', 0, 2, '', '', 2),
(48, 0, '1061123', '123', 'calle', '8367218', '8360000', '1061123', 2, 'pablo cesar sanjuan muñoz', '321', 'pablosanjuanm@gmail.com', 0, 2, '', '', 1),
(49, 0, '1061777888', 'contrasena', 'direccion moificada', '8888', '8357788', '1061777888', 2, 'cristian camilo', '321321321', 'correo@hotmail.com', 1, 4, '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
`id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_lim` varchar(50) NOT NULL,
  `horario` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `foto`, `descripcion`, `fecha_lim`, `horario`) VALUES
(1, 'fotoCursoManillas.jpg', 'Manillas', '2015-05-24', 'Viernes 4-8 p.m');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
`idNoticia` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `contenido` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`idNoticia`, `titulo`, `contenido`) VALUES
(-1, 'comision', '10'),
(1, '¿Quiénes somos?', 'apblo'),
(2, 'Misión', 'hla'),
(3, 'Visión', 'kamdma'),
(4, 'Noticia 1', 'Este es el texto de prueba de la noticia 1. <br>Tiene un poco de HTML'),
(5, 'Ã±Ã±Ã±', 'Ã±Ã±Ã±');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
`idPerfil` int(11) NOT NULL,
  `nomPerfil` varchar(100) NOT NULL,
  `valorPerfil` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`idPerfil`, `nomPerfil`, `valorPerfil`) VALUES
(3, 'Perfil de prueba', 22),
(4, 'perfil_nuevo', 26),
(5, 'perfil_perfil', 33),
(6, 'carntanta', 18),
(7, 'secretario', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
`idproducto` int(11) NOT NULL,
  `descripcion` varchar(300) COLLATE utf8_bin NOT NULL,
  `link` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `idartesano` int(11) NOT NULL,
  `aceptado` tinyint(4) NOT NULL,
  `empresa` varchar(150) COLLATE utf8_bin NOT NULL,
  `nroenvio` varchar(30) COLLATE utf8_bin NOT NULL,
  `notificado` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `ventas` int(11) DEFAULT NULL,
  `formatofoto` int(11) DEFAULT NULL,
  `precio` int(11) NOT NULL DEFAULT '0',
  `mostrar` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=41 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `descripcion`, `link`, `idartesano`, `aceptado`, `empresa`, `nroenvio`, `notificado`, `stock`, `ventas`, `formatofoto`, `precio`, `mostrar`) VALUES
(35, 'servientrega', '', 45, 2, 'manillas', '12345', 1, 16, 4, 1, 20000, 1),
(36, 'Bolsos', '', 46, 2, 'Servientrega', '102003', 0, 30, 0, 1, 2500, 1),
(37, 'Sombreros', '', 46, 1, 'Deprisa', '101002', 0, 0, 0, 0, 0, 0),
(38, 'ArtÃ­culos de madera', '', 47, 2, 'Deprisa', '1923991', 0, 20, 0, 1, 2500, 1),
(39, 'manillas', 'https://www.youtube.com/', 48, 2, 'servientrega', '123', 1, 12, 0, 1, 2000, 1),
(40, 'manillas', 'https://www.facebook.com/', 49, 2, 'servientrega', '123', 1, 10, 0, 1, 2000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE IF NOT EXISTS `solicitud` (
`idSolicitud` int(11) NOT NULL,
  `idArtesano` int(11) NOT NULL,
  `idStand` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`idSolicitud`, `idArtesano`, `idStand`) VALUES
(1, 45, 61),
(2, 48, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stand`
--

CREATE TABLE IF NOT EXISTS `stand` (
`idStand` int(11) NOT NULL,
  `idArtesano` int(11) DEFAULT NULL,
  `reservado` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Volcado de datos para la tabla `stand`
--

INSERT INTO `stand` (`idStand`, `idArtesano`, `reservado`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(25, 0, 0),
(26, 0, 0),
(27, 0, 0),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(31, 0, 0),
(32, 0, 0),
(33, 0, 0),
(34, 0, 0),
(35, 0, 0),
(36, 0, 0),
(37, 0, 0),
(38, 0, 0),
(39, 0, 0),
(40, 0, 0),
(41, 0, 0),
(42, 0, 0),
(43, 0, 0),
(44, 0, 0),
(45, 0, 0),
(46, 0, 0),
(47, 0, 0),
(48, 0, 0),
(49, 0, 0),
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 46, 1),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
 ADD PRIMARY KEY (`idadministrador`);

--
-- Indices de la tabla `artesano`
--
ALTER TABLE `artesano`
 ADD PRIMARY KEY (`idArtesano`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
 ADD PRIMARY KEY (`idNoticia`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
 ADD PRIMARY KEY (`idPerfil`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
 ADD PRIMARY KEY (`idproducto`), ADD KEY `foreignkey` (`idartesano`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
 ADD PRIMARY KEY (`idSolicitud`);

--
-- Indices de la tabla `stand`
--
ALTER TABLE `stand`
 ADD PRIMARY KEY (`idStand`), ADD KEY `idArtesano` (`idArtesano`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
MODIFY `idadministrador` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `artesano`
--
ALTER TABLE `artesano`
MODIFY `idArtesano` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
MODIFY `idNoticia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
MODIFY `idPerfil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
MODIFY `idSolicitud` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `stand`
--
ALTER TABLE `stand`
MODIFY `idStand` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idartesano`) REFERENCES `artesano` (`idArtesano`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
