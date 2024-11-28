-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2024 a las 03:39:12
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
-- Base de datos: `r_humanos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `idAnuncio` int(11) NOT NULL,
  `idSolicitud` int(11) NOT NULL,
  `Num_Solicitantes` int(11) NOT NULL,
  `FechaPublicacion` date NOT NULL,
  `FechaCierre` date NOT NULL,
  `idcontacto` int(11) NOT NULL,
  `idMedioPublicidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`idAnuncio`, `idSolicitud`, `Num_Solicitantes`, `FechaPublicacion`, `FechaCierre`, `idcontacto`, `idMedioPublicidad`) VALUES
(3, 6, 4, '2022-10-05', '2022-10-08', 1, 1),
(4, 7, 4, '2022-10-05', '2022-10-08', 2, 1),
(5, 5, 2, '2022-10-05', '2022-10-08', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `AreaDescripcion` varchar(250) DEFAULT NULL,
  `AreaNombre` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `AreaDescripcion`, `AreaNombre`) VALUES
(1, 'Desarrollo BackEnd', 'Desarrollo de sistemas web'),
(2, 'Diseñadores de elementos necesarios para web', 'Diseño de creativos'),
(3, 'Mantenimiento del equipo de computo', 'Soporte de equipo de computo'),
(7, 'Creación y diseño de Base de datos', 'Base de datos'),
(8, 'Testeado de sistemas', 'Testing'),
(9, 'Diseño de producción de circuitos eléctricos.', 'Especialista en comunicaciones.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `base_imss`
--

CREATE TABLE `base_imss` (
  `id_base` int(11) NOT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `calculo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE `candidato` (
  `Curp` varchar(18) NOT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  `Nombre` varchar(250) DEFAULT NULL,
  `nacionalidad` text NOT NULL,
  `Domicilio` varchar(250) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `E_Mail` varchar(45) DEFAULT NULL,
  `Sexo` varchar(45) DEFAULT NULL,
  `Edad` tinyint(2) DEFAULT NULL,
  `NSS` varchar(11) NOT NULL,
  `Fotografia` blob DEFAULT NULL,
  `idEstadoCivil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`Curp`, `RFC`, `Nombre`, `nacionalidad`, `Domicilio`, `Telefono`, `E_Mail`, `Sexo`, `Edad`, `NSS`, `Fotografia`, `idEstadoCivil`) VALUES
('EAJL850910MJCSRR01', 'EAJL850910UA7', 'Laura Alicia Estrada Jàuregui', 'mexicana', 'Avenida 19 No. 98-03, sexto piso, Edificio Torre 100', '4495653288', 'chispa_union@hotmail.com', 'M', 24, '31977809347', NULL, 2),
('GOJG631109MJCMML04', 'GOJG631109QM4', 'Marìa Gloria Gòmez Jimènez', 'mexicana', 'AV. GRABRIELA MISTRAL 106, LA ESTRELLA , AGUASCALIENTES , AGS , C.P.20150', '6621741233', 'bantomaui@gmail.com', 'M', 26, '31028601156', NULL, 1),
('GORJ860823MJCNMD06', 'GORJ8608234G3', 'Judith Gonzalez Romo\r\n', 'mexicana', 'CALLE VIÑEDOS SAN MARCOS BLOCK B/110, CENTRO DISTRIBUIDOR DE BASICOS , JESUS MARIA , AGS , C.P.20908', '4495080473', 'martacam2002@yahoo.com', 'M', 27, '33734901417', NULL, 4),
('GOVM860812MJCNLR05', 'GOVM860812QA2', 'Maricela Gonzales Villalobos', 'mexicana', 'CALLE LIRA 102, LA ESTRELLA , AGUASCALIENTES , AGS , C.P.20150', '4491022236', 'bad.girl.-@hotmail.es', 'M', 25, '31836400130', NULL, 1),
('HUHL720523HJCZRS04', 'HUHL7205233T9', 'Jose Luis Huizar Hernàndez', 'mexicana', 'AV. HEROE DE NACOZARI 2349, LOS ARCOS , AGUASCALIENTES , AGS , C.P.20146', '4491431527', 'masenjog@gmail.com', 'H', 24, '33018520776', NULL, 2),
('JACL841028MJCRLZ00', 'JACL841028Q62', 'Lizbeth Jauregui Calvillo', 'mexicana', 'SIERRA DE LA CANELA 313, BOSQUES DEL PRADO NORTE , AGUASCALIENTES , AGS , C.P.20127', '4491904069', 'aargomedo@hecsa.cl', 'M', 30, '31816101757', NULL, 1),
('MEHG501203MASRTL06', 'EZHEGE501203T', 'Maria Elena Hernàndez Gutièrre', 'mexicana', 'JULIO DIAZ TORRES 201 A4, CIUDAD INDUSTRIAL , AGUASCALIENTES , AGS , C.P.20290', '5527132410', 'paulifran@hotmail.com', 'M', 29, '31028514508', NULL, 2),
('RAGF630503HJCMNR03', 'RAGF630503EW7', 'Francisco Javier Ramirez Gonzà', 'mexicana', 'AV. SIGLO XXI 3805 LOCAL E - F, VICENTE GUERRERO , AGUASCALIENTES , AGS , C.P.20286', '4494680233', 'arquitectoasenjo@gmail.com', 'H', 28, '31977400576', NULL, 1),
('SASO750909HDFBBS05', 'SASO770119F65', 'Sara Ana Sanchez Ortega', 'mexicana', 'AV. LAS AMERICAS 902 18, LAS AMERICAS , AGUASCALIENTES , AGS , C.P.20230', '4493975020', 'joy_pao_@hotmail.com', 'M', 32, '31927226394', NULL, 3),
('VAFG680629MJCZLL01', 'VAFG680629GC0', 'Gloria Imelda Vàzquez Flores', 'mexicana', 'HEROE DE NACOZARI 2214, MORELOS , AGUASCALIENTES , AGS , C.P.20140', '4497656435', 'cibravohuerta@yahoo.com', 'M', 31, '31068909733', NULL, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_habilidad`
--

CREATE TABLE `candidato_has_habilidad` (
  `Curp` varchar(18) NOT NULL,
  `idHabilidad` int(11) NOT NULL,
  `Experiencia` varchar(45) NOT NULL,
  `valida` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `candidato_has_habilidad`
--

INSERT INTO `candidato_has_habilidad` (`Curp`, `idHabilidad`, `Experiencia`, `valida`) VALUES
('EAJL850910MJCSRR01', 6, '2 años', 'Si'),
('GOJG631109MJCMML04', 4, '5 años', 'Si'),
('GORJ860823MJCNMD06', 8, '5 años', 'Si'),
('GOVM860812MJCNLR05', 1, '2 años', 'Si'),
('HUHL720523HJCZRS04', 9, '6 años', 'Si'),
('JACL841028MJCRLZ00', 1, '3 años', 'Si'),
('MEHG501203MASRTL06', 3, '7 años', 'si'),
('RAGF630503HJCMNR03', 7, '4 años', 'Si'),
('SASO750909HDFBBS05', 2, '6 años', 'si'),
('VAFG680629MJCZLL01', 5, '8 años', 'Si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_idioma`
--

CREATE TABLE `candidato_has_idioma` (
  `Curp` varchar(18) NOT NULL,
  `idIdioma` int(11) NOT NULL,
  `Nivel` varchar(45) NOT NULL,
  `valida` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `candidato_has_idioma`
--

INSERT INTO `candidato_has_idioma` (`Curp`, `idIdioma`, `Nivel`, `valida`) VALUES
('EAJL850910MJCSRR01', 4, 'Superior', 'Si'),
('GOJG631109MJCMML04', 2, 'Superior', 'Si'),
('GORJ860823MJCNMD06', 3, 'Medio', 'Si'),
('GOVM860812MJCNLR05', 1, 'Principiante', 'Si'),
('HUHL720523HJCZRS04', 1, 'Medio', 'Si'),
('JACL841028MJCRLZ00', 2, 'Principiante', 'Si'),
('MEHG501203MASRTL06', 2, 'Medio', 'si'),
('RAGF630503HJCMNR03', 3, 'Medio', 'Si'),
('SASO750909HDFBBS05', 3, 'Medio', 'si'),
('VAFG680629MJCZLL01', 4, 'Superior', 'Si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_nivelacademico`
--

CREATE TABLE `candidato_has_nivelacademico` (
  `Curp` varchar(18) NOT NULL,
  `idNivelAcademico` int(11) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `Institucion` varchar(20) DEFAULT NULL,
  `valida` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `candidato_has_nivelacademico`
--

INSERT INTO `candidato_has_nivelacademico` (`Curp`, `idNivelAcademico`, `idCarrera`, `Institucion`, `valida`) VALUES
('EAJL850910MJCSRR01', 1, 1, 'TEC', 'Si'),
('GOJG631109MJCMML04', 3, 1, 'Tec', 'Si'),
('GORJ860823MJCNMD06', 1, 2, 'UAA', 'Si'),
('GOVM860812MJCNLR05', 1, 1, 'UAA', 'Si'),
('HUHL720523HJCZRS04', 1, 4, 'UAA', 'Si'),
('JACL841028MJCRLZ00', 2, 3, 'TEC', 'Si'),
('MEHG501203MASRTL06', 2, 2, 'UAA', 'si'),
('RAGF630503HJCMNR03', 3, 3, 'UAA', 'Si'),
('SASO750909HDFBBS05', 3, 4, 'UAA', 'si'),
('VAFG680629MJCZLL01', 2, 2, 'TEC', 'Si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capacitacion`
--

CREATE TABLE `capacitacion` (
  `curp` varchar(18) NOT NULL,
  `idcurso` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_termino` date NOT NULL,
  `capacitador` varchar(250) NOT NULL,
  `idestatus_cap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capacitacion`
--

INSERT INTO `capacitacion` (`curp`, `idcurso`, `fecha_inicio`, `fecha_termino`, `capacitador`, `idestatus_cap`) VALUES
('GOJG631109MJCMML04', 3, '2023-03-15', '2024-03-18', 'yo', 3),
('GOJG631109MJCMML04', 4, '2022-09-15', '2022-10-15', 'yo', 1),
('GORJ860823MJCNMD06', 3, '2023-02-20', '2024-02-23', 'yo', 2),
('GORJ860823MJCNMD06', 4, '2022-10-06', '2022-11-06', 'yo', 1),
('HUHL720523HJCZRS04', 3, '2022-10-11', '2023-06-13', 'yo', 1),
('HUHL720523HJCZRS04', 4, '2023-07-04', '2024-07-07', 'yo', 2),
('MEHG501203MASRTL06', 3, '2022-10-11', '2023-09-11', 'yo', 1),
('MEHG501203MASRTL06', 4, '2023-01-12', '2024-01-15', 'yo', 2),
('RAGF630503HJCMNR03', 3, '2022-10-07', '2023-10-07', 'yo', 1),
('RAGF630503HJCMNR03', 4, '2023-10-24', '2024-10-27', 'yo', 1),
('VAFG680629MJCZLL01', 3, '2023-05-30', '2024-06-02', 'yo', 1),
('VAFG680629MJCZLL01', 4, '2022-10-08', '2022-11-08', 'yo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idCarrera` int(11) NOT NULL,
  `Descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`idCarrera`, `Descripcion`) VALUES
(1, 'Técnico en electrónica'),
(2, 'Diseño Gráfico.'),
(3, 'Ingeniería en Tecnologías de la Información y Comunicaciones.'),
(4, 'Animación digital');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idcontacto` int(11) NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `Domicilio` varchar(250) DEFAULT NULL,
  `Razon_Social` varchar(45) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Email` varchar(45) NOT NULL,
  `Link` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`idcontacto`, `Nombre`, `Domicilio`, `Razon_Social`, `Telefono`, `Email`, `Link`) VALUES
(1, 'Dana Moreno', 'Cetis155', 'INNOVANT.ORS S.A', '449438455', 'innovantors@gmail.com', 'INNOVANT.ORS_contacto1'),
(2, 'Daniel ', 'Cetis155', 'INNOVANT.ORS S.A', '449467879', 'innovantors@gmail.com', 'INNOVANT.ORS_contacto2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `IdContrato` int(18) NOT NULL,
  `Tipo_contrato` int(11) NOT NULL,
  `Curp` varchar(18) NOT NULL,
  `idPuesto` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `idJornada` int(11) NOT NULL,
  `horas_semana` varchar(100) NOT NULL,
  `horario` text NOT NULL,
  `Salario` varchar(50) NOT NULL,
  `dias_de_pago` varchar(100) NOT NULL,
  `lugar_firma` varchar(100) NOT NULL,
  `fecha_firma` date NOT NULL,
  `SalarioL` varchar(100) NOT NULL,
  `Estatus_contrato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contrato`
--

INSERT INTO `contrato` (`IdContrato`, `Tipo_contrato`, `Curp`, `idPuesto`, `idArea`, `fecha_inicio`, `fecha_fin`, `idJornada`, `horas_semana`, `horario`, `Salario`, `dias_de_pago`, `lugar_firma`, `fecha_firma`, `SalarioL`, `Estatus_contrato`) VALUES
(25, 1, 'RAGF630503HJCMNR03', 19, 1, '2023-11-25', '2024-11-25', 2, '2', '6 dias', '12000', '5', '', '2023-11-25', 'Doce Mil Pesos', 2),
(27, 1, 'GOJG631109MJCMML04', 20, 3, '2023-04-14', '2024-04-14', 2, '2', '5 dias', '14000', '4', '', '2023-04-14', 'CatorceMil Pesos', 1),
(31, 2, 'MEHG501203MASRTL06', 21, 3, '2012-01-23', '2012-01-24', 4, '4', '6 dias', '13000', '5', '', '2012-01-23', 'trece Mil pesos', 2),
(32, 2, 'HUHL720523HJCZRS04', 21, 3, '2003-08-23', '2003-08-24', 1, '3', '6 dias', '15000', '5', '', '2003-08-23', 'QuinceMil PESOS', 1),
(33, 2, 'VAFG680629MJCZLL01', 20, 2, '2022-08-08', '2024-08-08', 3, '3', '6 dias', '12500', '5', '', '2030-06-23', 'Doce Mil Quinientos Pesos', 2),
(34, 1, 'GORJ860823MJCNMD06', 20, 2, '2020-02-23', '2020-02-24', 2, '2', '6 dias', '23000', '5', '', '2020-02-23', 'Veintetres Mil pesos ', 2),
(35, 1, 'VIPA951123HCSCLN04', 19, 1, '2022-10-13', '2023-10-14', 1, '1', '6 dias', '10700', '7', '', '2022-10-13', 'DIEZ MIL SETECIENTOS PESOS ', 2),
(36, 2, 'PIMP950816HEMIRL03', 20, 8, '2022-10-13', '0000-00-00', 2, '2', '5 dias', '12000', '7', '', '2022-10-13', 'DOCE MIL  PESOS ', 1),
(37, 1, 'BTEC940903MCMTSR03', 20, 8, '2022-10-13', '2023-10-14', 1, '1', '5 dias', '12000', '7', '', '2022-10-13', 'DOCE MIL  PESOS ', 1),
(38, 2, 'MARG900814MHIGLR08', 20, 8, '2022-10-13', '0000-00-00', 2, '2', '6 dias', '12000', '7', '', '2022-10-13', 'DOCE MIL  PESOS ', 1),
(39, 2, 'CORY891015MNTLQS02', 21, 9, '2022-10-13', '0000-00-00', 4, '4', '5 dias', '13000', '7', '', '2022-10-13', 'TRECE MIL  PESOS ', 1),
(40, 2, 'PENR980805HNTSIC09', 21, 9, '2022-10-13', '0000-00-00', 3, '3', '6 dias', '13000', '7', '', '2022-10-13', 'TRECE MIL  PESOS ', 1),
(41, 1, 'MEAC991209HQTSLM00', 20, 8, '2022-10-13', '2023-10-14', 1, '1', '7 dias ', '12000', '7', '', '2022-10-13', 'DOCE MIL  PESOS ', 1),
(42, 1, 'AZLC970325MMNZSS01', 19, 7, '2022-10-13', '2023-10-14', 2, '2', '7 dias ', '10700', '7', '', '2022-10-13', 'DIEZ MIL SETECIENTOS  PESOS ', 1),
(43, 2, 'ROBE010718HNLDRF09', 18, 2, '2022-10-13', '2023-10-14', 1, '1', '5 dias', '10800', '7', '', '2022-10-13', 'DIEZ MIL OCHOCIENTOS  PESOS ', 1),
(44, 1, 'PAAC951002HASLRS06', 18, 2, '2022-10-13', '2023-10-14', 2, '2', '5 dias', '10800', '7', '', '2022-10-13', 'DIEZ MIL OCHOCIENTOS  PESOS ', 1),
(45, 2, 'AREG961015MBCRGI04', 18, 2, '2022-10-13', '0000-00-00', 3, '3', '5 dias', '10800', '7', '', '2022-10-13', 'DIEZ MIL OCHOCIENTOS  PESOS ', 1),
(46, 1, 'MAZN930608MBSRPI06', 16, 1, '2022-10-13', '2023-10-14', 1, '1', '6 dias', '144000', '7', '', '2022-10-13', 'CIENTO CUARENTA Y CUATRO MIL  PESOS ', 1),
(47, 2, 'OCMA870922HCLCNN09', 16, 1, '2022-10-13', '0000-00-00', 2, '2', '5 dias', '144000', '7', '', '2022-10-13', 'CIENTO CUARENTA Y CUATRO MIL  PESOS ', 1),
(48, 1, 'CAFV910303MCMRII07', 16, 1, '2022-10-13', '0000-00-00', 3, '3', '6 dias', '144000', '7', '', '2022-10-13', 'CIENTO CUARENTA Y CUATRO MIL  PESOS ', 1),
(49, 2, 'PATS971125MGTTRF03', 19, 7, '2022-10-13', '0000-00-00', 4, '4', '5 dias', '10700', '7', '', '2022-10-13', 'DIEZ MIL SETECIENTOS  PESOS ', 1),
(50, 1, 'LUPS010729HGRMRI03', 16, 7, '2022-10-13', '2023-10-14', 4, '4', '5 dias', '144000', '7', '', '2022-10-13', 'CIENTO CUARENTA Y CUATRO MIL  PESOS ', 1),
(51, 2, 'ACRE950812HMSCIS03', 17, 3, '2022-10-13', '0000-00-00', 4, '4', '7 dias ', '600000', '7', '', '2022-10-13', 'SEISCIENTOS  MIL  PESOS ', 1),
(52, 1, 'FABE010125HOCRRR07', 17, 3, '2022-10-13', '2023-10-14', 1, '1', '6 dias', '600000', '7', '', '2022-10-13', 'SEISCIENTOS  MIL  PESOS ', 1),
(53, 1, 'ECSL940505MSPCRZ07', 17, 7, '2022-10-13', '2023-10-14', 2, '2', '6 dias', '600000', '7', '', '2022-10-13', 'SEISCIENTOS  MIL  PESOS ', 1),
(54, 1, 'CAZA000223HTLNMI09', 17, 3, '2022-10-13', '2023-10-14', 3, '3', '6 dias', '600000', '7', '', '2022-10-13', 'SEISCIENTOS  MIL  PESOS ', 1),
(55, 1, 'EAVU051212HASSGLA2', 16, 8, '2022-10-13', '2023-10-14', 1, '1', '6 dias', '12000', '7', '', '2022-10-13', 'DOCE MIL  PESOS ', 1),
(56, 2, 'PAGD050228HREEGLU6', 21, 9, '2022-10-13', '0000-00-00', 2, '2', '5 dias', '13000', '7', '', '2022-10-13', 'TRECE MIL  PESOS ', 1),
(57, 1, 'CADA050415HIUEUHH9', 21, 9, '2022-10-13', '2023-10-14', 3, '3', '4 años', '13000', '7', '', '2022-10-13', 'TRECE MIL  PESOS ', 1),
(58, 2, 'OINL041210HUGETLKU', 21, 9, '2022-10-13', '0000-00-00', 1, '1', '6 dias', '13000', '7', '', '2022-10-13', 'TRECE MIL  PESOS ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `idcurso` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `Descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`idcurso`, `nombre`, `Descripcion`) VALUES
(3, 'Inducción ', 'Inducción de la empresa '),
(4, 'Higiene', 'Curso de higiene y normas de sanidad.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_de_empresa`
--

CREATE TABLE `datos_de_empresa` (
  `idEmpresa` int(11) NOT NULL,
  `Nombre_de_empresa` varchar(250) NOT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Domicilio` varchar(250) DEFAULT NULL,
  `E_Mail` varchar(45) DEFAULT NULL,
  `RazonSocial` varchar(45) DEFAULT NULL,
  `Estructura_Juridica` varchar(45) DEFAULT NULL,
  `Encargado` varchar(45) DEFAULT NULL,
  `CIF_Empresa` varchar(45) DEFAULT NULL,
  `Acta_constitutiva` varchar(100) NOT NULL,
  `No_Escriturapub` varchar(24) NOT NULL,
  `Libro_Escriturapub` varchar(100) NOT NULL,
  `Fecha_Escriturapub` date NOT NULL,
  `Fe_Escriturapub` varchar(100) NOT NULL,
  `NP_Escriturapub` varchar(250) NOT NULL,
  `Ciu_Escriturapub` varchar(100) NOT NULL,
  `No_EscriturapubL` varchar(100) NOT NULL,
  `RepresentanteLegal` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `datos_de_empresa`
--

INSERT INTO `datos_de_empresa` (`idEmpresa`, `Nombre_de_empresa`, `Descripcion`, `Telefono`, `Domicilio`, `E_Mail`, `RazonSocial`, `Estructura_Juridica`, `Encargado`, `CIF_Empresa`, `Acta_constitutiva`, `No_Escriturapub`, `Libro_Escriturapub`, `Fecha_Escriturapub`, `Fe_Escriturapub`, `NP_Escriturapub`, `Ciu_Escriturapub`, `No_EscriturapubL`, `RepresentanteLegal`) VALUES
(1, 'INNOVANT.ORS', 'Compañía dedicada al desarrollo y diseño de nominas para diferentes empresas', '4493375148', 'Av Perseo 301, Primo Verdad Inegi, 20267 Aguascalientes, Ags.', 'innovantors@gmail.com', 'INNOVANT.ORS S.A', 'Física', 'Priscila Noemi', 'B77431213', 'Organización empresarial ', '200899', 'INNOVAT.ORS Escritura publica', '2021-10-07', 'Abner Gael Flores Perez', '48', 'Aguascalientes', 'DOSCIENTOS  MIL OCHOCIENTOS NOVENTA Y NUEVE  ', 'Priscila Noemi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deducciones`
--

CREATE TABLE `deducciones` (
  `id_deduccion` int(11) NOT NULL,
  `Descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `deducciones`
--

INSERT INTO `deducciones` (`id_deduccion`, `Descripcion`) VALUES
(10, 'Caja de ahorro'),
(11, 'Cuentas sindicales '),
(12, 'FONACOT'),
(13, 'INFONAVIT'),
(14, 'Retención de impuestos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ded_nomina`
--

CREATE TABLE `ded_nomina` (
  `id_calnomina` int(11) NOT NULL,
  `Curp` varchar(18) NOT NULL,
  `id_deduccion` int(11) NOT NULL,
  `monto` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ded_nomina`
--

INSERT INTO `ded_nomina` (`id_calnomina`, `Curp`, `id_deduccion`, `monto`) VALUES
(31, 'VAFG680629MJCZLL01', 10, 20),
(31, 'VAFG680629MJCZLL01', 13, 200),
(41, 'RAGF630503HJCMNR03', 10, 20),
(41, 'RAGF630503HJCMNR03', 14, 129);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_nomina`
--

CREATE TABLE `detalle_nomina` (
  `id_calnomina` int(11) NOT NULL,
  `Curp` varchar(18) NOT NULL,
  `salario_base` float DEFAULT 0,
  `tot_per` float DEFAULT 0,
  `isr` float DEFAULT 0,
  `imss` float DEFAULT 0,
  `tot_ded` float DEFAULT 0,
  `salario_neto` float DEFAULT 0,
  `tot_grabado` float DEFAULT 0,
  `subsidio` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_nomina`
--

INSERT INTO `detalle_nomina` (`id_calnomina`, `Curp`, `salario_base`, `tot_per`, `isr`, `imss`, `tot_ded`, `salario_neto`, `tot_grabado`, `subsidio`) VALUES
(31, 'VAFG680629MJCZLL01', 12500, 200, 1312.92, 335.173, 220, 0, 200, 0),
(41, 'RAGF630503HJCMNR03', 12, 400, 0, 0, 149, 0, 400, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Curp` varchar(18) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `nacionalidad` text NOT NULL,
  `Domicilio` varchar(250) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `E_mail` varchar(45) NOT NULL,
  `Sexo` varchar(2) NOT NULL,
  `Edad` int(11) NOT NULL,
  `NSS` varchar(11) NOT NULL,
  `idEstadoCivil` int(11) NOT NULL,
  `Conyuje_Concubino` varchar(45) NOT NULL,
  `tel_emergencia` varchar(10) NOT NULL,
  `nombre_emergencia` varchar(250) NOT NULL,
  `no_infonavit` varchar(20) NOT NULL,
  `No_contrato` int(11) NOT NULL,
  `Contrato_Definitivo` varchar(100) NOT NULL,
  `Contrato_Temporal` varchar(100) NOT NULL,
  `ContratoTemporal_Val` varchar(2) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`Curp`, `RFC`, `Nombre`, `nacionalidad`, `Domicilio`, `Telefono`, `E_mail`, `Sexo`, `Edad`, `NSS`, `idEstadoCivil`, `Conyuje_Concubino`, `tel_emergencia`, `nombre_emergencia`, `no_infonavit`, `No_contrato`, `Contrato_Definitivo`, `Contrato_Temporal`, `ContratoTemporal_Val`) VALUES
('ACRE950812HMSCIS03', 'AURJ950812TJA', 'Acuña Riba Jesús Rafa', 'mexicana', 'VILLA FRANCISCO NO. 56, ANTONIO BARONA, 62320', '7773223361', 'Rafa.Acu34@yahoo.com', 'M', 27, '578965632', 1, 'N/A', '4498263729', 'Adelaida Calista Pina Mur', '283628362', 0, '', '', 'No'),
('AREG961015MBCRGI04', 'AODG961015SW9', 'Arjona Diego Gisela ', 'mexicana', 'TRUJANO 503 LB, OAXACA CENTRO, 68000', '9515495679', 'GiselaArjona46@yahoo.com', 'F', 25, '575813638', 1, 'Lourdes Pacheco Aliaga', '4498273928', 'Lourdes Pacheco Aliaga', '172616372', 0, '', '', 'No'),
('AZLC970325MMNZSS01', 'AALC970325BY2', 'Celestina Azahar Luís Marín', 'mexicana', 'JUANA URSUA NO. 580 núm. A, LAS AMARILAS, 28010', '3123139176', 'Celest-Aza92@gmail.com', 'F', 25, '440421722', 2, 'Josep Montesinos Molins', '4498271637', 'Josep Montesinos Molins', '172182911', 0, '', '', 'No'),
('BTEC940903MCMTSR03', 'BEEC940903782', 'Beltrán Estévez Carmela', 'Mexicana', 'LAGUNA MADRE 36, INDUSTRIAL, 87350', '8688166657', 'CarmelaBel80@gmail.com', 'F', 28, '450369943', 2, 'Rita Echeverria Lloret', '4490726150', 'Rita Echeverria Lloret', '109262836', 0, '', '', 'No'),
('CADA050415HIUEUHH9', 'CADA050415937', 'Covarrubias Delgado Angel Ivan', 'mexicana', 'CALLE ALDAMA NO 156, CENTRO TUXTEPEC, 68300	', '4490435789', 'angelivan234@gmail.com', 'M', 20, '469247194', 1, 'N/A', '4497264728', 'Lopez Garcia Nicole Juliette', '192819281', 0, '', '', 'No'),
('CAFV910303MCMRII07', 'CAFV910303VDA', 'Carbó Figueras Virginia', 'mexicana', 'NICOLÁS BRAVO NO. 1375 S/N, GUADALUPE, 80220', '6677151770', 'Virginia_Car23@hotmail.com', 'F', 31, '526131650', 2, 'N/A', '4496381563', 'Godofredo de Valencia', '826382637', 0, '', '', 'No'),
('CAZA000223HTLNMI09', 'CAZJ000223138', 'Cadenas Zamorano Jaime', 'mexicana', 'MAGNOLIAS NO. 537, VILLA DE LAS FLORES, 55710', '5558742657', 'JaimeCade@yahoo.com', 'M', 22, '450295017', 2, 'Álex Guitart López', '4498163626', 'Álex Guitart López', '229282828', 0, '', '', 'No'),
('CORY891015MNTLQS02', 'CORY8910151L7', 'Coll Requena Yéssica', 'Mexicana', '2A PRIV INDEPENDENCIA NO. 66 S/N, TORREÓN CENTRO', '8717220917', 'YessiColl6@hotmail.com', 'F', 33, '232462074', 1, 'N/A', '4490617834', 'Amílcar Alcántara Garay', '162816029', 0, '', '', 'No'),
('EAVU051212HASSGLA2', 'EAVU051212145', 'Escareño Vega Ulises Guadalupe', 'mexicana', 'AV. 20 DE NOVIEMBRE NO 1540, LA PIRAGUA TUXTEPEC, 68380	', '4495783213', 'ulisesvega223@gmail.com', 'M', 24, '945782398', 3, 'N/A', '4496726382', 'Herrera Hernandez Josefina', '292382828', 0, '', '', 'No'),
('ECSL940505MSPCRZ07', 'EESL940505CF3', 'Echeverría Sarabia Luz ', 'mexicana', 'AV UNIVERSIDAD 700 NO. 6, PETROLERA, 89110', '8332132232', 'LuzEcheverria57@yahoo.com', 'F', 28, '502743713', 2, 'Emigdio Benet Herrera', '4492637849', 'Emigdio Benet Herrera', '729382882', 0, '', '', 'No'),
('FABE010125HOCRRR07', 'FABE0101259Z7', 'Bartolomé Eric Farré ', 'mexicana', 'Av. ADOLFO PRIETO 1649-302, DEL VALLE', '6028484787', 'Eric-Farr-Bartolo@gmail.com', 'M', 21, '212229433', 1, 'Natalia de Benet', '4492846274', 'Natalia de Benet', '626273626', 0, '', '', 'No'),
('GOJG631109MJCMML04', 'GOJG631109QM4', 'Gòmez Jimènez Marìa Gloria', 'mexicana', 'AV. GRABRIELA MISTRAL 106, LA ESTRELLA , AGUASCALIENTES , AGS , C.P.20150', '6621741233', 'bantomaui@gmail.com', 'M', 26, '31028601156', 1, 'N/A', '4491502989', 'Miguel Lopez Perez', '53864528450', 491221216, 'si', 'no', 'No'),
('GORJ860823MJCNMD06', 'GORJ8608234G3', 'Gonzalez Romo Judith', 'mexicana', 'CALLE VIÑEDOS SAN MARCOS BLOCK B/110, CENTRO DISTRIBUIDOR DE BASICOS , JESUS MARIA , AGS , C.P.20908', '4495080473', 'martacam2002@yahoo.com', 'M', 27, '33734901417', 4, 'N/A', '31506309', 'Anthonio Martinez Hernandez ', '56617928369', 2014065018, 'si', 'no', 'No'),
('HUHL720523HJCZRS04', 'HUHL7205233T9', 'Huizar Hernàndez Jose Luis', 'mexicana', 'AV. HEROE DE NACOZARI 2349, LOS ARCOS , AGUASCALIENTES , AGS , C.P.20146', '4491431527', 'masenjog@gmail.com', 'H', 24, '33018520776', 2, 'Dario Huizar', '4495007837', 'Dario Huizar Vega', '59708239071', 737959435, 'si', 'no', 'No'),
('LUPS010729HGRMRI03', 'LUPS0107297X2', 'Lumbreras Porcel Silvio', 'mexicana', 'GONZÁLEZ ORTEGA NO. 30, CENTRO, 44100', '3336133897', 'SilvioLumPor@hotmail.com', 'M', 21, '252673318', 3, 'Beatriz Segui Gomila', '4498273626', 'Beatriz Segui Gomila', '273926382', 0, '', '', 'No'),
('MARG900814MHIGLR08', 'MARG900814123', 'Malo Raya Georgina ', 'Mexicana', ' AV GUERRERO 108 1, ZACATECAS CENTRO, 98000', '4929244085', 'GeorMalRa37@yahoo.com', 'F', 32, '469219140', 2, 'Jonatán Almazán Anglada', '4493947266', 'Jonatán Almazán Anglada', '196381626', 0, '', '', 'No'),
('MAZN930608MBSRPI06', 'MAZD930608BM6', 'Martín Zapata Dani', 'mexicana', 'AV EMILIANO ZAPATA SN NO. 102 EDIF 10 D, UNIDAD HAB ARBOLILLO III', '5553237752', 'Dani_MarZapata82@yahoo.com', 'F', 29, '388326871', 1, 'Víctor Danilo Benito Leiva', '4498163529', 'Víctor Danilo Benito Leiva', '193193823', 0, '', '', 'No'),
('MEAC991209HQTSLM00', 'MEAC9912099K9', 'Mesa Alfaro Camilo Fortunato', 'mexicana', 'CLZ ENRIQUE DIAZ DE LEON 0000280 NO. 1, SAGRADA FAMILIA, 44200', '3338255933', 'Camilo_Fort_Mes30@gmail.com', 'M', 22, '526688401', 2, 'N/A', '4498526792', 'Yago Burgos Mate', '179182911', 0, '', '', 'No'),
('MEHG501203MASRTL06', 'EZHEGE501203T', 'Hernàndez Gutièrre Maria Elena', 'mexicana', 'JULIO DIAZ TORRES 201 A4, CIUDAD INDUSTRIAL , AGUASCALIENTES , AGS , C.P.20290', '4552713241', 'paulifran@hotmail.com', 'M', 29, '31028514508', 2, 'Hugo Perez', '4495803077', 'Hugo Perez Lopez', '57446244837', 476409251, 'si', 'no', 'No'),
('OCMA870922HCLCNN09', 'OAMA870922D91', 'Ocaña Montoya Antonio', 'mexicana', 'PALO MORA NO. 23, VALLE DE LOS PINOS, 54040', '5361231925', 'AntonioOcMon@gmail.com', 'M', 35, '387014295', 2, 'Modesta Ámbar Verdugo Vicente', '4490625833', 'Modesta Ámbar Verdugo Vicente', '978628362', 0, '', '', 'No'),
('OINL041210HUGETLKU', 'OINL041210988', 'Ortiz Navarro Leonardo Gamaliel', 'mexicana', 'AV. 20 DE NOVIEMBRE NO 1320,  CENTRO TUXTEPEC, 68300', '4498452395', 'ortiznava245@gmail.com', 'M', 20, '592045827', 1, 'Ileana Rodríguez Juárez ', '4496284920', 'Villalpando Esparza Juana', '182917369', 0, '', '', 'No'),
('PAAC951002HASLRS06', 'PAAC951002AL6', 'Pallarès Arregui Celso Heliodoro ', 'Mexicana', 'HIDALGO NTE NO. 1229 núm. S/N, SALTILLO CENTRO, 25000', '8444121619', 'Celso-Hilodoro1@yahoo.com', 'M', 27, '269600882', 3, 'N/A', '4497254902', 'Juan Pablo de Almansa', '162891829', 0, '', '', 'No'),
('PAGD050228HREEGLU6', 'PAGD050228874', 'Palomino Garcia David Osiel ', 'mexicana', 'CALLE OCAMPO NO 14, CENTRO TUXTEPEC, 68300', '4494567893', 'osielgarcia13@gmail.com', 'M', 26, '962942639', 3, 'N/A', '4497254869', 'Herrera Marquez Miguel', '172627182', 0, '', '', 'No'),
('PATS971125MGTTRF03', 'PATS971125I91', 'Patiño Torre Sofía Emilia ', 'mexicana', 'CALLE 25 208 NO. B, LOMAS DE CASA BLANCA LOS OLVERA', '4422221552', 'Sofia-Emi89@gmail.com', 'F', 24, '213400058', 3, 'N/A', '4498627152', 'Julia Torrijos Falco', '263826372', 0, '', '', 'No'),
('PENR980805HNTSIC09', 'PENM9808056D7', 'Peñas Nicolau Marcelino ', 'Mexicana', 'ING GONZALO DURAN NO. 2 S/N, CENTRO, 91500', '2288120112', 'MarcelinoNicolau230@yahoo.com', 'M', 24, '232148368', 1, 'Aitor Olivé Benítez', '4490615373', 'Aitor Olivé Benítez', '172917999', 0, '', '', 'No'),
('PIMP950816HEMIRL03', 'PIMP950816KX4', 'Pina Márquez Paulino', 'Mexicana', 'RAFAEL BUELNA Y JESUS ​​KUMATE, CENTRO, 82110', '6699865648', 'MarPaulin57@hotmail.com', 'M', 27, '522720895', 1, 'N/A', '4492817399', 'Pou-Albero Salomé', '174925378', 0, '', '', 'No'),
('RAGF630503HJCMNR03', 'RAGF630503EW7', 'Ramirez Gonzá Francisco Javier', 'mexicana', 'AV. SIGLO XXI 3805 LOCAL E - F, VICENTE GUERRERO , AGUASCALIENTES , AGS , C.P.20286', '4494680233', 'arquitectoasenjo@gmail.com', 'H', 28, '31977400576', 1, 'N/A', '4492507726', 'Emily Ramirez Vega', '59288226807', 338962568, 'si', 'no', 'No'),
('ROBE010718HNLDRF09', 'ROBE010718HM4', 'Berenguer Efraín Rodrigo ', 'mexicana', ' AV FRANCISCO P MIRANDA NO. MERCED GÓMEZ 163 S/N', '5556514421', 'Efrain.Rod.Beren@gmail.com', 'M', 21, '434280915', 3, 'Eufemia Vall Larrañaga', '4498726132', 'Eufemia Vall Larrañaga', '178119271', 0, '', '', 'No'),
('VAFG680629MJCZLL01', 'VAFG680629GC0', 'Vazquez Flores Gloria Imelda', 'mexicana', 'HEROE DE NACOZARI 2214, MORELOS , AGUASCALIENTES , AGS , C.P.20140', '4497656435', 'cibravohuerta@yahoo.com', 'M', 31, '31068909733', 4, 'N/A', '4493607007', 'Miriam Jimenes Lopez', '57611474264', 266178628, 'si', 'no', 'No'),
('VIPA951123HCSCLN04', 'VIPA96021833A', 'Vicens Pulido Andrés ', 'Mexicana', 'Av. LAPISLÁZULI NO. 2531, BOSQUES DE LA VICTORIA, 44540', '3336230814', 'AndVicen63@yahoo.com', 'M', 26, '450645445', 1, 'Hilario del Rosado', '4492827494', 'Hilario del Rosado', '184726847', 0, '', '', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_has_habilidad`
--

CREATE TABLE `empleado_has_habilidad` (
  `Curp` varchar(18) NOT NULL,
  `idHabilidad` int(11) NOT NULL,
  `Experiencia` varchar(45) NOT NULL,
  `valida` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado_has_habilidad`
--

INSERT INTO `empleado_has_habilidad` (`Curp`, `idHabilidad`, `Experiencia`, `valida`) VALUES
('ACRE950812HMSCIS03', 6, '1 año', ''),
('AREG961015MBCRGI04', 5, '1 año', ''),
('AZLC970325MMNZSS01', 7, '3 años', ''),
('BTEC940903MCMTSR03', 8, '5 años', ''),
('CADA050415HIUEUHH9', 5, '3 años', ''),
('CAFV910303MCMRII07', 2, '2 años', ''),
('CAZA000223HTLNMI09', 7, '2 años', ''),
('CORY891015MNTLQS02', 6, '3 años', ''),
('EAVU051212HASSGLA2', 8, '3 años', ''),
('ECSL940505MSPCRZ07', 7, '2 años', ''),
('FABE010125HOCRRR07', 6, '2 años', ''),
('GOJG631109MJCMML04', 4, '5 años', ''),
('GORJ860823MJCNMD06', 8, '5 años', ''),
('HUHL720523HJCZRS04', 9, '6 años', ''),
('LUPS010729HGRMRI03', 7, '2 años', ''),
('MARG900814MHIGLR08', 8, '6 años', ''),
('MAZN930608MBSRPI06', 9, '3 años', ''),
('MEAC991209HQTSLM00', 8, '1 año', ''),
('MEHG501203MASRTL06', 3, '7 años', ''),
('OCMA870922HCLCNN09', 1, '2 años', ''),
('OINL041210HUGETLKU', 5, '2 años', ''),
('PAAC951002HASLRS06', 5, '2 años', ''),
('PAGD050228HREEGLU6', 5, '3 años', ''),
('PATS971125MGTTRF03', 7, '2 años', ''),
('PENR980805HNTSIC09', 6, '2 años', ''),
('PIMP950816HEMIRL03', 8, '4 años', ''),
('RAGF630503HJCMNR03', 7, '4 años', ''),
('ROBE010718HNLDRF09', 5, '4 años', ''),
('VAFG680629MJCZLL01', 8, '8 años', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_has_idioma`
--

CREATE TABLE `empleado_has_idioma` (
  `Curp` varchar(18) NOT NULL,
  `idIdioma` int(11) NOT NULL,
  `Nivel` varchar(45) NOT NULL,
  `valida` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado_has_idioma`
--

INSERT INTO `empleado_has_idioma` (`Curp`, `idIdioma`, `Nivel`, `valida`) VALUES
('ACRE950812HMSCIS03', 2, 'Superior', ''),
('AREG961015MBCRGI04', 4, 'Superior', ''),
('AZLC970325MMNZSS01', 2, 'Superior', ''),
('BTEC940903MCMTSR03', 1, 'Superior', ''),
('CADA050415HIUEUHH9', 2, 'Superior', ''),
('CAFV910303MCMRII07', 1, 'Superior', ''),
('CAZA000223HTLNMI09', 3, 'Superior', ''),
('CORY891015MNTLQS02', 2, 'Superior', ''),
('EAVU051212HASSGLA2', 4, 'Superior', ''),
('ECSL940505MSPCRZ07', 2, 'Superior', ''),
('FABE010125HOCRRR07', 1, 'Superior', ''),
('GOJG631109MJCMML04', 2, 'Superior', ''),
('GORJ860823MJCNMD06', 3, 'Medio', ''),
('HUHL720523HJCZRS04', 1, 'Medio', ''),
('LUPS010729HGRMRI03', 3, 'Superior', ''),
('MARG900814MHIGLR08', 3, 'Superior', ''),
('MAZN930608MBSRPI06', 4, 'Superior', ''),
('MEAC991209HQTSLM00', 3, 'Superior', ''),
('MEHG501203MASRTL06', 4, 'Medio', ''),
('OCMA870922HCLCNN09', 2, 'Superior', ''),
('OINL041210HUGETLKU', 1, 'Superior', ''),
('PAAC951002HASLRS06', 3, 'Superior', ''),
('PAGD050228HREEGLU6', 3, 'Superior', ''),
('PATS971125MGTTRF03', 2, 'Superior', ''),
('PENR980805HNTSIC09', 1, 'Superior', ''),
('PIMP950816HEMIRL03', 3, 'Superior', ''),
('RAGF630503HJCMNR03', 3, 'Medio', ''),
('ROBE010718HNLDRF09', 1, 'Superior', ''),
('VAFG680629MJCZLL01', 4, 'Superior', ''),
('VIPA951123HCSCLN04', 4, 'Medio', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_has_nivelacademico`
--

CREATE TABLE `empleado_has_nivelacademico` (
  `Curp` varchar(18) NOT NULL,
  `idNivelAcademico` int(11) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `Institucion` varchar(20) NOT NULL,
  `valida` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado_has_nivelacademico`
--

INSERT INTO `empleado_has_nivelacademico` (`Curp`, `idNivelAcademico`, `idCarrera`, `Institucion`, `valida`) VALUES
('ACRE950812HMSCIS03', 2, 1, 'UAA', ''),
('AREG961015MBCRGI04', 1, 1, 'TEC', ''),
('AZLC970325MMNZSS01', 1, 1, 'UAA', ''),
('BTEC940903MCMTSR03', 1, 3, 'UAA', ''),
('CADA050415HIUEUHH9', 1, 1, 'TEC', ''),
('CAFV910303MCMRII07', 3, 2, 'UAA', ''),
('CAZA000223HTLNMI09', 1, 2, 'UAA', ''),
('CORY891015MNTLQS02', 2, 2, 'TEC', ''),
('EAVU051212HASSGLA2', 2, 1, 'UAA', ''),
('ECSL940505MSPCRZ07', 2, 1, 'UAA', ''),
('FABE010125HOCRRR07', 2, 2, 'TEC', ''),
('GOJG631109MJCMML04', 3, 1, 'TEC', ''),
('GORJ860823MJCNMD06', 1, 2, 'UAA', ''),
('HUHL720523HJCZRS04', 1, 4, 'UAA', ''),
('LUPS010729HGRMRI03', 2, 2, 'UAA', ''),
('MARG900814MHIGLR08', 1, 2, 'UAA', ''),
('MAZN930608MBSRPI06', 1, 2, 'TEC', ''),
('MEAC991209HQTSLM00', 2, 2, 'UAA', ''),
('MEHG501203MASRTL06', 2, 2, 'UAA', ''),
('OCMA870922HCLCNN09', 2, 3, 'TEC', ''),
('OINL041210HUGETLKU', 1, 2, 'UAA', ''),
('PAAC951002HASLRS06', 1, 3, 'TEC', ''),
('PAGD050228HREEGLU6', 2, 2, 'TEC', ''),
('PATS971125MGTTRF03', 2, 1, 'UAA', ''),
('PENR980805HNTSIC09', 3, 4, 'UAA', ''),
('PIMP950816HEMIRL03', 3, 3, 'TEC', ''),
('RAGF630503HJCMNR03', 3, 3, 'UAA', ''),
('ROBE010718HNLDRF09', 1, 2, 'UAA', ''),
('VAFG680629MJCZLL01', 2, 2, 'TEC', ''),
('VIPA951123HCSCLN04', 1, 3, 'UAA', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadocivil`
--

CREATE TABLE `estadocivil` (
  `idEstadoCivil` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estadocivil`
--

INSERT INTO `estadocivil` (`idEstadoCivil`, `Descripcion`) VALUES
(1, 'Soltero'),
(2, 'Casado'),
(3, 'Union Libre'),
(4, 'Divorcio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_candidato`
--

CREATE TABLE `estatus_candidato` (
  `EstatusProceso` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_candidato`
--

INSERT INTO `estatus_candidato` (`EstatusProceso`, `Descripcion`) VALUES
(1, 'Seleccionado'),
(2, 'Calif.Psicologica'),
(3, 'Calif.Medica'),
(4, 'Validado.Tec');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_capacitacion`
--

CREATE TABLE `estatus_capacitacion` (
  `idestatus_cap` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_capacitacion`
--

INSERT INTO `estatus_capacitacion` (`idestatus_cap`, `descripcion`) VALUES
(1, 'Progmado'),
(2, 'En curso '),
(3, 'Acreditado'),
(4, 'No acreditado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_contrato`
--

CREATE TABLE `estatus_contrato` (
  `estatus_contrato` int(11) NOT NULL,
  `descripción` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_contrato`
--

INSERT INTO `estatus_contrato` (`estatus_contrato`, `descripción`) VALUES
(1, 'En proceso'),
(2, 'Firmado'),
(3, 'Terminado'),
(4, 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_curso`
--

CREATE TABLE `estatus_curso` (
  `idestatus` int(11) NOT NULL,
  `Descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_solicitud`
--

CREATE TABLE `estatus_solicitud` (
  `idEstatus_Solicitud` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estatus_solicitud`
--

INSERT INTO `estatus_solicitud` (`idEstatus_Solicitud`, `Descripcion`) VALUES
(1, 'Pendiente'),
(2, 'Aprobada'),
(3, 'Publicado'),
(4, 'En proceso'),
(5, 'Terminada'),
(6, 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad`
--

CREATE TABLE `habilidad` (
  `idHabilidad` int(11) NOT NULL,
  `Descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `habilidad`
--

INSERT INTO `habilidad` (`idHabilidad`, `Descripcion`) VALUES
(1, 'Desarrollador de Css'),
(2, 'Desarrollador de Html'),
(3, 'Desarrollador de JavaScript'),
(4, 'Manejo de Adobe'),
(5, 'Manejo de Blender 3D'),
(6, 'Instalación de tarjetas de control'),
(7, 'Desarrollo de base de datos'),
(8, 'Test de paginas web'),
(9, 'Desarrollador de Python');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `idIdioma` int(11) NOT NULL,
  `Lenguaje` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`idIdioma`, `Lenguaje`) VALUES
(1, 'Ingles'),
(2, 'Español'),
(3, 'Chino Mandarín'),
(4, 'Aleman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imss`
--

CREATE TABLE `imss` (
  `anio` int(11) NOT NULL,
  `uma` float NOT NULL,
  `dias` int(11) NOT NULL,
  `vacaciones` float NOT NULL,
  `prima_vac` float NOT NULL,
  `aguinaldo` float NOT NULL,
  `excedente` float NOT NULL,
  `prest_dinero` float NOT NULL,
  `prest_especie` float NOT NULL,
  `inv_vida` float NOT NULL,
  `ces_vejes` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imss`
--

INSERT INTO `imss` (`anio`, `uma`, `dias`, `vacaciones`, `prima_vac`, `aguinaldo`, `excedente`, `prest_dinero`, `prest_especie`, `inv_vida`, `ces_vejes`) VALUES
(2022, 96.22, 365, 6, 0.25, 15, 0.4, 0.25, 0.375, 0.625, 1.125);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jordesc`
--

CREATE TABLE `jordesc` (
  `iddesc` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `IdJornada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jordesc`
--

INSERT INTO `jordesc` (`iddesc`, `name`, `IdJornada`) VALUES
(1, 'De 8 horas a 14 horas', 1),
(2, 'De 12horas  a 16 horas', 2),
(3, 'De 21 horas a 7 horas', 3),
(4, 'De 22 horas a 8 horas', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `IdJornada` int(11) NOT NULL,
  `jornombre` varchar(100) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `val` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`IdJornada`, `jornombre`, `Descripcion`, `val`) VALUES
(1, 'Diurna ', 'De 8 horas a 14 horas', '0'),
(2, 'Diurna 2', 'De 12horas  a 16 horas', '0'),
(3, 'Nocturna', 'De 21 horas a 7 horas', '0'),
(4, 'Nocturna 2', 'De 22 horas a 8 horas', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediopublicidad`
--

CREATE TABLE `mediopublicidad` (
  `idMedioPublicidad` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `mediopublicidad`
--

INSERT INTO `mediopublicidad` (`idMedioPublicidad`, `Descripcion`) VALUES
(1, 'Facebook.'),
(2, 'Radio'),
(3, 'LinkedIn.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelacademico`
--

CREATE TABLE `nivelacademico` (
  `idNivelAcademico` int(11) NOT NULL,
  `Descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `nivelacademico`
--

INSERT INTO `nivelacademico` (`idNivelAcademico`, `Descripcion`) VALUES
(1, 'Técnico'),
(2, 'Licenciatura'),
(3, 'Maestría.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `id_calnomina` int(11) NOT NULL,
  `id_nomina` int(11) NOT NULL,
  `idperiodo` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  `fecha_nomina` date DEFAULT NULL,
  `anio` int(12) DEFAULT NULL,
  `con_nomina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nomina`
--

INSERT INTO `nomina` (`id_calnomina`, `id_nomina`, `idperiodo`, `idArea`, `fecha_nomina`, `anio`, `con_nomina`) VALUES
(31, 1, 2, 2, '2023-04-22', 2022, 1),
(32, 3, 2, 1, '2024-05-22', 2022, 2),
(33, 2, 2, 3, '2026-05-22', 2022, 3),
(34, 1, 2, 1, '2027-05-22', 2022, 4),
(35, 3, 2, 2, '2012-06-22', 2022, 5),
(36, 2, 2, 1, '2004-06-22', 2022, 6),
(41, 6, 5, 1, '2023-03-15', 2023, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `percepcion`
--

CREATE TABLE `percepcion` (
  `id_Percepcion` int(11) NOT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Grabado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `percepcion`
--

INSERT INTO `percepcion` (`id_Percepcion`, `Descripcion`, `Grabado`) VALUES
(1, 'Bono', 'si'),
(2, 'Comisiones ', 'si'),
(3, 'Horas Extra', 'si'),
(4, 'Prima Vacacional', 'si'),
(5, 'Subsidios ', 'si'),
(6, 'Utilidades', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_admo`
--

CREATE TABLE `perfil_admo` (
  `idPerfil` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfil_admo`
--

INSERT INTO `perfil_admo` (`idPerfil`, `Descripcion`) VALUES
(1, 'Administrador'),
(2, 'Director'),
(3, 'Gerente de desarrollo'),
(24, 'test');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_has_proceso`
--

CREATE TABLE `perfil_has_proceso` (
  `idPerfil` int(11) NOT NULL,
  `idProceso` int(11) NOT NULL,
  `idPermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfil_has_proceso`
--

INSERT INTO `perfil_has_proceso` (`idPerfil`, `idProceso`, `idPermiso`) VALUES
(1, 10, 1),
(3, 13, 2),
(24, 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `idperiodo` int(11) NOT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `n_dias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`idperiodo`, `Descripcion`, `n_dias`) VALUES
(2, 'MENSUAL', 30),
(4, 'SEMANAL', 7),
(5, 'QUINCENAL ', 15),
(6, 'Anual', 365);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permiso`, `Descripcion`) VALUES
(1, 'Lectura'),
(2, 'Edicion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `per_nomina`
--

CREATE TABLE `per_nomina` (
  `id_calnomina` int(11) NOT NULL,
  `Curp` varchar(18) NOT NULL,
  `id_Percepcion` int(11) NOT NULL,
  `monto` int(6) DEFAULT NULL,
  `Grabado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `per_nomina`
--

INSERT INTO `per_nomina` (`id_calnomina`, `Curp`, `id_Percepcion`, `monto`, `Grabado`) VALUES
(41, 'RAGF630503HJCMNR03', 1, 200, NULL),
(41, 'RAGF630503HJCMNR03', 4, 200, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `idProceso` int(11) NOT NULL,
  `Descripcion` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proceso`
--

INSERT INTO `proceso` (`idProceso`, `Descripcion`) VALUES
(1, 'Nivel Academico'),
(2, 'Carrera'),
(3, 'idioma'),
(4, 'Habilidad'),
(5, 'Area'),
(6, 'HMedio de Publicidad\r\n'),
(7, 'Contacto'),
(8, 'Datos de la Empresa'),
(9, 'Puesto'),
(10, 'Solicitud de Personal'),
(11, 'Autorización de Solicitud'),
(12, 'Publicación de Oferta'),
(13, 'Solicitante'),
(14, 'Calificación Psiclologica'),
(15, 'Calificación medica'),
(16, 'Validación de Referencias'),
(17, 'Selección de candidatos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `idPuesto` int(11) NOT NULL,
  `Nombrepuesto` varchar(250) DEFAULT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `SalarioMensual` int(11) DEFAULT NULL,
  `Beneficios` varchar(250) DEFAULT NULL,
  `Bonos` int(11) DEFAULT NULL,
  `Aprobacion` tinyint(1) DEFAULT NULL,
  `SalarioL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `puesto`
--

INSERT INTO `puesto` (`idPuesto`, `Nombrepuesto`, `Descripcion`, `SalarioMensual`, `Beneficios`, `Bonos`, `Aprobacion`, `SalarioL`) VALUES
(16, 'Desarrollador de paginas web', 'Paginas web', 144000, 'De ley', 50000, 1, 'CIENTO CUARENTA Y CUATRO MIL PESOS'),
(17, 'Técnico en sistema de cómputos', '1.Mantenimiento de computo. 2. Instalación de hardware ', 600000, 'De ley', 55000, 1, 'SEISCIENTOS MIL PESOS'),
(18, 'Diseñador de Creativos - Diseñador Gráfico', 'Diseñar elementos visuales para la web', 108000, 'De ley', 30000, 1, 'CIENTO OCHO MIL PESOS'),
(19, 'Ingeniero en sistemas especialista en Base de datos', 'Creacion y diseño de Bd', 10700, 'De ley', 2000, 2, 'DIEZ MIL SETECIENTOS PESOS'),
(20, 'Ingeniero en sistemas especialista en Testing', 'Testeado de sistemas ', 12000, 'De ley', 1000, 2, 'DOCE MIL PESOS'),
(21, 'Ingeniero eléctrico especialista en Comunicaciones', 'Diseño y Produccion de Circuitos Electricos', 13000, 'De ley', 3000, 2, 'TRECE MIL PESOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto_has_habilidad`
--

CREATE TABLE `puesto_has_habilidad` (
  `idPuesto` int(11) NOT NULL,
  `idHabilidad` int(11) NOT NULL,
  `Experiencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto_has_idioma`
--

CREATE TABLE `puesto_has_idioma` (
  `idPuesto` int(11) NOT NULL,
  `idIdioma` int(11) NOT NULL,
  `Nivel` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultadocandidato`
--

CREATE TABLE `resultadocandidato` (
  `EstatusProceso` varchar(45) NOT NULL,
  `Comentarios_area` varchar(45) NOT NULL,
  `Comentarios_ofertas_salario` varchar(45) NOT NULL,
  `Comentarios_area_seleccion` varchar(45) NOT NULL,
  `estatus` varchar(45) NOT NULL,
  `idSolicitud` int(11) NOT NULL,
  `Curp` varchar(18) NOT NULL,
  `Coeficiente_Intelectual` int(11) NOT NULL,
  `Personalidad` longtext NOT NULL,
  `apto_psico` int(3) NOT NULL,
  `Validar_ref` varchar(11) NOT NULL,
  `Calificacion_Medica` varchar(11) NOT NULL,
  `validacion` varchar(11) NOT NULL,
  `Calificacion` varchar(11) NOT NULL,
  `Califica_el_Perfil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `resultadocandidato`
--

INSERT INTO `resultadocandidato` (`EstatusProceso`, `Comentarios_area`, `Comentarios_ofertas_salario`, `Comentarios_area_seleccion`, `estatus`, `idSolicitud`, `Curp`, `Coeficiente_Intelectual`, `Personalidad`, `apto_psico`, `Validar_ref`, `Calificacion_Medica`, `validacion`, `Calificacion`, `Califica_el_Perfil`) VALUES
('3', 'N/A', 'N/A', 'N/A', 'Si', 5, 'MEHG501203MASRTL06', 120, 'Buena', 0, 'SI', 'APTO', 'SI', 'APTO', '10'),
('3', 'N/A', 'N/A', 'N/A', 'SI', 6, 'RAGF630503HJCMNR03', 100, 'buena', 0, 'SI', 'APTO', 'SI', 'APTO', '10'),
('3', 'N/A', 'N/A', 'N/A', 'SI', 5, 'HUHL720523HJCZRS04', 100, 'buena', 0, 'SI', 'APTO', 'SI', 'APTO', '10'),
('3', 'N/A', 'N/A', 'N/A', 'SI', 7, 'GOJG631109MJCMML04', 100, 'buena', 0, 'SI', 'APTO', 'SI', 'APTO', '10'),
('3', 'N/A', 'N/A', 'N/A', 'SI', 7, 'VAFG680629MJCZLL01', 100, 'buena', 0, 'SI', 'APTO', 'SI', 'APTO', '10'),
('3', 'N/A', 'N/A', 'N/A', 'SI', 7, 'GORJ860823MJCNMD06', 100, 'buena', 0, 'SI', 'APTO', 'SI', 'APTO', '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `idSolicitud` int(11) NOT NULL,
  `FechaSolicitud` date DEFAULT NULL,
  `NumeroVacante` int(11) DEFAULT NULL,
  `idArea` int(11) NOT NULL,
  `idPuesto` int(11) NOT NULL,
  `idNivelAcademico` int(11) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `idEstatus_Solicitud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`idSolicitud`, `FechaSolicitud`, `NumeroVacante`, `idArea`, `idPuesto`, `idNivelAcademico`, `idCarrera`, `idEstatus_Solicitud`) VALUES
(3, '2022-10-05', 4, 1, 16, 2, 3, 3),
(4, '2022-10-05', 4, 2, 18, 2, 2, 3),
(5, '2022-10-05', 2, 3, 21, 2, 1, 3),
(6, '2022-10-05', 4, 1, 19, 1, 1, 3),
(7, '2022-10-05', 4, 2, 20, 2, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subsidio`
--

CREATE TABLE `subsidio` (
  `id_subsidio` int(11) NOT NULL,
  `lim_inferior` float DEFAULT NULL,
  `lim_superior` float DEFAULT NULL,
  `subsidio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subsidio`
--

INSERT INTO `subsidio` (`id_subsidio`, `lim_inferior`, `lim_superior`, `subsidio`) VALUES
(1, 0.01, 58.19, 13.39),
(2, 58.2, 87.28, 13.38),
(3, 87.29, 114.24, 13.38),
(4, 114.25, 116.38, 12.92),
(5, 116.39, 146.25, 12.58),
(6, 146.26, 155.17, 11.65),
(7, 155.18, 175.51, 10.69),
(8, 175.52, 204.76, 9.69),
(9, 204.77, 234.01, 8.34),
(10, 234.02, 242.84, 7.16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_isr`
--

CREATE TABLE `tabla_isr` (
  `id_isr` int(11) NOT NULL,
  `limite_inf` float NOT NULL,
  `limite_sup` float NOT NULL,
  `cuota_fija` float DEFAULT NULL,
  `Porcentaje` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla_isr`
--

INSERT INTO `tabla_isr` (`id_isr`, `limite_inf`, `limite_sup`, `cuota_fija`, `Porcentaje`) VALUES
(1, 0.01, 644.58, 0, 1.92),
(2, 644.59, 5470.92, 12.38, 6.4),
(3, 5470.93, 9614.66, 321.26, 10.88),
(4, 9614.67, 11176.6, 772.1, 16),
(5, 11176.6, 13381.5, 1022.01, 17.92),
(6, 13381.5, 26988.5, 1417.12, 21.36),
(7, 26988.5, 42537.6, 4323.58, 23.52),
(8, 42537.6, 81211.2, 7980.73, 30),
(9, 81211.3, 108282, 19582.8, 32),
(10, 108282, 324845, 28245.4, 34),
(11, 324845, 100000000, 101877, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_contrato`
--

CREATE TABLE `tipo_contrato` (
  `tipo_contrato` int(11) NOT NULL,
  `descripción` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_contrato`
--

INSERT INTO `tipo_contrato` (`tipo_contrato`, `descripción`) VALUES
(1, 'Temporal'),
(2, 'Permanente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_nomina`
--

CREATE TABLE `tipo_nomina` (
  `id_nomina` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_nomina`
--

INSERT INTO `tipo_nomina` (`id_nomina`, `descripcion`) VALUES
(1, 'Obrero'),
(2, 'Tecnicos'),
(3, 'Supervisores'),
(6, 'Ingenieros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `idTurno` int(2) NOT NULL,
  `Tipo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`idTurno`, `Tipo`) VALUES
(1, 'Matutino'),
(2, 'Vespertino'),
(3, 'Nocturno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `Perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `usuario`, `password`, `nombre`, `Perfil`) VALUES
(1, 'Fernando', 'abcd1234', 'Luis Fernando', 1),
(2, 'Juanpe', 'aaaa1111', 'Juan Carloz Lopez', 1),
(6, 'Santi', 'a1234', 'SANTIAGO', 24);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`idAnuncio`),
  ADD KEY `fk_Anuncio_Contacto1` (`idcontacto`),
  ADD KEY `fk_Anuncio_Solicitud1` (`idSolicitud`),
  ADD KEY `fk_Anuncio_Publicidad1` (`idMedioPublicidad`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`);

--
-- Indices de la tabla `base_imss`
--
ALTER TABLE `base_imss`
  ADD PRIMARY KEY (`id_base`);

--
-- Indices de la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`Curp`),
  ADD KEY `fk_Candidato_EstadoCivil1` (`idEstadoCivil`);

--
-- Indices de la tabla `candidato_has_habilidad`
--
ALTER TABLE `candidato_has_habilidad`
  ADD PRIMARY KEY (`Curp`,`idHabilidad`),
  ADD KEY `fk_Candidato_has_Habilidad_Habilidad1` (`idHabilidad`);

--
-- Indices de la tabla `candidato_has_idioma`
--
ALTER TABLE `candidato_has_idioma`
  ADD PRIMARY KEY (`Curp`,`idIdioma`),
  ADD KEY `fk_Candidato_has_Idioma_Idioma1` (`idIdioma`);

--
-- Indices de la tabla `candidato_has_nivelacademico`
--
ALTER TABLE `candidato_has_nivelacademico`
  ADD PRIMARY KEY (`Curp`,`idNivelAcademico`,`idCarrera`),
  ADD KEY `fk_Candidato_has_NivelAcademico_NivelAcademico1` (`idNivelAcademico`),
  ADD KEY `fk_Candidato_has_NivelAcademico_Carrera1` (`idCarrera`);

--
-- Indices de la tabla `capacitacion`
--
ALTER TABLE `capacitacion`
  ADD PRIMARY KEY (`curp`,`idcurso`),
  ADD KEY `estatus_cap` (`idestatus_cap`),
  ADD KEY `idcurso` (`idcurso`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idCarrera`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idcontacto`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`IdContrato`),
  ADD KEY `fk_Contrato_CURP` (`Curp`) USING BTREE,
  ADD KEY `fk_Contrato_Jornada` (`idJornada`) USING BTREE,
  ADD KEY `fk_Contrato_Area` (`idArea`) USING BTREE,
  ADD KEY `fk_Contrato_Puesto` (`idPuesto`) USING BTREE,
  ADD KEY `Tipo_contrato` (`Tipo_contrato`),
  ADD KEY `Estatus_contrato` (`Estatus_contrato`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idcurso`);

--
-- Indices de la tabla `datos_de_empresa`
--
ALTER TABLE `datos_de_empresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Indices de la tabla `deducciones`
--
ALTER TABLE `deducciones`
  ADD PRIMARY KEY (`id_deduccion`);

--
-- Indices de la tabla `ded_nomina`
--
ALTER TABLE `ded_nomina`
  ADD PRIMARY KEY (`id_calnomina`,`Curp`,`id_deduccion`),
  ADD KEY `id_deduccion` (`id_deduccion`);

--
-- Indices de la tabla `detalle_nomina`
--
ALTER TABLE `detalle_nomina`
  ADD PRIMARY KEY (`id_calnomina`,`Curp`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Curp`),
  ADD KEY `idEstadoCivil` (`idEstadoCivil`);

--
-- Indices de la tabla `empleado_has_habilidad`
--
ALTER TABLE `empleado_has_habilidad`
  ADD PRIMARY KEY (`Curp`,`idHabilidad`),
  ADD KEY `idHabilidad` (`idHabilidad`);

--
-- Indices de la tabla `empleado_has_idioma`
--
ALTER TABLE `empleado_has_idioma`
  ADD PRIMARY KEY (`Curp`,`idIdioma`),
  ADD KEY `idIdioma` (`idIdioma`);

--
-- Indices de la tabla `empleado_has_nivelacademico`
--
ALTER TABLE `empleado_has_nivelacademico`
  ADD PRIMARY KEY (`Curp`,`idNivelAcademico`,`idCarrera`),
  ADD KEY `idNivelAcademico` (`idNivelAcademico`,`idCarrera`),
  ADD KEY `idCarrera` (`idCarrera`);

--
-- Indices de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  ADD PRIMARY KEY (`idEstadoCivil`);

--
-- Indices de la tabla `estatus_candidato`
--
ALTER TABLE `estatus_candidato`
  ADD PRIMARY KEY (`EstatusProceso`);

--
-- Indices de la tabla `estatus_capacitacion`
--
ALTER TABLE `estatus_capacitacion`
  ADD PRIMARY KEY (`idestatus_cap`);

--
-- Indices de la tabla `estatus_contrato`
--
ALTER TABLE `estatus_contrato`
  ADD PRIMARY KEY (`estatus_contrato`);

--
-- Indices de la tabla `estatus_curso`
--
ALTER TABLE `estatus_curso`
  ADD PRIMARY KEY (`idestatus`);

--
-- Indices de la tabla `estatus_solicitud`
--
ALTER TABLE `estatus_solicitud`
  ADD PRIMARY KEY (`idEstatus_Solicitud`);

--
-- Indices de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD PRIMARY KEY (`idHabilidad`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`idIdioma`);

--
-- Indices de la tabla `imss`
--
ALTER TABLE `imss`
  ADD PRIMARY KEY (`anio`);

--
-- Indices de la tabla `jordesc`
--
ALTER TABLE `jordesc`
  ADD PRIMARY KEY (`iddesc`),
  ADD KEY `jornada id` (`IdJornada`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`IdJornada`);

--
-- Indices de la tabla `mediopublicidad`
--
ALTER TABLE `mediopublicidad`
  ADD PRIMARY KEY (`idMedioPublicidad`);

--
-- Indices de la tabla `nivelacademico`
--
ALTER TABLE `nivelacademico`
  ADD PRIMARY KEY (`idNivelAcademico`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`id_calnomina`),
  ADD KEY `id_nomina` (`id_nomina`,`idperiodo`,`idArea`),
  ADD KEY `idArea` (`idArea`),
  ADD KEY `idperiodo` (`idperiodo`);

--
-- Indices de la tabla `percepcion`
--
ALTER TABLE `percepcion`
  ADD PRIMARY KEY (`id_Percepcion`);

--
-- Indices de la tabla `perfil_admo`
--
ALTER TABLE `perfil_admo`
  ADD PRIMARY KEY (`idPerfil`);

--
-- Indices de la tabla `perfil_has_proceso`
--
ALTER TABLE `perfil_has_proceso`
  ADD PRIMARY KEY (`idPerfil`,`idProceso`),
  ADD KEY `fk_PERFIL_HAS_PROCESO_PROCESO` (`idProceso`),
  ADD KEY `fk_PERFIL_HAS_PROCESO_PERMISOO` (`idPermiso`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`idperiodo`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `per_nomina`
--
ALTER TABLE `per_nomina`
  ADD PRIMARY KEY (`id_calnomina`,`Curp`,`id_Percepcion`),
  ADD KEY `id_Percepcion` (`id_Percepcion`);

--
-- Indices de la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`idProceso`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`idPuesto`);

--
-- Indices de la tabla `puesto_has_habilidad`
--
ALTER TABLE `puesto_has_habilidad`
  ADD PRIMARY KEY (`idPuesto`,`idHabilidad`),
  ADD KEY `fk_Puesto_has_habilidad_habilidad` (`idHabilidad`);

--
-- Indices de la tabla `puesto_has_idioma`
--
ALTER TABLE `puesto_has_idioma`
  ADD PRIMARY KEY (`idPuesto`,`idIdioma`),
  ADD KEY `fk_Puesto_has_habilidad_Idioma` (`idIdioma`);

--
-- Indices de la tabla `resultadocandidato`
--
ALTER TABLE `resultadocandidato`
  ADD KEY `idSolicitud` (`idSolicitud`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`idSolicitud`),
  ADD KEY `fk_Solicitud_Area1` (`idArea`),
  ADD KEY `fk_Solicitud_Puesto1` (`idPuesto`),
  ADD KEY `fk_Solicitud_Nivel_Academico1` (`idNivelAcademico`),
  ADD KEY `fk_Solicitud_Carrera1` (`idCarrera`),
  ADD KEY `fk_Solicitud_Estatus_Solicitud1` (`idEstatus_Solicitud`);

--
-- Indices de la tabla `subsidio`
--
ALTER TABLE `subsidio`
  ADD PRIMARY KEY (`id_subsidio`);

--
-- Indices de la tabla `tabla_isr`
--
ALTER TABLE `tabla_isr`
  ADD PRIMARY KEY (`id_isr`);

--
-- Indices de la tabla `tipo_contrato`
--
ALTER TABLE `tipo_contrato`
  ADD PRIMARY KEY (`tipo_contrato`);

--
-- Indices de la tabla `tipo_nomina`
--
ALTER TABLE `tipo_nomina`
  ADD PRIMARY KEY (`id_nomina`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`idTurno`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `fk_usuario_perfil` (`Perfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `idAnuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `base_imss`
--
ALTER TABLE `base_imss`
  MODIFY `id_base` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `idCarrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `idcontacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `IdContrato` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `datos_de_empresa`
--
ALTER TABLE `datos_de_empresa`
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `deducciones`
--
ALTER TABLE `deducciones`
  MODIFY `id_deduccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `detalle_nomina`
--
ALTER TABLE `detalle_nomina`
  MODIFY `id_calnomina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  MODIFY `idEstadoCivil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estatus_candidato`
--
ALTER TABLE `estatus_candidato`
  MODIFY `EstatusProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estatus_capacitacion`
--
ALTER TABLE `estatus_capacitacion`
  MODIFY `idestatus_cap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estatus_contrato`
--
ALTER TABLE `estatus_contrato`
  MODIFY `estatus_contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estatus_curso`
--
ALTER TABLE `estatus_curso`
  MODIFY `idestatus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estatus_solicitud`
--
ALTER TABLE `estatus_solicitud`
  MODIFY `idEstatus_Solicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  MODIFY `idHabilidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `idIdioma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jordesc`
--
ALTER TABLE `jordesc`
  MODIFY `iddesc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `IdJornada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `mediopublicidad`
--
ALTER TABLE `mediopublicidad`
  MODIFY `idMedioPublicidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `nivelacademico`
--
ALTER TABLE `nivelacademico`
  MODIFY `idNivelAcademico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `nomina`
--
ALTER TABLE `nomina`
  MODIFY `id_calnomina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `percepcion`
--
ALTER TABLE `percepcion`
  MODIFY `id_Percepcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `perfil_admo`
--
ALTER TABLE `perfil_admo`
  MODIFY `idPerfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `idperiodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proceso`
--
ALTER TABLE `proceso`
  MODIFY `idProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `puesto`
--
ALTER TABLE `puesto`
  MODIFY `idPuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `idSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `subsidio`
--
ALTER TABLE `subsidio`
  MODIFY `id_subsidio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tabla_isr`
--
ALTER TABLE `tabla_isr`
  MODIFY `id_isr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tipo_contrato`
--
ALTER TABLE `tipo_contrato`
  MODIFY `tipo_contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_nomina`
--
ALTER TABLE `tipo_nomina`
  MODIFY `id_nomina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `fk_Anuncio_Contacto1` FOREIGN KEY (`idcontacto`) REFERENCES `contacto` (`idcontacto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Anuncio_MedioPublicidad1` FOREIGN KEY (`idMedioPublicidad`) REFERENCES `mediopublicidad` (`idMedioPublicidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Anuncio_Publicidad1` FOREIGN KEY (`idMedioPublicidad`) REFERENCES `mediopublicidad` (`idMedioPublicidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Anuncio_Solicitud1` FOREIGN KEY (`idSolicitud`) REFERENCES `solicitud` (`idSolicitud`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `fk_Candidato_EstadoCivil1` FOREIGN KEY (`idEstadoCivil`) REFERENCES `estadocivil` (`idEstadoCivil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `candidato_has_habilidad`
--
ALTER TABLE `candidato_has_habilidad`
  ADD CONSTRAINT `fk_Candidato_has_Habilidad_Candidato1` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Candidato_has_Habilidad_Habilidad1` FOREIGN KEY (`idHabilidad`) REFERENCES `habilidad` (`idHabilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `candidato_has_idioma`
--
ALTER TABLE `candidato_has_idioma`
  ADD CONSTRAINT `fk_Candidato_has_Idioma_Candidato1` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Candidato_has_Idioma_Idioma1` FOREIGN KEY (`idIdioma`) REFERENCES `idioma` (`idIdioma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `candidato_has_nivelacademico`
--
ALTER TABLE `candidato_has_nivelacademico`
  ADD CONSTRAINT `fk_Candidato_has_NivelAcademico_Candidato1` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Candidato_has_NivelAcademico_Carrera1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Candidato_has_NivelAcademico_NivelAcademico1` FOREIGN KEY (`idNivelAcademico`) REFERENCES `nivelacademico` (`idNivelAcademico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `capacitacion`
--
ALTER TABLE `capacitacion`
  ADD CONSTRAINT `a` FOREIGN KEY (`idestatus_cap`) REFERENCES `estatus_capacitacion` (`idestatus_cap`),
  ADD CONSTRAINT `capacitacion_ibfk_1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`);

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contrato_ibfk_3` FOREIGN KEY (`idJornada`) REFERENCES `jornada` (`IdJornada`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contrato_ibfk_4` FOREIGN KEY (`Curp`) REFERENCES `empleado` (`Curp`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `contrato_ibfk_5` FOREIGN KEY (`Tipo_contrato`) REFERENCES `tipo_contrato` (`tipo_contrato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contrato_ibfk_6` FOREIGN KEY (`Estatus_contrato`) REFERENCES `estatus_contrato` (`estatus_contrato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ded_nomina`
--
ALTER TABLE `ded_nomina`
  ADD CONSTRAINT `ded_nomina_ibfk_2` FOREIGN KEY (`id_deduccion`) REFERENCES `deducciones` (`id_deduccion`),
  ADD CONSTRAINT `ded_nomina_ibfk_3` FOREIGN KEY (`id_calnomina`,`Curp`) REFERENCES `detalle_nomina` (`id_calnomina`, `Curp`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idEstadoCivil`) REFERENCES `estadocivil` (`idEstadoCivil`);

--
-- Filtros para la tabla `empleado_has_habilidad`
--
ALTER TABLE `empleado_has_habilidad`
  ADD CONSTRAINT `empleado_has_habilidad_ibfk_1` FOREIGN KEY (`idHabilidad`) REFERENCES `habilidad` (`idHabilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `empleado_has_habilidad_ibfk_2` FOREIGN KEY (`Curp`) REFERENCES `empleado` (`Curp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado_has_idioma`
--
ALTER TABLE `empleado_has_idioma`
  ADD CONSTRAINT `empleado_has_idioma_ibfk_1` FOREIGN KEY (`idIdioma`) REFERENCES `idioma` (`idIdioma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `empleado_has_idioma_ibfk_2` FOREIGN KEY (`Curp`) REFERENCES `empleado` (`Curp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado_has_nivelacademico`
--
ALTER TABLE `empleado_has_nivelacademico`
  ADD CONSTRAINT `empleado_has_nivelacademico_ibfk_1` FOREIGN KEY (`idNivelAcademico`) REFERENCES `nivelacademico` (`idNivelAcademico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `empleado_has_nivelacademico_ibfk_2` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `empleado_has_nivelacademico_ibfk_3` FOREIGN KEY (`Curp`) REFERENCES `empleado` (`Curp`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `jordesc`
--
ALTER TABLE `jordesc`
  ADD CONSTRAINT `jornada id` FOREIGN KEY (`IdJornada`) REFERENCES `jornada` (`IdJornada`) ON DELETE CASCADE;

--
-- Filtros para la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD CONSTRAINT `nomina_ibfk_2` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`),
  ADD CONSTRAINT `nomina_ibfk_3` FOREIGN KEY (`idperiodo`) REFERENCES `periodo` (`idperiodo`),
  ADD CONSTRAINT `nomina_ibfk_4` FOREIGN KEY (`id_nomina`) REFERENCES `tipo_nomina` (`id_nomina`);

--
-- Filtros para la tabla `perfil_has_proceso`
--
ALTER TABLE `perfil_has_proceso`
  ADD CONSTRAINT `fk_PERFIL_HAS_PROCESO_PERMISOO` FOREIGN KEY (`idPermiso`) REFERENCES `permisos` (`id_permiso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PERFIL_HAS_PROCESO_PROCESO` FOREIGN KEY (`idProceso`) REFERENCES `proceso` (`idProceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PERFIL_HAS_PROCESO_perfil` FOREIGN KEY (`idPerfil`) REFERENCES `perfil_admo` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `per_nomina`
--
ALTER TABLE `per_nomina`
  ADD CONSTRAINT `per_nomina_ibfk_2` FOREIGN KEY (`id_Percepcion`) REFERENCES `percepcion` (`id_Percepcion`),
  ADD CONSTRAINT `per_nomina_ibfk_3` FOREIGN KEY (`id_calnomina`,`Curp`) REFERENCES `detalle_nomina` (`id_calnomina`, `Curp`);

--
-- Filtros para la tabla `puesto_has_habilidad`
--
ALTER TABLE `puesto_has_habilidad`
  ADD CONSTRAINT `fk_Puesto_has_habilidad_habilidad` FOREIGN KEY (`idHabilidad`) REFERENCES `habilidad` (`idHabilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Puesto_has_habilidad_puesto` FOREIGN KEY (`idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `puesto_has_idioma`
--
ALTER TABLE `puesto_has_idioma`
  ADD CONSTRAINT `fk_Puesto_has_Idioma_Puesto` FOREIGN KEY (`idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Puesto_has_habilidad_Idioma` FOREIGN KEY (`idIdioma`) REFERENCES `idioma` (`idIdioma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `resultadocandidato`
--
ALTER TABLE `resultadocandidato`
  ADD CONSTRAINT `resultadocandidato_ibfk_1` FOREIGN KEY (`idSolicitud`) REFERENCES `solicitud` (`idSolicitud`);

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `fk_Solicitud_Area1` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Carrera1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Estatus_Solicitud1` FOREIGN KEY (`idEstatus_Solicitud`) REFERENCES `estatus_solicitud` (`idEstatus_Solicitud`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Nivel_Academico1` FOREIGN KEY (`idNivelAcademico`) REFERENCES `nivelacademico` (`idNivelAcademico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Puesto1` FOREIGN KEY (`idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_perfil` FOREIGN KEY (`Perfil`) REFERENCES `perfil_admo` (`idPerfil`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
