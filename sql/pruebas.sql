-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-11-2017 a las 12:13:38
-- Versión del servidor: 5.7.20-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebas`
--

CREATE TABLE `pruebas` (
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pruebas`
--

INSERT INTO `pruebas` (`Nombre`, `Apellido`, `telefono`, `correo`) VALUES
('', '', '', ''),
('jhgvhgv', 'hgvhgf', '88975525', 'a@algo.com'),
('lool', 'ygfyukvjhj', '55546121', 'aaaaaa@lll.com'),
('uyuf', 'jhgjhg', '6345654', 'alÃ±@out.com'),
('Allan "El invalido"', 'Escamilla', '556901545', 'allan@gmail.com'),
('Alberto', 'Vitte', '5537909059', 'Betovitte@yahoo.com.mx '),
('gseruhgh', 'hvgkjhgjhkg', '5115515151', 'bgigfirer@jvhsofho'),
('Blanca', 'San Juan ', '55699494', 'Blanca.sanjuan@gmail.com '),
('Brisa', 'JimÃ©nez', '5526981933', 'boo_briztar@hotmail.com'),
('Bruno', 'Vitte', '5559698752', 'bruno_vitte@hotmail.com'),
('Carlos', 'Garibaldi', '5541654383', 'carlos_Garibaldi@gmail.com'),
('CÃ©sar ', 'Arellano', '556702802', 'cesar@gmail.com'),
('alexis', 'bedolla carrillo', '55838782', 'd9egobedol@gmaÃ­l.com'),
('Xochitl', 'Velazquez', '5567893456', 'dante@gmail.com'),
('Diana ', 'Vitte de la Rosa', '55699494', 'diana_vitte@yahoo.com.mx'),
('shgtyherahy', 'eahyeasy', '515151565416', 'euhegoile@ioheraoiluhgo'),
('hfdxgf', 'hgdhgf', '43543543543543', 'fdgfd@out.com'),
('htsrsrtyhsrhy', 'dthssdth', '5454516584768', 'fkyagiuahiuowehf@iuvgaiuwo'),
('Pau', 'Hern', '5963102548', 'fuenvela@hotmail.com'),
('fddgfs', 'dfxdfsfd', '55889977', 'j@outlook.es'),
('Javier', 'Olmedo', '5586344232', 'javier@yahoo.com'),
('dzfbdfshgs', 'dsrfhgsrt', '5121685432156', 'jewhfhaewori@dfbp'),
('ascasc', 'csacfggfbx', '5451613165', 'klghsdihg@kgboifg'),
('Paulina', 'Vela', '5698742301', 'lalo@hotmail.com'),
('Leopoldo', 'Gutierrez', '559281201', 'leo@gmail.com'),
('Axel', 'HernÃ¡ndez', '55542702556', 'maitposs@gmail.com'),
('Nancy', 'Sanchez', '559272901', 'nancy@gmail.com'),
('Omar', 'Vitte', '55699494', 'Omarosotte@gmail.com'),
('Paulina', 'Fuenlabrada', '5568924697', 'pau@gmail.com'),
('mnvbjhfg', 'hjgfvhgf', '654654', 'q@al.com'),
('hgfgfd', 'ghfdtdfq', '8657654', 'r@g.com'),
('CÃ©sar Mauricio', 'Arellano VelÃ¡squez', '5562567479', 'raywayday@gmail.com'),
('sdfgah', '<fghystrhy', '546531646', 'sdfghsr@dghasdgh'),
('Tomas', 'Vallarta', '5596874231', 'Thomas@gmail.com'),
('nkbjhg', 'khghgfhgf', '55694554', 'v@ls.com'),
('Pau', 'Fuen', '1563204987', 'velafuen@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pruebas`
--
ALTER TABLE `pruebas`
  ADD PRIMARY KEY (`correo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
