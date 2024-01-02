-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-01-2024 a las 21:29:47
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tinacos_felices`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add estado', 1, 'add_estado'),
(2, 'Can change estado', 1, 'change_estado'),
(3, 'Can delete estado', 1, 'delete_estado'),
(4, 'Can view estado', 1, 'view_estado'),
(5, 'Can add modelos tinaco', 2, 'add_modelostinaco'),
(6, 'Can change modelos tinaco', 2, 'change_modelostinaco'),
(7, 'Can delete modelos tinaco', 2, 'delete_modelostinaco'),
(8, 'Can view modelos tinaco', 2, 'view_modelostinaco'),
(9, 'Can add modulo', 3, 'add_modulo'),
(10, 'Can change modulo', 3, 'change_modulo'),
(11, 'Can delete modulo', 3, 'delete_modulo'),
(12, 'Can view modulo', 3, 'view_modulo'),
(13, 'Can add tamaño tinaco', 4, 'add_tamañotinaco'),
(14, 'Can change tamaño tinaco', 4, 'change_tamañotinaco'),
(15, 'Can delete tamaño tinaco', 4, 'delete_tamañotinaco'),
(16, 'Can view tamaño tinaco', 4, 'view_tamañotinaco'),
(17, 'Can add tipo mantenimiento', 5, 'add_tipomantenimiento'),
(18, 'Can change tipo mantenimiento', 5, 'change_tipomantenimiento'),
(19, 'Can delete tipo mantenimiento', 5, 'delete_tipomantenimiento'),
(20, 'Can view tipo mantenimiento', 5, 'view_tipomantenimiento'),
(21, 'Can add tinaco', 6, 'add_tinaco'),
(22, 'Can change tinaco', 6, 'change_tinaco'),
(23, 'Can delete tinaco', 6, 'delete_tinaco'),
(24, 'Can view tinaco', 6, 'view_tinaco'),
(25, 'Can add s temperatura', 7, 'add_stemperatura'),
(26, 'Can change s temperatura', 7, 'change_stemperatura'),
(27, 'Can delete s temperatura', 7, 'delete_stemperatura'),
(28, 'Can view s temperatura', 7, 'view_stemperatura'),
(29, 'Can add s sharp', 8, 'add_ssharp'),
(30, 'Can change s sharp', 8, 'change_ssharp'),
(31, 'Can delete s sharp', 8, 'delete_ssharp'),
(32, 'Can view s sharp', 8, 'view_ssharp'),
(33, 'Can add s servo', 9, 'add_sservo'),
(34, 'Can change s servo', 9, 'change_sservo'),
(35, 'Can delete s servo', 9, 'delete_sservo'),
(36, 'Can view s servo', 9, 'view_sservo'),
(37, 'Can add s ph', 10, 'add_sph'),
(38, 'Can change s ph', 10, 'change_sph'),
(39, 'Can delete s ph', 10, 'delete_sph'),
(40, 'Can view s ph', 10, 'view_sph'),
(41, 'Can add s nivel de agua', 11, 'add_sniveldeagua'),
(42, 'Can change s nivel de agua', 11, 'change_sniveldeagua'),
(43, 'Can delete s nivel de agua', 11, 'delete_sniveldeagua'),
(44, 'Can view s nivel de agua', 11, 'view_sniveldeagua'),
(45, 'Can add fuera de rango', 12, 'add_fueraderango'),
(46, 'Can change fuera de rango', 12, 'change_fueraderango'),
(47, 'Can delete fuera de rango', 12, 'delete_fueraderango'),
(48, 'Can view fuera de rango', 12, 'view_fueraderango'),
(49, 'Can add costos', 13, 'add_costos'),
(50, 'Can change costos', 13, 'change_costos'),
(51, 'Can delete costos', 13, 'delete_costos'),
(52, 'Can view costos', 13, 'view_costos'),
(53, 'Can add log entry', 14, 'add_logentry'),
(54, 'Can change log entry', 14, 'change_logentry'),
(55, 'Can delete log entry', 14, 'delete_logentry'),
(56, 'Can view log entry', 14, 'view_logentry'),
(57, 'Can add permission', 15, 'add_permission'),
(58, 'Can change permission', 15, 'change_permission'),
(59, 'Can delete permission', 15, 'delete_permission'),
(60, 'Can view permission', 15, 'view_permission'),
(61, 'Can add group', 16, 'add_group'),
(62, 'Can change group', 16, 'change_group'),
(63, 'Can delete group', 16, 'delete_group'),
(64, 'Can view group', 16, 'view_group'),
(65, 'Can add user', 17, 'add_user'),
(66, 'Can change user', 17, 'change_user'),
(67, 'Can delete user', 17, 'delete_user'),
(68, 'Can view user', 17, 'view_user'),
(69, 'Can add content type', 18, 'add_contenttype'),
(70, 'Can change content type', 18, 'change_contenttype'),
(71, 'Can delete content type', 18, 'delete_contenttype'),
(72, 'Can view content type', 18, 'view_contenttype'),
(73, 'Can add session', 19, 'add_session'),
(74, 'Can change session', 19, 'change_session'),
(75, 'Can delete session', 19, 'delete_session'),
(76, 'Can view session', 19, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$2hVtTxcc4nQVC4pLypS88e$Hc6hFyR893yCkSkQMujxWK4zrUol5m0K5++lrvzxgLw=', '2024-01-02 20:21:57.412691', 0, 'AldoDanny', '', '', 'aldo.daniel1.ADRB@gmail.com', 0, 1, '2024-01-01 22:08:39.083817'),
(2, 'pbkdf2_sha256$260000$lMoGgDdalQUnM4In7vnNzj$g8QJPqjEQgTege8ZwnvyGIASF/01kuDmwMr7ydh2Cn8=', '2024-01-02 20:16:55.769279', 0, 'Angel Mendoza', '', '', 'angel.andres47@gmail.com', 0, 1, '2024-01-01 23:08:20.217509'),
(3, 'pbkdf2_sha256$260000$Y1b7kSSbJcUeRJG7fNSarY$Qp+Hc8FQM8Me3POCQcGMK4bl/WPdYvu2zorPQxXCPBc=', '2024-01-02 19:24:07.020344', 0, 'Brandon Silva', '', '', 'ezzepekeniobranditon0618@gmail.com', 0, 1, '2024-01-02 19:20:17.324742'),
(4, 'pbkdf2_sha256$260000$pZqpbAzC76Jl8L5SZHqlRE$0J8Ehc77j9kEs0ZlmvgRnj/DibXxyZNgiTXy7fQHt5c=', '2024-01-02 19:24:34.994759', 0, 'TED', '', '', 'tedsito@gmail.com', 0, 1, '2024-01-02 19:21:03.038031'),
(5, 'pbkdf2_sha256$260000$Y1b7kSSbJcUeRJG7fNSarY$Qp+Hc8FQM8Me3POCQcGMK4bl/WPdYvu2zorPQxXCPBc=', '2024-01-02 19:26:22.916516', 0, 'Luis Enrique', '', '', 'Tibio30@hotmail.com', 0, 1, '2024-01-02 19:22:46.119412'),
(6, 'pbkdf2_sha256$260000$eKD7xizlYnB2I7t7SvQxN9$zvtZ+D/ZWD2qlYhIrRuZVVBqEqceUhIqtTzpJh4HmvA=', '2024-01-02 19:26:45.993827', 0, 'Marco Vallejo', '', '', 'marquitos14@gmail.com', 0, 1, '2024-01-02 19:23:34.901513');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costos`
--

