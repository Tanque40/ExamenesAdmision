-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-04-2018 a las 12:47:18
-- Versión del servidor: 5.7.22-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dev_examen2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `active_year`
--

CREATE TABLE `active_year` (
  `id` int(9) NOT NULL,
  `activo(s/n)` varchar(1) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `active_year`
--

INSERT INTO `active_year` (`id`, `activo(s/n)`) VALUES
(0, 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administracion`
--

CREATE TABLE `administracion` (
  `Usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Password` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `session` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `administracion`
--

INSERT INTO `administracion` (`Usuario`, `Password`, `session`) VALUES
('Administrador', 'BACPonra2018', 0),
('Jair', 'java', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Folio` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_P` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_M` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `grupo` varchar(4) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Folio`, `Nombre`, `Apellido_P`, `Apellido_M`, `grupo`) VALUES
('11040043', 'JUAN CARLOS', 'CRUZ', 'HERNANDEZ', '621'),
('11040075', 'YOSELIN NOEMI', 'TORRES', 'OLIVER', '622'),
('12040008', 'JOSE MANUEL', 'CRUZ', 'GIL', '612'),
('12040012', 'DANIELA IVONNE', 'FLORES', 'PEREZ', '611'),
('12040014', 'PAULINA', 'FUENLABRADA', 'VELAZQUEZ', '611'),
('12040016', 'HECTOR AXEL', 'HERNANDEZ', 'SANCHEZ', '612'),
('12040026', 'VICTOR URIEL', 'MENDOZA', 'SALAZAR', '612'),
('12040029', 'XIADANI JAZMIN', 'REYNA', 'ROMERO', '622'),
('12040030', 'KARLA CECILIA', 'RIVERA', 'HERNANDEZ', '622'),
('12040051', 'ALAN', 'JIMENEZ', 'FERNANDEZ PIDAL', '611'),
('12040058', 'ITZAYANA', 'MERA', 'PACHECO', '611'),
('12040060', 'MARIANA', 'NAVA', 'CORTES', '613'),
('12040066', 'ERIC DAVID', 'ROSAS', 'URBINA', '621'),
('12040067', 'KATHERINE DAFNE', 'RUIZ', 'ESPINOSA', '621'),
('12040068', 'FERNANDO YOLLOTL', 'TAMAYO', 'HERNANDEZ', '622'),
('12040088', 'IRMA', 'GOMEZ', 'CARMONA', '612'),
('12040090', 'KEVIN ALEJANDRO', 'ISLAS', 'HERNANDEZ', '621'),
('12040091', 'BRISA SARAI', 'JIMENEZ', 'BONILLA', '611'),
('12040099', 'CARLOS', 'MORALES', 'GARIBALDI', '613'),
('12040101', 'MUSI SAYURI', 'PICO', 'AVENDAÑO', '621'),
('12040104', 'LIZETH VANESSA', 'RIVERA', 'GOMEZ', '613'),
('12040107', 'NANCY ALONDRA', 'SANCHEZ', 'DE JESUS', '621'),
('12040112', 'VICTOR MANUEL', 'AGUILAR', 'JALOMA', '612'),
('12040113', 'JESUS', 'ALMAGUER', 'ALBURO', '613'),
('12040116', 'AXEL ALEJANDRO', 'CAMPOS', 'ACUÑA', '613'),
('12040119', ' IRAN YESENIA', 'DIAZ', 'DIAZ', '613'),
('12040121', 'MICHELLE', 'ELIAS', 'ELENO', '612'),
('12040122', 'DAVID ARTURO', 'FERNANDEZ', 'MONROY', '611'),
('12040128', 'CARLOS ENRIQUE', 'GUEVARA', 'GONZALEZ', '611'),
('12040132', 'MARIA FERNANDA', 'LEYVA', 'URBAN', '622'),
('12040136', 'MARIANA', 'NORIEGA', 'MENDIOLA', '612'),
('12040137', 'MELANYE DHAMAR', 'ORTEGA', 'VEGA', '621'),
('12040142', 'EMIGUEL ANGEL', 'RAMIREZ', 'LOPEZ', '622'),
('12040151', 'ARELI', 'ALTAMIRANO', 'MENDOZA', '613'),
('12040152', 'ANDREA ATALA', 'ARRATIA', 'FRANCO', '613'),
('12040154', 'MARIA TERESA', 'CARDENAS', 'AVALOS', '613'),
('12040178', 'ANA KARLA', 'QUINTERO', 'ZAMACONA', '612'),
('12040179', 'ERICK DAVID', 'RAMIREZ', 'MARTINEZ', '613'),
('12040180', 'ALEJANDRO', 'ROCHA', 'ROSALES', '611'),
('12040184', 'BRUNO', 'VITTE', 'SAN JUAN', '612'),
('12040185', 'MARIA GUADALUPE', 'ZAMORA', 'AGAMA', '622'),
('12040190', 'EMANUEL ZURIEL', 'BAJONERO', 'MORENO', '622'),
('12040194', 'ALONSO', 'CAUDILLO', 'RIVERO', '612'),
('12040204', 'CYNTHIA VANESSA', 'LADRON', 'DE GUEVARA', '621'),
('12040205', 'ITZAYANA BERENICE', 'JARAMILLO', 'LUNA', '622'),
('12040206', 'MARCO ALAN', 'MORENO', 'LEON', '612'),
('12040214', 'JORGE ULISES', 'RAMIREZ', 'CARRASCO', '613'),
('12040216', 'DIANA ALEJANDRA', 'RANGEL', 'PANTOJA', '612'),
('12040229', 'AMEYALLI MONSERRAT', 'CORONEL', 'LOPEZ', '611'),
('12040233', 'JENNIFER', 'GUTIERREZ', 'GARCIA', '622'),
('12040234', 'EMMANUEL ALEJANDRO', 'HERNANDEZ', 'VELAZQUEZ', '613'),
('12040241', 'RAUL', 'MAURICIO', 'ALVAREZ', '611'),
('12040247', 'MARISOL JAQUELINE', 'PEREZ', 'MARTINEZ', '622'),
('12040248', 'ALDO HUMBERTO', 'RAMIREZ', 'PACHECO', '622'),
('12040250', 'MIGUEL ANGEL', 'RESENDIZ', 'TINOCO', '622'),
('12040258', 'NIRVANA', 'TORRES', 'BAUTISTA', '612'),
('12040272', 'MELISSA', 'HERNANDEZ', 'MENDEZ', '612'),
('12040274', 'VANESSA LIZET', 'JUAREZ', 'ARAUJO', '621'),
('12040280', 'FRANCISCO JAVIER', 'MARTINEZ', 'RAZO', '613'),
('12040299', 'RICARDO', 'BAZAN', 'ROMAN', '612'),
('12040305', 'KEVIN', 'FALOMIR', 'ANGEL', '622'),
('12040307', 'MARIO AXEL', 'GUTIERREZ', 'REYES', '611'),
('12040318', 'NICOLE INIKI', 'NABOR', 'PACHECO', '621'),
('12040332', 'MARIANA', 'VAZQUEZ', 'VIEYRA', '611'),
('12040336', 'CESAR MAURICIO', 'ARELLANO', 'VELASQUEZ', '612'),
('12040344', 'RAUL', 'GONZALEZ', 'PORTILLO', '612'),
('12040347', 'MIGUEL KINAM', 'HERNANDEZ', 'GRED', '611'),
('12040353', 'MARIA FERNANDA', 'LOPEZ', 'JUAREZ', '612'),
('12040359', 'OSCAR', 'PEÑA', 'RAMIREZ', '621'),
('12040361', 'ESPERANZA ABIGAIL', 'PINEDA', 'ESCAMILLA', '613'),
('12040366', 'DANTE', 'SALAZAR', 'HERNANDEZ', '621'),
('12040369', 'MERCEDES', 'TELLEZ', 'CALZADA', '613'),
('12040371', 'KARLA', 'VILLANUEVA', 'JAVIER', '612'),
('12040378', 'ELIAB', 'CASAS', 'MEDINA', '621'),
('12040380', 'JHOANA', 'DURAN', 'CHABLE', '611'),
('12040392', 'RANDAL EMMANUELLE', 'LOPEZ', 'LOPEZ', '612'),
('12040393', 'KAREN', 'MAYA', 'YESCAS', '423'),
('12040396', 'YUNUEM', 'MARTINEZ', 'SALINAS', '622'),
('12040400', 'DANIELA MAYTE', 'PEREZ', 'EGUIA', '611'),
('12040401', 'ERICK', 'PEREZ', 'CRUZ', '621'),
('12040405', 'ERICK ALBERTO', 'RODEA', 'AZCONA', '622'),
('12040426', 'AXEL', 'HERNANDEZ', 'ISLAS', '611'),
('12040427', 'JENNIFER', 'HERNANDEZ', 'UGALDE', '613'),
('12040432', 'BRENDA LISSET', 'MARTINEZ', 'VALLEJO', '612'),
('12040433', 'IRASEMA', 'MARTINEZ', 'FERNANDEZ', '621'),
('12040440', 'EMILIO ALEJANDRO', 'RAMIREZ', 'SAN ROMAN', '621'),
('12040443', 'KAREN ARELY', 'RODRIGUEZ', 'MARTINEZ', '613'),
('12040444', 'XILONEN GUADALUPE', 'SANCHEZ', 'XAVIER', '611'),
('12040445', 'MARA SOFIA', 'TREJO', 'SANCHEZ', '622'),
('12040453', 'LESLIE CATALINA', 'CAMACHO', 'ARROYO', '621'),
('12040454', 'EDGAR ALEJANDRO', 'CAMPOS', 'PEREZ', '622'),
('12040473', 'GRECIA', 'MARTINEZ', 'VELAZQUEZ', '612'),
('12040474', 'PEDRO IVAN', 'MARTINEZ', 'GOMEZ', '622'),
('12040479', 'EVELYN VIRIDIANA', 'RANGEL', 'PANTOJA', '611'),
('12040480', 'GALA LISSET', 'RODRIGUEZ', 'HERNANDEZ', '613'),
('12040483', 'NAHOMI RUBI', 'SAAVEDRA', 'GARCIA', '622'),
('12040502', 'MARGARITA ABIGAIL', 'GOMEZ', 'MORENO', '621'),
('12040511', 'JAQUELINE EMILIA', 'MARTINEZ', 'MEXICANO', '612'),
('12040512', 'XIMENA LIZETH', 'MAYA', 'MANZANO', '612'),
('12040514', 'HECTOR DAVID', 'MELGAREJO', 'PEREZ', '612'),
('12040527', 'MARIA FERNANDA', 'VILLAVICENCIO', 'PEREZ', '612'),
('12040532', 'ALEXIS', 'BEDOLLA', 'CARRILLO', '613'),
('12040534', 'MARCO DAVID', 'CASTRO', 'RODRIGUEZ', '622'),
('12040539', 'ALEJANDRA', 'DELGADO', 'REYES', '612'),
('12040541', 'VICTOR ALEXANDER', 'GRACIANO', 'PEREZ', '622'),
('12040544', 'JUAN FRANCISCO', 'HERNANDEZ', 'ROJAS', '622'),
('12040546', 'SANDRA ELIZABETH', 'HERRERA', 'TORRES', '621'),
('12040555', 'EDGAR MAURICIO', 'MORALES', 'CORONA', '613'),
('12040557', 'JOSE LUIS', 'PEDRAZA', 'RUIZ', '613'),
('12040561', 'VICTOR MANUEL', 'RODRIGUEZ', 'LOYOLA', '611'),
('12040563', 'ABDEL', 'SALTO', 'GUTIERREZ', '611'),
('12040565', 'JOCELYN', 'SOSA', 'TREJO', '613'),
('12040575', 'LUZ ELENA', 'DE LA CRUZ', 'MENDOZA', '621'),
('12040597', 'VANESSA IVONNE', 'RODRIGUEZ', 'MARTINEZ', '622'),
('12040599', 'ROSY ARELY', 'RODRIGUEZ', 'HERNANDEZ', '621'),
('12040601', 'AMIEL JOEL', 'ROSETE', 'ISLAS', '613'),
('12040604', 'FABIOLA', 'VILLALOBOS', 'DAMIAN', '612'),
('12040609', 'GETZEMANY LESLY', 'AVIÑA', 'LEON', '611'),
('12040610', 'ADRIANA', 'BOLAÑOS', 'PANO', '613'),
('12040622', 'ANGEL GABRIEL', 'HERNANDEZ', 'RIOS', '622'),
('12040623', 'FIDEL', 'HERRERA', 'TORRES', '611'),
('12040629', 'LEONARDO DANIEL', 'MORALES', 'SALGADO', '613'),
('12040631', 'SHEILA GRIZEL', 'OSORIO', 'MONROY', '613'),
('12040642', 'SALMA SALOME', 'TELLEZ', 'PADILLA', '621'),
('12040648', 'YURITSY POOLET', 'CRUZ', 'RAMIREZ', '613'),
('12040666', 'ERIK ENRIQUE', 'ORDUÑO', 'TAMAYO', '621'),
('12040667', 'KEVIN', 'ORTIZ', 'GALVAN', '611'),
('12040673', 'MELISSA ISABEL', 'RIVERA', 'BAZAN', '612'),
('12040680', 'ALEXANDRA ZURIEL', 'VELASCO', 'OCHOA', '613'),
('12040682', 'ARTURO', 'AGUIRRE', 'VILLEGAS', '613'),
('12040691', 'ALLAN JAIR', 'ESCAMILLA', 'HERNANDEZ', '612'),
('12040698', 'ATXEL URIEL', 'JUAREZ', 'HERNANDEZ', '611'),
('12040801', 'ARELI', 'DELGADILLO', 'ROY OCOTLA', '413'),
('12040900', 'FRANCISCO GAEL', 'VERTIZ', 'CASILLAS', '611'),
('12040965', 'JOANNA', 'MORENO', 'VELAZQUEZ', '621'),
('12040966', 'CINTHYA ARACELI', 'PABLO', 'VELAZQUEZ', '622'),
('12040967', 'JACQUELINE', 'VERA', 'RICHARD', '611'),
('12040969', 'SOFIA ABIGAIL', 'MENDOZA', 'TORRES', '621'),
('12040971', 'BRANDON KEVIN', 'SAAVEDRA', 'CORTES', '621'),
('12040972', 'JIMENA', 'RODRIGUEZ', 'RESENDIZ', '611'),
('12040976', 'ABIGAIL', 'VALAGUEZ', 'GONZALEZ', '611'),
('12040981', 'VALERIA', 'GRANCIANO', 'CEDEÑO', '613'),
('12040984', 'ANA CLAUDIA', 'AGUILAR', 'CIMA', '621'),
('12040990', 'HECTOR FANTAGYRO', 'RUEDA', 'FRANCO', '611'),
('12040996', 'LISBET SELENE', 'ROBLEDO', 'CALDERON', '622'),
('12041000', 'SABINA ISABEL', 'ROMERO', 'PRADO', '621'),
('12041034', 'CYNTHIA MICHELLE', 'RAYMUNDO', 'PLATA', '622'),
('12043001', 'JOSE JUAN', 'RAMIREZ', 'MIGUEL', '621'),
('123', 'alan', 'escamilla', 'hernandez', '621'),
('13040001', 'ALONDRA ALHELI', 'ACOSTA', 'BADILLO', '423'),
('13040006', 'ILSE MARIEL', 'CHICO', 'VALDEZ', '412'),
('13040012', 'ANDREA', 'HERNANDEZ', 'DE DIOS', '421'),
('13040014', 'AXEL ADRIAN', 'JIMENEZ', 'CRUZ', '411'),
('13040016', 'LUIS MANUEL', 'LEON', 'LAGUNA', '413'),
('13040023', 'SAUL MANUEL', 'REYES', 'TORRES', '421'),
('13040027', 'MIGUEL ANGEL ADHEMIR', 'SANCHEZ', 'ALVAREZ', '422'),
('13040038', 'NALLELY ALITZEL', 'ALVAREZ', 'ZEPEDA', '412'),
('13040052', 'HILDA FERNANDA', 'GUERRERO', 'LOPEZ', '413'),
('13040056', 'LISBETH', 'MACIAS', 'CABALLERO', '412'),
('13040059', 'YOHALY LORENA', 'MONDRAGON', 'SANDOVAL', '411'),
('13040062', 'MARIANA ALEJANDRA', 'MORENO', 'MOGOYAN', '413'),
('13040063', 'KARLA PAULINA', 'ORDOÑEZ', 'AVALOS', '421'),
('13040069', 'AARON ISRAEL', 'ZARAGOZA', 'RIVERA', '411'),
('13040080', 'MIGUEL ANGEL', 'JUAREZ', 'DORANTES', '421'),
('13040082', 'IRIS PAOLA', 'LOZANO', 'VITE', '413'),
('13040092', 'HORTENCIA ALEJANDRA', 'RAMIREZ', 'VAZQUEZ', '413'),
('13040101', 'DAMARIS ABIGAIL', 'VAZQUEZ', 'AVILA', '422'),
('13040102', 'IAN ALFONSO', 'VAZQUEZ', 'MUÑOZ', '421'),
('13040105', 'MARIO JAZIEL', 'VILLEGAS', 'CANO', '421'),
('13040118', 'LISA PAMELA', 'GOMEZ', 'SANTANA', '413'),
('13040119', 'EVELYN DAYANA', 'HERNANDEZ', 'MARTINEZ', '422'),
('13040120', 'HECTOR DANIEL', 'HERNANDEZ', 'REYES', '423'),
('13040132', 'ARTURO', 'RAMIREZ', 'RAMIREZ', '412'),
('13040136', 'RAMON ALEJANDRO', 'RUIZ', 'PEREZ', '411'),
('13040139', 'NADIA ELENA', 'VENEGAS', 'MONTOYA', '413'),
('13040142', 'ABRIL BERENICE', 'BAUTISTA', 'ROMAN', '411'),
('13040143', 'ISRAEL', 'CABRERA', 'PORTILLA', '413'),
('13040146', 'ISRAELA', 'ESPINOSA', 'CEDEÑO', '421'),
('13040154', 'KAREN NAOMI', 'GUZMAN', 'FERNANDEZ', '412'),
('13040155', 'ARANTZA', 'HERNANDEZ', 'SANCHEZ', '411'),
('13040159', 'ANTONIO', 'MUÑOZ', 'BERNAL', '421'),
('13040160', 'SEBASTIAN', 'NERI', 'RUESGA', '411'),
('13040166', 'MARIA DEL CARMEN', 'RAMOS', 'GONZALEZ', '413'),
('13040172', 'BRUNO', 'VARGAS', 'MARTINEZ', '423'),
('13040174', 'ANDRES DANIEL', 'ZAMARRIPA', 'ALMERIA', '412'),
('13040175', 'ROMARIO JOSEF', 'ARRIAGA', 'SABAS', '423'),
('13040183', 'MIGUEL ANGEL', 'FLORES', 'LOPEZ', '411'),
('13040186', 'SKARLETH ESTEFANIA', 'GARCIA', 'TRUJILLO', '411'),
('13040194', 'ZELTZIN DONAJI', 'NAVARRETE', 'GONZALEZ', '412'),
('13040202', 'YAMILET ATZIRI', 'TAPIA', 'LEDESMA', '413'),
('13040206', 'NIDIA ELEANOR', 'VENEGAS', 'MONTOYA', '411'),
('13040207', 'MONICA IVETTE', 'VERGARA', 'MENDOZA', '412'),
('13040210', 'ASTRID JAQUELINE', 'BAUTISTA', 'ROMAN', '413'),
('13040216', 'MONICA ELENA', 'GARCILAZO', 'MORALES', '411'),
('13040217', 'ABRAHAM', 'GIL', 'FELIX', '412'),
('13040218', 'RODRIGO', 'GOMEZ', 'RAMIREZ', '423'),
('13040221', 'XIOMARA YAEL', 'GONZALEZ', 'MOJICA', '412'),
('13040222', 'DYANA LAURA', 'GUILLEN', 'AGUILAR', '422'),
('13040225', 'PEDRO', 'IBARRA', 'MORENO', '413'),
('13040236', 'FRANCISCO', 'ROBLES', 'MORALES', '423'),
('13040237', 'VALERIA', 'RODRIGUEZ ', 'CANALES', '422'),
('13040242', 'SAMUEL', 'TORRES', 'PICHARDO', '411'),
('13040244', 'VANIA', 'ALCALDE', 'REMENTERIA', '422'),
('13040246', 'KARLA MICHEL', 'ARAMBURU', 'CORTES', '421'),
('13040248', 'MARIA FERNANDA', 'CHACON', 'GONZALEZ', '421'),
('13040250', 'MARICARMEN', 'DIAZ', 'ALVAREZ', '411'),
('13040252', 'SERGIO JAVIER', 'FLORES', 'FERNANDEZ', '421'),
('13040253', 'PAUL MARTIN', 'GARCIA', 'MORFIN', '412'),
('13040254', 'STEPHANY', 'GOMEZ', 'OLALDE', '411'),
('13040279', 'ANDREA', 'CANO', 'PEREZ', '411'),
('13040291', 'MELANIE YESSENETH', 'HERNANDEZ', 'ESTEVES', '421'),
('13040292', 'GABRIELA', 'HERNANDEZ', 'SEGURA', '412'),
('13040293', 'JOSE BRAYAN', 'HERNANDEZ', 'SERNA', '422'),
('13040297', 'JOSE ERNESTO', 'MARTINEZ', 'TERAN', '422'),
('13040310', 'STEPHANIE BARBARA', 'SANCHEZ', 'PEREZ', '413'),
('13040313', 'ABRIL OSIRIS ', 'VAZQUEZ', 'BUSTOS ', '222'),
('13040316', 'BRENDA JIMENA', 'ANGEL', 'GOMEZ', '423'),
('13040319', 'ALEJANDRO', 'CARREON', 'FRANCO', '423'),
('13040322', 'BENJAMIN', 'CRUZ', 'HERNANDEZ', '422'),
('13040328', 'LUIS ALBERTO', 'GUTIERREZ', 'ESPINDOLA', '411'),
('13040329', 'EDUARDO ANTONIO', 'GUTIERREZ', 'MENDOZA', '413'),
('13040341', 'MARIANA PAOLA', 'ROBLEDO', 'ESTRADA', '423'),
('13040343', 'NELLY ITZEL', 'RODRIGUEZ', 'ORTIZ', '422'),
('13040345', 'LEONARDO', 'ROJAS', 'CONTRERAS', '422'),
('13040346', 'JOHANA ELIZABETH', 'SANCHEZ', 'CHAVEZ', '412'),
('13040352', 'KEVIN URIEL', 'VILLAR', 'BENITEZ', '411'),
('13040354', 'GUADALUPE GETSEMANI', 'AVILA', 'PINEDA', '423'),
('13040357', 'ITZEL GUADALUPE', 'CABRERA', 'LEAL', '423'),
('13040358', 'JOHAN DONATO', 'CABRERA', 'MARTINEZ', '411'),
('13040360', 'MINSI JOHANA', 'CHAVEZ', 'MORALES', '411'),
('13040362', 'DENISSE', 'DE LA GARZA', 'GARCIA', '411'),
('13040365', 'CARLOS ARIEL', 'ESPINOSA', 'ARROYO', '411'),
('13040375', 'JOSE', 'MOLINA', 'JASSO', '413'),
('13040381', 'ANGEL EDMUNDO', 'RUIZ', 'VAZQUEZ', '422'),
('13040382', 'ALEJANDRO', 'SOLORZANO', 'SANTOS', '421'),
('13040383', 'ITZEL', 'SOSA', 'SANTIAGO', '421'),
('13040394', 'ANDREA STHEPHANIE', 'CEBALLOS', 'GONZALEZ', '423'),
('13040400', 'JESSICA GIOVAN', 'DIAZ', 'MARTINEZ', '413'),
('13040403', 'MONSERRAT', 'FEREGRINO', 'GUTIERREZ', '413'),
('13040411', 'MARIANA', 'MARTIN', 'DOMINGUEZ', '411'),
('13040413', 'XIOMARA JANNIK', 'MARTINEZ', 'BRIONES', '411'),
('13040414', 'MIROSLAVA', 'MARTINEZ', 'CERVANTES', '412'),
('13040419', 'RAFAEL ISAAC', 'NAVARRO', 'PEÑA', '423'),
('13040422', 'ERNESTO', 'RIVAS', 'GARCIA', '413'),
('13040423', 'JOAHAN', 'RODRIGUEZ', 'ARIAS', '412'),
('13040430', 'MADELEINE AURELIE', 'AVILA', 'RAMIREZ', '422'),
('13040431', 'MELANIE MICHELLE', 'CABALLERO', 'BECERRIL', '422'),
('13040433', 'MARIA JOSE', 'CAMARILLO', ' TEJEDA', '421'),
('13040436', 'SEBASTIAN', 'CRUZ', 'BERNAL', '411'),
('13040437', 'DANIELA CAROLINA', 'CRUZ', 'FUENTES', '421'),
('13040444', 'AXEL', 'GONZALEZ', 'ZUMBARDA', '422'),
('13040445', 'JOSELINE', 'GUTIERREZ', 'GARCIA', '422'),
('13040447', 'ARMANDO', 'LIMON', 'BAUTISTA', '412'),
('13040449', 'BRYAN STEVEN', 'MARTINEZ', 'ALBARRAN', '422'),
('13040464', 'MARIA FERNANDA', 'YESCAS', 'ANDRADE', '423'),
('13040471', 'ERNESTO', 'FRAGOSO', 'PANIAGUA', '421'),
('13040472', 'DEMIAN VALENTIN', 'GARCIA', 'QUINTANA', '412'),
('13040473', 'MIGUEL ANGEL', 'GASTALDI', 'LOPEZ', '421'),
('13040477', 'JUAN CARLOS', 'LEON', 'ESCOBAR', '422'),
('13040479', 'HUGO', 'LOPEZ', 'MIGUEL', '412'),
('13040481', 'LISEK', 'MARTINEZ', 'GALLEGOS', '412'),
('13040482', 'ANA SOFIA', 'MARTINEZ', 'LOPEZ', '423'),
('13040489', 'MARIANA', 'PEREZ', 'CHANTES', '413'),
('13040493', 'JOSE MIGUEL', 'PEREZ', 'VINCENT', '422'),
('13040501', 'JESUS', 'TOSCANO', 'MEDRANO', '413'),
('13040508', 'ESMERALDA', 'CONTRERAS', 'ROCHA', '412'),
('13040525', 'ABRIL ARANZA', 'ORDAZ', 'PEREZ', '413'),
('13040542', 'GIOVANNI JOSUE', 'VENEGAS', 'RAMIREZ', '412'),
('13040544', 'EDUARDO DEMIAN', 'ANGELES', 'LEOS', '413'),
('13040546', 'PAULINA', 'BASURTO', 'GARCIA', '422'),
('13040553', 'ZAIRA SOFIA', 'DE LA FUENTE', 'OLIVA', '412'),
('13040554', 'LORENA ALEJANDRA', 'DELGADILLO', 'VALENCIA', '421'),
('13040555', 'GABRIEL', 'DURAN', 'NAVARRETE', '422'),
('13040558', 'JOSE IAN', 'GARCIA', 'VILLAGRAN', '412'),
('13040564', 'JESUS ALBERTO', 'LOPEZ', 'BECERRA', '412'),
('13040569', 'OLLIN', 'PEREZ', 'OLIVA', '423'),
('13040571', 'SUGEY MONTSERRAT', 'RAZO', 'RIZO', '422'),
('13040579', 'DEBHORA VIANEYL', 'VELAZCO', 'SENTIES', '422'),
('13040580', 'RAUL OCTAVIO', 'VILLELA', 'GOMEZ', '422'),
('13040583', 'DULCE GUADALUPE', 'ALDANA', 'FRANCO', '422'),
('13040585', 'URIEL', 'CERVANTES', 'DOMINGUEZ', '421'),
('13040590', 'SHELLY NAOMI', 'FLORES', 'LOPEZ', '411'),
('13040596', 'JOSE RICARDO', 'HIPOLITO', 'ALVARADO', '423'),
('13040601', 'DAVID SALVADOR', 'MENDOZA', 'ROJAS', '423'),
('13040604', 'ABRAHAM', 'MORALES', 'HERNANDEZ', '421'),
('13040610', 'SEBASTIAN JAIR', 'PERALTA', 'AYALA', '413'),
('13040613', 'CEDRIC DE JESUS', 'RODRIGUEZ', 'GARCIA', '412'),
('13040620', 'AIXCHELL CAMILA', 'ALONSO', 'FLORES', '412'),
('13040621', 'JOSE ROBERTO', 'CABALLERO', 'VARGAS', '412'),
('13040622', 'MAURICIO AARON', 'CABRERA', 'SANCHEZ', '423'),
('13040623', 'VALERIA', 'CAMPA', 'DIAZ', '411'),
('13040625', 'GILBERTO ISMAEL ODON', 'DE LUNA', 'ZAINOS', '422'),
('13040634', 'HECTOR ULISES', 'LAZARO', 'LAZARO', '413'),
('13040637', 'ROBERT ALEXIS', 'LOPEZ', 'REYES', '423'),
('13040639', 'OSVALDO', 'MEJIA', 'ARMIJO', '421'),
('13040643', 'DAFNE ABIGAIL', 'OLVERA', 'REYES', '421'),
('13040644', 'MICHELLE', 'ORTIZ', 'PADILLA', '423'),
('13040651', 'ALMA MICHELLE', 'TORRES', 'MENDOZA', '422'),
('13040652', 'MIGUEL ANGEL', 'TREVIÑO', 'GONZALEZ', '421'),
('13040654', 'CARLOS EDUARDO', 'VENEGAS', 'PARRA', '423'),
('13041000', 'EDER', 'GARCIA', 'LASTIRI', '422'),
('13041001', 'XCARET', 'ORTIZ', 'GONZALEZ', '411'),
('13046004', 'KARLA', 'RUBIO', 'GARCIA', '423'),
('13046007', 'NAYELLI ITZEL', 'GUTIERREZ', 'MARTINEZ', '423'),
('13047003', 'LUIS ARTURO', 'CABRERA', 'GUZMAN', '413'),
('13047004', 'MONSERRAT', 'MORENO', 'MORA', '412'),
('13047008', 'AUDREY LISETTE', 'ORTIZ', 'NAVARRO', '411'),
('13047010', 'KAREN ALEXIA', 'MANCILLA', 'RAMIREZ', '422'),
('13047012', 'FERNANDO', 'RODRIGUEZ', 'ALVAREZ', '423'),
('13048003', 'YENY FERNANDA', 'CASTILLO', 'OLVERA', '413'),
('13048005', 'ALONDRA BRISEIDA', 'CRUZ', 'MORENO', '412'),
('13048012', 'XIMENA', 'QUINTERO', 'MEJIA', '411'),
('13048016', 'CESAR ALEE', 'BELTRAN', 'TAPIA', '423'),
('13048018', 'EDUARDO', 'GARCIA', 'CASTAÑEDA', '421'),
('13048021', 'KEVIN ISAAC', 'LAZCANO', 'FRIAS', '421'),
('13048031', 'ESTEFANIA', 'CRUZ', 'FRAGOSO', '422'),
('13048040', 'BRIAN EDUARDO', 'LUGO', 'CANO', '421'),
('13048042', 'PAOLA BEATRIZ', 'RAMIREZ', 'GUERRERO', '423'),
('13048056', 'ENRIQUE GAEL', 'HERNANDEZ', 'MOYA', '411'),
('13048073', 'NATALY', 'SALINAS', 'LOPEZ', '411'),
('13049000', 'FABIO', 'CASTELLANOS', 'RAMOS', '421'),
('13049003', 'ANGELICA VALERIA', 'CRUZ', 'GALVAN', '423'),
('13049004', 'SERGIO ARMANDO', 'RAMIREZ', 'PONCE', '222'),
('13049010', 'JOHAN ALEXIS', 'ORTIZ', 'ARREDONDO', '412'),
('13049012', 'ENYA', 'JAIME', 'GUERRERO', '421'),
('13049020', 'KEVIN EMMANUEL', 'GONZALEZ', 'ORDAZ', '413'),
('13049023', 'MARIA DEL ROSARIO', 'SANCHEZ', 'VARGAS', '413'),
('13049090', 'SANDRA PAOLA', 'LANDIN', 'HERNANDEZ', '413'),
('13049095', 'MELANIE ODETTE', 'CERVANTES', 'PEREZ', '422'),
('13049096', 'SEBASTIAN', 'JIMENEZ', 'PACHECO', '423'),
('13049999', 'EDWIN YAEL', 'GONZALEZ', 'ESTRADA', '421'),
('14040001', 'EDUARDO EMMANUEL', 'BAZAN', 'MARTINEZ', '213'),
('14040002', 'ARIADNA', 'CHAVEZ', 'CORDOVA', '213'),
('14040004', 'VALERIA', 'CUESTA', ' HERNANDEZ', '212'),
('14040009', 'NERI ABIUD', 'GONZALEZ', 'VILLALPANDO', '213'),
('14040014', 'LEONARDO DE JESUS', 'LOPEZ', 'BIBRIESCA', '212'),
('14040019', 'VALERIA XIMENA', 'MORALES', 'ALFARO', '211'),
('14040023', 'MAXIMILIANO ', 'RODRIGUEZ', 'HUITRON', '221'),
('14040024', 'LUIS HUMBERTO', 'ROMERO', 'PEREZ', '211'),
('14040039', 'ALEX YAIR', 'LOZANO', 'ACOSTA', '212'),
('14040042', 'FATIMA ALEJANDRA', 'MENDEZ', 'RODRIGUEZ', '211'),
('14040045', 'MARIANA', 'PEREZ', 'BENITEZ', '213'),
('14040047', 'SEBASTIAN  DE JESUS', 'RAMIREZ', 'RIVERA', '222'),
('14040053', 'MARIA FERNANDA', 'RUEDA', 'CALIXTO', '211'),
('14040054', 'MAXIMILIANO ', 'RUIZ', 'ORTIZ', '221'),
('14040064', 'LUIS RUBEN', 'GARCIA', 'MARTINEZ', '213'),
('14040065', 'PAOLA ISABEL', 'GARCIA', 'BUENDIA', '213'),
('14040069', 'DANIELA', 'HERNANDEZ', 'PEREZ', '212'),
('14040071', 'BRENDA ANAHI', 'JUAREZ', 'FRAGOSO', '212'),
('14040073', 'CAMILA ANDREA', 'MARTINEZ', 'MONTES', '211'),
('14040080', 'IVONNE STEFANY', 'PIÑA', 'VARGAS', '212'),
('14040081', 'JORGE', 'QUIROZ', 'TELLO', '212'),
('14040085', 'CYNTHIA IVETTE', 'SILVA', 'HERNANDEZ', '213'),
('14040089', 'ARELY', 'ANGUIANO', 'RODRIGUEZ', '211'),
('14040091', 'BRUNO ', 'CASADO', 'HERNANDEZ', '221'),
('14040095', 'LUIS ANTONIO', 'ELIAS', 'HERNÁNDEZ', '211'),
('14040096', 'YILDRETH JETSAREID', 'GARCES', 'PINEDA', '212'),
('14040097', 'EVELINE PAOLA', 'GARCIA', 'BALBUENA', '222'),
('14040100', 'DIEGO JAEL', 'LUJA', 'MURILLO', '211'),
('14040102', ' DANIELA BERENICE', 'MENDEZ', 'BARRERA', '222'),
('14040103', 'HUGO', 'MERELES', 'CALLEJA', '213'),
('14040104', 'MARIA FERNANDA', 'MURGUIA', 'ORDAZ', '213'),
('14040105', 'MARIA VALERIA ', 'PADILLA', 'JUAREZ', '222'),
('14040108', 'FERNANDA XIMENA', 'SALDAÑA', 'GARDUÑO', '212'),
('14040113', 'CARLOS EMANUEL', 'VALDEZ', 'RODRIGUEZ', '213'),
('14040121', 'ITZEL', 'DE LOS REYES ', 'ARROYO', '221'),
('14040123', 'DANIEL', 'ELIAS', 'ELIAS', '221'),
('14040124', ' JAZMIN SARAHI', 'ESCOBAR', 'ORTEGA', '221'),
('14040126', ' DIEGO ALBERTO', 'GARCIA', 'CORTES', '212'),
('14040128', 'KATHERINE ITZEL', 'JIMENEZ', 'MIGUEL', '211'),
('14040130', 'VALERIA JOALY', 'LOPEZ', 'GUZMAN', '213'),
('14040132', 'MARTHA AMAIRA', 'MELENDEZ', 'DEL VALLE', '211'),
('14040135', 'LUIS GERARDO', 'ORTIZ', 'CRUZ', '211'),
('14040137', 'GABRIELA', 'REYES', 'MARTINEZ', '212'),
('14040138', 'SEBASTIAN', 'SEDANO', 'CASTAÑEDA', '212'),
('14040140', 'JATZIRY GUILLERMINA ', 'TORRES', 'ESCUTIA', '222'),
('14040141', 'DIEGO NATHANAEL', 'VELAZQUEZ', 'SOTO', '211'),
('14040142', 'JESUS ALBERTO', 'VELAZQUEZ', 'SOTO', '222'),
('14040144', 'JOAHAN ALEJANDRO', 'ARELLANO', 'GONZALEZ', '213'),
('14040145', 'ERICK ELI', 'BEJARANO', 'AVENDAÑO', '211'),
('14040148', 'PAOLA ODETTE', 'ENRIQUEZ', 'SANCHEZ', '221'),
('14040158', 'PAULINA', 'MUÑOZ', 'VILLA', '212'),
('14040159', 'RODRIGO', 'NIETO', 'VALERA', '212'),
('14040161', 'MIGUEL ALEJANDRO', 'PABLO', 'VELAZQUEZ', '221'),
('14040163', ' JOSUE BENJAMIN', 'REYES', 'LOPEZ', '212'),
('14040169', 'ALEJANDRO', 'ESPINOSA', 'LOPEZ', '221'),
('14040174', 'BRAYAN ALBERTO', 'CHAVEZ', 'MARQUEZ', '213'),
('14040178', 'VICTOR JULIAN', 'FLORES', 'AVILA', '211'),
('14040181 ', 'ROMINA ROXANA', 'GONZALEZ', 'ROSALES', '221'),
('14040184', 'FRANCISCO', 'LEMUS', 'ALCALA', '211'),
('14040185', 'RICARDO', 'LOPEZ', 'ALVAREZ', '212'),
('14040189', 'DIEGO', 'MUÑOZ', 'RODRIGUEZ', '213'),
('14040193', 'ALDO JESUS', 'RAMIREZ', 'CASTILLO', '211'),
('14040195', 'DARIO ANTONIO', 'SOTO', 'ESPINOZA', '212'),
('14040207', 'DIANA VICTORIA', 'DIAZ', 'LUNA', '213'),
('14040208', 'KRISTHIAN YOLTIC', 'DIAZ', 'NIETO', '213'),
('14040210', 'ISAAC OLIVIER', 'GARCIA', 'JASSO', '211'),
('14040214', 'SEBASTIAN ISAAC', 'LOPEZ', 'GUARNEROS', '221'),
('14040229', 'GULLERMO', 'AGUILAR', 'CORONA', '221'),
('14040234', 'DANIELA SARAHI', 'CASTILLO', 'SANCHEZ', '213'),
('14040235', 'DANIELA MAYTE', 'CHEVANIER', 'DIAZ', '221'),
('14040237', ' EMILIANO', 'FERRER', 'MIRANDA', '221'),
('14040246', 'ITZARI GUADALUPE', 'PEDRAZA', 'RODRIGUEZ', '221'),
('14040247', 'EMILIANO NOEL', 'RADILLA', 'ALTAMIRANO', '212'),
('14040251', 'LIZANDRO MANUEL', 'RUIZ', 'VAZQUEZ', '222'),
('14040255', 'KAREN VIANEY', 'SOLIS', 'FONSECA', '212'),
('14040258', ' CESAR ALEJANDRO', 'VILLA', 'HERNANDEZ', '213'),
('14040268', 'DAIRA AMEYALLI', 'DOMINGUEZ', 'TORRES', '211'),
('14040272', 'TANYA', 'HERNANDEZ', 'CAMACHO', '212'),
('14040275', 'DIEGO RAUL', 'MARIN', 'GARCIA', '213'),
('14040278', 'REYNA', 'NORIEGA', 'MENDIOLA', '222'),
('14040287', 'LESLIE MARYELL', 'ZEPEDA', 'REYES', '221'),
('14040288', 'FERNANDA JACQUELINE', 'ALCANTARA', 'SALAZAR', '213'),
('14040289', 'DULCE CAMILA', 'ARANDA', 'SILVA', '212'),
('14040293', 'RODRIGO', 'CORREA', 'LOPEZ', '211'),
('14040295', 'ADRIANA', 'GERVACIO', 'GUENDULAY', '211'),
('14040299', 'ITZIA MARIA', 'JUAREZ', 'TELLEZ', '212'),
('14040303', 'KATIA ODETTE', 'PALMA', 'ROQUE', '211'),
('14040312', 'SANDRA PAOLA', 'VARELA', 'GOMEZ', '222'),
('14040314', ' ITZEL', 'VILLEGAS', 'MAXIMILIANO', '213'),
('14040315', 'DIEGO LEONARDO', 'ZAMORA', 'GARCIA', '212'),
('14040327', 'ALEXIS', 'FLORES', 'FLORES', '212'),
('14040330', 'PATRICIA ', 'GUERRA', 'TORRES', '221'),
('14040333', 'MICHELLE DENISSE', 'MENDIZABAL', 'VELAZQUEZ', '212'),
('14040336', 'MAYTE', 'MORALES', 'LUCIO', '211'),
('14040337', 'NATALIA', 'OSORIO', 'ROQUE', '213'),
('14040338', 'DANIELA MONSERRAT', 'PAISANO', 'GARCIA', '212'),
('14040342', 'OWEN', 'ROSALES', 'CASTRO', '211'),
('14040360', 'DIEGO', 'MAURICIO', 'ALVAREZ', '211'),
('14040364', 'IVAN HASIEL', 'OSEGUEDA', 'SANTOS', '221'),
('14040369', 'RODRIGO DIDIER', 'RUIZ', 'PEREZ', '213'),
('14040374', 'IRVING ALEJANDRO', 'VEGA', 'LAGUNAS', '221'),
('14040376', 'RAZIEL GUADALUPE', 'AGUIRRE', 'CASTILLO', '212'),
('14040379', 'MARIA FERNANDA', 'CASTILLO', 'RODRIGUEZ', '212'),
('14040380', 'VALERIA YAMILE', 'CRUZ', 'MARTÍNEZ', '211'),
('14040382', 'FATIMA BETSABE', 'DIAZ', 'RIOS', '213'),
('14040384', 'MARIANA REGINA', 'ESCUDERO', 'VALENCIA', '213'),
('14040387', 'FERNANDO', 'HERNANDEZ', 'ANAYA', '222'),
('14040390', 'WENDY GUADALUPE', 'MUÑOZ', 'RODRIGUEZ', '211'),
('14040394', 'JENNIFER LIZBETH', 'RANGEL', 'TEPEXICUAPAN', '211'),
('14040397', 'RICARDO', 'ROSAS', 'PERDOMO', '211'),
('14040400', 'DANTE FERNANDO', 'SILVA', 'ANGUIANO', '211'),
('14040402', 'MAURICIO ALEJANDRO', 'VILLEGAS', 'ADAME', '222'),
('14040403', 'DANAE GUADALUPE', 'ZAVALA', 'UGALDE', '213'),
('14041404', 'EMILY ', 'SALINAS', 'LOPEZ', '221'),
('14041408', ' DAFNE ALEXANDRA', 'RAMIREZ', 'MARIN', '213'),
('14041409', 'EDGAR DANIEL', 'MARTINEZ', 'RAMIREZ', '221'),
('14041410', 'BERENICE ', 'SERRANO', 'TORRES', '222'),
('14041412', 'ALAN MAGDIEL', 'OSORIO', 'MONROY', '212'),
('14041415', 'ABRIL', 'BAUTISTA', 'SAUCEDO', '213'),
('14041416', 'ARELY DENISE', 'MARTINEZ', 'VALLEJO ', '221'),
('14041418', 'METZLI MARIA NATALI', 'SANCHEZ', 'XAVIER ', '221'),
('14041419', 'ALAN JAIR', 'RAMIREZ', 'MENESES ', '222'),
('14041425', 'ULISES URIEL', 'HERNANDEZ', 'MENDEZ', '212'),
('14041429', ' INA PAOLA', 'OLIVARES', 'MARTINEZ', '222'),
('14041430', 'ANA MERCEDES', 'RAMIREZ', 'MARTINEZ', '222'),
('14041431', 'NATALIA', 'BONILLA', 'ROBLES', '221'),
('14041435', 'CINTIA DANIELA', 'JASSO', 'LAMPON', '211'),
('14041440', 'PAMELA', 'BELMONT', 'RODRIGUEZ', '222'),
('14042450', 'RAZIEL ALEXEI', 'CABRERA', 'SEBASTIAN', '221'),
('14042455', 'NENEKI ', 'PEREZ', 'CAUDILLO', '222'),
('14042460', 'NICTEHA ', 'PEREZ', 'CAUDILLO', '221'),
('14042465', 'EMILIANO ', 'LECOURTOIS', 'PEREZ', '222'),
('14042490', 'DAVID', 'CAMPA', 'DIAZ', '222'),
('14042495', 'KARLA XIMENA', 'GONZALEZ ', 'MEZA', '221'),
('14048010', 'REGINA', 'MONTOYA', 'AGUSTIN', '213'),
('14049001', 'ANETTE GUADALUPE ', 'COLIN', 'MONTIEL', '222'),
('456', 'carlos', 'robertp', 'asd', '615');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `folio_alumno` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `id_pregunta` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `respuesta_dada` text COLLATE utf8_spanish2_ci NOT NULL,
  `respuesta_correcta` text COLLATE utf8_spanish2_ci NOT NULL,
  `correcta/incorrecta` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `puntuacion` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`folio_alumno`, `id_pregunta`, `respuesta_dada`, `respuesta_correcta`, `correcta/incorrecta`, `puntuacion`) VALUES
('12040691', '3000202', 'Tercera persona', 'Tercera persona', 'Correcta', '1'),
('12040691', '3000201', 'En la vida se debe impulsar a los demás para que salgan adelante', 'Es importante descansar y disfrutar todos los días del año', 'Incorrecta', '0'),
('12040691', '3000203', 'Los conectores', 'Los conectores', 'Correcta', '1'),
('12040691', '3000204', 'Un caballero medieval', 'Un caballero medieval', 'Correcta', '1'),
('12040691', '3000301', 'Internet causa adicción con efectos negativos, tales como la pérdida de una vida social activa. Ya que Internet es un <<medio de comunicación global>>, es una herramienta indispensable para la educación, el conocimiento y el disfrute. Finalmente, éste último uso lo vuelve negativo, ya que se abusa de él.', 'Internet se está convirtiendo en el <<medio de comunicación global>>, debido a que es una herramienta indispensable para la educación, el conocimiento y el disfrute. Sin embargo, este último uso lo puede volver negativo, puesto que se abusa de él. Como conclusión, Internet puede causar adicción, con consecuencias tales como la pérdida de una vida social activa.', 'Incorrecta', '0'),
('12040691', '3000302', 'El mundo de la web no sólo se utiliza para el ocio, sino para adquirir conocimientos muy útiles para todos', 'La adhesión del adolescente al mundo digital aparta a los jóvenes de disfrutar su entorno social inmediato.', 'Incorrecta', '0'),
('12040691', '3000403', 'Los conciertos disminuyen el estrés', 'Los conciertos disminuyen el estrés', 'Correcta', '1'),
('12040691', '3000401', 'Escuchar música en vivo provoca altos niveles de estrés', 'La reducción del estrés a partir de escuchar música en vivo.', 'Incorrecta', '0'),
('12040691', '3000405', 'Riesgos de padecer diabetes e importancia en los seres humanos', 'Efectos positivos de los conciertos para disminuir el estrés', 'Incorrecta', '0'),
('12040691', '3000511', 'Estructura de una historia constituida por inicio, clímax, desenlace y final', 'Estructura de una historia constituida por inicio, clímax, desenlace y final', 'Correcta', '1'),
('12040691', '3000506', 'De campo', 'De campo', 'Correcta', '1'),
('12040691', '3000512', 'Viejos', 'Ayer', 'Incorrecta', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `Folio` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Calle` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Numero` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `Colonia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Delegacion/muncipio` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`Folio`, `Calle`, `Numero`, `Colonia`, `Delegacion/muncipio`, `Estado`) VALUES
('0040', 'Amapola', '415', 'Gustavo Díaz Ordaz', 'Ecatepec', 'Estado de México'),
('260800', 'Natal', '627', 'Lindavista', 'GAM', 'CDMX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `division_examen`
--

CREATE TABLE `division_examen` (
  `id` int(9) NOT NULL,
  `grado` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `turno` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `activo` varchar(1) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `p_inicio` int(9) NOT NULL,
  `p_final` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `division_examen`
--

INSERT INTO `division_examen` (`id`, `grado`, `turno`, `activo`, `p_inicio`, `p_final`) VALUES
(3000000, 'sexto', 'matutino', 's', 3000101, 3000513);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenes`
--

CREATE TABLE `examenes` (
  `Folio` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Id_materia` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Id_pregunta` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `Id_pregunta` int(9) NOT NULL,
  `Id_materia` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Materia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `Pregunta` text COLLATE utf8_spanish_ci NOT NULL,
  `Respuesta_correcta` text COLLATE utf8_spanish_ci NOT NULL,
  `Respuesta_inc_1` text COLLATE utf8_spanish_ci NOT NULL,
  `Respuesta_inc_2` text COLLATE utf8_spanish_ci NOT NULL,
  `Respuesta_inc_3` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`Id_pregunta`, `Id_materia`, `Materia`, `imagen`, `Pregunta`, `Respuesta_correcta`, `Respuesta_inc_1`, `Respuesta_inc_2`, `Respuesta_inc_3`) VALUES
(3000201, '3000200', 'Seccion_2', 'images/L3.png', '¿Cuál es la enseñanza que se deduce de la historia anterior?', 'Es importante descansar y disfrutar todos los días del año', 'En la vida se debe impulsar a los demás para que salgan adelante', 'Los pescadores evitan la fatiga y sólo trabajan mediodía', 'La verdadera felicidad es una vida sencilla y libre de preocupaciones'),
(3000202, '3000200', 'Seccion_2', 'images/L3.png', '¿Qué tipo de narrador está presente?', 'Tercera persona', 'Testigo', 'Protagonista', 'Segunda persona'),
(3000203, '3000200', 'Seccion_2', 'images/L2.png', 'Lee la siguiente información y atiende lo que se solicita. <br> Son elementos lingüísticos que contribuyen a dar orden y estructura al texto oral o escrito. Sirven para establecer relaciones tanto de forma como de significado entre las oraciones, proposiciones y párrafos. De esta manera se logra establecer una conexión clara entre los distintos fragmentos que componen el texto. Pueden ser adverbios, frases adverbiales o conjunciones. La definición anterior hace referencia a:', 'Los conectores', 'Los enunciados', 'Las conjunciones', 'Los modificadores'),
(3000204, '3000200', 'Seccion_2', '', 'Los términos: gorguera, grebas y gola, hacen parte de la vestimenta de:', 'Un caballero medieval', 'Un golfista', 'Un boxeador', 'Un esquimal'),
(3000301, '3000300', 'Seccion_3', 'images/L5.png', '¿Cuál de las siguientes opciones resume las ideas principales del texto?', 'Internet se está convirtiendo en el <<medio de comunicación global>>, debido a que es una herramienta indispensable para la educación, el conocimiento y el disfrute. Sin embargo, este último uso lo puede volver negativo, puesto que se abusa de él. Como conclusión, Internet puede causar adicción, con consecuencias tales como la pérdida de una vida social activa.', 'Internet puede causar adicción con consecuencias tales como la pérdida de una vida social activa, es decir, Internet se está convirtiendo en el <<medio de comunicación global>>, debido a que es una herramienta indispensable para la educación, el conocimiento y el disfrute. Precisamente este último uso lo puede volver negativo, puesto que se abusa de él.', 'Internet causa adicción con efectos negativos, tales como la pérdida de una vida social activa. Ya que Internet es un <<medio de comunicación global>>, es una herramienta indispensable para la educación, el conocimiento y el disfrute. Finalmente, éste último uso lo vuelve negativo, ya que se abusa de él.', 'Internet se está convirtiendo en el <<medio de comunicación global>>. Su aplicación al gozo y el disfrute no necesariamente lo puede volver negativo aunque se abuse de él. Es importante destacar que Internet rara vez puede causar adicción o tener consecuencias tales como la pérdida de una vida social activa.'),
(3000302, '3000300', 'Seccion_3', 'images/L5.png', 'El enunciado que sustenta la postura del autor es:', 'La adhesión del adolescente al mundo digital aparta a los jóvenes de disfrutar su entorno social inmediato.', 'Internet se ha convertido en una herramienta multiusos indispensable y favorable para la vida de hoy en día', 'Existen medios de comunicación global que se han vuelto un maravilloso invento tecnológico en la actualidad', 'El mundo de la web no sólo se utiliza para el ocio, sino para adquirir conocimientos muy útiles para todos'),
(3000401, '3000400', 'Seccion_4', 'images/L6.png', '¿Cuál es el tema central del fragmento?', 'La reducción del estrés a partir de escuchar música en vivo.', 'Los altos niveles del cortisol y cortisona provocan estrés', '¿Conciertos para reducir el estrés?', 'Escuchar música en vivo provoca altos niveles de estrés'),
(3000402, '3000400', 'Seccion_4', 'images/L6.png', '¿Cuál es el asunto principal del texto?', 'Los efectos positivos de los conciertos para disminuir las hormonas de estrés', 'Las consecuencias de escuchar música voluntariamente', '¿Conciertos para reducir el estrés?', 'La importancia de la investigación sobre lo padecimientos cardiacos'),
(3000403, '3000400', 'Seccion_4', 'images/L6.png', 'El enunciado que engloba la información del texto es:', 'Los conciertos disminuyen el estrés', 'Los eventos culturales son positivos.', '¿Conciertos no ayudan al estrés?', 'Problemas de salud en las personas'),
(3000404, '3000400', 'Seccion_4', 'images/L6.png', 'Mario quiere hacer un mapa conceptual con los conceptos más importantes del texto, ¿cuál es la frase con la de debe iniciar el esquema?', 'Efectos de la música', 'Aumento del estrés', 'Conciertos de 60 minutos', 'La importancia de las investigaciones'),
(3000405, '3000400', 'Seccion_4', 'images/L6.png', '¿Cuál es la frase que engloba la idea principal del texto?', 'Efectos positivos de los conciertos para disminuir el estrés', 'Efectos de la música antes y después de escucharla', 'Investigaciones con voluntarios para medir niveles hormonales', 'Riesgos de padecer diabetes e importancia en los seres humanos'),
(3000501, '3000500', 'Seccion_5', '', 'Lee la siguiente información y atiende lo que se solicita.', 'Los conectores', 'Los modificadores', 'Las conjunciones', 'Los enunciados'),
(3000502, '3000500', 'Seccion_5', '', 'Los términos: gorguera, grebas y gola, hacen parte de la vestimenta de:', 'Un caballero medieval', 'Un esquimal', 'Un boxeador', 'Un golfista'),
(3000503, '3000500', 'Seccion_5', '', 'La épica es:', 'Género en el cual se narran hazañas de los dioses y los héroes legendarios, valiéndose de la prosa o el verso extenso.', 'Un género literario que se representa a través de las obras teatrales.', 'Manifestación de la oratoria, la filosofía y la historia, que pueden considerarse los orígenes del teatro', 'Parte de la gramática que se encarga del estudio semántico de las palabras.'),
(3000504, '3000500', 'Seccion_5', 'images/L4.png', 'Lee la siguiente información y atiende lo que se solicita <br> El propósito del texto es', 'Contextualizar los mitos que se narran en el libro Ramayana como historia ficticia.', 'Describir de manera general un libro para valorar su importancia en la literatura universal', 'Justificar el origen de las tradiciones hindúes explicadas por el poeta Valmiki Prachetasa.', 'Mencionar las fechas exactas y los lugares en que aconteció la historia narrada en el libro.'),
(3000505, '3000500', 'Seccion_5', '', 'Este modo discursivo puede presentarse por escrito o de manera oral. Se aprende de manera natural a través de la interacción con las personas que nos rodean; es la forma básica mediante la cual nos comunicamos en sociedad y caracteriza al género dramático.', 'Diálogo', 'Descripción', 'Narración', 'Argumentacion'),
(3000506, '3000500', 'Seccion_5', '', '¿Cómo se le denomina a la fuente de información que proporciona datos obtenidos en una observación planificada?', 'De campo', 'Secundaria', 'Documental', 'Primaria'),
(3000507, '3000500', 'Seccion_5', '', 'Después de ver el último juego del torneo de béisbol, a Jacinto le surgió el deseo de dar a conocer un análisis valorativo de los hechos más relevantes sucedidos durante el juego. Jacinto tiene el deseo de presentar a sus amigos y conocidos el desarrollo de este acontecimiento, ¿qué tipo de texto debe redactar  Jacinto para lograr este propósito?', 'Crónica', 'Ensayo', 'Memorias', 'Diario personal'),
(3000508, '3000500', 'Seccion_5', '', '¿Cuál de las siguientes referencias ciberográficas es confiable para el tema de investigación: Características del modelo atómico de Bohr?', 'Portal académico del CCH. (2016, 7 de junio). “Bohr y el átomo”. Recuperado de: http://portalacademico.cch.unam.mx./alumno/quimica1/unidad2/modelos_atomicos/modelo_bohr', '(2016, 7 de junio). “Teorías y modelos atómicos”. Recuperado de: http://teoteojavapa.blogspot.mx/2012/04/modelo-atomico-de-bohr.html', 'Wikipedia. (2016, 7 de junio). “Modelo atómico de Bohr”. Recuperado de: https://es.wikipedia.org/wiki/Modelo_atómico_de_Bohr', 'El rincón del vago. (2016, 7 de junio). “”Modelos atómicos”. Recuperado de: http://html.rincondelvago.com/modelos-atomicos_17.html'),
(3000509, '3000500', 'Seccion_5', 'images/G1.png', 'Identifica el tipo de fuente de donde se obtuvo la información de la gráfica.', 'Encuesta', 'Entrevista', 'Resultados de observación', 'Cuestionario de opinión'),
(3000510, '3000500', 'Seccion_5', '', 'Qué característica corresponde al narrador en tercera persona?', 'Pretende conseguir de los lectores una sensación de objetividad, de veracidad en lo que se dice. Este tipo de narrador es ajeno a los hechos, está fuera de la historia narrada y necesita tomar distancia de lo acontecido para hacer parecer que lo que relata es objetivo.', 'Se pone de manifiesto la presencia del autor en lo narrado. Con esta forma de enunciación, se consigue atrapar con mayor fuerza la atención del receptor, aumenta su interés, pues lo que el enunciador dice tiene apariencia de algo que ha vivido, que ha experimentado de manera personal.', 'Este tipo de narrador participa en el relato, es un protagonista que narra los que sucede, se dirige a sí mismo, habla o proyecta su intimidad hacia el lector, busca la complicidad de éste dirigiéndose directamente hacia él, lo hace copartícipe del relato.', 'El narrador es un personaje de la historia, por lo que piensa y dice, está basado únicamente en lo que conoce o ha experimentado dentro de ella. Actúa, juzga y tiene opiniones sobre los hechos que ocurren y los otros personajes que aparecen.'),
(3000511, '3000500', 'Seccion_5', '', 'Define la secuencia narrativa de un texto dramático', 'Estructura de una historia constituida por inicio, clímax, desenlace y final', 'Conjunto de veces en que se abre y cierra el telón durante la puesta en escena.', 'Segmentos de la dramatización marcados por la entrada y salida de actores en el escenario.', 'Fragmentos de un relato señalados por el inicio de la acción interpretada por los personajes.'),
(3000512, '3000500', 'Seccion_5', '', 'Ayer, Juan terminó la carrera con sus viejos tenis en el nuevo estadio de futbol.\n¿Cuál es la palabra que cumple la función de adverbio de tiempo?', 'Ayer', 'Terminó', 'Viejos', 'Nuevo'),
(3000513, '3000500', 'Seccion_5', '', '¿Cuál es la función de la información cuando se utiliza para fundamentar una opinión?', 'Argumentativa', 'Introductoria', 'Explicativa', 'Descriptiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas_alumno`
--

CREATE TABLE `respuestas_alumno` (
  `folio_alumno` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `folio_pregunta` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `respuesta_letras` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `Respuesta_dada` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `respuestas_alumno`
--

INSERT INTO `respuestas_alumno` (`folio_alumno`, `folio_pregunta`, `respuesta_letras`, `Respuesta_dada`) VALUES
('12040691', '3000202', 'c', 'Tercera persona'),
('12040691', '3000201', 'a', 'En la vida se debe impulsar a los demás para que salgan adelante'),
('12040691', '3000203', 'd', 'Los conectores'),
('12040691', '3000204', 'b', 'Un caballero medieval'),
('12040691', '3000301', 'a', 'Internet causa adicción con efectos negativos, tales como la pérdida de una vida social activa. Ya que Internet es un <<medio de comunicación global>>, es una herramienta indispensable para la educación, el conocimiento y el disfrute. Finalmente, éste último uso lo vuelve negativo, ya que se abusa de él.'),
('12040691', '3000302', 'a', 'El mundo de la web no sólo se utiliza para el ocio, sino para adquirir conocimientos muy útiles para todos'),
('12040691', '3000403', 'a', 'Los conciertos disminuyen el estrés'),
('12040691', '3000401', 'b', 'Escuchar música en vivo provoca altos niveles de estrés'),
('12040691', '3000405', 'd', 'Riesgos de padecer diabetes e importancia en los seres humanos'),
('12040691', '3000511', 'a', 'Estructura de una historia constituida por inicio, clímax, desenlace y final'),
('12040691', '3000506', 'c', 'De campo'),
('12040691', '3000512', 'a', 'Viejos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` int(9) NOT NULL,
  `seccion` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `no_preguntas` int(4) NOT NULL,
  `last` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `seccion`, `no_preguntas`, `last`) VALUES
(3000200, 'Sección_2', 4, 3000204),
(3000300, 'Sección_3', 2, 3000302),
(3000400, 'Sección_4', 3, 3000405),
(3000500, 'Sección_5', 3, 3000513);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor`
--

CREATE TABLE `tutor` (
  `Folio` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre_tutor` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_P_tutor` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_M_tutor` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono_casa` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono_celular` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tutor`
--

INSERT INTO `tutor` (`Folio`, `Nombre_tutor`, `Apellido_P_tutor`, `Apellido_M_tutor`, `Correo`, `Telefono_casa`, `Telefono_celular`) VALUES
('0040', 'Alberto', 'Vitte', 'de la Rosa', 'tanque_250@hotmail.com', '55699494', '5559698752'),
('260800', 'Eugenia', 'Fuenlabrada', 'Velázquez', 'paulinafuenlabrada@gmail.com', '44355380', '5548066360');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `active_year`
--
ALTER TABLE `active_year`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `administracion`
--
ALTER TABLE `administracion`
  ADD PRIMARY KEY (`Usuario`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Folio`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`Folio`);

--
-- Indices de la tabla `division_examen`
--
ALTER TABLE `division_examen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `examenes`
--
ALTER TABLE `examenes`
  ADD PRIMARY KEY (`Folio`),
  ADD KEY `Id_materia` (`Id_materia`),
  ADD KEY `Id_pregunta` (`Id_pregunta`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`Id_pregunta`),
  ADD KEY `Id_materia` (`Id_materia`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`Folio`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
