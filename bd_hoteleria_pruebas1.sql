-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2023 a las 21:51:41
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_hoteleria_pruebas1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_aplicaciones`
--

CREATE TABLE `tbl_aplicaciones` (
  `pk_id_aplicacion` int(11) NOT NULL,
  `nombre_aplicacion` varchar(50) NOT NULL,
  `descripcion_aplicacion` varchar(150) NOT NULL,
  `estado_aplicacion` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_aplicaciones`
--

INSERT INTO `tbl_aplicaciones` (`pk_id_aplicacion`, `nombre_aplicacion`, `descripcion_aplicacion`, `estado_aplicacion`) VALUES
(1, 'Menu', 'Ingreso Login', 1),
(999, 'Cerrar Sesion', 'Cerrar Sesion', 1),
(1000, 'MDI SEGURIDAD', 'PARA SEGURIDAD', 1),
(1001, 'Mant. Usuario', 'PARA SEGURIDAD', 1),
(1002, 'Mant. Aplicación', 'PARA SEGURIDAD', 1),
(1003, 'Mant. Modulo', 'PARA SEGURIDAD', 1),
(1004, 'Mant. Perfil', 'PARA SEGURIDAD', 1),
(1101, 'Asign. Modulo Aplicacion', 'PARA SEGURIDAD', 1),
(1102, 'Asign. Aplicacion Perfil', 'PARA SEGURIDAD', 1),
(1103, 'Asign. Perfil Usuario', 'PARA SEGURIDAD', 1),
(1201, 'Pcs. Cambio Contraseña', 'PARA SEGURIDAD', 1),
(1301, 'Pcs. BITACORA', 'PARA SEGURIDAD', 1),
(5000, 'MDI BANCOS', 'PARA BANCOS', 1),
(5001, 'Movimientos Bancarios', 'PARA BANCOS', 1),
(5002, 'Conciliacion Bancaria', 'PARA BANCOS', 1),
(5003, 'Tipo de cambio', 'PARA BANCOS', 1),
(5004, 'Disponibilidad diaria', 'PARA BANCOS', 1),
(5005, 'Autorizacion de ordenes de compras', 'PARA BANCOS', 1),
(5006, 'Mant. Ag.Bancos', 'PARA BANCOS', 1),
(5007, 'Mant. Ag.Cuentas', 'PARA BANCOS', 1),
(5008, 'Mant. Ag.Movimiento', 'PARA BANCOS', 1),
(5009, 'Mant. Ordenes de compra', 'PARA BANCOS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_asignacionesperfilsusuario`
--

CREATE TABLE `tbl_asignacionesperfilsusuario` (
  `fk_id_usuario` int(11) NOT NULL,
  `fk_id_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_asignacionesperfilsusuario`
--

INSERT INTO `tbl_asignacionesperfilsusuario` (`fk_id_usuario`, `fk_id_perfil`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_asignacionmoduloaplicacion`
--

CREATE TABLE `tbl_asignacionmoduloaplicacion` (
  `fk_id_modulos` int(11) NOT NULL,
  `fk_id_aplicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_asignacionmoduloaplicacion`
--

INSERT INTO `tbl_asignacionmoduloaplicacion` (`fk_id_modulos`, `fk_id_aplicacion`) VALUES
(1000, 1000),
(1000, 1001),
(1000, 1002),
(1000, 1003),
(1000, 1004),
(1000, 1102),
(1000, 1103),
(1000, 1201),
(1000, 1301),
(5000, 5000),
(5000, 5001),
(5000, 5002),
(5000, 5003),
(5000, 5004),
(5000, 5005),
(5000, 5006),
(5000, 5007),
(5000, 5008),
(5000, 5009);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_banco`
--

CREATE TABLE `tbl_banco` (
  `ban_id_Banco` int(11) NOT NULL,
  `fk_ban_Nombre_banco` varchar(100) DEFAULT NULL,
  `ban_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bitacoradeeventos`
--

CREATE TABLE `tbl_bitacoradeeventos` (
  `pk_id_bitacora` int(11) NOT NULL,
  `fk_id_usuario` int(11) NOT NULL,
  `fk_id_aplicacion` int(11) NOT NULL,
  `fecha_bitacora` date NOT NULL,
  `hora_bitacora` time NOT NULL,
  `host_bitacora` varchar(45) NOT NULL,
  `ip_bitacora` varchar(100) NOT NULL,
  `accion_bitacora` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_bitacoradeeventos`
--

INSERT INTO `tbl_bitacoradeeventos` (`pk_id_bitacora`, `fk_id_usuario`, `fk_id_aplicacion`, `fecha_bitacora`, `hora_bitacora`, `host_bitacora`, `ip_bitacora`, `accion_bitacora`) VALUES
(1, 1, 1, '2023-11-08', '16:12:34', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(2, 1, 5000, '2023-11-08', '16:12:35', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Ventas'),
(3, 1, 999, '2023-11-08', '16:12:52', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Cerro Sesion'),
(4, 1, 1, '2023-11-09', '07:14:34', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(5, 1, 1000, '2023-11-09', '07:14:36', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Seguridad'),
(6, 1, 1000, '2023-11-09', '07:14:56', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Seguridad'),
(7, 1, 999, '2023-11-09', '07:20:26', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Cerro Sesion'),
(8, 1, 1, '2023-11-09', '07:20:42', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(9, 1, 5000, '2023-11-09', '07:20:43', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Ventas'),
(10, 1, 1, '2023-11-09', '13:17:17', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(11, 1, 1000, '2023-11-09', '13:17:45', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Seguridad'),
(12, 1, 1001, '2023-11-09', '13:18:34', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Guardar'),
(13, 2, 1, '2023-11-09', '13:19:19', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(14, 2, 999, '2023-11-09', '13:19:23', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Cerro Sesion'),
(15, 1, 1, '2023-11-09', '13:19:28', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(16, 1, 1000, '2023-11-09', '13:19:30', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Seguridad'),
(17, 1, 5000, '2023-11-09', '13:20:09', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Ventas'),
(18, 1, 999, '2023-11-09', '14:50:37', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Cerro Sesion'),
(19, 1, 1, '2023-11-09', '14:51:48', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(20, 1, 1000, '2023-11-09', '14:51:50', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Seguridad'),
(21, 1, 1103, '2023-11-09', '14:54:14', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Asigno Perfil-Aplicacion'),
(22, 1, 999, '2023-11-09', '14:54:20', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Cerro Sesion'),
(23, 2, 1, '2023-11-09', '14:54:27', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(24, 2, 5000, '2023-11-09', '14:54:28', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Ventas'),
(25, 2, 999, '2023-11-09', '14:54:33', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Cerro Sesion'),
(26, 2, 1, '2023-11-09', '14:58:00', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(27, 2, 5000, '2023-11-09', '14:58:01', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Ventas'),
(28, 1, 1, '2023-11-20', '14:45:45', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(29, 1, 5000, '2023-11-20', '14:45:46', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Ventas'),
(30, 1, 1, '2023-11-20', '14:46:00', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(31, 1, 5000, '2023-11-20', '14:46:01', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Ventas'),
(32, 1, 999, '2023-11-20', '14:46:35', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Cerro Sesion'),
(33, 1, 1, '2023-11-20', '14:50:34', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Login'),
(34, 1, 5000, '2023-11-20', '14:50:35', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Ingreso Ventas'),
(35, 1, 5001, '2023-11-20', '14:50:36', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Movimientos Bancarios'),
(36, 1, 5002, '2023-11-20', '14:50:38', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Conciliacion Bancaria'),
(37, 1, 5003, '2023-11-20', '14:50:38', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Tipo de cambio'),
(38, 1, 5005, '2023-11-20', '14:50:42', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Aut. ordenes compra'),
(39, 1, 5005, '2023-11-20', '14:50:43', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Aut. ordenes compra'),
(40, 1, 5006, '2023-11-20', '14:50:45', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Mant. Agregar Bancos'),
(41, 1, 5007, '2023-11-20', '14:50:46', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Mant. Agregar Cuenta'),
(42, 1, 5008, '2023-11-20', '14:50:47', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Mant. Agregar Movimiento'),
(43, 1, 5009, '2023-11-20', '14:50:47', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Mant. Agregar orden Compra'),
(44, 1, 5008, '2023-11-20', '14:50:50', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Mant. Agregar Movimiento'),
(45, 1, 5007, '2023-11-20', '14:50:53', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Mant. Agregar Cuenta'),
(46, 1, 5006, '2023-11-20', '14:50:55', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Mant. Agregar Bancos'),
(47, 1, 999, '2023-11-20', '14:51:01', 'DESKTOP-H58GJ4O', 'fe80::c5cc:33e0:f9e3:711e%14', 'Cerro Sesion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conciliacion_bancaria`
--

CREATE TABLE `tbl_conciliacion_bancaria` (
  `pk_conb_id_conciliacion` int(11) NOT NULL,
  `conb_anio_conciliacion` varchar(100) DEFAULT NULL,
  `conb_mes_conciliacion` varchar(100) DEFAULT NULL,
  `fk_conb_mov_libro` float NOT NULL,
  `fk_conb_estatusConc` int(11) NOT NULL,
  `conb_mov_conciliacion` float DEFAULT NULL,
  `conb_saldo_final` float DEFAULT NULL,
  `conb_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cuentadestino`
--

CREATE TABLE `tbl_cuentadestino` (
  `cdes_id_proveedor` int(11) NOT NULL,
  `cdes_tipo_de_compra` varchar(100) DEFAULT NULL,
  `cdes_monto` float DEFAULT NULL,
  `fk_cdes_tipo_de_moneda` varchar(100) DEFAULT NULL,
  `cdes_valor_de_compra` float DEFAULT NULL,
  `cdes_nomproveedor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cuentaorigen`
--

CREATE TABLE `tbl_cuentaorigen` (
  `cori_id_numcuenta` int(11) NOT NULL,
  `cori_tipo_de_compra` varchar(100) DEFAULT NULL,
  `cori_monto` float DEFAULT NULL,
  `fk_cori_tipo_de_moneda` varchar(50) DEFAULT NULL,
  `cori_status` int(11) DEFAULT NULL,
  `cori_numCompra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_disponibilidad`
--

CREATE TABLE `tbl_disponibilidad` (
  `disp_id_disponible` int(11) NOT NULL,
  `disp_fecha` datetime DEFAULT NULL,
  `fk_disp_Id_banco` int(11) DEFAULT NULL,
  `fk_disp_Id_moneda` int(11) DEFAULT NULL,
  `disp_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estados`
--

CREATE TABLE `tbl_estados` (
  `pk_id_estado` int(11) NOT NULL,
  `est_info_estado` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `est_num_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_estados`
--

INSERT INTO `tbl_estados` (`pk_id_estado`, `est_info_estado`, `est_num_estado`) VALUES
(1, 'Activo', 1),
(2, 'Eliminado', 2),
(3, 'Modificado', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mantenimientos_agregar_bancos`
--

CREATE TABLE `tbl_mantenimientos_agregar_bancos` (
  `pk_manag_id_ban` int(11) NOT NULL,
  `manag_id_bancoag` int(11) DEFAULT NULL,
  `manag_nombre_banco` varchar(100) DEFAULT NULL,
  `manag_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_mantenimientos_agregar_bancos`
--

INSERT INTO `tbl_mantenimientos_agregar_bancos` (`pk_manag_id_ban`, `manag_id_bancoag`, `manag_nombre_banco`, `manag_status`) VALUES
(1, 111, 'Banco industrial', 1),
(2, 222, 'Banrural', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mantenimientos_agregar_cuenta`
--

CREATE TABLE `tbl_mantenimientos_agregar_cuenta` (
  `pk_manac_id_cuenta` int(11) NOT NULL,
  `manac_numero_de_cuenta` int(11) DEFAULT NULL,
  `fk_manac_tipo_de_moneda` varchar(100) DEFAULT NULL,
  `manac_tipo_de_cuenta` varchar(100) DEFAULT NULL,
  `fk_manac_selec_banco` varchar(50) DEFAULT NULL,
  `manac_alias` varchar(100) DEFAULT NULL,
  `manac_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_mantenimientos_agregar_cuenta`
--

INSERT INTO `tbl_mantenimientos_agregar_cuenta` (`pk_manac_id_cuenta`, `manac_numero_de_cuenta`, `fk_manac_tipo_de_moneda`, `manac_tipo_de_cuenta`, `fk_manac_selec_banco`, `manac_alias`, `manac_status`) VALUES
(1, 10001, 'Quetzales', 'Ahorro', 'Banco industrial', 'Luis Franco', 1),
(2, 10002, 'Dólares', 'Monetaria', 'Banrural', 'Juan Perez', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mantenimientos_ordenes_compra`
--

CREATE TABLE `tbl_mantenimientos_ordenes_compra` (
  `pk_manoc_id_ordenc` int(11) NOT NULL,
  `manoc_id_autorización` int(11) DEFAULT NULL,
  `manoc_nombre_compra` varchar(100) DEFAULT NULL,
  `manoc_nombre_proveedor` varchar(100) DEFAULT NULL,
  `manoc_monto` float DEFAULT NULL,
  `manoc_descripcion` varchar(100) DEFAULT NULL,
  `manoc_tipo_compra` varchar(100) DEFAULT NULL,
  `fk_manoc_tipo_moneda` varchar(100) DEFAULT NULL,
  `manoc_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mantenimientos_tipo_movimiento`
--

CREATE TABLE `tbl_mantenimientos_tipo_movimiento` (
  `pk_movtm_id_transaccion` int(11) NOT NULL,
  `movtm_transacciones_existentes` varchar(100) DEFAULT NULL,
  `movtm_status` int(11) DEFAULT NULL,
  `movtm_valor_transaccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_mantenimientos_tipo_movimiento`
--

INSERT INTO `tbl_mantenimientos_tipo_movimiento` (`pk_movtm_id_transaccion`, `movtm_transacciones_existentes`, `movtm_status`, `movtm_valor_transaccion`) VALUES
(1, 'Debito', 1, 0),
(2, 'Credito', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_modulos`
--

CREATE TABLE `tbl_modulos` (
  `pk_id_modulos` int(11) NOT NULL,
  `nombre_modulo` varchar(50) NOT NULL,
  `descripcion_modulo` varchar(150) NOT NULL,
  `estado_modulo` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_modulos`
--

INSERT INTO `tbl_modulos` (`pk_id_modulos`, `nombre_modulo`, `descripcion_modulo`, `estado_modulo`) VALUES
(1000, 'SEGURIDAD', 'Seguridad', 1),
(5000, 'SEGURIDAD', 'Seguridad', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_moneda`
--

CREATE TABLE `tbl_moneda` (
  `mon_id_moneda` int(11) NOT NULL,
  `fk_mon_nombre_moneda` varchar(50) DEFAULT NULL,
  `mon_Cant_moneda` float DEFAULT NULL,
  `mon_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_monedabanco`
--

CREATE TABLE `tbl_monedabanco` (
  `pk_mon_id_moneda` int(11) NOT NULL,
  `mon_nomMoneda` varchar(100) DEFAULT NULL,
  `mon_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_monedabanco`
--

INSERT INTO `tbl_monedabanco` (`pk_mon_id_moneda`, `mon_nomMoneda`, `mon_status`) VALUES
(1, 'Quetzales', NULL),
(2, 'Dólares', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_movimientosbancarios`
--

CREATE TABLE `tbl_movimientosbancarios` (
  `pk_movban_id_transaccion` int(11) NOT NULL,
  `movban_valor_transaccion` float NOT NULL,
  `movban_descripcion_transaccion` varchar(100) DEFAULT NULL,
  `fk_movban_num_cuenta` int(11) DEFAULT NULL,
  `fk_movban_tipo_transaccion` varchar(50) DEFAULT NULL,
  `fk_movban_valorTrans` int(11) NOT NULL,
  `movban_status` int(11) DEFAULT NULL,
  `movban_fecha_de_ingreso` datetime DEFAULT NULL,
  `manag_status_conciliacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_movimientosbancarios`
--

INSERT INTO `tbl_movimientosbancarios` (`pk_movban_id_transaccion`, `movban_valor_transaccion`, `movban_descripcion_transaccion`, `fk_movban_num_cuenta`, `fk_movban_tipo_transaccion`, `fk_movban_valorTrans`, `movban_status`, `movban_fecha_de_ingreso`, `manag_status_conciliacion`) VALUES
(1, 1500, 'Pago1', 10001, 'Debito', 0, 1, '2023-11-08 16:08:15', 0),
(2, 250, 'vcx', 10002, 'Debito', 0, 1, '2023-11-08 16:08:50', 0),
(3, 250, 'XD', 10001, 'Credito', 1, 1, '2023-11-08 16:31:00', 0),
(4, 5263.23, 'XDDDD', 10002, 'Credito', 1, 1, '2023-11-20 14:46:14', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_perfiles`
--

CREATE TABLE `tbl_perfiles` (
  `pk_id_perfil` int(11) NOT NULL,
  `nombre_perfil` varchar(50) NOT NULL,
  `descripcion_perfil` varchar(150) NOT NULL,
  `estado_perfil` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_perfiles`
--

INSERT INTO `tbl_perfiles` (`pk_id_perfil`, `nombre_perfil`, `descripcion_perfil`, `estado_perfil`) VALUES
(1, 'ADMINISTRADOR', 'contiene todos los permisos del programa', 1),
(2, 'SEGURIDAD', 'contiene todos los permisos de seguridad', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_permisosaplicacionesusuario`
--

CREATE TABLE `tbl_permisosaplicacionesusuario` (
  `fk_id_aplicacion` int(11) NOT NULL,
  `fk_id_usuario` int(11) NOT NULL,
  `guardar_permiso` tinyint(1) DEFAULT 0,
  `modificar_permiso` tinyint(1) DEFAULT 0,
  `eliminar_permiso` tinyint(1) DEFAULT 0,
  `buscar_permiso` tinyint(1) DEFAULT 0,
  `imprimir_permiso` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_permisosaplicacionperfil`
--

CREATE TABLE `tbl_permisosaplicacionperfil` (
  `fk_id_perfil` int(11) NOT NULL,
  `fk_id_aplicacion` int(11) NOT NULL,
  `guardar_permiso` tinyint(1) DEFAULT 0,
  `modificar_permiso` tinyint(1) DEFAULT 0,
  `eliminar_permiso` tinyint(1) DEFAULT 0,
  `buscar_permiso` tinyint(1) DEFAULT 0,
  `imprimir_permiso` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_permisosaplicacionperfil`
--

INSERT INTO `tbl_permisosaplicacionperfil` (`fk_id_perfil`, `fk_id_aplicacion`, `guardar_permiso`, `modificar_permiso`, `eliminar_permiso`, `buscar_permiso`, `imprimir_permiso`) VALUES
(1, 1000, 1, 1, 1, 1, 1),
(1, 1001, 1, 1, 1, 1, 1),
(1, 1002, 1, 1, 1, 1, 1),
(1, 1003, 1, 1, 1, 1, 1),
(1, 1004, 1, 1, 1, 1, 1),
(1, 1101, 1, 1, 1, 1, 1),
(1, 1102, 1, 1, 1, 1, 1),
(1, 1103, 1, 1, 1, 1, 1),
(1, 1201, 1, 1, 1, 1, 1),
(1, 1301, 1, 1, 1, 1, 1),
(1, 5000, 1, 1, 1, 1, 1),
(1, 5001, 1, 1, 1, 1, 1),
(1, 5002, 1, 1, 1, 1, 1),
(1, 5003, 1, 1, 1, 1, 1),
(1, 5004, 1, 1, 1, 1, 1),
(1, 5005, 1, 1, 1, 1, 1),
(1, 5006, 1, 1, 1, 1, 1),
(1, 5007, 1, 1, 1, 1, 1),
(1, 5008, 1, 1, 1, 1, 1),
(1, 5009, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registro_moneda`
--

CREATE TABLE `tbl_registro_moneda` (
  `regmon_id_Moneda` int(11) NOT NULL,
  `regmon_Tipo_moneda` varchar(100) DEFAULT NULL,
  `regmon_Valor_moneda` float DEFAULT NULL,
  `regmon_fecha_de_registro` datetime DEFAULT NULL,
  `regmon_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reportes`
--

CREATE TABLE `tbl_reportes` (
  `pk_id_reporte` int(11) NOT NULL,
  `rep_correlativo` int(11) DEFAULT NULL,
  `rep_nombre` varchar(50) DEFAULT NULL,
  `fk_estado` int(11) DEFAULT NULL,
  `rep_fecha` datetime DEFAULT NULL,
  `rep_archivo` varchar(120) DEFAULT NULL,
  `rep_fechaMod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_reportes`
--

INSERT INTO `tbl_reportes` (`pk_id_reporte`, `rep_correlativo`, `rep_nombre`, `fk_estado`, `rep_fecha`, `rep_archivo`, `rep_fechaMod`) VALUES
(10, 10002, 'planilssla.txt', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `pk_id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `apellido_usuario` varchar(50) NOT NULL,
  `username_usuario` varchar(20) NOT NULL,
  `password_usuario` varchar(100) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `estado_usuario` tinyint(4) NOT NULL DEFAULT 0,
  `pregunta` varchar(50) NOT NULL,
  `respuesta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`pk_id_usuario`, `nombre_usuario`, `apellido_usuario`, `username_usuario`, `password_usuario`, `email_usuario`, `estado_usuario`, `pregunta`, `respuesta`) VALUES
(1, 'admin', 'admin', 'admin', 'HO0aGo4nM94=', 'esduardo@gmail.com', 1, 'COLOR FAVORITO', 'X9yc1/l1b2A='),
(2, 'Jonathan', 'Arriaga', 'Jonathan', 'X9yc1/l1b2A=', 'Jonathan@gmail.com', 1, 'COLOR FAVORITO', 'X9yc1/l1b2A=');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_aplicacionusuario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_aplicacionusuario` (
`Aplicacion` int(11)
,`ID` int(11)
,`Usuario` varchar(50)
,`Insertar` tinyint(1)
,`Editar` tinyint(1)
,`Eliminar` tinyint(1)
,`Buscar` tinyint(1)
,`Reporte` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_aplicacion_perfil`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_aplicacion_perfil` (
`ID` int(11)
,`Perfil` varchar(50)
,`Aplicacion` int(11)
,`Insertar` tinyint(1)
,`Modificar` tinyint(1)
,`Eliminar` tinyint(1)
,`Buscar` tinyint(1)
,`Reporte` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_modulo_aplicacion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_modulo_aplicacion` (
`ID` int(11)
,`Modulo` varchar(50)
,`Aplicacion` int(11)
,`Nombre` varchar(50)
,`Descripcion` varchar(150)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_perfil_usuario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_perfil_usuario` (
`ID` int(11)
,`Usuario` varchar(50)
,`nickName` varchar(20)
,`perfil` int(11)
,`Nombre` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_aplicacionusuario`
--
DROP TABLE IF EXISTS `vista_aplicacionusuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_aplicacionusuario`  AS SELECT `b`.`fk_id_aplicacion` AS `Aplicacion`, `b`.`fk_id_usuario` AS `ID`, `a`.`nombre_usuario` AS `Usuario`, `b`.`guardar_permiso` AS `Insertar`, `b`.`modificar_permiso` AS `Editar`, `b`.`eliminar_permiso` AS `Eliminar`, `b`.`buscar_permiso` AS `Buscar`, `b`.`imprimir_permiso` AS `Reporte` FROM (`tbl_permisosaplicacionesusuario` `b` join `tbl_usuarios` `a` on(`a`.`pk_id_usuario` = `b`.`fk_id_usuario`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_aplicacion_perfil`
--
DROP TABLE IF EXISTS `vista_aplicacion_perfil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_aplicacion_perfil`  AS SELECT `b`.`fk_id_perfil` AS `ID`, `a`.`nombre_perfil` AS `Perfil`, `b`.`fk_id_aplicacion` AS `Aplicacion`, `b`.`guardar_permiso` AS `Insertar`, `b`.`modificar_permiso` AS `Modificar`, `b`.`eliminar_permiso` AS `Eliminar`, `b`.`buscar_permiso` AS `Buscar`, `b`.`imprimir_permiso` AS `Reporte` FROM (`tbl_permisosaplicacionperfil` `b` join `tbl_perfiles` `a` on(`a`.`pk_id_perfil` = `b`.`fk_id_perfil`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_modulo_aplicacion`
--
DROP TABLE IF EXISTS `vista_modulo_aplicacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_modulo_aplicacion`  AS SELECT `b`.`fk_id_modulos` AS `ID`, `a`.`nombre_modulo` AS `Modulo`, `b`.`fk_id_aplicacion` AS `Aplicacion`, `c`.`nombre_aplicacion` AS `Nombre`, `c`.`descripcion_aplicacion` AS `Descripcion` FROM ((`tbl_asignacionmoduloaplicacion` `b` join `tbl_modulos` `a` on(`a`.`pk_id_modulos` = `b`.`fk_id_modulos`)) join `tbl_aplicaciones` `c` on(`c`.`pk_id_aplicacion` = `b`.`fk_id_aplicacion`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_perfil_usuario`
--
DROP TABLE IF EXISTS `vista_perfil_usuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_perfil_usuario`  AS SELECT `b`.`fk_id_usuario` AS `ID`, `a`.`nombre_usuario` AS `Usuario`, `a`.`username_usuario` AS `nickName`, `b`.`fk_id_perfil` AS `perfil`, `c`.`nombre_perfil` AS `Nombre` FROM ((`tbl_asignacionesperfilsusuario` `b` join `tbl_usuarios` `a` on(`a`.`pk_id_usuario` = `b`.`fk_id_usuario`)) join `tbl_perfiles` `c` on(`c`.`pk_id_perfil` = `b`.`fk_id_perfil`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_aplicaciones`
--
ALTER TABLE `tbl_aplicaciones`
  ADD PRIMARY KEY (`pk_id_aplicacion`);

--
-- Indices de la tabla `tbl_asignacionesperfilsusuario`
--
ALTER TABLE `tbl_asignacionesperfilsusuario`
  ADD PRIMARY KEY (`fk_id_usuario`,`fk_id_perfil`),
  ADD KEY `fk_id_perfil` (`fk_id_perfil`);

--
-- Indices de la tabla `tbl_asignacionmoduloaplicacion`
--
ALTER TABLE `tbl_asignacionmoduloaplicacion`
  ADD PRIMARY KEY (`fk_id_modulos`,`fk_id_aplicacion`),
  ADD KEY `fk_id_aplicacion` (`fk_id_aplicacion`);

--
-- Indices de la tabla `tbl_banco`
--
ALTER TABLE `tbl_banco`
  ADD PRIMARY KEY (`ban_id_Banco`),
  ADD KEY `fk_ban_Nombre_banco` (`fk_ban_Nombre_banco`);

--
-- Indices de la tabla `tbl_bitacoradeeventos`
--
ALTER TABLE `tbl_bitacoradeeventos`
  ADD PRIMARY KEY (`pk_id_bitacora`),
  ADD KEY `fk_id_usuario` (`fk_id_usuario`),
  ADD KEY `fk_id_aplicacion` (`fk_id_aplicacion`);

--
-- Indices de la tabla `tbl_conciliacion_bancaria`
--
ALTER TABLE `tbl_conciliacion_bancaria`
  ADD PRIMARY KEY (`pk_conb_id_conciliacion`);

--
-- Indices de la tabla `tbl_cuentadestino`
--
ALTER TABLE `tbl_cuentadestino`
  ADD PRIMARY KEY (`cdes_id_proveedor`),
  ADD KEY `fk_cdes_tipo_de_moneda` (`fk_cdes_tipo_de_moneda`);

--
-- Indices de la tabla `tbl_cuentaorigen`
--
ALTER TABLE `tbl_cuentaorigen`
  ADD PRIMARY KEY (`cori_id_numcuenta`),
  ADD KEY `fk_cori_tipo_de_moneda` (`fk_cori_tipo_de_moneda`);

--
-- Indices de la tabla `tbl_disponibilidad`
--
ALTER TABLE `tbl_disponibilidad`
  ADD PRIMARY KEY (`disp_id_disponible`),
  ADD KEY `fk_disp_Id_banco` (`fk_disp_Id_banco`),
  ADD KEY `fk_disp_Id_moneda` (`fk_disp_Id_moneda`);

--
-- Indices de la tabla `tbl_estados`
--
ALTER TABLE `tbl_estados`
  ADD PRIMARY KEY (`pk_id_estado`);

--
-- Indices de la tabla `tbl_mantenimientos_agregar_bancos`
--
ALTER TABLE `tbl_mantenimientos_agregar_bancos`
  ADD PRIMARY KEY (`pk_manag_id_ban`),
  ADD UNIQUE KEY `manag_nombre_banco` (`manag_nombre_banco`);

--
-- Indices de la tabla `tbl_mantenimientos_agregar_cuenta`
--
ALTER TABLE `tbl_mantenimientos_agregar_cuenta`
  ADD PRIMARY KEY (`pk_manac_id_cuenta`),
  ADD UNIQUE KEY `manac_numero_de_cuenta` (`manac_numero_de_cuenta`),
  ADD KEY `fk_manac_selec_banco` (`fk_manac_selec_banco`),
  ADD KEY `fk_manac_tipo_de_moneda` (`fk_manac_tipo_de_moneda`);

--
-- Indices de la tabla `tbl_mantenimientos_ordenes_compra`
--
ALTER TABLE `tbl_mantenimientos_ordenes_compra`
  ADD PRIMARY KEY (`pk_manoc_id_ordenc`),
  ADD KEY `fk_manoc_tipo_moneda` (`fk_manoc_tipo_moneda`);

--
-- Indices de la tabla `tbl_mantenimientos_tipo_movimiento`
--
ALTER TABLE `tbl_mantenimientos_tipo_movimiento`
  ADD PRIMARY KEY (`pk_movtm_id_transaccion`),
  ADD UNIQUE KEY `movtm_transacciones_existentes` (`movtm_transacciones_existentes`);

--
-- Indices de la tabla `tbl_modulos`
--
ALTER TABLE `tbl_modulos`
  ADD PRIMARY KEY (`pk_id_modulos`);

--
-- Indices de la tabla `tbl_moneda`
--
ALTER TABLE `tbl_moneda`
  ADD PRIMARY KEY (`mon_id_moneda`),
  ADD KEY `fk_mon_nombre_moneda` (`fk_mon_nombre_moneda`);

--
-- Indices de la tabla `tbl_monedabanco`
--
ALTER TABLE `tbl_monedabanco`
  ADD PRIMARY KEY (`pk_mon_id_moneda`),
  ADD UNIQUE KEY `mon_nomMoneda` (`mon_nomMoneda`);

--
-- Indices de la tabla `tbl_movimientosbancarios`
--
ALTER TABLE `tbl_movimientosbancarios`
  ADD PRIMARY KEY (`pk_movban_id_transaccion`),
  ADD KEY `fk_movban_num_cuenta` (`fk_movban_num_cuenta`),
  ADD KEY `fk_movban_tipo_transaccion` (`fk_movban_tipo_transaccion`);

--
-- Indices de la tabla `tbl_perfiles`
--
ALTER TABLE `tbl_perfiles`
  ADD PRIMARY KEY (`pk_id_perfil`);

--
-- Indices de la tabla `tbl_permisosaplicacionesusuario`
--
ALTER TABLE `tbl_permisosaplicacionesusuario`
  ADD PRIMARY KEY (`fk_id_aplicacion`,`fk_id_usuario`),
  ADD KEY `fk_id_usuario` (`fk_id_usuario`);

--
-- Indices de la tabla `tbl_permisosaplicacionperfil`
--
ALTER TABLE `tbl_permisosaplicacionperfil`
  ADD PRIMARY KEY (`fk_id_perfil`,`fk_id_aplicacion`),
  ADD KEY `fk_id_aplicacion` (`fk_id_aplicacion`);

--
-- Indices de la tabla `tbl_registro_moneda`
--
ALTER TABLE `tbl_registro_moneda`
  ADD PRIMARY KEY (`regmon_id_Moneda`),
  ADD UNIQUE KEY `regmon_Tipo_moneda` (`regmon_Tipo_moneda`);

--
-- Indices de la tabla `tbl_reportes`
--
ALTER TABLE `tbl_reportes`
  ADD PRIMARY KEY (`pk_id_reporte`),
  ADD UNIQUE KEY `rep_correlativo` (`rep_correlativo`),
  ADD KEY `fk_estado` (`fk_estado`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`pk_id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_banco`
--
ALTER TABLE `tbl_banco`
  MODIFY `ban_id_Banco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_bitacoradeeventos`
--
ALTER TABLE `tbl_bitacoradeeventos`
  MODIFY `pk_id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `tbl_conciliacion_bancaria`
--
ALTER TABLE `tbl_conciliacion_bancaria`
  MODIFY `pk_conb_id_conciliacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cuentadestino`
--
ALTER TABLE `tbl_cuentadestino`
  MODIFY `cdes_id_proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cuentaorigen`
--
ALTER TABLE `tbl_cuentaorigen`
  MODIFY `cori_id_numcuenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_disponibilidad`
--
ALTER TABLE `tbl_disponibilidad`
  MODIFY `disp_id_disponible` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_estados`
--
ALTER TABLE `tbl_estados`
  MODIFY `pk_id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_mantenimientos_agregar_bancos`
--
ALTER TABLE `tbl_mantenimientos_agregar_bancos`
  MODIFY `pk_manag_id_ban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_mantenimientos_agregar_cuenta`
--
ALTER TABLE `tbl_mantenimientos_agregar_cuenta`
  MODIFY `pk_manac_id_cuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_mantenimientos_ordenes_compra`
--
ALTER TABLE `tbl_mantenimientos_ordenes_compra`
  MODIFY `pk_manoc_id_ordenc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_mantenimientos_tipo_movimiento`
--
ALTER TABLE `tbl_mantenimientos_tipo_movimiento`
  MODIFY `pk_movtm_id_transaccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_moneda`
--
ALTER TABLE `tbl_moneda`
  MODIFY `mon_id_moneda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_monedabanco`
--
ALTER TABLE `tbl_monedabanco`
  MODIFY `pk_mon_id_moneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_movimientosbancarios`
--
ALTER TABLE `tbl_movimientosbancarios`
  MODIFY `pk_movban_id_transaccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_perfiles`
--
ALTER TABLE `tbl_perfiles`
  MODIFY `pk_id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_registro_moneda`
--
ALTER TABLE `tbl_registro_moneda`
  MODIFY `regmon_id_Moneda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_reportes`
--
ALTER TABLE `tbl_reportes`
  MODIFY `pk_id_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `pk_id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_asignacionesperfilsusuario`
--
ALTER TABLE `tbl_asignacionesperfilsusuario`
  ADD CONSTRAINT `tbl_asignacionesperfilsusuario_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  ADD CONSTRAINT `tbl_asignacionesperfilsusuario_ibfk_2` FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`);

--
-- Filtros para la tabla `tbl_asignacionmoduloaplicacion`
--
ALTER TABLE `tbl_asignacionmoduloaplicacion`
  ADD CONSTRAINT `tbl_asignacionmoduloaplicacion_ibfk_1` FOREIGN KEY (`fk_id_modulos`) REFERENCES `tbl_modulos` (`pk_id_modulos`),
  ADD CONSTRAINT `tbl_asignacionmoduloaplicacion_ibfk_2` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`);

--
-- Filtros para la tabla `tbl_banco`
--
ALTER TABLE `tbl_banco`
  ADD CONSTRAINT `tbl_banco_ibfk_1` FOREIGN KEY (`fk_ban_Nombre_banco`) REFERENCES `tbl_mantenimientos_agregar_bancos` (`manag_nombre_banco`);

--
-- Filtros para la tabla `tbl_bitacoradeeventos`
--
ALTER TABLE `tbl_bitacoradeeventos`
  ADD CONSTRAINT `tbl_bitacoradeeventos_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  ADD CONSTRAINT `tbl_bitacoradeeventos_ibfk_2` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`);

--
-- Filtros para la tabla `tbl_cuentadestino`
--
ALTER TABLE `tbl_cuentadestino`
  ADD CONSTRAINT `tbl_cuentadestino_ibfk_1` FOREIGN KEY (`fk_cdes_tipo_de_moneda`) REFERENCES `tbl_registro_moneda` (`regmon_Tipo_moneda`);

--
-- Filtros para la tabla `tbl_cuentaorigen`
--
ALTER TABLE `tbl_cuentaorigen`
  ADD CONSTRAINT `tbl_cuentaorigen_ibfk_1` FOREIGN KEY (`fk_cori_tipo_de_moneda`) REFERENCES `tbl_registro_moneda` (`regmon_Tipo_moneda`);

--
-- Filtros para la tabla `tbl_disponibilidad`
--
ALTER TABLE `tbl_disponibilidad`
  ADD CONSTRAINT `tbl_disponibilidad_ibfk_1` FOREIGN KEY (`fk_disp_Id_banco`) REFERENCES `tbl_banco` (`ban_id_Banco`),
  ADD CONSTRAINT `tbl_disponibilidad_ibfk_2` FOREIGN KEY (`fk_disp_Id_moneda`) REFERENCES `tbl_moneda` (`mon_id_moneda`);

--
-- Filtros para la tabla `tbl_mantenimientos_agregar_cuenta`
--
ALTER TABLE `tbl_mantenimientos_agregar_cuenta`
  ADD CONSTRAINT `tbl_mantenimientos_agregar_cuenta_ibfk_1` FOREIGN KEY (`fk_manac_selec_banco`) REFERENCES `tbl_mantenimientos_agregar_bancos` (`manag_nombre_banco`),
  ADD CONSTRAINT `tbl_mantenimientos_agregar_cuenta_ibfk_2` FOREIGN KEY (`fk_manac_tipo_de_moneda`) REFERENCES `tbl_monedabanco` (`mon_nomMoneda`);

--
-- Filtros para la tabla `tbl_mantenimientos_ordenes_compra`
--
ALTER TABLE `tbl_mantenimientos_ordenes_compra`
  ADD CONSTRAINT `tbl_mantenimientos_ordenes_compra_ibfk_1` FOREIGN KEY (`fk_manoc_tipo_moneda`) REFERENCES `tbl_monedabanco` (`mon_nomMoneda`);

--
-- Filtros para la tabla `tbl_moneda`
--
ALTER TABLE `tbl_moneda`
  ADD CONSTRAINT `tbl_moneda_ibfk_1` FOREIGN KEY (`fk_mon_nombre_moneda`) REFERENCES `tbl_registro_moneda` (`regmon_Tipo_moneda`);

--
-- Filtros para la tabla `tbl_movimientosbancarios`
--
ALTER TABLE `tbl_movimientosbancarios`
  ADD CONSTRAINT `tbl_movimientosbancarios_ibfk_1` FOREIGN KEY (`fk_movban_num_cuenta`) REFERENCES `tbl_mantenimientos_agregar_cuenta` (`manac_numero_de_cuenta`),
  ADD CONSTRAINT `tbl_movimientosbancarios_ibfk_2` FOREIGN KEY (`fk_movban_tipo_transaccion`) REFERENCES `tbl_mantenimientos_tipo_movimiento` (`movtm_transacciones_existentes`);

--
-- Filtros para la tabla `tbl_permisosaplicacionesusuario`
--
ALTER TABLE `tbl_permisosaplicacionesusuario`
  ADD CONSTRAINT `tbl_permisosaplicacionesusuario_ibfk_1` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  ADD CONSTRAINT `tbl_permisosaplicacionesusuario_ibfk_2` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`);

--
-- Filtros para la tabla `tbl_permisosaplicacionperfil`
--
ALTER TABLE `tbl_permisosaplicacionperfil`
  ADD CONSTRAINT `tbl_permisosaplicacionperfil_ibfk_1` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  ADD CONSTRAINT `tbl_permisosaplicacionperfil_ibfk_2` FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`);

--
-- Filtros para la tabla `tbl_reportes`
--
ALTER TABLE `tbl_reportes`
  ADD CONSTRAINT `tbl_reportes_ibfk_1` FOREIGN KEY (`fk_estado`) REFERENCES `tbl_estados` (`pk_id_estado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