CREATE TABLE `costos` (
  `idCostos` int(11) NOT NULL,
  `costo` varchar(45) NOT NULL,
  `tipo_mantenimiento_idtipo_mantenimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `costos`
--

INSERT INTO `costos` (`idCostos`, `costo`, `tipo_mantenimiento_idtipo_mantenimiento`) VALUES
(1, '$1200', 1),
(2, '$3000', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(14, 'admin', 'logentry'),
(13, 'api', 'costos'),
(1, 'api', 'estado'),
(12, 'api', 'fueraderango'),
(2, 'api', 'modelostinaco'),
(3, 'api', 'modulo'),
(11, 'api', 'sniveldeagua'),
(10, 'api', 'sph'),
(9, 'api', 'sservo'),
(8, 'api', 'ssharp'),
(7, 'api', 'stemperatura'),
(4, 'api', 'tamañotinaco'),
(6, 'api', 'tinaco'),
(5, 'api', 'tipomantenimiento'),
(16, 'auth', 'group'),
(15, 'auth', 'permission'),
(17, 'auth', 'user'),
(18, 'contenttypes', 'contenttype'),
(19, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-01-02 02:40:46.714502'),
(2, 'auth', '0001_initial', '2024-01-02 02:40:47.138236'),
(3, 'admin', '0001_initial', '2024-01-02 02:40:47.246164'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-01-02 02:40:47.259130'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-02 02:40:47.268107'),
(6, 'api', '0001_initial', '2024-01-02 02:40:48.108613'),
(7, 'api', '0002_auto_20240101_2039', '2024-01-02 02:40:48.937102'),
(8, 'api', '0003_initial', '2024-01-02 02:40:49.706316'),
(9, 'contenttypes', '0002_remove_content_type_name', '2024-01-02 02:40:49.799066'),
(10, 'auth', '0002_alter_permission_name_max_length', '2024-01-02 02:40:49.866033'),
(11, 'auth', '0003_alter_user_email_max_length', '2024-01-02 02:40:49.889533'),
(12, 'auth', '0004_alter_user_username_opts', '2024-01-02 02:40:49.905492'),
(13, 'auth', '0005_alter_user_last_login_null', '2024-01-02 02:40:49.956796'),
(14, 'auth', '0006_require_contenttypes_0002', '2024-01-02 02:40:49.964775'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2024-01-02 02:40:49.982099'),
(16, 'auth', '0008_alter_user_username_max_length', '2024-01-02 02:40:50.003041'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2024-01-02 02:40:50.025290'),
(18, 'auth', '0010_alter_group_name_max_length', '2024-01-02 02:40:50.053555'),
(19, 'auth', '0011_update_proxy_permissions', '2024-01-02 02:40:50.077328'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2024-01-02 02:40:50.123527'),
(21, 'sessions', '0001_initial', '2024-01-02 02:40:50.159430'),
(22, 'api', '0004_alter_costos_tipo_mantenimiento_idtipo_mantenimiento', '2024-01-02 02:58:05.898430'),
(23, 'api', '0005_alter_modelostinaco_tamaño_tinaco_idtamaño_tinaco', '2024-01-02 02:59:46.436219'),
(24, 'api', '0006_auto_20240101_2103', '2024-01-02 03:03:40.409631'),
(25, 'api', '0007_auto_20240101_2106', '2024-01-02 03:06:22.681043'),
(26, 'api', '0008_rename_acesso_de_tarjeta_tinaco_acceso_de_tarjeta', '2024-01-02 03:34:34.900913'),
(27, 'api', '0009_alter_fueraderango_modulo_idmodulo', '2024-01-02 03:57:02.653089'),
(28, 'api', '0010_auto_20240101_2158', '2024-01-02 03:58:44.828269');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hfvt2z6kyu7f39mkiwyv35jtci7u1gz8', '.eJxVjE0OwiAYRO_C2hAQWqxL9z0D-X5AqgaS0q6Mdy9NuqjLmXnzvsLDuiS_1jD7icVdaHE5dwj0Dnkf-AX5WSSVvMwTyh2Rx1rlWDh8Hgf7J0hQU3ujvUGMoMmhYjC2RzUgaugM90hMpLHJbIDYguqumtk6Vg7MwJZMFL8NLmg55A:1rKlGv:OlzEeZc1u02dHvmUetCyIyP6D3-bweW9icmCf5DSCMI', '2024-01-16 20:21:57.414684');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL,
  `nombre_estado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idEstado`, `nombre_estado`) VALUES
(1, 'Aguascalientes'),
(2, 'Baja California'),
(3, 'Baja California Sur'),
(4, 'Campeche'),
(5, 'Coahuila'),
(6, 'Colima'),
(7, 'Chiapas'),
(8, 'Chihuahua'),
(9, 'Durango'),
(10, 'Ciudad de México'),
(11, 'Guanajuato'),
(12, 'Guerrero'),
(13, 'Hidalgo'),
(14, 'Jalisco'),
(15, 'Estado de México'),
(16, 'Michoacán'),
(17, 'Morelos'),
(18, 'Nayarit'),
(19, 'Nuevo León'),
(20, 'Oaxaca'),
(21, 'Puebla'),
(22, 'Querétaro'),
(23, 'Quintana Roo'),
(24, 'San Luis Potosí'),
(25, 'Sinaloa'),
(26, 'Sonora'),
(27, 'Tabasco'),
(28, 'Tamaulipas'),
(29, 'Tlaxcala'),
(30, 'Veracruz'),
(31, 'Yucatán'),
(32, 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fuera_de_rango`
--

CREATE TABLE `fuera_de_rango` (
  `id` bigint(20) NOT NULL,
  `Fecha_y_Hora` datetime(6) DEFAULT NULL,
  `datos_sensor` double DEFAULT NULL,
  `Tinaco_Folio` int(11) NOT NULL,
  `TipoSensor` varchar(45) NOT NULL,
  `Modulo_idModulo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos_tinaco`
--

CREATE TABLE `modelos_tinaco` (
  `idModelos_tinaco` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Descripcion` varchar(90) NOT NULL,
  `Tamaño_tinaco_idTamaño_tinaco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modelos_tinaco`
--

INSERT INTO `modelos_tinaco` (`idModelos_tinaco`, `Nombre`, `Descripcion`, `Tamaño_tinaco_idTamaño_tinaco`) VALUES
(1, 'TNSF_0C1', 'Tinaco de tamaño pequeño con todos los sensores', 1),
(2, 'TNSF_0M1', 'Tinaco de tamaño mediano con todos los sensores', 2),
(3, 'TNSF_0G1', 'Tinaco de tamaño grande con todos los sensores', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idModulo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idModulo`, `nombre`) VALUES
(0, 'Ninguna'),
(1, 'Tinaco'),
(2, 'Baño'),
(3, 'Regadera'),
(4, 'Pileta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_nivel_de_agua`
--

CREATE TABLE `s_nivel_de_agua` (
  `Fecha_y_Hora` datetime(6) NOT NULL,
  `datos_sensor` varchar(45) NOT NULL,
  `Modulo_idModulo` int(11) NOT NULL,
  `Tinaco_Folio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Disparadores `s_nivel_de_agua`
--
DELIMITER $$
CREATE TRIGGER `before_insert_s_nivel_de_agua` BEFORE INSERT ON `s_nivel_de_agua` FOR EACH ROW BEGIN
  DECLARE valor_sensor FLOAT;
  SET valor_sensor = NEW.datos_sensor;

  IF valor_sensor < 0 OR valor_sensor > 100 THEN
    INSERT INTO Fuera_de_Rango (Fecha_y_Hora, datos_sensor, Tinaco_Folio, Modulo_idModulo, TipoSensor)
    VALUES (NEW.Fecha_y_Hora, valor_sensor, NEW.Tinaco_Folio, NEW.Modulo_idModulo, 'nivel_agua');
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El valor del sensor de nivel de agua está fuera del rango permitido (0-100)';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_ph`
--

CREATE TABLE `s_ph` (
  `Fecha_y_Hora` datetime(6) NOT NULL,
  `datos_sensor` double NOT NULL,
  `Tinaco_Folio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Disparadores `s_ph`
--
DELIMITER $$
CREATE TRIGGER `before_insert_s_ph` BEFORE INSERT ON `s_ph` FOR EACH ROW BEGIN
  DECLARE valor_sensor FLOAT;
  SET valor_sensor = NEW.datos_sensor;

  IF valor_sensor < 1 OR valor_sensor > 14 THEN
    INSERT INTO Fuera_de_Rango (Fecha_y_Hora, datos_sensor, Tinaco_Folio, Modulo_idModulo, TipoSensor)
    VALUES (NEW.Fecha_y_Hora, valor_sensor, NEW.Tinaco_Folio, 0, 'ph');
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El valor del sensor de pH está fuera del rango permitido (1-14)';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_servo`
--

CREATE TABLE `s_servo` (
  `Fecha_y_Hora` datetime(6) NOT NULL,
  `datos_sensor` double NOT NULL,
  `Tinaco_Folio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `s_servo`
--

INSERT INTO `s_servo` (`Fecha_y_Hora`, `datos_sensor`, `Tinaco_Folio`) VALUES
('2023-06-01 14:30:00.000000', 0, 1),
('2023-06-03 17:00:00.000000', 49.5, 1),
('2023-06-05 19:30:00.000000', 65.2, 1),
('2023-06-06 20:45:00.000000', 76.1, 1),
('2023-06-08 23:15:00.000000', 0, 1),
('2023-07-01 17:00:00.000000', 105.4, 1),
('2023-07-02 18:15:00.000000', 96.5, 1),
('2023-07-03 19:30:00.000000', 0, 1),
('2023-07-04 20:45:00.000000', 76.7, 1),
('2023-07-05 22:00:00.000000', 65.8, 1),
('2023-07-06 23:15:00.000000', 0, 1),
('2023-07-09 14:30:00.000000', 105.2, 1),
('2023-07-10 15:45:00.000000', 116.3, 1),
('2023-08-01 19:30:00.000000', 70.6, 1),
('2023-08-02 20:45:00.000000', 99.5, 1),
('2023-08-03 22:00:00.000000', 0, 1),
('2023-08-05 14:30:00.000000', 66.2, 1),
('2023-08-07 14:30:00.000000', 45.8, 1),
('2023-08-08 15:45:00.000000', 47.9, 1),
('2023-08-09 17:00:00.000000', 54.8, 1),
('2023-08-10 18:15:00.000000', 69.7, 1),
('2023-08-12 15:45:00.000000', 55.1, 1),
('2023-08-13 17:00:00.000000', 0, 1),
('2023-08-14 18:15:00.000000', 43.1, 1),
('2023-08-16 20:45:00.000000', 61.3, 1),
('2023-09-05 14:30:00.000000', 60.6, 1),
('2023-09-17 22:00:00.000000', 0, 1),
('2023-09-18 23:15:00.000000', 81.5, 1),
('2023-09-19 14:30:00.000000', 92.6, 1),
('2023-09-20 15:45:00.000000', 103.7, 1),
('2023-09-21 17:00:00.000000', 114.8, 1),
('2023-09-24 20:45:00.000000', 97.9, 1),
('2023-09-25 22:00:00.000000', 0, 1),
('2023-10-13 15:45:00.000000', 59.5, 1),
('2023-10-14 17:00:00.000000', 48.4, 1),
('2023-10-15 18:15:00.000000', 47.3, 1),
('2023-10-17 20:45:00.000000', 0, 1),
('2023-10-19 23:15:00.000000', 83.1, 1),
('2023-10-20 14:30:00.000000', 92.2, 1),
('2023-10-22 17:00:00.000000', 110.4, 1),
('2023-10-23 18:15:00.000000', 0, 1),
('2023-10-25 20:45:00.000000', 93.7, 1),
('2023-10-26 22:00:00.000000', 84.8, 1),
('2023-11-02 18:15:00.000000', 113.1, 1),
('2023-11-03 17:00:00.000000', 0, 1),
('2023-11-04 15:45:00.000000', 101.1, 1),
('2023-11-05 14:30:00.000000', 96.2, 1),
('2023-11-06 23:15:00.000000', 87.3, 1),
('2023-11-07 22:00:00.000000', 0, 1),
('2023-11-09 19:30:00.000000', 50.6, 1),
('2023-11-27 23:15:00.000000', 75.9, 1),
('2023-11-28 14:30:00.000000', 66, 1),
('2023-11-29 15:45:00.000000', 57.9, 1),
('2023-11-30 17:00:00.000000', 0, 1),
('2023-12-01 19:30:00.000000', 102.2, 1),
('2023-12-02 20:45:00.000000', 91.3, 1),
('2023-12-03 22:00:00.000000', 0, 1),
('2023-12-04 23:15:00.000000', 71.5, 1),
('2023-12-05 14:30:00.000000', 62.6, 1),
('2023-12-07 17:00:00.000000', 0, 1),
('2023-12-09 19:30:00.000000', 66, 1),
('2023-12-12 23:15:00.000000', 69.7, 1),
('2023-12-13 14:30:00.000000', 0, 1),
('2023-12-14 15:45:00.000000', 49.5, 1);

--
-- Disparadores `s_servo`
--
DELIMITER $$
CREATE TRIGGER `before_insert_s_servo` BEFORE INSERT ON `s_servo` FOR EACH ROW BEGIN
  DECLARE valor_sensor FLOAT;
  SET valor_sensor = NEW.datos_sensor;

  IF valor_sensor < 0 OR valor_sensor > 180 THEN
    INSERT INTO Fuera_de_Rango (Fecha_y_Hora, datos_sensor, Tinaco_Folio, Modulo_idModulo, TipoSensor)
    VALUES (NEW.Fecha_y_Hora, valor_sensor, NEW.Tinaco_Folio, 0, 'servo');
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El valor del sensor de servo está fuera del rango permitido (0-180)';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_sharp`
--

CREATE TABLE `s_sharp` (
  `Fecha_y_Hora` datetime(6) NOT NULL,
  `datos_sensor` double NOT NULL,
  `Modulo_idModulo` int(11) NOT NULL,
  `Tinaco_Folio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Disparadores `s_sharp`
--
DELIMITER $$
CREATE TRIGGER `before_insert_s_sharp` BEFORE INSERT ON `s_sharp` FOR EACH ROW BEGIN
  DECLARE valor_sensor FLOAT;
  SET valor_sensor = NEW.datos_sensor;

  IF valor_sensor < 0 OR valor_sensor > 80 THEN
    INSERT INTO Fuera_de_Rango (Fecha_y_Hora, datos_sensor, Tinaco_Folio, Modulo_idModulo, TipoSensor)
    VALUES (NEW.Fecha_y_Hora, valor_sensor, NEW.Tinaco_Folio, NEW.Modulo_idModulo, 'sharp');
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El valor del sensor sharp está fuera del rango permitido (0-80)';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_temperatura`
--

CREATE TABLE `s_temperatura` (
  `Fecha_y_Hora` datetime(6) NOT NULL,
  `datos_sensor` double NOT NULL,
  `Modulo_idModulo` int(11) NOT NULL,
  `Tinaco_Folio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Disparadores `s_temperatura`
--
DELIMITER $$
CREATE TRIGGER `before_insert_s_temperatura` BEFORE INSERT ON `s_temperatura` FOR EACH ROW BEGIN
  DECLARE valor_sensor FLOAT;
  SET valor_sensor = NEW.datos_sensor;

  IF valor_sensor < 0 OR valor_sensor > 100 THEN
    INSERT INTO Fuera_de_Rango (Fecha_y_Hora, datos_sensor, Tinaco_Folio, Modulo_idModulo, TipoSensor)
    VALUES (NEW.Fecha_y_Hora, valor_sensor, NEW.Tinaco_Folio, NEW.Modulo_idModulo, 'temperatura');
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El valor del sensor de temperatura está fuera del rango permitido (0-100)';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tamaño_tinaco`
--

CREATE TABLE `tamaño_tinaco` (
  `idTamaño_tinaco` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tamaño_tinaco`
--

INSERT INTO `tamaño_tinaco` (`idTamaño_tinaco`, `Descripcion`) VALUES
(1, 'Chico'),
(2, 'Mediano'),
(3, 'Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tinaco`
--

CREATE TABLE `tinaco` (
  `Folio` int(11) NOT NULL,
  `Nombre_completo` varchar(250) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Contraseña` varchar(45) NOT NULL,
  `fecha_de_compras` date NOT NULL,
  `registro_apertura` int(11) NOT NULL,
  `acceso_de_keypad` int(11) NOT NULL,
  `acceso_de_tarjeta` int(11) NOT NULL,
  `duracion_apertura` int(11) NOT NULL,
  `intentos_erroneos` int(11) NOT NULL,
  `alarma_activacion` int(11) NOT NULL,
  `Estado_idEstado` int(11) NOT NULL,
  `Modelos_tinaco_idModelos_tinaco` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tinaco`
--

INSERT INTO `tinaco` (`Folio`, `Nombre_completo`, `Correo`, `Contraseña`, `fecha_de_compras`, `registro_apertura`, `acceso_de_keypad`, `acceso_de_tarjeta`, `duracion_apertura`, `intentos_erroneos`, `alarma_activacion`, `Estado_idEstado`, `Modelos_tinaco_idModelos_tinaco`, `id_usuario`) VALUES
(1, 'Aldo Daniel Ramirez Barajas', 'aldo.daniel1.adrb@gmail.com', '87654321', '2023-06-01', 64, 28, 36, 20, 17, 10, 16, 2, 1),
(2, 'Angel Andres Mendoza Agama', 'angel58524410@gmail.com', '12345678', '2023-11-01', 21, 13, 8, 30, 8, 5, 15, 1, 2),
(3, ' Brandon Yair Silva Nophal', 'ezzepekeniobranditon0618@gmail.com', '14523687', '2022-05-30', 118, 67, 48, 34, 38, 47, 15, 1, 3),
(4, 'Ted Silva Nophal', 'tedsito@gmail.com', '76325418', '2023-03-29', 89, 37, 52, 28, 24, 37, 17, 3, 4),
(5, 'Luis Enrique Franco Velazques', 'Tibio30@hotmail.com', '18273645', '2023-08-29', 98, 56, 42, 29, 38, 45, 18, 1, 5),
(6, 'Marco Antonio Vallejo Carrillo', 'marquitos14@gmail.com', '76543218', '2022-12-29', 112, 44, 68, 33, 23, 28, 19, 2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_mantenimiento`
--

CREATE TABLE `tipo_mantenimiento` (
  `idtipo_mantenimiento` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_mantenimiento`
--

INSERT INTO `tipo_mantenimiento` (`idtipo_mantenimiento`, `Descripcion`) VALUES
(1, 'Mantenimiento Preventivo'),
(2, 'Mantenimiento Correctivo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `costos`
--
ALTER TABLE `costos`
  ADD PRIMARY KEY (`idCostos`),
  ADD KEY `costos_tipo_mantenimiento_i_421b641b_fk_tipo_mant` (`tipo_mantenimiento_idtipo_mantenimiento`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idEstado`);

--
-- Indices de la tabla `fuera_de_rango`
--
ALTER TABLE `fuera_de_rango`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fuera_de_rango_Modulo_idModulo_96173d5e_fk_modulo_idModulo` (`Modulo_idModulo`);

--
-- Indices de la tabla `modelos_tinaco`
--
ALTER TABLE `modelos_tinaco`
  ADD PRIMARY KEY (`idModelos_tinaco`),
  ADD KEY `modelos_tinaco_Tamaño_tinaco_idTama_73572ad9_fk_tamaño_ti` (`Tamaño_tinaco_idTamaño_tinaco`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idModulo`);

--
-- Indices de la tabla `s_nivel_de_agua`
--
ALTER TABLE `s_nivel_de_agua`
  ADD PRIMARY KEY (`Fecha_y_Hora`),
  ADD KEY `s_nivel_de_agua_Tinaco_Folio_f81b567d_fk_tinaco_Folio` (`Tinaco_Folio`),
  ADD KEY `s_nivel_de_agua_Modulo_idModulo_e5ac7c31_fk_modulo_idModulo` (`Modulo_idModulo`);

--
-- Indices de la tabla `s_ph`
--
ALTER TABLE `s_ph`
  ADD PRIMARY KEY (`Fecha_y_Hora`),
  ADD KEY `s_ph_Tinaco_Folio_68f9ab51_fk_tinaco_Folio` (`Tinaco_Folio`);

--
-- Indices de la tabla `s_servo`
--
ALTER TABLE `s_servo`
  ADD PRIMARY KEY (`Fecha_y_Hora`),
  ADD KEY `s_servo_Tinaco_Folio_21e718ce_fk_tinaco_Folio` (`Tinaco_Folio`);

--
-- Indices de la tabla `s_sharp`
--
ALTER TABLE `s_sharp`
  ADD PRIMARY KEY (`Fecha_y_Hora`),
  ADD KEY `s_sharp_Tinaco_Folio_80313b8e_fk_tinaco_Folio` (`Tinaco_Folio`),
  ADD KEY `s_sharp_Modulo_idModulo_f239bb58_fk_modulo_idModulo` (`Modulo_idModulo`);

--
-- Indices de la tabla `s_temperatura`
--
ALTER TABLE `s_temperatura`
  ADD PRIMARY KEY (`Fecha_y_Hora`),
  ADD KEY `s_temperatura_Tinaco_Folio_c413f784_fk_tinaco_Folio` (`Tinaco_Folio`),
  ADD KEY `s_temperatura_Modulo_idModulo_6c1b2bd6_fk_modulo_idModulo` (`Modulo_idModulo`);

--
-- Indices de la tabla `tamaño_tinaco`
--
ALTER TABLE `tamaño_tinaco`
  ADD PRIMARY KEY (`idTamaño_tinaco`);

--
-- Indices de la tabla `tinaco`
--
ALTER TABLE `tinaco`
  ADD PRIMARY KEY (`Folio`),
  ADD KEY `tinaco_Estado_idEstado_c1a38980_fk_estado_idEstado` (`Estado_idEstado`),
  ADD KEY `tinaco_Modelos_tinaco_idMod_784095c3_fk_modelos_t` (`Modelos_tinaco_idModelos_tinaco`),
  ADD KEY `tinaco_id_usuario_b2ad791c_fk_auth_user_id` (`id_usuario`);

--
-- Indices de la tabla `tipo_mantenimiento`
--
ALTER TABLE `tipo_mantenimiento`
  ADD PRIMARY KEY (`idtipo_mantenimiento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `costos`
--
ALTER TABLE `costos`
  MODIFY `idCostos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `idEstado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `fuera_de_rango`
--
ALTER TABLE `fuera_de_rango`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modelos_tinaco`
--
ALTER TABLE `modelos_tinaco`
  MODIFY `idModelos_tinaco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idModulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tamaño_tinaco`
--
ALTER TABLE `tamaño_tinaco`
  MODIFY `idTamaño_tinaco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_mantenimiento`
--
ALTER TABLE `tipo_mantenimiento`
  MODIFY `idtipo_mantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `costos`
--
ALTER TABLE `costos`
  ADD CONSTRAINT `costos_tipo_mantenimiento_i_421b641b_fk_tipo_mant` FOREIGN KEY (`tipo_mantenimiento_idtipo_mantenimiento`) REFERENCES `tipo_mantenimiento` (`idtipo_mantenimiento`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `fuera_de_rango`
--
ALTER TABLE `fuera_de_rango`
  ADD CONSTRAINT `fuera_de_rango_Modulo_idModulo_96173d5e_fk_modulo_idModulo` FOREIGN KEY (`Modulo_idModulo`) REFERENCES `modulo` (`idModulo`);

--
-- Filtros para la tabla `modelos_tinaco`
--
ALTER TABLE `modelos_tinaco`
  ADD CONSTRAINT `modelos_tinaco_Tamaño_tinaco_idTama_73572ad9_fk_tamaño_ti` FOREIGN KEY (`Tamaño_tinaco_idTamaño_tinaco`) REFERENCES `tamaño_tinaco` (`idTamaño_tinaco`);

--
-- Filtros para la tabla `s_nivel_de_agua`
--
ALTER TABLE `s_nivel_de_agua`
  ADD CONSTRAINT `s_nivel_de_agua_Modulo_idModulo_e5ac7c31_fk_modulo_idModulo` FOREIGN KEY (`Modulo_idModulo`) REFERENCES `modulo` (`idModulo`),
  ADD CONSTRAINT `s_nivel_de_agua_Tinaco_Folio_f81b567d_fk_tinaco_Folio` FOREIGN KEY (`Tinaco_Folio`) REFERENCES `tinaco` (`Folio`);

--
-- Filtros para la tabla `s_ph`
--
ALTER TABLE `s_ph`
  ADD CONSTRAINT `s_ph_Tinaco_Folio_68f9ab51_fk_tinaco_Folio` FOREIGN KEY (`Tinaco_Folio`) REFERENCES `tinaco` (`Folio`);

--
-- Filtros para la tabla `s_servo`
--
ALTER TABLE `s_servo`
  ADD CONSTRAINT `s_servo_Tinaco_Folio_21e718ce_fk_tinaco_Folio` FOREIGN KEY (`Tinaco_Folio`) REFERENCES `tinaco` (`Folio`);

--
-- Filtros para la tabla `s_sharp`
--
ALTER TABLE `s_sharp`
  ADD CONSTRAINT `s_sharp_Modulo_idModulo_f239bb58_fk_modulo_idModulo` FOREIGN KEY (`Modulo_idModulo`) REFERENCES `modulo` (`idModulo`),
  ADD CONSTRAINT `s_sharp_Tinaco_Folio_80313b8e_fk_tinaco_Folio` FOREIGN KEY (`Tinaco_Folio`) REFERENCES `tinaco` (`Folio`);

--
-- Filtros para la tabla `s_temperatura`
--
ALTER TABLE `s_temperatura`
  ADD CONSTRAINT `s_temperatura_Modulo_idModulo_6c1b2bd6_fk_modulo_idModulo` FOREIGN KEY (`Modulo_idModulo`) REFERENCES `modulo` (`idModulo`),
  ADD CONSTRAINT `s_temperatura_Tinaco_Folio_c413f784_fk_tinaco_Folio` FOREIGN KEY (`Tinaco_Folio`) REFERENCES `tinaco` (`Folio`);

--
-- Filtros para la tabla `tinaco`
--
ALTER TABLE `tinaco`
  ADD CONSTRAINT `tinaco_Estado_idEstado_c1a38980_fk_estado_idEstado` FOREIGN KEY (`Estado_idEstado`) REFERENCES `estado` (`idEstado`),
  ADD CONSTRAINT `tinaco_Modelos_tinaco_idMod_784095c3_fk_modelos_t` FOREIGN KEY (`Modelos_tinaco_idModelos_tinaco`) REFERENCES `modelos_tinaco` (`idModelos_tinaco`),
  ADD CONSTRAINT `tinaco_id_usuario_b2ad791c_fk_auth_user_id` FOREIGN KEY (`id_usuario`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
