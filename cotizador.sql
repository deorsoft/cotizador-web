-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 31-05-2012 a las 22:47:25
-- Versión del servidor: 5.5.20
-- Versión de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cotizador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `betunes`
--

CREATE TABLE IF NOT EXISTS `betunes` (
  `id_betun` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `imagen` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_betun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `betunes`
--

INSERT INTO `betunes` (`id_betun`, `nombre`, `imagen`) VALUES
(000001, 'CHANTILLY', 'chantilly.png'),
(000002, 'CHANTILLY CHOCOLATE', 'chantillychoco.png'),
(000003, 'LIMON', 'limon.png'),
(000004, 'CHOCOLATE', 'chocolate.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `decorados`
--

CREATE TABLE IF NOT EXISTS `decorados` (
  `id_decorado` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id_decorado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='tabla decorados en el pastel' AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `decorados`
--

INSERT INTO `decorados` (`id_decorado`, `nombre`, `precio`) VALUES
(000001, 'FOTOGRAFIA', 0),
(000002, 'FIGURA', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasteles`
--

CREATE TABLE IF NOT EXISTS `pasteles` (
  `id_pastel` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `codigo_microsip` int(6) DEFAULT NULL,
  `nombre` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `imagen` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `detalle` varchar(256) COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_tipo` int(6) NOT NULL,
  `id_sabor` int(6) NOT NULL,
  `id_betun` int(6) NOT NULL,
  `id_relleno` int(6) NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id_pastel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `id_pedido` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id_cliente` int(6) NOT NULL,
  `id_pastel` int(6) NOT NULL,
  `id_decorado` int(6) NOT NULL,
  `id_servicio` int(6) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `hora_entrega` time NOT NULL,
  `cantidad` int(3) NOT NULL,
  `domicilio_entrega` text COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rellenos`
--

CREATE TABLE IF NOT EXISTS `rellenos` (
  `id_relleno` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `imagen` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_relleno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `rellenos`
--

INSERT INTO `rellenos` (`id_relleno`, `nombre`, `imagen`) VALUES
(000001, 'SIN RELLENO', 'sinrelleno.png'),
(000002, 'MERMELADA DE FRESA', 'mermfresa.png'),
(000003, 'MERMELADA DE CHABACANO', 'mermchabacano.png'),
(000004, 'MERMELADA DE PIÑA', 'mermpina.png'),
(000005, 'NARANJA', 'mermnaranja.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sabores`
--

CREATE TABLE IF NOT EXISTS `sabores` (
  `id_sabor` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `imagen` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_sabor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `sabores`
--

INSERT INTO `sabores` (`id_sabor`, `nombre`, `imagen`) VALUES
(000001, 'VAINILLA', 'vainilla.png'),
(000002, 'CHOCOLATE', 'chocolate.png'),
(000003, 'ESPONJA VAINILLA', 'esponjavainilla.png'),
(000004, 'ESPONJA CHOCOLATE', 'esponjachocolate.png'),
(000005, 'PIÑA', 'pina.png'),
(000006, 'NUEZ', 'nuez.png'),
(000007, 'ALMENDRA', 'almendra.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
  `id_servicio` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='tablas de servicios a domicilio' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `nombre`, `precio`) VALUES
(000001, 'SERVICIO A DOMICILIO', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE IF NOT EXISTS `tipos` (
  `id_tipo` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `imagen` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id_tipo`, `nombre`, `imagen`) VALUES
(000001, 'MEDIA PLANCHA', 'mediaplancha.png'),
(000002, 'PLANCHA', 'plancha.png'),
(000003, 'CASCADA', 'cascada.png'),
(000005, 'HERRERIA', 'herreria.png'),
(000006, 'FUENTE', 'fuente.png'),
(000007, 'PASTEL 18', '18.png'),
(000008, 'PASTEL 22', '22.png'),
(000009, 'PASTEL 26', '26.png'),
(000010, 'PASTEL 34', '34.png'),
(000011, 'PASTEL 42', '42.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_cliente` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `correo` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `password` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` int(11) NOT NULL,
  `paterno` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `materno` varchar(256) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nacimiento` date NOT NULL,
  `sexo` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `telefono` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `calle` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `numero` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `colonia` varchar(256) COLLATE latin1_spanish_ci NOT NULL,
  `cod_pos` varchar(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
