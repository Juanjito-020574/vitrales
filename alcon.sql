<<<<<<< Updated upstream
-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.27 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para alcon
DROP DATABASE IF EXISTS `librosandinos_vitrales`;
CREATE DATABASE IF NOT EXISTS `librosandinos_vitrales` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `librosandinos_vitrales`;


-- Volcando estructura para tabla alcon.cdm
DROP TABLE IF EXISTS `cdm`;
CREATE TABLE IF NOT EXISTS `cdm` (
  `cotizacion_id` int(11) NOT NULL COMMENT 'campo=cotizacion_id&titulo=Num&nuevo=select&edit=select&select=$this->funSelect(''cotizacion'',''cotizacion_id'')&clase=algn_number&thwdth=50px',
  `materiales_id` varchar(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Material&visible=4&nuevo=select&edit=select&select=$this->funSelect(''materiales'',''materiales_id,nombre'')&attr=required&clase=algn_left',
  `nombre` varchar(150) DEFAULT NULL,
  `formula` varchar(343) DEFAULT NULL,
  `unidad` varchar(10) DEFAULT NULL,
  `precio` char(0) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='VIEW';

-- Volcando datos para la tabla alcon.cdm: ~67 rows (aproximadamente)
DELETE FROM `cdm`;
/*!40000 ALTER TABLE `cdm` DISABLE KEYS */;
INSERT INTO `cdm` (`cotizacion_id`, `materiales_id`, `nombre`, `formula`, `unidad`, `precio`) VALUES
	(1, 'A010', 'Felpa', '{A010_1A001_Ah:{dim:(1.3300*2)+(1.5200*(2+1)),cant:2},A010_1A002_Ah:{dim:(1.5500*2)+(1.3900*(2+1)),cant:2},A010_1A003_Ah:{dim:(2.4100*2)+(1.7700*(3+1)),cant:2},A010_1A004_Ah:{dim:(2.3800*2)+(1.7500*(3+1)),cant:2},A010_1A005_Ah:{dim:(2.3900*2)+(1.7200*(3+1)),cant:2}}', 'ml', ''),
	(1, 'A020', 'Burlete', '{A020_1A001_Ah:{dim:((1.3300*2)+(1.5200*2)*2),cant:1},A020_1A002_Ah:{dim:((1.5500*2)+(1.3900*2)*2),cant:1},A020_1A003_Ah:{dim:((2.4100*2)+(1.7700*3)*2),cant:1},A020_1A004_Ah:{dim:((2.3800*2)+(1.7500*3)*2),cant:1},A020_1A005_Ah:{dim:((2.3900*2)+(1.7200*3)*2),cant:1}}', 'ml', ''),
	(1, 'A030', 'Silicon', '{A030_1A001_Ah:{dim:(1.3300*1.5200)/3,cant:1},A030_1A002_Ah:{dim:(1.5500*1.3900)/3,cant:1},A030_1A003_Ah:{dim:(2.4100*1.7700)/3,cant:1},A030_1A004_Ah:{dim:(2.3800*1.7500)/3,cant:1},A030_1A005_Ah:{dim:(2.3900*1.7200)/3,cant:1}}', 'tubo', ''),
	(1, 'A040', 'Tornillo', '{A040_1A001_Ah:{dim:1,cant:30},A040_1A002_Ah:{dim:1,cant:30},A040_1A003_Ah:{dim:1,cant:30},A040_1A004_Ah:{dim:1,cant:30},A040_1A005_Ah:{dim:1,cant:30}}', 'pza', ''),
	(1, 'A090', 'Tarugos', '{A090_1A001_Ah:{dim:1,cant:12},A090_1A002_Ah:{dim:1,cant:12},A090_1A003_Ah:{dim:1,cant:12},A090_1A004_Ah:{dim:1,cant:12},A090_1A005_Ah:{dim:1,cant:12}}', 'pza', ''),
	(1, 'A100', 'Pico de Loro', '{A100_1A001_x:{dim:1,cant:1},A100_1A002_x:{dim:1,cant:1},A100_1A003_h:{dim:1,cant:1},A100_1A004_h:{dim:1,cant:1},A100_1A005_h:{dim:1,cant:1}}', 'pza', ''),
	(1, 'A2590', 'Ruedas', '{A2590_1A001_A:{dim:(1),cant:2},A2590_1A002_A:{dim:(1),cant:2},A2590_1A003_A:{dim:1,cant:2},A2590_1A004_A:{dim:1,cant:2},A2590_1A005_A:{dim:1,cant:2}}', 'pza', ''),
	(1, 'MO01', 'Mano de Obra', '{MO01_1A001_x:{dim:(1.3300*1.5200),cant:1},MO01_1A002_x:{dim:(1.5500*1.3900),cant:1},MO01_1A003_x:{dim:(2.4100*1.7700),cant:1},MO01_1A004_x:{dim:(2.3800*1.7500),cant:1},MO01_1A005_x:{dim:(2.3900*1.7200),cant:1}}', 'm2', ''),
	(1, 'P2501', 'Riel Superior', '{P2501_1A001_A:{dim:(1.3300+0.01),cant:1},P2501_1A002_A:{dim:(1.5500+0.01),cant:1},P2501_1A003_A:{dim:(2.4100+0.01),cant:1},P2501_1A004_A:{dim:(2.3800+0.01),cant:1},P2501_1A005_A:{dim:(2.3900+0.01),cant:1}}', 'barra', ''),
	(1, 'P2502', 'Riel Inferior', '{P2502_1A001_A:{dim:(1.3300+0.01),cant:1},P2502_1A002_A:{dim:(1.5500+0.01),cant:1},P2502_1A003_A:{dim:(2.4100+0.01),cant:1},P2502_1A004_A:{dim:(2.3800+0.01),cant:1},P2502_1A005_A:{dim:(2.3900+0.01),cant:1}}', 'barra', ''),
	(1, 'P2503', 'Jamba', '{P2503_1A001_h:{dim:(1.5200+0.01),cant:2},P2503_1A002_h:{dim:(1.3900+0.01),cant:2},P2503_1A003_h:{dim:(1.7700+0.01),cant:2},P2503_1A004_h:{dim:(1.7500+0.01),cant:2},P2503_1A005_h:{dim:(1.7200+0.01),cant:2}}', 'barra', ''),
	(1, 'P2504', 'Cabezal', '{P2504_1A001_A:{dim:(1.3300/2)+0.01,cant:2},P2504_1A002_A:{dim:(1.5500/2)+0.01,cant:2},P2504_1A003_A:{dim:(2.4100/3)+0.01,cant:3},P2504_1A004_A:{dim:(2.3800/3)+0.01,cant:3},P2504_1A005_A:{dim:(2.3900/3)+0.01,cant:3}}', 'barra', ''),
	(1, 'P2505', 'Zocalo', '{P2505_1A001_A:{dim:(1.3300/2)+0.01,cant:2},P2505_1A002_A:{dim:(1.5500/2)+0.01,cant:2},P2505_1A003_A:{dim:(2.4100/3)+0.01,cant:3},P2505_1A004_A:{dim:(2.3800/3)+0.01,cant:3},P2505_1A005_A:{dim:(2.3900/3)+0.01,cant:3}}', 'barra', ''),
	(1, 'P2507', 'Gancho', '{P2507_1A001_h:{dim:(1.5200+0.01),cant:2},P2507_1A002_h:{dim:(1.3900+0.01),cant:2},P2507_1A003_h:{dim:(1.7700+0.01),cant:2},P2507_1A004_h:{dim:(1.7500+0.01),cant:2},P2507_1A005_h:{dim:(1.7200+0.01),cant:2}}', 'barra', ''),
	(1, 'P2508', 'encuentro', '{P2508_1A003_h:{dim:(1.7700+0.01),cant:1},P2508_1A004_h:{dim:(1.7500+0.01),cant:1},P2508_1A005_h:{dim:(1.7200+0.01),cant:1}}', 'barra', ''),
	(1, 'P2510', 'Pierna', '{P2510_1A001_h:{dim:(1.5200+0.01),cant:2},P2510_1A002_h:{dim:(1.3900+0.01),cant:2},P2510_1A003_h:{dim:(1.7700+0.01),cant:4},P2510_1A004_h:{dim:(1.7500+0.01),cant:4},P2510_1A005_h:{dim:(1.7200+0.01),cant:4}}', 'barra', ''),
	(1, 'V04', 'Vidrio 4mm', '{V04_1A001_Ah:{dim:(1.3300/2)x(1.5200),cant:2},V04_1A002_Ah:{dim:(1.5500/2)x(1.3900),cant:2},V04_1A003_Ah:{dim:((2.4100/3))x((1.7700)),cant:3},V04_1A004_Ah:{dim:((2.3800/3))x((1.7500)),cant:3},V04_1A005_Ah:{dim:((2.3900/3))x((1.7200)),cant:3}}', 'plancha', ''),
	(2, 'A010', 'Felpa', '{A010_a1001_Ah:{dim:(2.5800*2)+(1.3500*(3+1)),cant:2},A010_a1002_Ah:{dim:(1.8900*2)+(1.3800*(2+1)),cant:2},A010_a1003_Ah:{dim:(1.9500*2)+(1.3600*(2+1)),cant:2},A010_a1004_Ah:{dim:(2.3600*2)+(1.4500*(3+1)),cant:2},A010_a1005_Ah:{dim:(2.8200*2)+(1.5200*(3+1)),cant:2},A010_a1006_Ah:{dim:(2.8400*2)+(2.5600*(3+1)),cant:2}}', 'ml', ''),
	(2, 'A020', 'Burlete', '{A020_a1001_Ah:{dim:((2.5800*2)+(1.3500*3)*2),cant:1},A020_a1002_Ah:{dim:((1.8900*2)+(1.3800*2)*2),cant:1},A020_a1003_Ah:{dim:((1.9500*2)+(1.3600*2)*2),cant:1},A020_a1004_Ah:{dim:((2.3600*2)+(1.4500*3)*2),cant:1},A020_a1005_Ah:{dim:((2.8200*2)+(1.5200*3)*2),cant:1},A020_a1006_Ah:{dim:((2.8400*2)+(2.5600*3)*2),cant:1}}', 'ml', ''),
	(2, 'A030', 'Silicon', '{A030_a1001_x:{dim:(2.5800*1.3500)/3,cant:1},A030_a1002_Ah:{dim:(1.8900*1.3800)/3,cant:1},A030_a1003_Ah:{dim:(1.9500*1.3600)/3,cant:1},A030_a1004_x:{dim:(2.3600*1.4500)/3,cant:1},A030_a1005_x:{dim:(2.8200*1.5200)/3,cant:1},A030_a1006_x:{dim:(2.8400*2.5600)/3,cant:1}}', 'tubo', ''),
	(2, 'A040', 'Tornillo', '{A040_a1001_Ah:{dim:1,cant:30},A040_a1002_x:{dim:1,cant:30},A040_a1003_x:{dim:1,cant:30},A040_a1004_Ah:{dim:1,cant:30},A040_a1005_Ah:{dim:1,cant:30},A040_a1006_Ah:{dim:1,cant:30}}', 'pza', ''),
	(2, 'A050', 'Remache', '{A050_a1001_x:{dim:1,cant:30},A050_a1002_x:{dim:1,cant:30},A050_a1003_x:{dim:1,cant:30},A050_a1004_x:{dim:1,cant:30},A050_a1005_x:{dim:1,cant:30},A050_a1006_x:{dim:1,cant:30}}', 'pza', ''),
	(2, 'A090', 'Tarugos', '{A090_a1001_Ah:{dim:1,cant:12},A090_a1002_x:{dim:1,cant:15},A090_a1003_x:{dim:1,cant:15},A090_a1004_Ah:{dim:1,cant:12},A090_a1005_Ah:{dim:1,cant:12},A090_a1006_Ah:{dim:1,cant:12}}', 'pza', ''),
	(2, 'A45KC_L', 'Kit cierres(lite)', '{A45KCL_a1001_x:{dim:(1),cant:1},A45KCL_a1002_x:{dim:(1),cant:1},A45KCL_a1003_x:{dim:(1),cant:1},A45KCL_a1004_x:{dim:(1),cant:1},A45KCL_a1005_x:{dim:(1),cant:1},A45KCL_a1006_x:{dim:(1),cant:1}}', 'unidad', ''),
	(2, 'A45KHF_L', 'Kit Hoja Fijas(lite)', '{A45KHFL_a1001_x:{dim:(3-1),cant:1},A45KHFL_a1002_x:{dim:(2-1),cant:1},A45KHFL_a1003_x:{dim:(2-1),cant:1},A45KHFL_a1004_x:{dim:(3-1),cant:1},A45KHFL_a1005_x:{dim:(3-1),cant:1},A45KHFL_a1006_x:{dim:(3-1),cant:1}}', 'unidad', ''),
	(2, 'A45KHM30_L', 'Kit Hoja Movil 30kgs(lite)', '{A45KHM30L_a1001_x:{dim:(1),cant:1},A45KHM30L_a1002_x:{dim:(1),cant:1},A45KHM30L_a1003_x:{dim:(1),cant:1},A45KHM30L_a1004_x:{dim:(1),cant:1},A45KHM30L_a1005_x:{dim:(1),cant:1},A45KHM30L_a1006_x:{dim:(1),cant:1}}', 'unidad', ''),
	(2, 'A45KM1_L', 'Kit marcos(lite)', '{A45KM1L_a1001_Ah:{dim:(1),cant:1},A45KM1L_a1002_x:{dim:(1),cant:1},A45KM1L_a1003_x:{dim:(1),cant:1},A45KM1L_a1004_Ah:{dim:(1),cant:1},A45KM1L_a1005_Ah:{dim:(1),cant:1},A45KM1L_a1006_Ah:{dim:(1),cant:1}}', 'unidad', ''),
	(2, 'MO01', 'Mano de Obra', '{MO01_a1001_x:{dim:(2.5800*1.3500),cant:1},MO01_a1002_Ah:{dim:(1.8900*1.3800),cant:1},MO01_a1003_Ah:{dim:(1.9500*1.3600),cant:1},MO01_a1004_x:{dim:(2.3600*1.4500),cant:1},MO01_a1005_x:{dim:(2.8200*1.5200),cant:1},MO01_a1006_x:{dim:(2.8400*2.5600),cant:1}}', 'm2', ''),
	(2, 'P3415', 'Marco lite', '{P3415_a1001_h:{dim:(1.3500+0.01),cant:2},P3415_a1001_A:{dim:(2.5800+0.01),cant:2},P3415_a1002_h:{dim:(1.3800+0.01),cant:2},P3415_a1002_A:{dim:(1.8900+0.01),cant:2},P3415_a1003_h:{dim:(1.3600+0.01),cant:2},P3415_a1003_A:{dim:(1.9500+0.01),cant:2},P3415_a1004_h:{dim:(1.4500+0.01),cant:2},P3415_a1004_A:{dim:(2.3600+0.01),cant:2},P3415_a1005_h:', 'barra', ''),
	(2, 'P3416', 'Hojas lite', '{P3416_a1001_h:{dim:((1.3500+0.01)/3)+.01,cant:6},P3416_a1001_A:{dim:(2.5800+0.01),cant:6},P3416_a1002_h:{dim:(1.3800+0.01),cant:4},P3416_a1002_A:{dim:(((1.8900/2)+0.01)+0.01),cant:4},P3416_a1003_h:{dim:(1.3600+0.01),cant:4},P3416_a1003_A:{dim:(((1.9500/2)+0.01)+0.01),cant:4},P3416_a1004_h:{dim:((1.4500+0.01)/3)+.01,cant:6},P3416_a1004_A:{di', 'barra', ''),
	(2, 'P3417', 'Entrecierres lite', '{P3417_a1001_h:{dim:(1.3500+0.01),cant:2},P3417_a1002_h:{dim:(1.3800+0.01),cant:2},P3417_a1003_h:{dim:(1.3600+0.01),cant:2},P3417_a1004_h:{dim:(1.4500+0.01),cant:2},P3417_a1005_h:{dim:(1.5200+0.01),cant:2},P3417_a1006_h:{dim:(2.5600+0.01),cant:2}}', 'barra', ''),
	(2, 'P3428', 'Adaptador Hojas lite', '{P3428_a1001_h:{dim:(1.3500+0.01),cant:1},P3428_a1004_h:{dim:(1.4500+0.01),cant:1},P3428_a1005_h:{dim:(1.5200+0.01),cant:1},P3428_a1006_h:{dim:(2.5600+0.01),cant:1}}', 'barra', ''),
	(2, 'V04', 'Vidrio 4mm', '{V04_a1001_x:{dim:(2.5800/3)x(1.3500),cant:3},V04_a1002_Ah:{dim:((1.8900/2))x((1.3800)),cant:2},V04_a1003_Ah:{dim:((1.9500/2))x((1.3600)),cant:2},V04_a1004_x:{dim:(2.3600/3)x(1.4500),cant:3},V04_a1005_x:{dim:(2.8200/3)x(1.5200),cant:3},V04_a1006_x:{dim:(2.8400/3)x(2.5600),cant:3}}', 'plancha', ''),
	(3, 'A010', 'Felpa', '{A010_1a001_Ah:{dim:(1.8900*2)+(1.3600*(3+1)),cant:2},A010_1a002_Ah:{dim:(1.3000*2)+(1.3600*(2+1)),cant:2}}', 'ml', ''),
	(3, 'A020', 'Burlete', '{A020_1a001_Ah:{dim:((1.8900*2)+(1.3600*3)*2),cant:1},A020_1a002_Ah:{dim:((1.3000*2)+(1.3600*2)*2),cant:1}}', 'ml', ''),
	(3, 'A030', 'Silicon', '{A030_1a001_Ah:{dim:(1.8900*1.3600)/3,cant:1},A030_1a002_Ah:{dim:(1.3000*1.3600)/3,cant:1}}', 'tubo', ''),
	(3, 'A040', 'Tornillo', '{A040_1a001_Ah:{dim:1,cant:30},A040_1a002_Ah:{dim:1,cant:30}}', 'pza', ''),
	(3, 'A090', 'Tarugos', '{A090_1a001_Ah:{dim:1,cant:12},A090_1a002_Ah:{dim:1,cant:12}}', 'pza', ''),
	(3, 'A100', 'Pico de Loro', '{A100_1a001_h:{dim:1,cant:1},A100_1a002_x:{dim:1,cant:1}}', 'pza', ''),
	(3, 'A2590', 'Ruedas', '{A2590_1a001_A:{dim:1,cant:2},A2590_1a002_A:{dim:(1),cant:2}}', 'pza', ''),
	(3, 'MO01', 'Mano de Obra', '{MO01_1a001_x:{dim:(1.8900*1.3600),cant:1},MO01_1a002_x:{dim:(1.3000*1.3600),cant:1}}', 'm2', ''),
	(3, 'P2501', 'Riel Superior', '{P2501_1a001_A:{dim:(1.8900+0.01),cant:1},P2501_1a002_A:{dim:(1.3000+0.01),cant:1}}', 'barra', ''),
	(3, 'P2502', 'Riel Inferior', '{P2502_1a001_A:{dim:(1.8900+0.01),cant:1},P2502_1a002_A:{dim:(1.3000+0.01),cant:1}}', 'barra', ''),
	(3, 'P2503', 'Jamba', '{P2503_1a001_h:{dim:(1.3600+0.01),cant:2},P2503_1a002_h:{dim:(1.3600+0.01),cant:2}}', 'barra', ''),
	(3, 'P2504', 'Cabezal', '{P2504_1a001_A:{dim:(1.8900/3)+0.01,cant:3},P2504_1a002_A:{dim:(1.3000/2)+0.01,cant:2}}', 'barra', ''),
	(3, 'P2505', 'Zocalo', '{P2505_1a001_A:{dim:(1.8900/3)+0.01,cant:3},P2505_1a002_A:{dim:(1.3000/2)+0.01,cant:2}}', 'barra', ''),
	(3, 'P2507', 'Gancho', '{P2507_1a001_h:{dim:(1.3600+0.01),cant:2},P2507_1a002_h:{dim:(1.3600+0.01),cant:2}}', 'barra', ''),
	(3, 'P2508', 'encuentro', '{P2508_1a001_h:{dim:(1.3600+0.01),cant:1}}', 'barra', ''),
	(3, 'P2510', 'Pierna', '{P2510_1a001_h:{dim:(1.3600+0.01),cant:4},P2510_1a002_h:{dim:(1.3600+0.01),cant:2}}', 'barra', ''),
	(3, 'V04', 'Vidrio 4mm', '{V04_1a001_Ah:{dim:((1.8900/3))x((1.3600)),cant:3},V04_1a002_Ah:{dim:(1.3000/2)x(1.3600),cant:2}}', 'plancha', ''),
	(4, 'A010', 'Felpa', '{A010_pb001_Ah:{dim:(1.8500*2)+(1.5100*(2+1)),cant:2},A010_pb002_Ah:{dim:(2.7500*2)+(1.5900*(3+1)),cant:2},A010_pb003_Ah:{dim:(1.3000*2)+(1.0000*(2+1)),cant:2},A010_pb004_Ah:{dim:(2.4200*2)+(1.6500*(3+1)),cant:2}}', 'ml', ''),
	(4, 'A020', 'Burlete', '{A020_pb001_Ah:{dim:((1.8500*2)+(1.5100*2)*2),cant:1},A020_pb002_Ah:{dim:((2.7500*2)+(1.5900*3)*2),cant:1},A020_pb003_Ah:{dim:((1.3000*2)+(1.0000*2)*2),cant:1},A020_pb004_Ah:{dim:((2.4200*2)+(1.6500*3)*2),cant:1}}', 'ml', ''),
	(4, 'A030', 'Silicon', '{A030_pb001_Ah:{dim:(1.8500*1.5100)/3,cant:1},A030_pb002_Ah:{dim:(2.7500*1.5900)/3,cant:1},A030_pb003_Ah:{dim:(1.3000*1.0000)/3,cant:1},A030_pb004_Ah:{dim:(2.4200*1.6500)/3,cant:1}}', 'tubo', ''),
	(4, 'A040', 'Tornillo', '{A040_pb001_Ah:{dim:1,cant:30},A040_pb002_Ah:{dim:1,cant:30},A040_pb003_Ah:{dim:1,cant:30},A040_pb004_Ah:{dim:1,cant:30}}', 'pza', ''),
	(4, 'A090', 'Tarugos', '{A090_pb001_Ah:{dim:1,cant:12},A090_pb002_Ah:{dim:1,cant:12},A090_pb003_Ah:{dim:1,cant:12},A090_pb004_Ah:{dim:1,cant:12}}', 'pza', ''),
	(4, 'A100', 'Pico de Loro', '{A100_pb001_x:{dim:1,cant:1},A100_pb002_h:{dim:1,cant:1},A100_pb003_x:{dim:1,cant:1},A100_pb004_h:{dim:1,cant:1}}', 'pza', ''),
	(4, 'A2590', 'Ruedas', '{A2590_pb001_A:{dim:(1),cant:2},A2590_pb002_A:{dim:1,cant:2},A2590_pb003_A:{dim:(1),cant:2},A2590_pb004_A:{dim:1,cant:2}}', 'pza', ''),
	(4, 'MO01', 'Mano de Obra', '{MO01_pb001_x:{dim:(1.8500*1.5100),cant:1},MO01_pb002_x:{dim:(2.7500*1.5900),cant:1},MO01_pb003_x:{dim:(1.3000*1.0000),cant:1},MO01_pb004_x:{dim:(2.4200*1.6500),cant:1}}', 'm2', ''),
	(4, 'P2501', 'Riel Superior', '{P2501_pb001_A:{dim:(1.8500+0.01),cant:1},P2501_pb002_A:{dim:(2.7500+0.01),cant:1},P2501_pb003_A:{dim:(1.3000+0.01),cant:1},P2501_pb004_A:{dim:(2.4200+0.01),cant:1}}', 'barra', ''),
	(4, 'P2502', 'Riel Inferior', '{P2502_pb001_A:{dim:(1.8500+0.01),cant:1},P2502_pb002_A:{dim:(2.7500+0.01),cant:1},P2502_pb003_A:{dim:(1.3000+0.01),cant:1},P2502_pb004_A:{dim:(2.4200+0.01),cant:1}}', 'barra', ''),
	(4, 'P2503', 'Jamba', '{P2503_pb001_h:{dim:(1.5100+0.01),cant:2},P2503_pb002_h:{dim:(1.5900+0.01),cant:2},P2503_pb003_h:{dim:(1.0000+0.01),cant:2},P2503_pb004_h:{dim:(1.6500+0.01),cant:2}}', 'barra', ''),
	(4, 'P2504', 'Cabezal', '{P2504_pb001_A:{dim:(1.8500/2)+0.01,cant:2},P2504_pb002_A:{dim:(2.7500/3)+0.01,cant:3},P2504_pb003_A:{dim:(1.3000/2)+0.01,cant:2},P2504_pb004_A:{dim:(2.4200/3)+0.01,cant:3}}', 'barra', ''),
	(4, 'P2505', 'Zocalo', '{P2505_pb001_A:{dim:(1.8500/2)+0.01,cant:2},P2505_pb002_A:{dim:(2.7500/3)+0.01,cant:3},P2505_pb003_A:{dim:(1.3000/2)+0.01,cant:2},P2505_pb004_A:{dim:(2.4200/3)+0.01,cant:3}}', 'barra', ''),
	(4, 'P2507', 'Gancho', '{P2507_pb001_h:{dim:(1.5100+0.01),cant:2},P2507_pb002_h:{dim:(1.5900+0.01),cant:2},P2507_pb003_h:{dim:(1.0000+0.01),cant:2},P2507_pb004_h:{dim:(1.6500+0.01),cant:2}}', 'barra', ''),
	(4, 'P2508', 'encuentro', '{P2508_pb002_h:{dim:(1.5900+0.01),cant:1},P2508_pb004_h:{dim:(1.6500+0.01),cant:1}}', 'barra', ''),
	(4, 'P2510', 'Pierna', '{P2510_pb001_h:{dim:(1.5100+0.01),cant:2},P2510_pb002_h:{dim:(1.5900+0.01),cant:4},P2510_pb003_h:{dim:(1.0000+0.01),cant:2},P2510_pb004_h:{dim:(1.6500+0.01),cant:4}}', 'barra', ''),
	(4, 'V04', 'Vidrio 4mm', '{V04_pb001_Ah:{dim:(1.8500/2)x(1.5100),cant:2},V04_pb002_Ah:{dim:((2.7500/3))x((1.5900)),cant:3},V04_pb003_Ah:{dim:(1.3000/2)x(1.0000),cant:2},V04_pb004_Ah:{dim:((2.4200/3))x((1.6500)),cant:3}}', 'plancha', '');
/*!40000 ALTER TABLE `cdm` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.clientes
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `clientes_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=clientes_id&titulo=Num&visible=-1&nuevo=auto&edit=hidden&thwdth=40px',
  `titulo` varchar(50) NOT NULL COMMENT 'campo=titulo&titulo=Tit&thwdth=40px&clase=algn_left',
  `nombres` varchar(50) NOT NULL COMMENT 'campo=nombres&titulo=Nombres&clase=algn_left',
  `apellidos` varchar(50) NOT NULL COMMENT 'campo=apellidos&titulo=Apellidos&attr=required&clase=algn_left',
  `NIT` varchar(50) NOT NULL COMMENT 'campo=NIT&titulo=CI-NIT&predet=0&attr=required&thwdth=120px&clase=algn_number',
  `telefono` varchar(50) NOT NULL COMMENT 'campo=telefono&titulo=Telefonos&clase=algn_left',
  PRIMARY KEY (`clientes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.clientes: ~15 rows (aproximadamente)
DELETE FROM `clientes`;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`clientes_id`, `titulo`, `nombres`, `apellidos`, `NIT`, `telefono`) VALUES
	(1, 'Sr.', 'Marcelino', 'Rocabado', '1528963014', '747785896'),
	(2, 'Arq.', 'Julio', 'Aramayo', '54158962', '78954654'),
	(3, 'Ing.', 'Froilan', 'Morales', '', ''),
	(4, 'Sr.', 'Jose', 'Rivadeneira', '', ''),
	(5, 'Sr.', 'Ramon', 'Mercado', '45812', ''),
	(6, 'Ing', 'Ernesto', 'Cardona', '1', ''),
	(7, 'Srs', 'UNIVALLE', 'Universidad', '100', ''),
	(8, 'Sr.', 'Roger', 'Choque', '0', ''),
	(9, 'Srs', '', 'Frutillar', '0', ''),
	(10, 'Arq.', '', 'Hinojosa', '0', ''),
	(11, '', 'Sra. 3pisos', ' casa', '0', ''),
	(12, 'Sra. ', 'Carolina', 'Terrazas', '0', ''),
	(13, 'Sr', 'Juan Carlos', 'Medina', '100', ''),
	(14, 'Sr', 'Alejandro', 'Zurita', '0', ''),
	(15, 'arq', 'think', 'think', '0', '');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.color
DROP TABLE IF EXISTS `color`;
CREATE TABLE IF NOT EXISTS `color` (
  `color` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla alcon.color: ~10 rows (aproximadamente)
DELETE FROM `color`;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` (`color`) VALUES
	(' ninguno'),
	('blanco'),
	('bronce'),
	('champagne'),
	('estandar'),
	('mate'),
	('negro'),
	('nogal'),
	('titanio'),
	('transparente');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.cotizacion
DROP TABLE IF EXISTS `cotizacion`;
CREATE TABLE IF NOT EXISTS `cotizacion` (
  `cotizacion_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=cotizacion_id&titulo=Cotizac. Num&visible=1&nuevo=read&edit=read&thwdth=50px',
  `fecha` date NOT NULL COMMENT 'campo=fecha&titulo=fecha&predet=date(''Y-m-d'')&thwdth=80px',
  `clientes_id` int(11) NOT NULL COMMENT 'campo=clientes_id&titulo=Cliente&visible=4&nuevo=select&edit=select&select=$this->funSelect(''clientes'',''clientes_id,apellidos'',true)&attr=required&clase=algn_left&thwdth=80px',
  `descripcion` varchar(500) NOT NULL COMMENT 'campo=descripcion&titulo=Descripcion&nuevo=textarea&edit=textarea&clase=algn_left',
  `m2` double(5,2) NOT NULL DEFAULT '0.00' COMMENT 'campo=m2&titulo=Total m2&clase=algn_number&thwdth=60px',
  `USS` double(8,2) NOT NULL DEFAULT '0.00' COMMENT 'campo=USS&titulo=Total USS&clase=algn_number&thwdth=60px',
  `m2-USS` double(8,2) NOT NULL DEFAULT '0.00' COMMENT 'campo=m2-USS&titulo=precio m2&clase=algn_number&thwdth=60px',
  `cambio` double(8,2) NOT NULL DEFAULT '7.00' COMMENT 'campo=cambio&titulo=Tipo de Cambio&predet=7.00&attr=required&clase=algn_number&thwdth=60px',
  PRIMARY KEY (`cotizacion_id`),
  KEY `FK__clientes` (`clientes_id`),
  CONSTRAINT `FK_cotizacion_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`clientes_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.cotizacion: ~16 rows (aproximadamente)
DELETE FROM `cotizacion`;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
INSERT INTO `cotizacion` (`cotizacion_id`, `fecha`, `clientes_id`, `descripcion`, `m2`, `USS`, `m2-USS`, `cambio`) VALUES
	(1, '2016-04-12', 1, 'Provision e instalación de ventanas en carpinteria de aluminio L25', 16.72, 1535.00, 0.00, 7.00),
	(2, '2016-04-12', 2, 'Provision e instalación de ventanas en carpintería de aluminio. Sistema Europeo T45-Lite. Vidrio 4mm incoloro', 20.88, 0.00, 0.00, 7.00),
	(3, '2016-04-12', 3, 'Provisión e instalación de ventanas en carpinteria de aluminio sistema T45 Vidrio 4mm', 4.34, 0.00, 0.00, 7.00),
	(4, '2016-04-20', 2, 'Provision e instalación de ventanas en carpintería de aluminio Linea 25 c/vidrio de 4mm', 12.46, 0.00, 0.00, 7.00),
	(5, '2016-04-20', 2, '', 0.00, 0.00, 0.00, 7.00),
	(6, '2016-04-20', 4, '', 0.00, 0.00, 0.00, 7.00),
	(7, '2016-04-29', 6, 'Ventanas Linea 25 vidrio 4mm Color Mate Piso 7', 95.39, 0.00, 0.00, 7.00),
	(8, '2016-07-19', 7, 'Premarcos', 6.30, 0.00, 0.00, 7.00),
	(9, '2018-02-19', 8, 'Ventanas en Carpinteria de aluminio', 12.48, 0.00, 0.00, 7.00),
	(10, '2018-08-10', 9, 'Puertas y Ventanas Correderas y fijas Linea 25', 26.61, 0.00, 0.00, 7.00),
	(11, '2018-08-10', 9, 'Puertas y Ventanas Correderas y fijas Linea 25', 26.61, 0.00, 0.00, 7.00),
	(12, '2018-09-19', 10, 'Carpinteria L25 y Vidrio Templado Edificio Santa Lucia', 42.93, 0.00, 0.00, 6.96),
	(13, '2020-01-07', 12, 'Cotización Ventanas Correderas Linea 25', 100.00, 0.00, 0.00, 6.96),
	(14, '2022-12-06', 13, 'Cotizacion Ventanas pvc', 7.97, 0.00, 0.00, 6.96),
	(15, '2022-12-09', 14, 'Paños Fijos PVC Puerta Batiente PVC', 0.00, 0.00, 0.00, 6.96),
	(16, '2025-07-10', 15, 'Puertas y ventanas l25', 214.77, 0.00, 0.00, 7.00);
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.cotizacion_detalle
DROP TABLE IF EXISTS `cotizacion_detalle`;
CREATE TABLE IF NOT EXISTS `cotizacion_detalle` (
  `cotizacion_detalle_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=cotizacion_detalle_id&titulo=Num&visible=-1&clase=algn_number&thwdth=50px',
  `cotizacion_id` int(11) NOT NULL COMMENT 'campo=cotizacion_id&titulo=Num&nuevo=select&edit=select&select=$this->funSelect(''cotizacion'',''cotizacion_id'')&clase=algn_number&thwdth=50px',
  `codificacion` varchar(20) NOT NULL COMMENT 'campo=codificacion&titulo=Codificacion&attr=required pattern=''[a-zA-Z0-9_]*''&clase=algn_left&thwdth=120px',
  `tipologia_id` int(11) NOT NULL COMMENT 'campo=tipologia_id&titulo=Tipologia&visible=5&nuevo=selectImg&edit=selectImg&select=$this->funSelect(''tipologia'',''tipologia_id,imagen'')&attr=required&clase=imagen&thwdth=120px',
  `ancho` double(5,3) NOT NULL DEFAULT '0.000' COMMENT 'campo=ancho&titulo=Ancho&predet=0&attr=required&clase=algn_number&thwdth=50px',
  `alto` double(5,3) NOT NULL DEFAULT '0.000' COMMENT 'campo=alto&titulo=Altura&predet=0&attr=required&clase=algn_number&thwdth=50px',
  `cantidad` int(5) NOT NULL DEFAULT '1' COMMENT 'campo=cantidad&titulo=cantidad&predet=1&attr=required&clase=algn_number&thwdth=50px',
  `m2` double(5,3) NOT NULL DEFAULT '0.000' COMMENT 'campo=m2&titulo=M2&predet=0&clase=algn_number&thwdth=50px',
  `var_ancho` varchar(200) NOT NULL DEFAULT '0' COMMENT 'campo=var_ancho&titulo=Variaciones Ancho&predet=0&clase=algn_left&thwdth=120px',
  `var_alto` varchar(200) NOT NULL DEFAULT '0' COMMENT 'campo=var_alto&titulo=Variaciones Alto&predet=0&clase=algn_left&thwdth=120px',
  PRIMARY KEY (`cotizacion_detalle_id`),
  KEY `FK_cotizacion_detalle_cotizacion` (`cotizacion_id`),
  KEY `FK_cotizacion_detalle_tipologia` (`tipologia_id`),
  CONSTRAINT `FK_cotizacion_detalle_cotizacion` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizacion` (`cotizacion_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_cotizacion_detalle_tipologia` FOREIGN KEY (`tipologia_id`) REFERENCES `tipologia` (`tipologia_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.cotizacion_detalle: ~186 rows (aproximadamente)
DELETE FROM `cotizacion_detalle`;
/*!40000 ALTER TABLE `cotizacion_detalle` DISABLE KEYS */;
INSERT INTO `cotizacion_detalle` (`cotizacion_detalle_id`, `cotizacion_id`, `codificacion`, `tipologia_id`, `ancho`, `alto`, `cantidad`, `m2`, `var_ancho`, `var_alto`) VALUES
	(1, 1, '1A_001', 1, 1.330, 1.520, 1, 2.022, '0', '0'),
	(2, 1, '1A_002', 1, 1.550, 1.390, 1, 2.155, '0', '0'),
	(3, 1, '1A_003', 2, 2.410, 1.770, 1, 4.266, '0', '0'),
	(4, 1, '1A_004', 2, 2.380, 1.750, 1, 4.165, '0', '0'),
	(5, 1, '1A_005', 2, 2.390, 1.720, 1, 4.111, '0', '0'),
	(6, 2, 'a1_001', 4, 2.580, 1.350, 1, 3.483, '0', '0'),
	(7, 2, 'a1_002', 3, 1.890, 1.380, 1, 2.608, '0', '0'),
	(8, 2, 'a1_003', 3, 1.950, 1.360, 1, 2.652, '0', '0'),
	(9, 2, 'a1_004', 4, 2.360, 1.450, 1, 3.422, '0', '0'),
	(10, 2, 'a1_005', 4, 2.820, 1.520, 1, 4.286, '0', '0'),
	(15, 2, 'a1_006', 4, 2.840, 1.560, 1, 4.430, '0', '0'),
	(16, 3, '1a_001', 2, 1.890, 1.360, 1, 2.570, '0', '0'),
	(17, 4, 'pb_001', 1, 1.850, 1.510, 1, 2.793, '0', '0'),
	(18, 4, 'pb_002', 2, 2.750, 1.590, 1, 4.372, '0', '0'),
	(19, 4, 'pb_003', 1, 1.300, 1.000, 1, 1.300, '0', '0'),
	(20, 4, 'pb_004', 2, 2.420, 1.650, 1, 3.993, '0', '0'),
	(21, 3, '1a_002', 1, 1.300, 1.360, 1, 1.768, '0', '0'),
	(22, 7, 'P7001', 1, 1.250, 1.600, 1, 2.000, '0', '0'),
	(23, 7, 'P7002', 1, 2.000, 1.600, 1, 3.200, '0', '0'),
	(24, 7, 'P7003', 1, 2.000, 1.600, 1, 3.200, '0', '0'),
	(25, 7, 'P7004', 6, 3.400, 1.600, 1, 5.440, '0', '0'),
	(26, 7, 'P7005', 6, 3.550, 1.600, 1, 5.680, '0', '0'),
	(27, 7, 'P7006', 1, 1.000, 1.400, 1, 1.400, '0', '0'),
	(28, 7, 'P7007', 1, 1.200, 1.400, 1, 1.680, '0', '0'),
	(29, 7, 'P7008', 1, 1.690, 1.400, 1, 2.366, '0', '0'),
	(30, 7, 'P7009', 1, 1.800, 1.400, 1, 2.520, '0', '0'),
	(31, 7, 'P7010', 1, 2.000, 1.400, 1, 2.800, '0', '0'),
	(32, 7, 'P7011', 1, 2.800, 1.400, 1, 3.920, '0', '0'),
	(33, 7, 'P7012', 1, 2.100, 1.400, 1, 2.940, '0', '0'),
	(34, 7, 'P7013', 1, 2.750, 1.400, 1, 3.850, '0', '0'),
	(35, 7, 'P7014', 1, 2.790, 1.400, 1, 3.906, '0', '0'),
	(36, 7, 'P7015', 1, 0.700, 1.200, 1, 0.840, '0', '0'),
	(37, 7, 'P7016', 1, 0.700, 1.200, 1, 0.840, '0', '0'),
	(38, 7, 'P7017', 1, 0.800, 1.200, 1, 0.960, '0', '0'),
	(39, 7, 'P7018', 1, 0.800, 1.200, 1, 0.960, '0', '0'),
	(40, 7, 'P7019', 1, 0.800, 1.200, 1, 0.960, '0', '0'),
	(41, 7, 'P7020', 1, 0.800, 1.200, 1, 0.960, '0', '0'),
	(42, 7, 'P7021', 1, 1.000, 1.200, 1, 1.200, '0', '0'),
	(43, 7, 'P7022', 1, 1.000, 1.200, 1, 1.200, '0', '0'),
	(44, 7, 'P7023', 1, 1.000, 1.200, 1, 1.200, '0', '0'),
	(45, 7, 'P7024', 1, 1.200, 1.200, 1, 1.440, '0', '0'),
	(46, 7, 'P7025', 1, 1.400, 1.200, 1, 1.680, '0', '0'),
	(47, 7, 'P7026', 2, 3.000, 1.600, 1, 4.800, '0', '0'),
	(48, 7, 'Z5001', 1, 1.400, 1.500, 1, 2.100, '0', '0'),
	(49, 7, 'Z5002', 1, 1.500, 1.500, 1, 2.250, '0', '0'),
	(50, 7, 'Z5003', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(51, 7, 'Z5004', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(52, 7, 'Z5005', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(53, 7, 'Z5006', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(54, 7, 'Z5007', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(55, 7, 'Z5008', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(56, 7, 'Z5009', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(57, 7, 'Z5010', 1, 2.400, 1.500, 1, 3.600, '0', '0'),
	(58, 7, 'Z5011', 1, 3.000, 1.500, 1, 4.500, '0', '0'),
	(71, 8, 'T1', 8, 1.500, 1.400, 3, 6.300, '1', '1'),
	(72, 9, 'A1', 2, 2.410, 1.365, 1, 3.290, '0', '0'),
	(73, 9, 'A2', 2, 2.390, 1.365, 1, 3.262, '0', '0'),
	(74, 9, 'A3', 1, 0.690, 0.575, 1, 0.397, '0', '0'),
	(75, 9, 'B1', 2, 2.380, 1.320, 1, 3.142, '0', '0'),
	(76, 9, 'B2', 1, 1.370, 1.180, 1, 1.617, '0', '0'),
	(77, 9, 'B3', 1, 1.230, 0.625, 1, 0.769, '0', '0'),
	(78, 10, 'PBNPF02', 10, 0.530, 2.140, 1, 1.134, '0', '0'),
	(79, 10, 'PBNPC4H', 6, 2.670, 2.360, 1, 6.301, '0', '0'),
	(80, 10, 'PBNPF01', 10, 0.480, 2.170, 1, 1.042, '0', '0'),
	(81, 10, 'PBOPF02', 10, 1.098, 2.422, 1, 2.659, '0', '0'),
	(82, 10, 'PBOCB01', 1, 1.007, 0.470, 1, 0.473, '0', '0'),
	(83, 10, 'PBOC4H02', 6, 3.022, 2.100, 1, 6.346, '0', '0'),
	(84, 10, 'PA0CB01', 1, 1.454, 0.490, 1, 0.712, '0', '0'),
	(85, 10, 'PAOVCD01', 2, 1.983, 1.300, 1, 2.578, '0', '0'),
	(86, 10, 'PAOCD02', 2, 1.982, 1.502, 1, 2.977, '0', '0'),
	(87, 10, 'PAECB02', 1, 1.303, 0.425, 1, 0.554, '0', '0'),
	(88, 10, 'PBIC01', 2, 2.285, 0.800, 1, 1.828, '0', '0'),
	(90, 11, 'PBNPF02', 0, 0.530, 2.140, 1, 1.134, '0', '0'),
	(91, 11, 'PBNPC4H', 0, 2.670, 2.360, 1, 6.301, '0', '0'),
	(92, 11, 'PBNPF01', 0, 0.480, 2.170, 1, 1.042, '0', '0'),
	(93, 11, 'PBOPF02', 0, 1.098, 2.422, 1, 2.659, '0', '0'),
	(94, 11, 'PBOCB01', 0, 1.007, 0.470, 1, 0.473, '0', '0'),
	(95, 11, 'PBOC4H02', 0, 3.022, 2.100, 1, 6.346, '0', '0'),
	(96, 11, 'PA0CB01', 0, 1.454, 0.490, 1, 0.712, '0', '0'),
	(97, 11, 'PAOVCD01', 0, 1.983, 1.300, 1, 2.578, '0', '0'),
	(98, 11, 'PAOCD02', 0, 1.982, 1.502, 1, 2.977, '0', '0'),
	(99, 11, 'PAECB02', 0, 1.303, 0.425, 1, 0.554, '0', '0'),
	(100, 11, 'PBIC01', 0, 2.285, 0.800, 1, 1.828, '0', '0'),
	(101, 12, 'PT001', 11, 0.400, 0.400, 3, 0.480, '0', '0'),
	(102, 12, 'PT004', 1, 0.900, 2.160, 1, 1.944, '0', '0'),
	(103, 12, 'PT005', 1, 1.710, 1.450, 1, 2.479, '0', '0'),
	(104, 12, 'PT006', 1, 1.700, 1.950, 1, 3.315, '0', '0'),
	(105, 12, 'PT007', 10, 0.500, 2.100, 1, 1.050, '0', '0'),
	(106, 12, 'PT008', 1, 1.540, 1.500, 1, 2.310, '0', '0'),
	(107, 12, 'PT009', 1, 1.480, 0.700, 1, 1.036, '0', '0'),
	(108, 12, 'PT010', 1, 1.510, 1.250, 1, 1.888, '0', '0'),
	(109, 12, 'PT011', 10, 2.000, 2.390, 1, 4.780, '0', '0'),
	(110, 12, 'PT012', 2, 2.000, 1.500, 1, 3.000, '0', '0'),
	(111, 12, 'PT013', 1, 1.000, 2.500, 1, 2.500, '0', '0'),
	(112, 12, 'PT014', 1, 1.500, 1.500, 1, 2.250, '0', '0'),
	(113, 12, 'PT015', 10, 0.600, 1.500, 1, 0.900, '0', '0'),
	(114, 12, 'PT016', 1, 0.700, 0.600, 1, 0.420, '0', '0'),
	(115, 12, 'PT017', 1, 1.500, 1.500, 1, 2.250, '0', '0'),
	(116, 12, 'PT018', 1, 0.950, 0.600, 1, 0.570, '0', '0'),
	(117, 12, 'PT019', 1, 1.390, 1.500, 1, 2.085, '0', '0'),
	(118, 12, 'PT020', 1, 1.070, 2.520, 1, 2.696, '0', '0'),
	(119, 12, 'PT021', 11, 0.400, 0.400, 3, 0.480, '0', '0'),
	(120, 12, 'PT024', 1, 1.580, 1.500, 1, 2.370, '0', '0'),
	(121, 12, 'PT025', 1, 1.500, 1.250, 1, 1.875, '0', '0'),
	(122, 12, 'PT026', 1, 1.500, 1.500, 1, 2.250, '0', '0'),
	(123, 13, 'E_1_1', 1, 0.683, 0.683, 1, 0.466, '0', '0'),
	(124, 13, 'E_2_1', 1, 0.683, 0.683, 1, 0.466, '0', '0'),
	(125, 13, 'E_3_1', 1, 0.683, 0.683, 1, 0.466, '0', '0'),
	(126, 13, 'E_4_1', 1, 0.683, 0.683, 1, 0.466, '0', '0'),
	(127, 13, 'E_5_1', 1, 0.683, 0.683, 1, 0.466, '0', '0'),
	(128, 13, 'E_1_2', 2, 2.185, 1.400, 1, 3.059, '0', '0'),
	(129, 13, 'E_2_2', 2, 2.185, 1.400, 1, 3.059, '0', '0'),
	(130, 13, 'E_3_2', 2, 2.185, 1.400, 1, 3.059, '0', '0'),
	(131, 13, 'E_4_2', 2, 2.185, 1.400, 1, 3.059, '0', '0'),
	(132, 13, 'E_5_2', 2, 2.185, 1.400, 1, 3.059, '0', '0'),
	(133, 13, 'E_1_3', 2, 0.683, 0.683, 1, 0.466, '0', '0'),
	(134, 13, 'E_2_3', 2, 0.683, 0.683, 1, 0.466, '0', '0'),
	(135, 13, 'E_3_3', 2, 0.683, 0.683, 1, 0.466, '0', '0'),
	(136, 13, 'E_4_3', 2, 0.683, 0.683, 1, 0.466, '0', '0'),
	(137, 13, 'N_1_1', 1, 0.630, 0.630, 1, 0.397, '0', '0'),
	(138, 13, 'N_2_1', 1, 0.630, 0.630, 1, 0.397, '0', '0'),
	(139, 13, 'N_3_1', 1, 0.630, 0.630, 1, 0.397, '0', '0'),
	(140, 13, 'N_4_1', 1, 0.630, 0.630, 1, 0.397, '0', '0'),
	(141, 13, 'N_5_1', 1, 0.630, 0.630, 1, 0.397, '0', '0'),
	(142, 13, 'N_1_2', 1, 1.000, 2.351, 1, 2.351, '0', '0'),
	(143, 13, 'N_2_2', 1, 1.000, 2.351, 1, 2.351, '0', '0'),
	(144, 13, 'N_3_2', 1, 1.000, 2.351, 1, 2.351, '0', '0'),
	(145, 13, 'N_4_2', 1, 1.000, 2.351, 1, 2.351, '0', '0'),
	(146, 13, 'N_5_2', 1, 1.000, 2.351, 1, 2.351, '0', '0'),
	(147, 13, 'S_1_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(148, 13, 'S_2_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(149, 13, 'S_3_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(150, 13, 'S_4_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(151, 13, 'S_5_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(152, 13, 'S_6_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(153, 13, 'S_1_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(154, 13, 'S_2_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(155, 13, 'S_3_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(156, 13, 'S_4_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(157, 13, 'S_5_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(158, 13, 'S_6_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(159, 13, 'O_1_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(160, 13, 'O_2_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(161, 13, 'O_3_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(162, 13, 'O_4_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(163, 13, 'O_5_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(164, 13, 'O_6_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(165, 13, 'O_1_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(166, 13, 'O_2_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(167, 13, 'O_3_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(168, 13, 'O_4_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(169, 13, 'O_5_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(170, 13, 'O_6_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(171, 13, 'O_1_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(172, 13, 'O_2_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(173, 13, 'O_3_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(174, 13, 'O_4_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(175, 13, 'O_5_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(176, 13, 'O_6_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(177, 13, 'O_1_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(178, 13, 'O_2_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(179, 13, 'O_3_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(180, 13, 'O_4_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(181, 13, 'O_5_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(182, 13, 'O_6_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(183, 14, 'jm001', 9, 3.100, 2.570, 1, 7.967, '0', '0'),
	(184, 16, 'PB0001', 6, 3.400, 3.450, 1, 11.730, '0', '0'),
	(185, 16, 'PB0002', 6, 5.000, 3.500, 1, 17.500, '0', '0'),
	(186, 16, '1P0001', 2, 1.480, 2.300, 4, 13.616, '0', '0'),
	(187, 16, 'PB0003', 6, 4.000, 3.500, 1, 14.000, '0', '0'),
	(188, 16, '1P0002', 1, 1.800, 2.380, 2, 8.568, '0', '0'),
	(189, 16, '1P0003', 1, 1.800, 2.380, 5, 21.420, '0', '0'),
	(190, 16, '1P0004', 1, 1.200, 2.330, 8, 22.368, '0', '0'),
	(191, 16, '1P0005', 1, 1.100, 2.330, 1, 2.563, '0', '0'),
	(192, 16, '1P0006', 1, 1.400, 2.330, 1, 3.262, '0', '0'),
	(193, 16, '1P0007', 10, 0.500, 2.400, 1, 1.200, '0', '0'),
	(194, 16, '2P0001', 1, 1.800, 2.330, 8, 33.552, '0', '0'),
	(195, 16, '1P0008', 10, 0.600, 3.200, 4, 7.680, '0', '0'),
	(196, 16, '2P0002', 1, 1.200, 2.330, 11, 30.756, '0', '0'),
	(197, 16, '2P0003', 1, 1.100, 2.330, 1, 2.563, '0', '0'),
	(198, 16, '2P0004', 1, 1.400, 2.330, 1, 3.262, '0', '0'),
	(199, 16, '2P0005', 10, 0.500, 2.400, 1, 1.200, '0', '0'),
	(200, 16, '2P0006', 10, 0.400, 2.900, 1, 1.160, '0', '0'),
	(201, 16, '2P0007', 10, 0.500, 2.900, 1, 1.450, '0', '0'),
	(202, 16, '2P0008', 10, 0.600, 2.900, 3, 5.220, '0', '0'),
	(203, 16, 'TP0001', 1, 1.800, 3.250, 2, 11.700, '0', '0');
/*!40000 ALTER TABLE `cotizacion_detalle` ENABLE KEYS */;


-- Volcando estructura para vista alcon.cotizacion_detalle_materiales
DROP VIEW IF EXISTS `cotizacion_detalle_materiales`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `cotizacion_detalle_materiales` (
	`cotizacion_id` INT(11) NOT NULL COMMENT 'campo=cotizacion_id&titulo=Num&nuevo=select&edit=select&select=$this->funSelect(\'cotizacion\',\'cotizacion_id\')&clase=algn_number&thwdth=50px',
	`materiales_id` VARCHAR(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Material&visible=4&nuevo=select&edit=select&select=$this->funSelect(\'materiales\',\'materiales_id,nombre\')&attr=required&clase=algn_left' COLLATE 'utf8_general_ci',
	`nombre` VARCHAR(150) NULL COLLATE 'utf8_general_ci',
	`formula` VARCHAR(343) NULL COLLATE 'utf8_general_ci',
	`unidad` VARCHAR(10) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para tabla alcon.familias
DROP TABLE IF EXISTS `familias`;
CREATE TABLE IF NOT EXISTS `familias` (
  `familias_id` varchar(25) NOT NULL DEFAULT '0' COMMENT 'campo=familias_id&titulo=Familia&nuevo=doble&thwdth=150px&attr=required',
  `descripcion` varchar(300) NOT NULL COMMENT 'campo=descripcion&titulo=Descripción&nuevo=textarea&edit=textarea&clase=algn_left',
  PRIMARY KEY (`familias_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.familias: ~22 rows (aproximadamente)
DELETE FROM `familias`;
/*!40000 ALTER TABLE `familias` DISABLE KEYS */;
INSERT INTO `familias` (`familias_id`, `descripcion`) VALUES
	('A00', 'Accesorios varios'),
	('Canal U', 'Canales de U'),
	('CORR. S70 FIRAT', 'Puertas y Ventanas Correderas S70 FIRAT'),
	('CorrTemp8', 'Ventanas correderas de vidrio templado 8mm'),
	('H00', 'Herrajería'),
	('L20', 'Perfiles y accesorios para ventanas correderas'),
	('L25', 'Puertas y ventanas correderas'),
	('L32', 'Paño fijo con ventana proyectante'),
	('L35', 'Paño fijo con ventana proyectantes'),
	('L35-F', 'Paño Fijo Linea35'),
	('Lmax', 'Puertas y ventanas correderas (corte 45º)'),
	('MO', 'Mano de Obra'),
	('S3000', 'Linea S-3000 Puertas y venta nas batientes'),
	('S60 Batiente Firat', 'Puertas Batientes; Ventanas Proyectante, Batiente, Oscilobatiente, Fija, Abatible.'),
	('STD', 'Familia estandar'),
	('T45', 'Puertas y ventanas correderas (Corte 45º)'),
	('T45_L', 'Ventanas correderas (corte 45º)'),
	('Tcirc', 'Tubos Circulares'),
	('Tcuad', 'Tubos Cuadrados'),
	('Trect', 'Tubos Rectangulares'),
	('V00', 'Vidrio'),
	('Vtem', 'Puertas y ventanas en vidrio templado');
/*!40000 ALTER TABLE `familias` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.materiales
DROP TABLE IF EXISTS `materiales`;
CREATE TABLE IF NOT EXISTS `materiales` (
  `familias_id` varchar(15) DEFAULT NULL COMMENT 'campo=familias_id&titulo=Familia&nuevo=select&select=$this->funSelect(''familias'',''familias_id'')&thwdth=50px&attr=required',
  `materiales_id` varchar(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Codigo General&nuevo=doble&attr=required  pattern=''[a-zA-Z0-9_]{1,30}''&clase=algn_left&thwdth=60px',
  `nombre` varchar(150) NOT NULL COMMENT 'campo=nombre&titulo=Nombre Desc&attr=required&clase=algn_left&thwdth=140px',
  `cantidad` varchar(150) NOT NULL COMMENT 'campo=cantidad&titulo=Cnt. Ensamb.&clase=algn_number&thwdth=60px',
  `formula` varchar(150) NOT NULL COMMENT 'campo=formula&titulo=Formula Ensamble&clase=algn_left',
  `unidad` varchar(10) NOT NULL COMMENT 'campo=unidad&titulo=Unid.&thwdth=40px',
  `dim1` double(5,4) NOT NULL DEFAULT '0.0000' COMMENT 'campo=dim1&titulo=Dim 1&predet=0&clase=algn_number&thwdth=50px',
  `dim2` double(5,4) NOT NULL DEFAULT '0.0000' COMMENT 'campo=dim2&titulo=Dim 2&predet=0&clase=algn_number&thwdth=50px',
  `dim3` double(5,4) NOT NULL DEFAULT '0.0000' COMMENT 'campo=dim3&titulo=Dim 3&predet=0&clase=algn_number&thwdth=50px',
  `colores` set('ninguno','blanco','bronce','champagne','estandar','mate','negro','titanio','transparente','Nogal') NOT NULL COMMENT 'campo=tipo&titulo=Colores Disponibles&visible=6&nuevo=selectM&edit=selectM&select=$this->funSelect(''color'',''color'')&attr=multiple&clase=algn_left&thwdth=160px',
  PRIMARY KEY (`materiales_id`),
  KEY `FK_materiales_familias` (`familias_id`),
  CONSTRAINT `FK_materiales_familias` FOREIGN KEY (`familias_id`) REFERENCES `familias` (`familias_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.materiales: ~82 rows (aproximadamente)
DELETE FROM `materiales`;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
INSERT INTO `materiales` (`familias_id`, `materiales_id`, `nombre`, `cantidad`, `formula`, `unidad`, `dim1`, `dim2`, `dim3`, `colores`) VALUES
	('CORR. S70 FIRAT', '111_270_1000', 'Marco 2 S70 Corrediza Blanco', '2', '($A+$c)+($h+$c)', 'Barra', 5.9500, 0.0000, 0.0000, 'blanco'),
	('CORR. S70 FIRAT', '121_270_1000', 'Marco 2 S70 Corrediza Nogal', '2', '($A+$c)+($h+$c)', 'Barra', 5.9500, 0.0000, 0.0000, 'Nogal'),
	('CORR. S70 FIRAT', '141_270_1000', 'Marco 2 S70 Corrediza Negro', '2', '($A+$c)+($h+$c)', 'Barra', 5.9500, 0.0000, 0.0000, 'negro'),
	('S3000', '3540', 'S-3000 Marco', '2', '(H*2),(A)', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('S3000', '3541', 'S-3000 Hoja (pierna)', '2', '(($A/$Dv)*2)+(($h)*2)', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('S3000', '3544', 'S-3000 Zocalo', '1', 'A', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('S3000', '3545', 'S-3000 Entrecierre (inversor de hoja)', '1', 'H', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('S3000', '3590', 'S-3000 Pisavidrio (junquillo)', '2', '(H*2),(V*2)', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('A00', 'A010', 'Felpa', '2', '($A*2)+($h*($Dv+$M))', 'ml', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A020', 'Burlete', '1', '(($A*2)+($h*$Dv)*2)', 'ml', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A030', 'Silicon', '1', '($A*$h)/3', 'tubo', 0.0000, 0.0000, 1.0000, 'blanco,negro,transparente'),
	('A00', 'A040', 'Tornillo', '30', '1', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A050', 'Remache', '30', '1', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A060', 'Brazo Proyectante', '2', '1', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A090', 'Tarugos', '12', '1', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A100', 'Pico de Loro', '1', '$M', 'pza', 0.0000, 0.0000, 1.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('A00', 'A110', 'Tranca Linea 35', '1', '1', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('L20', 'A2090', 'Ruedas', '2', '($M)', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('L25', 'A2590', 'Ruedas', '2', '($M)', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KC', 'Kit cierre', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KCLL', 'Kit cierre con llave', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45_L', 'A45KC_L', 'Kit cierres(lite)', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KHF', 'Kit Hoja Fija', '1', '($Dv-$M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45_L', 'A45KHF_L', 'Kit Hoja Fijas(lite)', '1', '($Dv-$M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KHM30', 'Kit Hoja Movil 30kg', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45_L', 'A45KHM30_L', 'Kit Hoja Movil 30kgs(lite)', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KHM80', 'Kit Hoja Movil 80Kg', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45_L', 'A45KHM80_L', 'Kit Hoja Movil 80Kgs(lite)', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KM1', 'Kit marco', '1', '(1)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45_L', 'A45KM1_L', 'Kit marcos(lite)', '1', '(1)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'L35UNI', 'Union de Perfiles a 90º', '4', '4', 'pza', 1.0000, 0.0000, 0.0000, 'ninguno'),
	('MO', 'MO01', 'Mano de Obra', '1', '($A*$h)', 'm2', 0.0000, 1.0000, 1.0000, 'ninguno'),
	('L20', 'P2001', 'Riel Superior', '1', '($A+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2002', 'Riel inferior', '1', '($A+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2003', 'Jamba', '2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2004', 'Cabezal', '$Dv', '($A/$Dv)+$c', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2005', 'Zocalo', '$Dv', '($A/$Dv)+$c', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2006', 'Pierna', '($Dv-$M)*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2007A', 'Gancho', '$M*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2008', 'encuentro', '$M', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2501', 'Riel Superior', '1', '($A+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2502', 'Riel Inferior', '1', '($A+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2503', 'Jamba', '2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2504', 'Cabezal', '$Dv', '($A/$Dv)+$c', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2505', 'Zocalo', '$Dv', '($A/$Dv)+$c', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2507', 'Gancho', '$M*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2508', 'encuentro', '$M', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2510', 'Pierna', '($Dv-$M)*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45_L', 'P3415', 'Marco lite', '2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45_L', 'P3416', 'Hojas lite', '$Dv*2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45_L', 'P3417', 'Entrecierres lite', '$M*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3418', 'Marco', '2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3419', 'Adaptador riel', '2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3420', 'Hoja', '$Dv*2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3421', 'Entrecierre', '$M*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3422', 'Malla', '$M*2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3426', 'Adaptador Hoja', '$M', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3427', 'Doble Entrecierre', '$M*2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45_L', 'P3428', 'Adaptador Hojas lite', '$M', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L35', 'P3501', 'L35 Marco', '2', '($A+$c)+($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'mate'),
	('L35', 'P3502', 'Hoja', '2', 'H', 'barra', 0.0000, 0.0000, 6.0000, ''),
	('L35', 'P3503', 'L35 Pilar T', '1', '$A+$c', 'barra', 0.0000, 0.0000, 6.0000, 'mate'),
	('L35', 'P3505', 'L35 Junquillo', '2', '($A+$c)+($A+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'mate'),
	('L35', 'P35080', 'Escuadra', '4', '1', 'pza', 1.0000, 0.0000, 0.0000, 'ninguno'),
	('A00', 'S3000V1', 'Burlete', '1', '(H*2)+(A*2)', 'ml', 0.0000, 0.0000, 0.0000, 'negro'),
	('Trect', 'T25x50', 'Tubo de 50 x 25', '1', 'h*A', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('Trect', 'T30x60', 'Tubo de 30 x 60mm', '1', 'h*A', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('Trect', 'T40x80', 'Tubo de 40 x 80mm', '1', 'h*A', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('Canal U', 'U_12x12', 'U- Canals u 12 x 12', '2', '($h*2)+($A*2)', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('Canal U', 'U_15x25', 'Can al U 15x25 mm', '2', '($A+$h)+2', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('V00', 'V04', 'Vidrio 4mm', '$Dv', '($A/$Dv)x($h)', 'M2', 0.0040, 2.5600, 3.3000, ''),
	('Vtem', 'VT008', 'Vidrio Templado de 8mm', '1', '($A*$h)', 'm2', 0.0800, 1.0000, 1.0000, 'bronce,negro,transparente'),
	('Vtem', 'VT010', 'Vidrio templado 10mm', '1', '($A*$h)', 'm2', 0.1000, 1.0000, 1.0000, 'bronce,transparente'),
	('Vtem', 'VT8_CAB_001', 'Cabezal para ventana corredera 8mm en vidrio templado', '1', '($A)', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('Vtem', 'VT8_CAB_002', 'Tapa Cabezal para ventana corredera 8m en vidrio templado', '1', '($A)', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('A00', 'VT8_CHAP', 'Chapa para ventana corredera 8mm', '1', '1', 'pza', 0.0000, 0.0000, 1.0000, 'mate'),
	('A00', 'VT8_FELP', 'Felpa para ventana corredera 8m vidrio templado', '1', '($A*2)+(($h*$Dv)+1)*2)', 'ml', 0.0000, 0.0000, 1.0000, 'negro'),
	('A00', 'VT8_RUED', 'Ruedas para ventana corredera 8mm', '2', '1', 'pza', 0.0000, 0.0000, 1.0000, 'ninguno'),
	('Vtem', 'VT8_TRILL_002', 'Tapa trillo o riel para ventana corredera de 8m en vidrio templado', '1', '($A)', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('Vtem', 'VT8_TRIL_001', 'Trillo o riel para ventana corredera de 8mm en vidrio templado', '1', '($A)', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('Vtem', 'VT8_Ved', 'Vedapre', '$Dv', '($Dv-1)', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('A00', 'Z999', 'Perfile para union 90ª', '4', 'x', 'ml', 0.0500, 0.0000, 0.0000, '');
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;


-- Volcando estructura para vista alcon.materiales_color
DROP VIEW IF EXISTS `materiales_color`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `materiales_color` (
	`materiales_id` VARCHAR(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Codigo General&nuevo=doble&attr=required  pattern=\'[a-zA-Z0-9_]{1,30}\'&clase=algn_left&thwdth=60px' COLLATE 'utf8_general_ci',
	`nombre` VARCHAR(150) NOT NULL COMMENT 'campo=nombre&titulo=Nombre Desc&attr=required&clase=algn_left&thwdth=140px' COLLATE 'utf8_general_ci',
	`color` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para tabla alcon.precios_materiales
DROP TABLE IF EXISTS `precios_materiales`;
CREATE TABLE IF NOT EXISTS `precios_materiales` (
  `precios_materiales_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=precios_materiales_id&titulo=Num&visible=-1',
  `materiales_id` varchar(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Codigo Material&visible=4&nuevo=select&edit=select&select=$this->funSelect(''materiales'',''materiales_id,nombre'')&attr=required&clase=algn_left&thwdth=120px',
  `codificacion_proveedor` varchar(30) NOT NULL COMMENT 'campo=codificacion_proveedor&titulo=Codigo Mat Prov&attr=required&clase=algn_left&thwdth=80px',
  `proveedores_id` int(11) NOT NULL COMMENT 'campo=proveedores_id&titulo=Provedor&visible=4&nuevo=select&edit=select&select=$this->funSelect(''proveedores'',''proveedores_id,nombre'')&predet=seleccionar&attr=required&clase=algn_left',
  `color` varchar(50) NOT NULL COMMENT 'campo=color&titulo=color&nuevo=select&edit=select&select=$this->funSelect(''color'',''color'')&predet=mate&clase=algn_left&thwdth=80px',
  `precio` double(10,2) NOT NULL DEFAULT '0.00' COMMENT 'campo=precio&titulo=Precio&predet=0.00&clase=algn_number&thwdth=50px',
  `moneda` enum('Bs','USS') NOT NULL DEFAULT 'Bs' COMMENT 'campo=moneda&titulo=Moneda&nuevo=select&edit=select&select=Array(Bs=>Bs,USS=>USS)&predet=Bs&attr=required&clase=algn_left&thwdth=50px',
  PRIMARY KEY (`precios_materiales_id`),
  KEY `FK_precios_materiales_materiales` (`materiales_id`),
  KEY `FK_precios_materiales_color` (`color`),
  KEY `FK_precios_materiales_proveedores` (`proveedores_id`),
  CONSTRAINT `FK_precios_materiales_color` FOREIGN KEY (`color`) REFERENCES `color` (`color`) ON UPDATE CASCADE,
  CONSTRAINT `FK_precios_materiales_materiales` FOREIGN KEY (`materiales_id`) REFERENCES `materiales` (`materiales_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_precios_materiales_proveedores` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores` (`proveedores_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.precios_materiales: ~0 rows (aproximadamente)
DELETE FROM `precios_materiales`;
/*!40000 ALTER TABLE `precios_materiales` DISABLE KEYS */;
/*!40000 ALTER TABLE `precios_materiales` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.proveedores
DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE IF NOT EXISTS `proveedores` (
  `proveedores_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=proveedores_id&titulo=Num&visible=-1',
  `nombre` varchar(50) NOT NULL COMMENT 'campo=nombre&titulo=Nombre&attr=required&clase=algn_left',
  `direccion` varchar(150) NOT NULL COMMENT 'campo=direccion&titulo=Direccion&clase=algn_left',
  PRIMARY KEY (`proveedores_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.proveedores: ~3 rows (aproximadamente)
DELETE FROM `proveedores`;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` (`proveedores_id`, `nombre`, `direccion`) VALUES
	(1, 'Aluvi', 'Av. Blanco Galindo'),
	(2, 'MetalVid', 'Cerca UMSS'),
	(3, 'Carlos Flores', 'El Pueblito');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.tipologia
DROP TABLE IF EXISTS `tipologia`;
CREATE TABLE IF NOT EXISTS `tipologia` (
  `tipologia_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=tipologia_id&titulo=Num&visible=-1&nuevo=hidden&edit=hidden&clase=algn_number&thwdth=20px',
  `tipo` varchar(50) NOT NULL COMMENT 'campo=tipo&titulo=Tipo&attr=required&clase=algn_left&thwdth=80px',
  `familias_id` varchar(15) NOT NULL COMMENT 'campo=familias_id&titulo=Familia&nuevo=select&edit=select&select=$this->funSelect(''familias'',''familias_id'')&attr=required&clase=algn_left&thwdth=45px',
  `descripcion` varchar(500) NOT NULL COMMENT 'campo=descripcion&titulo=Desxripcion&nuevo=textarea&edit=textarea&clase=algn_left&attr=required',
  `div_vertical` int(3) NOT NULL COMMENT 'campo=div_vertical&titulo=Divis. Vertic.&predet=1&attr=required&clase=algn_number&thwdth=40px',
  `div_horizontal` int(3) NOT NULL COMMENT 'campo=div_horizontal&titulo=Divis. Horiz.&predet=1&attr=required&clase=algn_number&thwdth=40px',
  `movil` int(3) NOT NULL COMMENT 'campo=movil&titulo=Hoja Movil&predet=1&attr=required&clase=algn_number&thwdth=40px',
  `cod_movil` varchar(300) NOT NULL COMMENT 'campo=cod_movil&titulo=Cod. Hojas Moviles&clase=algn_left&thwdth=80px',
  `imagen` mediumtext NOT NULL COMMENT 'campo=imagen&titulo=Imagen&visible=5&clase=algn_left&thwdth=80px',
  PRIMARY KEY (`tipologia_id`),
  KEY `FK_tipologia_familias` (`familias_id`),
  CONSTRAINT `FK_tipologia_familias` FOREIGN KEY (`familias_id`) REFERENCES `familias` (`familias_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=-1|0|1|2\r\n&nuevo=&edit=normal|select|hidden|read|textarea|\r\n&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.tipologia: ~15 rows (aproximadamente)
DELETE FROM `tipologia`;
/*!40000 ALTER TABLE `tipologia` DISABLE KEYS */;
INSERT INTO `tipologia` (`tipologia_id`, `tipo`, `familias_id`, `descripcion`, `div_vertical`, `div_horizontal`, `movil`, `cod_movil`, `imagen`) VALUES
	(0, 'standar', 'STD', 'FAMILIA STANDART', 1, 1, 1, '', 'images/disenos/standar.png'),
	(1, 'L25-V-C-2-1-1', 'L25', 'Ventana corredera de dos divisiones verticales una fija y una movil Linea 25', 2, 1, 1, '', 'images/disenos/L25-V-C-2-1-1.png'),
	(2, 'L25-V-C-3-1-1', 'L25', 'Ventana corredera de tres divisiones verticales dos fijas una movil Linea 25', 3, 1, 1, '', 'images/disenos/L25-V-C-3-1-1.png'),
	(3, 'T45L-V-C-2-1-1', 'T45_L', 'Ventana corredera dos divisiones verticales 1 hoja movil T45Lite', 2, 1, 1, '', 'images/disenos/T45L-V-C-2-1-1.png'),
	(4, 'T45L-V-C-3-1-1', 'T45_L', 'Ventana corredera de tres divisiones verticales dos fijas una movil T45 Lite', 3, 1, 1, '', 'images/disenos/T45L-V-C-3-1-1.png'),
	(5, 'L20-V-C-2-1-1', 'L20', 'Ventana corredera de dos divisiones verticales una fija y una movil Linea 20', 2, 1, 1, '', 'images/disenos/L20-V-C-2-1-1.png'),
	(6, 'L25 V-C-4-2-2', 'L25', 'Ventana corredera de 4 divisiones verticales dos fijas y dos moviles', 4, 1, 2, '', 'images/disenos/L25-V-C-4-2-2.png'),
	(7, 'S300-P-B-1-1-1', 'S3000', 'Puertas batientes Linea S-3000 de Una Hoja Vidrio 6mm', 1, 1, 1, '', 'images/disenos/S300-P-B-1-1-1.png'),
	(8, 'PM-T5025', 'Trect', 'Pre marcos con tubo 50 x 25', 1, 1, 1, '', 'images/disenos/PM-T5025.png'),
	(9, 'L35-V-P-1-1-1', 'L35', 'Ventana Proyectante una hoja', 1, 1, 1, '', 'images/disenos/L35-V-P-1-1-1.png'),
	(10, 'L35-V-F-1-2-1', 'L35', 'Ventana Paño Fijo Dos divisiones horizontales Linea 35', 1, 2, 1, '', 'images/disenos/L35-V-F-1-2-1.png'),
	(11, 'U-PF-1-1-0', 'Canal U', 'Ventana paño fijo con canal de U', 1, 1, 0, '', 'images/disenos/U-PF-1-1-0.png'),
	(12, 'V-C-T8-1-2-1', 'Vtem', 'Venatana corredera dos divisiones verticales con vidrio templado de 8mm', 2, 1, 1, '', 'images/disenos/V-C-T8-1-2-1.png'),
	(13, 'V-C-T8-1-3-1', 'Vtem', 'Ventana corredera tres divisiones verticales con vidrio templado de 8mm', 3, 1, 1, '', 'images/disenos/V-C-T8-1-3-1.png'),
	(14, 'L35-PB-1-2-1', 'L35', 'Puerta Batiente dos divisiones verticales vidrio 6mm crudo', 2, 1, 2, '', 'images/disenos/L35-PB-1-2-1.png');
/*!40000 ALTER TABLE `tipologia` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.tipologia_materiales
DROP TABLE IF EXISTS `tipologia_materiales`;
CREATE TABLE IF NOT EXISTS `tipologia_materiales` (
  `tipologia_materiales_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=tipologia_materiales_id&titulo=Num&visible=-1',
  `tipologia_id` int(11) NOT NULL COMMENT 'campo=tipologia_id&titulo=Tipologia&visible=4&nuevo=select&edit=select&select=$this->funSelect(''tipologia'',''tipologia_id,tipo'',true)&attr=required&clase=algn_left&thwdth=40px',
  `materiales_id` varchar(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Material&visible=4&nuevo=select&edit=select&select=$this->funSelect(''materiales'',''materiales_id,nombre'')&attr=required&clase=algn_left',
  `ensamble` enum('A','h','Ah','x') NOT NULL DEFAULT 'A' COMMENT 'campo=ensamble&titulo=Ensamble&nuevo=select&edit=select&select=array(A=>Ancho,h=>Alto,Ah=>Ancho_Alto,x=>x)&predet=seleccionar&attr=required&thwdth=80px',
  `formula` varchar(100) NOT NULL COMMENT 'campo=formula&titulo=formula ensamble&attr=required&clase=algn_left',
  `cantidad` int(11) NOT NULL COMMENT 'campo=cantidad&titulo=Cantidad&attr=required&thwdth=80px',
  PRIMARY KEY (`tipologia_materiales_id`),
  KEY `FK_tipologia_materiales_materiales` (`materiales_id`),
  KEY `FK_tipologia_materiales_tipologia` (`tipologia_id`),
  CONSTRAINT `FK_tipologia_materiales_materiales` FOREIGN KEY (`materiales_id`) REFERENCES `materiales` (`materiales_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tipologia_materiales_tipologia` FOREIGN KEY (`tipologia_id`) REFERENCES `tipologia` (`tipologia_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.tipologia_materiales: ~151 rows (aproximadamente)
DELETE FROM `tipologia_materiales`;
/*!40000 ALTER TABLE `tipologia_materiales` DISABLE KEYS */;
INSERT INTO `tipologia_materiales` (`tipologia_materiales_id`, `tipologia_id`, `materiales_id`, `ensamble`, `formula`, `cantidad`) VALUES
	(1, 1, 'P2501', 'A', '($A+$c)', 1),
	(2, 1, 'P2502', 'A', '($A+$c)', 1),
	(3, 1, 'P2503', 'h', '($h+$c)', 2),
	(4, 1, 'P2504', 'A', '($A/2)+$c', 2),
	(5, 1, 'P2505', 'A', '($A/2)+$c', 2),
	(6, 1, 'P2510', 'h', '($h+$c)', 2),
	(7, 1, 'P2507', 'h', '($h+$c)', 2),
	(8, 1, 'A2590', 'A', '(1)', 2),
	(9, 1, 'A010', 'Ah', '($A*2)+($h*(2+1))', 2),
	(10, 1, 'A020', 'Ah', '(($A*2)+($h*2)*2)', 1),
	(11, 1, 'A100', 'x', '1', 1),
	(12, 1, 'A030', 'Ah', '($A*$h)/3', 1),
	(13, 1, 'A040', 'Ah', '1', 30),
	(14, 1, 'V04', 'Ah', '($A/2)x($h)', 2),
	(15, 2, 'P2501', 'A', '($A+$c)', 1),
	(16, 1, 'A090', 'Ah', '1', 12),
	(17, 1, 'MO01', 'x', '($A*$h)', 1),
	(18, 2, 'P2502', 'A', '($A+$c)', 1),
	(19, 2, 'P2503', 'h', '($h+$c)', 2),
	(20, 2, 'P2504', 'A', '($A/3)+$c', 3),
	(21, 2, 'P2505', 'A', '($A/3)+$c', 3),
	(22, 2, 'P2510', 'h', '($h+$c)', 4),
	(23, 2, 'P2507', 'h', '($h+$c)', 2),
	(24, 2, 'P2508', 'h', '($h+$c)', 1),
	(25, 2, 'A2590', 'A', '1', 2),
	(26, 2, 'A010', 'Ah', '($A*2)+($h*(3+1))', 2),
	(27, 2, 'A020', 'Ah', '(($A*2)+($h*3)*2)', 1),
	(28, 2, 'A100', 'h', '1', 1),
	(29, 2, 'A030', 'Ah', '($A*$h)/3', 1),
	(30, 2, 'A040', 'Ah', '1', 30),
	(31, 2, 'A090', 'Ah', '1', 12),
	(32, 2, 'V04', 'Ah', '(($A/3))x(($h))', 3),
	(33, 2, 'MO01', 'x', '($A*$h)', 1),
	(34, 3, 'P3415', 'A', '($A+$c)', 2),
	(35, 3, 'P3415', 'h', '($h+$c)', 2),
	(36, 3, 'P3416', 'A', '((($A/2)+0.01)+$c)', 4),
	(37, 3, 'P3416', 'h', '($h+$c)', 4),
	(38, 3, 'P3417', 'h', '($h+$c)', 2),
	(39, 3, 'A45KC_L', 'x', '(1)', 1),
	(40, 3, 'A45KHF_L', 'x', '(2-1)', 1),
	(41, 3, 'A45KHM30_L', 'x', '(1)', 1),
	(42, 3, 'A45KM1_L', 'x', '(1)', 1),
	(43, 3, 'A010', 'Ah', '($A*2)+($h*(2+1))', 2),
	(44, 3, 'A020', 'Ah', '(($A*2)+($h*2)*2)', 1),
	(45, 3, 'A030', 'Ah', '($A*$h)/3', 1),
	(46, 3, 'A040', 'x', '1', 30),
	(47, 3, 'A050', 'x', '1', 30),
	(48, 3, 'A090', 'x', '1', 15),
	(49, 3, 'V04', 'Ah', '(($A/2))x(($h))', 2),
	(50, 3, 'MO01', 'Ah', '($A*$h)', 1),
	(51, 4, 'P3415', 'A', '($A+$c)', 2),
	(52, 4, 'P3415', 'h', '($h+$c)', 2),
	(53, 4, 'P3416', 'A', '(($A/3)+$c)+.01', 6),
	(54, 4, 'P3416', 'h', '($h+$c)', 6),
	(55, 4, 'P3417', 'h', '($h+$c)', 2),
	(56, 4, 'A45KC_L', 'x', '(1)', 1),
	(57, 4, 'P3428', 'h', '($h+$c)', 1),
	(58, 4, 'A45KHF_L', 'x', '(3-1)', 1),
	(59, 4, 'A45KHM30_L', 'x', '(1)', 1),
	(60, 5, 'P2001', 'A', '($A+$c)', 1),
	(62, 4, 'A45KM1_L', 'Ah', '(1)', 1),
	(63, 4, 'A010', 'Ah', '($A*2)+($h*(3+1))', 2),
	(66, 4, 'A020', 'Ah', '(($A*2)+($h*3)*2)', 1),
	(67, 4, 'A030', 'x', '($A*$h)/3', 1),
	(68, 4, 'A040', 'Ah', '1', 30),
	(70, 4, 'A090', 'Ah', '1', 12),
	(72, 4, 'MO01', 'x', '($A*$h)', 1),
	(73, 4, 'V04', 'x', '($A/3)x($h)', 3),
	(77, 4, 'A050', 'x', '1', 30),
	(78, 6, 'P2501', 'A', '($A+$c)', 1),
	(79, 6, 'P2502', 'A', '($A+$c)', 1),
	(80, 6, 'P2503', 'h', '($h+$c)', 2),
	(81, 6, 'P2504', 'A', '($A/4)+$c', 4),
	(82, 6, 'P2505', 'A', '($A/4)+$c', 4),
	(83, 6, 'P2507', 'h', '($h+$c)', 4),
	(84, 6, 'P2508', 'h', '($h+$c)', 1),
	(85, 6, 'P2510', 'h', '($h+$c)', 4),
	(86, 6, 'A010', 'Ah', '($A*2)+($h*(4+1))', 2),
	(87, 6, 'A020', 'Ah', '(($A*2)+($h*4)*2)', 1),
	(88, 6, 'A030', 'x', '($A*$h)/3', 1),
	(89, 6, 'A040', 'x', '1', 40),
	(90, 6, 'A050', 'x', '1', 40),
	(91, 6, 'A090', 'x', '1', 20),
	(92, 6, 'A100', 'x', '1', 2),
	(93, 6, 'A2590', 'x', '(1)', 4),
	(94, 6, 'MO01', 'x', '($A*$h)', 1),
	(95, 6, 'V04', 'Ah', '($A/4)x($h)', 4),
	(97, 7, '3540', 'Ah', '($A)+($h)', 2),
	(99, 7, '3541', 'Ah', '($A)+($h)', 2),
	(101, 7, '3544', 'A', '$A', 1),
	(103, 7, '3590', 'Ah', '($A*2)+($h*2)', 1),
	(104, 8, 'T25x50', 'A', 'A', 2),
	(105, 8, 'T25x50', 'h', 'H', 2),
	(106, 8, 'A050', 'x', '1', 20),
	(107, 8, 'Z999', 'x', 'x', 4),
	(108, 9, 'P3501', 'h', '$h', 2),
	(109, 9, 'P3501', 'A', '$A', 2),
	(110, 9, 'P3502', 'h', '$h', 2),
	(111, 9, 'P3502', 'A', '$A', 2),
	(112, 9, 'P3505', 'Ah', '$h+$A', 2),
	(113, 9, 'A010', 'Ah', '($A*2)+($h*2)', 2),
	(114, 9, 'A030', 'x', '($A*$h)/3', 1),
	(115, 9, 'A040', 'x', '1', 30),
	(116, 9, 'A090', 'x', '1', 12),
	(117, 9, 'A060', 'x', '1', 2),
	(118, 9, 'A110', 'x', '1', 1),
	(119, 10, 'P3501', 'A', '$A+$c', 2),
	(120, 10, 'P3501', 'h', '$h+$c', 2),
	(121, 10, 'P3505', 'A', '$A+$c', 4),
	(122, 10, 'P3505', 'h', '$h+$c', 2),
	(123, 10, 'P3503', 'A', '$A+$c', 1),
	(125, 10, 'A010', 'Ah', '($A*4)+($h*2)', 1),
	(126, 10, 'A030', 'Ah', '($A*$h)/3', 1),
	(127, 10, 'A040', 'x', '1', 30),
	(128, 10, 'A090', 'x', '1', 12),
	(129, 10, 'A050', 'x', '1', 30),
	(131, 10, 'V04', 'Ah', '($h/2)x($A)', 2),
	(132, 10, 'MO01', 'Ah', '($A*$h)', 1),
	(133, 10, 'L35UNI', 'x', '1', 6),
	(134, 11, 'U_12x12', 'Ah', '($h*2)+($A*2)', 2),
	(135, 11, 'A030', 'x', '($A*$h)/3', 1),
	(136, 11, 'A040', 'x', '1', 30),
	(137, 14, 'P3501', 'Ah', '($A+$c)+($h+$c)', 2),
	(138, 14, 'T30x60', 'Ah', '((($A/2)+$c)*2+(($h+$c)*2)', 2),
	(139, 14, 'U_15x25', 'Ah', '((($A/2)+$c))*2+(($h+$c)*2)', 2),
	(140, 14, 'A010', 'Ah', '((($A/2)+$c))*2+(($h+$c)*2)', 4),
	(141, 14, 'A040', 'x', '1', 30),
	(142, 14, 'A030', 'x', '($A*$h)/3', 1),
	(143, 14, 'P35080', 'x', '3', 4),
	(144, 14, 'V04', 'Ah', '($A/2)x($h)', 2),
	(145, 14, 'MO01', 'x', '($A*$h)', 1),
	(146, 14, 'A110', 'x', '1', 1),
	(147, 14, 'P3503', 'A', '$A+$c', 1),
	(148, 13, 'VT8_CAB_001', 'A', '($A)', 1),
	(149, 13, 'VT8_CAB_002', 'A', '($A)', 1),
	(150, 13, 'VT8_TRIL_001', 'A', '($A)', 1),
	(151, 13, 'VT8_TRILL_002', 'A', '($A)', 1),
	(152, 13, 'VT8_Ved', 'h', '(3-1)', 2),
	(153, 13, 'U_15x25', 'h', '($h)+2', 2),
	(154, 13, 'VT8_CHAP', 'x', '1', 1),
	(155, 13, 'A010', 'x', '($A*2)+($h*(3+1))', 2),
	(156, 13, 'VT8_RUED', 'x', '1', 2),
	(157, 13, 'VT008', 'Ah', '(($A+50)*$h)', 1),
	(158, 13, 'MO01', 'x', '($A*$h)', 1),
	(159, 13, 'A030', 'x', '($A*$h)/3', 1),
	(160, 7, 'V04', 'Ah', '($A)x($h)', 1),
	(161, 7, 'A040', 'x', '1', 30),
	(162, 7, 'A030', 'x', '($A*$h)/3', 1),
	(163, 7, 'A010', 'Ah', '($A*2)+($h*(1+1))', 2),
	(164, 7, 'A45KCLL', 'x', '(1)', 1),
	(165, 7, 'MO01', 'Ah', '($A*$h)', 1);
/*!40000 ALTER TABLE `tipologia_materiales` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.user_data
DROP TABLE IF EXISTS `user_data`;
CREATE TABLE IF NOT EXISTS `user_data` (
  `usuarios_id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT 'campo=usuarios_id&titulo=id&visible=-1&nuevo=auto&edit=none',
  `usuarios_nick` varchar(50) NOT NULL COMMENT 'campo=usuarios_nick&titulo=nick&nuevo=unic&edit=read',
  `usuarios_pass` varchar(150) NOT NULL COMMENT 'campo=usuarios_pass&titulo=password&visible=0&nuevo=pass&edit=none&predet=$this->_encript($pass)',
  `usuarios_mail` varchar(80) NOT NULL COMMENT 'campo=usuarios_mail&titulo=e-mail&nuevo=umail&edit=read',
  `usuarios_web` varchar(80) NOT NULL COMMENT 'campo=usuarios_web&titulo=pagina web',
  `usuarios_nombres` varchar(80) NOT NULL COMMENT 'campo=usuarios_nombres&titulo=nombres',
  `usuarios_apellidos` varchar(80) NOT NULL COMMENT 'campo=usuarios_apellidos&titulo=apellidos',
  `usuarios_empresa` varchar(150) NOT NULL COMMENT 'campo=usuarios_empresa&titulo=empresa-imstitucion&visible=0',
  `usuarios_dirfact` varchar(1000) NOT NULL COMMENT 'campo=usuarios_dirfact&titulo=direccion para faturar&visible=0&nuevo=textarea&edit=textarea',
  `usuarios_cargo` varchar(80) NOT NULL COMMENT 'campo=usuarios_cargo&titulo=cargo&visible=0',
  `usuarios_telefono` varchar(80) NOT NULL COMMENT 'campo=usuarios_telefono&titulo=telefono&visible=0',
  `usuarios_direccion` varchar(150) NOT NULL COMMENT 'campo=usuarios_direccion&titulo=direccion&visible=0',
  `usuarios_ciudad` varchar(80) NOT NULL COMMENT 'campo=usuarios_ciudad&titulo=ciudad&visible=0',
  `usuarios_pais` varchar(80) NOT NULL COMMENT 'campo=usuarios_pais&titulo=pais&visible=0',
  `usuarios_nivel` enum('1','2','3','4','5','6','7') NOT NULL DEFAULT '1' COMMENT 'campo=usuarios_nivel&titulo=nivel&visible=0&nuevo=hidden&edit=hidden&select=array(1=>estandar,2=>cliente,3=>operador,4=>vendedor,5=>administrador,6=>superadmin,7=>programador)&predet=1',
  `usuarios_pRec` varchar(20) NOT NULL COMMENT 'campo=usuarios_pRec&titulo=pass_rec&visible=0&nuevo=hidden&edit=none&predet=$pass',
  `usuarios_session` varchar(50) NOT NULL COMMENT 'campo=usuarios_session&titulo=session&visible=0&nuevo=hidden&edit=none',
  PRIMARY KEY (`usuarios_id`),
  UNIQUE KEY `username` (`usuarios_nick`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.user_data: ~4 rows (aproximadamente)
DELETE FROM `user_data`;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
INSERT INTO `user_data` (`usuarios_id`, `usuarios_nick`, `usuarios_pass`, `usuarios_mail`, `usuarios_web`, `usuarios_nombres`, `usuarios_apellidos`, `usuarios_empresa`, `usuarios_dirfact`, `usuarios_cargo`, `usuarios_telefono`, `usuarios_direccion`, `usuarios_ciudad`, `usuarios_pais`, `usuarios_nivel`, `usuarios_pRec`, `usuarios_session`) VALUES
	(1, '', '3a4341d6b9c49c389026f63e1d787a5f85bd6611', '', '', '', '', '', '', '', '', '', '', '', '1', 'user', ''),
	(2, 'juanjito', 'e63cded14c60b071f0854ba201afee8ea632c655', 'j_j_a_a@hotmail.com', '', 'Juan Jose', 'Arandia Avila', 'JJSystem', '', 'Programador', '74776487', 'J. de los Ríos No 1000', 'Cochabamba', 'Bolivia', '7', 'juanjito', 'bg84ln3jrffkcvsqm68ntf7nv3'),
	(3, 'sadmin', 'e63cded14c60b071f0854ba201afee8ea632c655', 'j_j_a_a@hotmail.com', '', 'Juan Jose', 'Arandia Avila', 'JJSystem', '', 'administrador', '74776487', 'J. de los Ríos No 1000', 'Cochabamba', 'Bolivia', '6', 'juanjito', '1nb377v205liemfa4vog6u3286'),
	(4, 'admin', 'e63cded14c60b071f0854ba201afee8ea632c655', 'j_j_a_a@hotmail.com', '', 'Juan Jose', 'Arandia Avila', 'JJSystem', '', 'administrador', '74776487', 'J. de los Ríos No 1000', 'Cochabamba', 'Bolivia', '5', 'juanjito', 'a9nj5crnduobk02fb36ae4v8m7');
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;


-- Volcando estructura para disparador alcon.cotizacion_detalle after_upd
DROP TRIGGER IF EXISTS `cotizacion_detalle after_upd`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `cotizacion_detalle after_upd` AFTER UPDATE ON `cotizacion_detalle` FOR EACH ROW BEGIN
update cotizacion set m2=(
	select round(sum(m2),2) as m2 
	from cotizacion_detalle
	where cotizacion_id=new.cotizacion_id
)
where cotizacion_id=new.cotizacion_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.cotizacion_detalle_after_del
DROP TRIGGER IF EXISTS `cotizacion_detalle_after_del`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `cotizacion_detalle_after_del` AFTER DELETE ON `cotizacion_detalle` FOR EACH ROW BEGIN
update cotizacion set m2=(
	select round(sum(m2),2) as m2 
	from cotizacion_detalle
	where cotizacion_id=old.cotizacion_id
)
where cotizacion_id=old.cotizacion_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.cotizacion_detalle_after_ins
DROP TRIGGER IF EXISTS `cotizacion_detalle_after_ins`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `cotizacion_detalle_after_ins` AFTER INSERT ON `cotizacion_detalle` FOR EACH ROW BEGIN
update cotizacion set m2=(
	select round(sum(m2),2) as m2 
	from cotizacion_detalle
	where cotizacion_id=new.cotizacion_id
)
where cotizacion_id=new.cotizacion_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.cotizacion_detalle_bef_ins
DROP TRIGGER IF EXISTS `cotizacion_detalle_bef_ins`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `cotizacion_detalle_bef_ins` BEFORE INSERT ON `cotizacion_detalle` FOR EACH ROW BEGIN
SET NEW.m2=((NEW.ancho*NEW.alto)*NEW.cantidad);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.cotizacion_detalle_bef_upd
DROP TRIGGER IF EXISTS `cotizacion_detalle_bef_upd`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `cotizacion_detalle_bef_upd` BEFORE UPDATE ON `cotizacion_detalle` FOR EACH ROW BEGIN
SET NEW.m2=((NEW.ancho*NEW.alto)*NEW.cantidad);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.tipologia_before_insert
DROP TRIGGER IF EXISTS `tipologia_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `tipologia_before_insert` BEFORE INSERT ON `tipologia` FOR EACH ROW BEGIN
	SET NEW.imagen=concat('images/disenos/',NEW.tipo,'.png');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.tipologia_before_update
DROP TRIGGER IF EXISTS `tipologia_before_update`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `tipologia_before_update` BEFORE UPDATE ON `tipologia` FOR EACH ROW BEGIN
	SET NEW.imagen=concat('images/disenos/',NEW.tipo,'.png');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para vista alcon.cotizacion_detalle_materiales
DROP VIEW IF EXISTS `cotizacion_detalle_materiales`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `cotizacion_detalle_materiales`;
CREATE ALGORITHM=UNDEFINED DEFINER=`librosandinos`@`localhost` VIEW `cotizacion_detalle_materiales` AS SELECT cotizacion_detalle.cotizacion_id,
--	cotizacion_detalle.codificacion, 
	tipologia_materiales.materiales_id,
	(select materiales.nombre from materiales where materiales.materiales_id = tipologia_materiales.materiales_id) as nombre,
--	cotizacion_detalle.ancho,
--	cotizacion_detalle.alto,
	concat('{',
	GROUP_CONCAT(concat(replace(tipologia_materiales.materiales_id,'_',''),'_',replace(cotizacion_detalle.codificacion,'_',''),'_',tipologia_materiales.ensamble,': {dim:',
		Replace(
			Replace(
				Replace(
					Replace(
						Replace(
							Replace(formula,'$Dh',div_horizontal),
							'$Dv',div_vertical),
						'$c','0.01'),
					'$M',movil),
				'$h',alto),
			'$A',ancho),', cant:',tipologia_materiales.cantidad,
		'} ')
	),'}') AS formula,
	(select materiales.unidad from materiales where materiales.materiales_id = tipologia_materiales.materiales_id) as unidad

FROM (tipologia INNER JOIN cotizacion_detalle 
	ON tipologia.tipologia_id = cotizacion_detalle.tipologia_id) 
	INNER JOIN tipologia_materiales 
	ON tipologia.tipologia_id = tipologia_materiales.tipologia_id
GROUP BY cotizacion_detalle.cotizacion_id,tipologia_materiales.materiales_id
ORDER BY cotizacion_detalle.cotizacion_id,tipologia_materiales.materiales_id,cotizacion_detalle.codificacion ;


-- Volcando estructura para vista alcon.materiales_color
DROP VIEW IF EXISTS `materiales_color`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `materiales_color`;
CREATE ALGORITHM=UNDEFINED DEFINER=`librosandinos`@`localhost` VIEW `materiales_color` AS SELECT materiales_id, nombre, `color` from materiales join color 
where materiales.colores regexp concat('.*',color.color,'.*') ;


/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
=======
-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.27 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para alcon
DROP DATABASE IF EXISTS `librosandinos_vitrales`;
CREATE DATABASE IF NOT EXISTS `librosandinos_vitrales` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `librosandinos_vitrales`;


-- Volcando estructura para tabla alcon.cdm
DROP TABLE IF EXISTS `cdm`;
CREATE TABLE IF NOT EXISTS `cdm` (
  `cotizacion_id` int(11) NOT NULL COMMENT 'campo=cotizacion_id&titulo=Num&nuevo=select&edit=select&select=$this->funSelect(''cotizacion'',''cotizacion_id'')&clase=algn_number&thwdth=50px',
  `materiales_id` varchar(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Material&visible=4&nuevo=select&edit=select&select=$this->funSelect(''materiales'',''materiales_id,nombre'')&attr=required&clase=algn_left',
  `nombre` varchar(150) DEFAULT NULL,
  `formula` varchar(343) DEFAULT NULL,
  `unidad` varchar(10) DEFAULT NULL,
  `precio` char(0) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='VIEW';

-- Volcando datos para la tabla alcon.cdm: ~67 rows (aproximadamente)
DELETE FROM `cdm`;
/*!40000 ALTER TABLE `cdm` DISABLE KEYS */;
INSERT INTO `cdm` (`cotizacion_id`, `materiales_id`, `nombre`, `formula`, `unidad`, `precio`) VALUES
	(1, 'A010', 'Felpa', '{A010_1A001_Ah:{dim:(1.3300*2)+(1.5200*(2+1)),cant:2},A010_1A002_Ah:{dim:(1.5500*2)+(1.3900*(2+1)),cant:2},A010_1A003_Ah:{dim:(2.4100*2)+(1.7700*(3+1)),cant:2},A010_1A004_Ah:{dim:(2.3800*2)+(1.7500*(3+1)),cant:2},A010_1A005_Ah:{dim:(2.3900*2)+(1.7200*(3+1)),cant:2}}', 'ml', ''),
	(1, 'A020', 'Burlete', '{A020_1A001_Ah:{dim:((1.3300*2)+(1.5200*2)*2),cant:1},A020_1A002_Ah:{dim:((1.5500*2)+(1.3900*2)*2),cant:1},A020_1A003_Ah:{dim:((2.4100*2)+(1.7700*3)*2),cant:1},A020_1A004_Ah:{dim:((2.3800*2)+(1.7500*3)*2),cant:1},A020_1A005_Ah:{dim:((2.3900*2)+(1.7200*3)*2),cant:1}}', 'ml', ''),
	(1, 'A030', 'Silicon', '{A030_1A001_Ah:{dim:(1.3300*1.5200)/3,cant:1},A030_1A002_Ah:{dim:(1.5500*1.3900)/3,cant:1},A030_1A003_Ah:{dim:(2.4100*1.7700)/3,cant:1},A030_1A004_Ah:{dim:(2.3800*1.7500)/3,cant:1},A030_1A005_Ah:{dim:(2.3900*1.7200)/3,cant:1}}', 'tubo', ''),
	(1, 'A040', 'Tornillo', '{A040_1A001_Ah:{dim:1,cant:30},A040_1A002_Ah:{dim:1,cant:30},A040_1A003_Ah:{dim:1,cant:30},A040_1A004_Ah:{dim:1,cant:30},A040_1A005_Ah:{dim:1,cant:30}}', 'pza', ''),
	(1, 'A090', 'Tarugos', '{A090_1A001_Ah:{dim:1,cant:12},A090_1A002_Ah:{dim:1,cant:12},A090_1A003_Ah:{dim:1,cant:12},A090_1A004_Ah:{dim:1,cant:12},A090_1A005_Ah:{dim:1,cant:12}}', 'pza', ''),
	(1, 'A100', 'Pico de Loro', '{A100_1A001_x:{dim:1,cant:1},A100_1A002_x:{dim:1,cant:1},A100_1A003_h:{dim:1,cant:1},A100_1A004_h:{dim:1,cant:1},A100_1A005_h:{dim:1,cant:1}}', 'pza', ''),
	(1, 'A2590', 'Ruedas', '{A2590_1A001_A:{dim:(1),cant:2},A2590_1A002_A:{dim:(1),cant:2},A2590_1A003_A:{dim:1,cant:2},A2590_1A004_A:{dim:1,cant:2},A2590_1A005_A:{dim:1,cant:2}}', 'pza', ''),
	(1, 'MO01', 'Mano de Obra', '{MO01_1A001_x:{dim:(1.3300*1.5200),cant:1},MO01_1A002_x:{dim:(1.5500*1.3900),cant:1},MO01_1A003_x:{dim:(2.4100*1.7700),cant:1},MO01_1A004_x:{dim:(2.3800*1.7500),cant:1},MO01_1A005_x:{dim:(2.3900*1.7200),cant:1}}', 'm2', ''),
	(1, 'P2501', 'Riel Superior', '{P2501_1A001_A:{dim:(1.3300+0.01),cant:1},P2501_1A002_A:{dim:(1.5500+0.01),cant:1},P2501_1A003_A:{dim:(2.4100+0.01),cant:1},P2501_1A004_A:{dim:(2.3800+0.01),cant:1},P2501_1A005_A:{dim:(2.3900+0.01),cant:1}}', 'barra', ''),
	(1, 'P2502', 'Riel Inferior', '{P2502_1A001_A:{dim:(1.3300+0.01),cant:1},P2502_1A002_A:{dim:(1.5500+0.01),cant:1},P2502_1A003_A:{dim:(2.4100+0.01),cant:1},P2502_1A004_A:{dim:(2.3800+0.01),cant:1},P2502_1A005_A:{dim:(2.3900+0.01),cant:1}}', 'barra', ''),
	(1, 'P2503', 'Jamba', '{P2503_1A001_h:{dim:(1.5200+0.01),cant:2},P2503_1A002_h:{dim:(1.3900+0.01),cant:2},P2503_1A003_h:{dim:(1.7700+0.01),cant:2},P2503_1A004_h:{dim:(1.7500+0.01),cant:2},P2503_1A005_h:{dim:(1.7200+0.01),cant:2}}', 'barra', ''),
	(1, 'P2504', 'Cabezal', '{P2504_1A001_A:{dim:(1.3300/2)+0.01,cant:2},P2504_1A002_A:{dim:(1.5500/2)+0.01,cant:2},P2504_1A003_A:{dim:(2.4100/3)+0.01,cant:3},P2504_1A004_A:{dim:(2.3800/3)+0.01,cant:3},P2504_1A005_A:{dim:(2.3900/3)+0.01,cant:3}}', 'barra', ''),
	(1, 'P2505', 'Zocalo', '{P2505_1A001_A:{dim:(1.3300/2)+0.01,cant:2},P2505_1A002_A:{dim:(1.5500/2)+0.01,cant:2},P2505_1A003_A:{dim:(2.4100/3)+0.01,cant:3},P2505_1A004_A:{dim:(2.3800/3)+0.01,cant:3},P2505_1A005_A:{dim:(2.3900/3)+0.01,cant:3}}', 'barra', ''),
	(1, 'P2507', 'Gancho', '{P2507_1A001_h:{dim:(1.5200+0.01),cant:2},P2507_1A002_h:{dim:(1.3900+0.01),cant:2},P2507_1A003_h:{dim:(1.7700+0.01),cant:2},P2507_1A004_h:{dim:(1.7500+0.01),cant:2},P2507_1A005_h:{dim:(1.7200+0.01),cant:2}}', 'barra', ''),
	(1, 'P2508', 'encuentro', '{P2508_1A003_h:{dim:(1.7700+0.01),cant:1},P2508_1A004_h:{dim:(1.7500+0.01),cant:1},P2508_1A005_h:{dim:(1.7200+0.01),cant:1}}', 'barra', ''),
	(1, 'P2510', 'Pierna', '{P2510_1A001_h:{dim:(1.5200+0.01),cant:2},P2510_1A002_h:{dim:(1.3900+0.01),cant:2},P2510_1A003_h:{dim:(1.7700+0.01),cant:4},P2510_1A004_h:{dim:(1.7500+0.01),cant:4},P2510_1A005_h:{dim:(1.7200+0.01),cant:4}}', 'barra', ''),
	(1, 'V04', 'Vidrio 4mm', '{V04_1A001_Ah:{dim:(1.3300/2)x(1.5200),cant:2},V04_1A002_Ah:{dim:(1.5500/2)x(1.3900),cant:2},V04_1A003_Ah:{dim:((2.4100/3))x((1.7700)),cant:3},V04_1A004_Ah:{dim:((2.3800/3))x((1.7500)),cant:3},V04_1A005_Ah:{dim:((2.3900/3))x((1.7200)),cant:3}}', 'plancha', ''),
	(2, 'A010', 'Felpa', '{A010_a1001_Ah:{dim:(2.5800*2)+(1.3500*(3+1)),cant:2},A010_a1002_Ah:{dim:(1.8900*2)+(1.3800*(2+1)),cant:2},A010_a1003_Ah:{dim:(1.9500*2)+(1.3600*(2+1)),cant:2},A010_a1004_Ah:{dim:(2.3600*2)+(1.4500*(3+1)),cant:2},A010_a1005_Ah:{dim:(2.8200*2)+(1.5200*(3+1)),cant:2},A010_a1006_Ah:{dim:(2.8400*2)+(2.5600*(3+1)),cant:2}}', 'ml', ''),
	(2, 'A020', 'Burlete', '{A020_a1001_Ah:{dim:((2.5800*2)+(1.3500*3)*2),cant:1},A020_a1002_Ah:{dim:((1.8900*2)+(1.3800*2)*2),cant:1},A020_a1003_Ah:{dim:((1.9500*2)+(1.3600*2)*2),cant:1},A020_a1004_Ah:{dim:((2.3600*2)+(1.4500*3)*2),cant:1},A020_a1005_Ah:{dim:((2.8200*2)+(1.5200*3)*2),cant:1},A020_a1006_Ah:{dim:((2.8400*2)+(2.5600*3)*2),cant:1}}', 'ml', ''),
	(2, 'A030', 'Silicon', '{A030_a1001_x:{dim:(2.5800*1.3500)/3,cant:1},A030_a1002_Ah:{dim:(1.8900*1.3800)/3,cant:1},A030_a1003_Ah:{dim:(1.9500*1.3600)/3,cant:1},A030_a1004_x:{dim:(2.3600*1.4500)/3,cant:1},A030_a1005_x:{dim:(2.8200*1.5200)/3,cant:1},A030_a1006_x:{dim:(2.8400*2.5600)/3,cant:1}}', 'tubo', ''),
	(2, 'A040', 'Tornillo', '{A040_a1001_Ah:{dim:1,cant:30},A040_a1002_x:{dim:1,cant:30},A040_a1003_x:{dim:1,cant:30},A040_a1004_Ah:{dim:1,cant:30},A040_a1005_Ah:{dim:1,cant:30},A040_a1006_Ah:{dim:1,cant:30}}', 'pza', ''),
	(2, 'A050', 'Remache', '{A050_a1001_x:{dim:1,cant:30},A050_a1002_x:{dim:1,cant:30},A050_a1003_x:{dim:1,cant:30},A050_a1004_x:{dim:1,cant:30},A050_a1005_x:{dim:1,cant:30},A050_a1006_x:{dim:1,cant:30}}', 'pza', ''),
	(2, 'A090', 'Tarugos', '{A090_a1001_Ah:{dim:1,cant:12},A090_a1002_x:{dim:1,cant:15},A090_a1003_x:{dim:1,cant:15},A090_a1004_Ah:{dim:1,cant:12},A090_a1005_Ah:{dim:1,cant:12},A090_a1006_Ah:{dim:1,cant:12}}', 'pza', ''),
	(2, 'A45KC_L', 'Kit cierres(lite)', '{A45KCL_a1001_x:{dim:(1),cant:1},A45KCL_a1002_x:{dim:(1),cant:1},A45KCL_a1003_x:{dim:(1),cant:1},A45KCL_a1004_x:{dim:(1),cant:1},A45KCL_a1005_x:{dim:(1),cant:1},A45KCL_a1006_x:{dim:(1),cant:1}}', 'unidad', ''),
	(2, 'A45KHF_L', 'Kit Hoja Fijas(lite)', '{A45KHFL_a1001_x:{dim:(3-1),cant:1},A45KHFL_a1002_x:{dim:(2-1),cant:1},A45KHFL_a1003_x:{dim:(2-1),cant:1},A45KHFL_a1004_x:{dim:(3-1),cant:1},A45KHFL_a1005_x:{dim:(3-1),cant:1},A45KHFL_a1006_x:{dim:(3-1),cant:1}}', 'unidad', ''),
	(2, 'A45KHM30_L', 'Kit Hoja Movil 30kgs(lite)', '{A45KHM30L_a1001_x:{dim:(1),cant:1},A45KHM30L_a1002_x:{dim:(1),cant:1},A45KHM30L_a1003_x:{dim:(1),cant:1},A45KHM30L_a1004_x:{dim:(1),cant:1},A45KHM30L_a1005_x:{dim:(1),cant:1},A45KHM30L_a1006_x:{dim:(1),cant:1}}', 'unidad', ''),
	(2, 'A45KM1_L', 'Kit marcos(lite)', '{A45KM1L_a1001_Ah:{dim:(1),cant:1},A45KM1L_a1002_x:{dim:(1),cant:1},A45KM1L_a1003_x:{dim:(1),cant:1},A45KM1L_a1004_Ah:{dim:(1),cant:1},A45KM1L_a1005_Ah:{dim:(1),cant:1},A45KM1L_a1006_Ah:{dim:(1),cant:1}}', 'unidad', ''),
	(2, 'MO01', 'Mano de Obra', '{MO01_a1001_x:{dim:(2.5800*1.3500),cant:1},MO01_a1002_Ah:{dim:(1.8900*1.3800),cant:1},MO01_a1003_Ah:{dim:(1.9500*1.3600),cant:1},MO01_a1004_x:{dim:(2.3600*1.4500),cant:1},MO01_a1005_x:{dim:(2.8200*1.5200),cant:1},MO01_a1006_x:{dim:(2.8400*2.5600),cant:1}}', 'm2', ''),
	(2, 'P3415', 'Marco lite', '{P3415_a1001_h:{dim:(1.3500+0.01),cant:2},P3415_a1001_A:{dim:(2.5800+0.01),cant:2},P3415_a1002_h:{dim:(1.3800+0.01),cant:2},P3415_a1002_A:{dim:(1.8900+0.01),cant:2},P3415_a1003_h:{dim:(1.3600+0.01),cant:2},P3415_a1003_A:{dim:(1.9500+0.01),cant:2},P3415_a1004_h:{dim:(1.4500+0.01),cant:2},P3415_a1004_A:{dim:(2.3600+0.01),cant:2},P3415_a1005_h:', 'barra', ''),
	(2, 'P3416', 'Hojas lite', '{P3416_a1001_h:{dim:((1.3500+0.01)/3)+.01,cant:6},P3416_a1001_A:{dim:(2.5800+0.01),cant:6},P3416_a1002_h:{dim:(1.3800+0.01),cant:4},P3416_a1002_A:{dim:(((1.8900/2)+0.01)+0.01),cant:4},P3416_a1003_h:{dim:(1.3600+0.01),cant:4},P3416_a1003_A:{dim:(((1.9500/2)+0.01)+0.01),cant:4},P3416_a1004_h:{dim:((1.4500+0.01)/3)+.01,cant:6},P3416_a1004_A:{di', 'barra', ''),
	(2, 'P3417', 'Entrecierres lite', '{P3417_a1001_h:{dim:(1.3500+0.01),cant:2},P3417_a1002_h:{dim:(1.3800+0.01),cant:2},P3417_a1003_h:{dim:(1.3600+0.01),cant:2},P3417_a1004_h:{dim:(1.4500+0.01),cant:2},P3417_a1005_h:{dim:(1.5200+0.01),cant:2},P3417_a1006_h:{dim:(2.5600+0.01),cant:2}}', 'barra', ''),
	(2, 'P3428', 'Adaptador Hojas lite', '{P3428_a1001_h:{dim:(1.3500+0.01),cant:1},P3428_a1004_h:{dim:(1.4500+0.01),cant:1},P3428_a1005_h:{dim:(1.5200+0.01),cant:1},P3428_a1006_h:{dim:(2.5600+0.01),cant:1}}', 'barra', ''),
	(2, 'V04', 'Vidrio 4mm', '{V04_a1001_x:{dim:(2.5800/3)x(1.3500),cant:3},V04_a1002_Ah:{dim:((1.8900/2))x((1.3800)),cant:2},V04_a1003_Ah:{dim:((1.9500/2))x((1.3600)),cant:2},V04_a1004_x:{dim:(2.3600/3)x(1.4500),cant:3},V04_a1005_x:{dim:(2.8200/3)x(1.5200),cant:3},V04_a1006_x:{dim:(2.8400/3)x(2.5600),cant:3}}', 'plancha', ''),
	(3, 'A010', 'Felpa', '{A010_1a001_Ah:{dim:(1.8900*2)+(1.3600*(3+1)),cant:2},A010_1a002_Ah:{dim:(1.3000*2)+(1.3600*(2+1)),cant:2}}', 'ml', ''),
	(3, 'A020', 'Burlete', '{A020_1a001_Ah:{dim:((1.8900*2)+(1.3600*3)*2),cant:1},A020_1a002_Ah:{dim:((1.3000*2)+(1.3600*2)*2),cant:1}}', 'ml', ''),
	(3, 'A030', 'Silicon', '{A030_1a001_Ah:{dim:(1.8900*1.3600)/3,cant:1},A030_1a002_Ah:{dim:(1.3000*1.3600)/3,cant:1}}', 'tubo', ''),
	(3, 'A040', 'Tornillo', '{A040_1a001_Ah:{dim:1,cant:30},A040_1a002_Ah:{dim:1,cant:30}}', 'pza', ''),
	(3, 'A090', 'Tarugos', '{A090_1a001_Ah:{dim:1,cant:12},A090_1a002_Ah:{dim:1,cant:12}}', 'pza', ''),
	(3, 'A100', 'Pico de Loro', '{A100_1a001_h:{dim:1,cant:1},A100_1a002_x:{dim:1,cant:1}}', 'pza', ''),
	(3, 'A2590', 'Ruedas', '{A2590_1a001_A:{dim:1,cant:2},A2590_1a002_A:{dim:(1),cant:2}}', 'pza', ''),
	(3, 'MO01', 'Mano de Obra', '{MO01_1a001_x:{dim:(1.8900*1.3600),cant:1},MO01_1a002_x:{dim:(1.3000*1.3600),cant:1}}', 'm2', ''),
	(3, 'P2501', 'Riel Superior', '{P2501_1a001_A:{dim:(1.8900+0.01),cant:1},P2501_1a002_A:{dim:(1.3000+0.01),cant:1}}', 'barra', ''),
	(3, 'P2502', 'Riel Inferior', '{P2502_1a001_A:{dim:(1.8900+0.01),cant:1},P2502_1a002_A:{dim:(1.3000+0.01),cant:1}}', 'barra', ''),
	(3, 'P2503', 'Jamba', '{P2503_1a001_h:{dim:(1.3600+0.01),cant:2},P2503_1a002_h:{dim:(1.3600+0.01),cant:2}}', 'barra', ''),
	(3, 'P2504', 'Cabezal', '{P2504_1a001_A:{dim:(1.8900/3)+0.01,cant:3},P2504_1a002_A:{dim:(1.3000/2)+0.01,cant:2}}', 'barra', ''),
	(3, 'P2505', 'Zocalo', '{P2505_1a001_A:{dim:(1.8900/3)+0.01,cant:3},P2505_1a002_A:{dim:(1.3000/2)+0.01,cant:2}}', 'barra', ''),
	(3, 'P2507', 'Gancho', '{P2507_1a001_h:{dim:(1.3600+0.01),cant:2},P2507_1a002_h:{dim:(1.3600+0.01),cant:2}}', 'barra', ''),
	(3, 'P2508', 'encuentro', '{P2508_1a001_h:{dim:(1.3600+0.01),cant:1}}', 'barra', ''),
	(3, 'P2510', 'Pierna', '{P2510_1a001_h:{dim:(1.3600+0.01),cant:4},P2510_1a002_h:{dim:(1.3600+0.01),cant:2}}', 'barra', ''),
	(3, 'V04', 'Vidrio 4mm', '{V04_1a001_Ah:{dim:((1.8900/3))x((1.3600)),cant:3},V04_1a002_Ah:{dim:(1.3000/2)x(1.3600),cant:2}}', 'plancha', ''),
	(4, 'A010', 'Felpa', '{A010_pb001_Ah:{dim:(1.8500*2)+(1.5100*(2+1)),cant:2},A010_pb002_Ah:{dim:(2.7500*2)+(1.5900*(3+1)),cant:2},A010_pb003_Ah:{dim:(1.3000*2)+(1.0000*(2+1)),cant:2},A010_pb004_Ah:{dim:(2.4200*2)+(1.6500*(3+1)),cant:2}}', 'ml', ''),
	(4, 'A020', 'Burlete', '{A020_pb001_Ah:{dim:((1.8500*2)+(1.5100*2)*2),cant:1},A020_pb002_Ah:{dim:((2.7500*2)+(1.5900*3)*2),cant:1},A020_pb003_Ah:{dim:((1.3000*2)+(1.0000*2)*2),cant:1},A020_pb004_Ah:{dim:((2.4200*2)+(1.6500*3)*2),cant:1}}', 'ml', ''),
	(4, 'A030', 'Silicon', '{A030_pb001_Ah:{dim:(1.8500*1.5100)/3,cant:1},A030_pb002_Ah:{dim:(2.7500*1.5900)/3,cant:1},A030_pb003_Ah:{dim:(1.3000*1.0000)/3,cant:1},A030_pb004_Ah:{dim:(2.4200*1.6500)/3,cant:1}}', 'tubo', ''),
	(4, 'A040', 'Tornillo', '{A040_pb001_Ah:{dim:1,cant:30},A040_pb002_Ah:{dim:1,cant:30},A040_pb003_Ah:{dim:1,cant:30},A040_pb004_Ah:{dim:1,cant:30}}', 'pza', ''),
	(4, 'A090', 'Tarugos', '{A090_pb001_Ah:{dim:1,cant:12},A090_pb002_Ah:{dim:1,cant:12},A090_pb003_Ah:{dim:1,cant:12},A090_pb004_Ah:{dim:1,cant:12}}', 'pza', ''),
	(4, 'A100', 'Pico de Loro', '{A100_pb001_x:{dim:1,cant:1},A100_pb002_h:{dim:1,cant:1},A100_pb003_x:{dim:1,cant:1},A100_pb004_h:{dim:1,cant:1}}', 'pza', ''),
	(4, 'A2590', 'Ruedas', '{A2590_pb001_A:{dim:(1),cant:2},A2590_pb002_A:{dim:1,cant:2},A2590_pb003_A:{dim:(1),cant:2},A2590_pb004_A:{dim:1,cant:2}}', 'pza', ''),
	(4, 'MO01', 'Mano de Obra', '{MO01_pb001_x:{dim:(1.8500*1.5100),cant:1},MO01_pb002_x:{dim:(2.7500*1.5900),cant:1},MO01_pb003_x:{dim:(1.3000*1.0000),cant:1},MO01_pb004_x:{dim:(2.4200*1.6500),cant:1}}', 'm2', ''),
	(4, 'P2501', 'Riel Superior', '{P2501_pb001_A:{dim:(1.8500+0.01),cant:1},P2501_pb002_A:{dim:(2.7500+0.01),cant:1},P2501_pb003_A:{dim:(1.3000+0.01),cant:1},P2501_pb004_A:{dim:(2.4200+0.01),cant:1}}', 'barra', ''),
	(4, 'P2502', 'Riel Inferior', '{P2502_pb001_A:{dim:(1.8500+0.01),cant:1},P2502_pb002_A:{dim:(2.7500+0.01),cant:1},P2502_pb003_A:{dim:(1.3000+0.01),cant:1},P2502_pb004_A:{dim:(2.4200+0.01),cant:1}}', 'barra', ''),
	(4, 'P2503', 'Jamba', '{P2503_pb001_h:{dim:(1.5100+0.01),cant:2},P2503_pb002_h:{dim:(1.5900+0.01),cant:2},P2503_pb003_h:{dim:(1.0000+0.01),cant:2},P2503_pb004_h:{dim:(1.6500+0.01),cant:2}}', 'barra', ''),
	(4, 'P2504', 'Cabezal', '{P2504_pb001_A:{dim:(1.8500/2)+0.01,cant:2},P2504_pb002_A:{dim:(2.7500/3)+0.01,cant:3},P2504_pb003_A:{dim:(1.3000/2)+0.01,cant:2},P2504_pb004_A:{dim:(2.4200/3)+0.01,cant:3}}', 'barra', ''),
	(4, 'P2505', 'Zocalo', '{P2505_pb001_A:{dim:(1.8500/2)+0.01,cant:2},P2505_pb002_A:{dim:(2.7500/3)+0.01,cant:3},P2505_pb003_A:{dim:(1.3000/2)+0.01,cant:2},P2505_pb004_A:{dim:(2.4200/3)+0.01,cant:3}}', 'barra', ''),
	(4, 'P2507', 'Gancho', '{P2507_pb001_h:{dim:(1.5100+0.01),cant:2},P2507_pb002_h:{dim:(1.5900+0.01),cant:2},P2507_pb003_h:{dim:(1.0000+0.01),cant:2},P2507_pb004_h:{dim:(1.6500+0.01),cant:2}}', 'barra', ''),
	(4, 'P2508', 'encuentro', '{P2508_pb002_h:{dim:(1.5900+0.01),cant:1},P2508_pb004_h:{dim:(1.6500+0.01),cant:1}}', 'barra', ''),
	(4, 'P2510', 'Pierna', '{P2510_pb001_h:{dim:(1.5100+0.01),cant:2},P2510_pb002_h:{dim:(1.5900+0.01),cant:4},P2510_pb003_h:{dim:(1.0000+0.01),cant:2},P2510_pb004_h:{dim:(1.6500+0.01),cant:4}}', 'barra', ''),
	(4, 'V04', 'Vidrio 4mm', '{V04_pb001_Ah:{dim:(1.8500/2)x(1.5100),cant:2},V04_pb002_Ah:{dim:((2.7500/3))x((1.5900)),cant:3},V04_pb003_Ah:{dim:(1.3000/2)x(1.0000),cant:2},V04_pb004_Ah:{dim:((2.4200/3))x((1.6500)),cant:3}}', 'plancha', '');
/*!40000 ALTER TABLE `cdm` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.clientes
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `clientes_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=clientes_id&titulo=Num&visible=-1&nuevo=auto&edit=hidden&thwdth=40px',
  `titulo` varchar(50) NOT NULL COMMENT 'campo=titulo&titulo=Tit&thwdth=40px&clase=algn_left',
  `nombres` varchar(50) NOT NULL COMMENT 'campo=nombres&titulo=Nombres&clase=algn_left',
  `apellidos` varchar(50) NOT NULL COMMENT 'campo=apellidos&titulo=Apellidos&attr=required&clase=algn_left',
  `NIT` varchar(50) NOT NULL COMMENT 'campo=NIT&titulo=CI-NIT&predet=0&attr=required&thwdth=120px&clase=algn_number',
  `telefono` varchar(50) NOT NULL COMMENT 'campo=telefono&titulo=Telefonos&clase=algn_left',
  PRIMARY KEY (`clientes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.clientes: ~15 rows (aproximadamente)
DELETE FROM `clientes`;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`clientes_id`, `titulo`, `nombres`, `apellidos`, `NIT`, `telefono`) VALUES
	(1, 'Sr.', 'Marcelino', 'Rocabado', '1528963014', '747785896'),
	(2, 'Arq.', 'Julio', 'Aramayo', '54158962', '78954654'),
	(3, 'Ing.', 'Froilan', 'Morales', '', ''),
	(4, 'Sr.', 'Jose', 'Rivadeneira', '', ''),
	(5, 'Sr.', 'Ramon', 'Mercado', '45812', ''),
	(6, 'Ing', 'Ernesto', 'Cardona', '1', ''),
	(7, 'Srs', 'UNIVALLE', 'Universidad', '100', ''),
	(8, 'Sr.', 'Roger', 'Choque', '0', ''),
	(9, 'Srs', '', 'Frutillar', '0', ''),
	(10, 'Arq.', '', 'Hinojosa', '0', ''),
	(11, '', 'Sra. 3pisos', ' casa', '0', ''),
	(12, 'Sra. ', 'Carolina', 'Terrazas', '0', ''),
	(13, 'Sr', 'Juan Carlos', 'Medina', '100', ''),
	(14, 'Sr', 'Alejandro', 'Zurita', '0', ''),
	(15, 'arq', 'think', 'think', '0', '');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.color
DROP TABLE IF EXISTS `color`;
CREATE TABLE IF NOT EXISTS `color` (
  `color` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla alcon.color: ~10 rows (aproximadamente)
DELETE FROM `color`;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` (`color`) VALUES
	(' ninguno'),
	('blanco'),
	('bronce'),
	('champagne'),
	('estandar'),
	('mate'),
	('negro'),
	('nogal'),
	('titanio'),
	('transparente');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.cotizacion
DROP TABLE IF EXISTS `cotizacion`;
CREATE TABLE IF NOT EXISTS `cotizacion` (
  `cotizacion_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=cotizacion_id&titulo=Cotizac. Num&visible=1&nuevo=read&edit=read&thwdth=50px',
  `fecha` date NOT NULL COMMENT 'campo=fecha&titulo=fecha&predet=date(''Y-m-d'')&thwdth=80px',
  `clientes_id` int(11) NOT NULL COMMENT 'campo=clientes_id&titulo=Cliente&visible=4&nuevo=select&edit=select&select=$this->funSelect(''clientes'',''clientes_id,apellidos'',true)&attr=required&clase=algn_left&thwdth=80px',
  `descripcion` varchar(500) NOT NULL COMMENT 'campo=descripcion&titulo=Descripcion&nuevo=textarea&edit=textarea&clase=algn_left',
  `m2` double(5,2) NOT NULL DEFAULT '0.00' COMMENT 'campo=m2&titulo=Total m2&clase=algn_number&thwdth=60px',
  `USS` double(8,2) NOT NULL DEFAULT '0.00' COMMENT 'campo=USS&titulo=Total USS&clase=algn_number&thwdth=60px',
  `m2-USS` double(8,2) NOT NULL DEFAULT '0.00' COMMENT 'campo=m2-USS&titulo=precio m2&clase=algn_number&thwdth=60px',
  `cambio` double(8,2) NOT NULL DEFAULT '7.00' COMMENT 'campo=cambio&titulo=Tipo de Cambio&predet=7.00&attr=required&clase=algn_number&thwdth=60px',
  PRIMARY KEY (`cotizacion_id`),
  KEY `FK__clientes` (`clientes_id`),
  CONSTRAINT `FK_cotizacion_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`clientes_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.cotizacion: ~16 rows (aproximadamente)
DELETE FROM `cotizacion`;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
INSERT INTO `cotizacion` (`cotizacion_id`, `fecha`, `clientes_id`, `descripcion`, `m2`, `USS`, `m2-USS`, `cambio`) VALUES
	(1, '2016-04-12', 1, 'Provision e instalación de ventanas en carpinteria de aluminio L25', 16.72, 1535.00, 0.00, 7.00),
	(2, '2016-04-12', 2, 'Provision e instalación de ventanas en carpintería de aluminio. Sistema Europeo T45-Lite. Vidrio 4mm incoloro', 20.88, 0.00, 0.00, 7.00),
	(3, '2016-04-12', 3, 'Provisión e instalación de ventanas en carpinteria de aluminio sistema T45 Vidrio 4mm', 4.34, 0.00, 0.00, 7.00),
	(4, '2016-04-20', 2, 'Provision e instalación de ventanas en carpintería de aluminio Linea 25 c/vidrio de 4mm', 12.46, 0.00, 0.00, 7.00),
	(5, '2016-04-20', 2, '', 0.00, 0.00, 0.00, 7.00),
	(6, '2016-04-20', 4, '', 0.00, 0.00, 0.00, 7.00),
	(7, '2016-04-29', 6, 'Ventanas Linea 25 vidrio 4mm Color Mate Piso 7', 95.39, 0.00, 0.00, 7.00),
	(8, '2016-07-19', 7, 'Premarcos', 6.30, 0.00, 0.00, 7.00),
	(9, '2018-02-19', 8, 'Ventanas en Carpinteria de aluminio', 12.48, 0.00, 0.00, 7.00),
	(10, '2018-08-10', 9, 'Puertas y Ventanas Correderas y fijas Linea 25', 26.61, 0.00, 0.00, 7.00),
	(11, '2018-08-10', 9, 'Puertas y Ventanas Correderas y fijas Linea 25', 26.61, 0.00, 0.00, 7.00),
	(12, '2018-09-19', 10, 'Carpinteria L25 y Vidrio Templado Edificio Santa Lucia', 42.93, 0.00, 0.00, 6.96),
	(13, '2020-01-07', 12, 'Cotización Ventanas Correderas Linea 25', 100.00, 0.00, 0.00, 6.96),
	(14, '2022-12-06', 13, 'Cotizacion Ventanas pvc', 7.97, 0.00, 0.00, 6.96),
	(15, '2022-12-09', 14, 'Paños Fijos PVC Puerta Batiente PVC', 0.00, 0.00, 0.00, 6.96),
	(16, '2025-07-10', 15, 'Puertas y ventanas l25', 214.77, 0.00, 0.00, 7.00);
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.cotizacion_detalle
DROP TABLE IF EXISTS `cotizacion_detalle`;
CREATE TABLE IF NOT EXISTS `cotizacion_detalle` (
  `cotizacion_detalle_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=cotizacion_detalle_id&titulo=Num&visible=-1&clase=algn_number&thwdth=50px',
  `cotizacion_id` int(11) NOT NULL COMMENT 'campo=cotizacion_id&titulo=Num&nuevo=select&edit=select&select=$this->funSelect(''cotizacion'',''cotizacion_id'')&clase=algn_number&thwdth=50px',
  `codificacion` varchar(20) NOT NULL COMMENT 'campo=codificacion&titulo=Codificacion&attr=required pattern=''[a-zA-Z0-9_]*''&clase=algn_left&thwdth=120px',
  `tipologia_id` int(11) NOT NULL COMMENT 'campo=tipologia_id&titulo=Tipologia&visible=5&nuevo=selectImg&edit=selectImg&select=$this->funSelect(''tipologia'',''tipologia_id,imagen'')&attr=required&clase=imagen&thwdth=120px',
  `ancho` double(5,3) NOT NULL DEFAULT '0.000' COMMENT 'campo=ancho&titulo=Ancho&predet=0&attr=required&clase=algn_number&thwdth=50px',
  `alto` double(5,3) NOT NULL DEFAULT '0.000' COMMENT 'campo=alto&titulo=Altura&predet=0&attr=required&clase=algn_number&thwdth=50px',
  `cantidad` int(5) NOT NULL DEFAULT '1' COMMENT 'campo=cantidad&titulo=cantidad&predet=1&attr=required&clase=algn_number&thwdth=50px',
  `m2` double(5,3) NOT NULL DEFAULT '0.000' COMMENT 'campo=m2&titulo=M2&predet=0&clase=algn_number&thwdth=50px',
  `var_ancho` varchar(200) NOT NULL DEFAULT '0' COMMENT 'campo=var_ancho&titulo=Variaciones Ancho&predet=0&clase=algn_left&thwdth=120px',
  `var_alto` varchar(200) NOT NULL DEFAULT '0' COMMENT 'campo=var_alto&titulo=Variaciones Alto&predet=0&clase=algn_left&thwdth=120px',
  PRIMARY KEY (`cotizacion_detalle_id`),
  KEY `FK_cotizacion_detalle_cotizacion` (`cotizacion_id`),
  KEY `FK_cotizacion_detalle_tipologia` (`tipologia_id`),
  CONSTRAINT `FK_cotizacion_detalle_cotizacion` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizacion` (`cotizacion_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_cotizacion_detalle_tipologia` FOREIGN KEY (`tipologia_id`) REFERENCES `tipologia` (`tipologia_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.cotizacion_detalle: ~186 rows (aproximadamente)
DELETE FROM `cotizacion_detalle`;
/*!40000 ALTER TABLE `cotizacion_detalle` DISABLE KEYS */;
INSERT INTO `cotizacion_detalle` (`cotizacion_detalle_id`, `cotizacion_id`, `codificacion`, `tipologia_id`, `ancho`, `alto`, `cantidad`, `m2`, `var_ancho`, `var_alto`) VALUES
	(1, 1, '1A_001', 1, 1.330, 1.520, 1, 2.022, '0', '0'),
	(2, 1, '1A_002', 1, 1.550, 1.390, 1, 2.155, '0', '0'),
	(3, 1, '1A_003', 2, 2.410, 1.770, 1, 4.266, '0', '0'),
	(4, 1, '1A_004', 2, 2.380, 1.750, 1, 4.165, '0', '0'),
	(5, 1, '1A_005', 2, 2.390, 1.720, 1, 4.111, '0', '0'),
	(6, 2, 'a1_001', 4, 2.580, 1.350, 1, 3.483, '0', '0'),
	(7, 2, 'a1_002', 3, 1.890, 1.380, 1, 2.608, '0', '0'),
	(8, 2, 'a1_003', 3, 1.950, 1.360, 1, 2.652, '0', '0'),
	(9, 2, 'a1_004', 4, 2.360, 1.450, 1, 3.422, '0', '0'),
	(10, 2, 'a1_005', 4, 2.820, 1.520, 1, 4.286, '0', '0'),
	(15, 2, 'a1_006', 4, 2.840, 1.560, 1, 4.430, '0', '0'),
	(16, 3, '1a_001', 2, 1.890, 1.360, 1, 2.570, '0', '0'),
	(17, 4, 'pb_001', 1, 1.850, 1.510, 1, 2.793, '0', '0'),
	(18, 4, 'pb_002', 2, 2.750, 1.590, 1, 4.372, '0', '0'),
	(19, 4, 'pb_003', 1, 1.300, 1.000, 1, 1.300, '0', '0'),
	(20, 4, 'pb_004', 2, 2.420, 1.650, 1, 3.993, '0', '0'),
	(21, 3, '1a_002', 1, 1.300, 1.360, 1, 1.768, '0', '0'),
	(22, 7, 'P7001', 1, 1.250, 1.600, 1, 2.000, '0', '0'),
	(23, 7, 'P7002', 1, 2.000, 1.600, 1, 3.200, '0', '0'),
	(24, 7, 'P7003', 1, 2.000, 1.600, 1, 3.200, '0', '0'),
	(25, 7, 'P7004', 6, 3.400, 1.600, 1, 5.440, '0', '0'),
	(26, 7, 'P7005', 6, 3.550, 1.600, 1, 5.680, '0', '0'),
	(27, 7, 'P7006', 1, 1.000, 1.400, 1, 1.400, '0', '0'),
	(28, 7, 'P7007', 1, 1.200, 1.400, 1, 1.680, '0', '0'),
	(29, 7, 'P7008', 1, 1.690, 1.400, 1, 2.366, '0', '0'),
	(30, 7, 'P7009', 1, 1.800, 1.400, 1, 2.520, '0', '0'),
	(31, 7, 'P7010', 1, 2.000, 1.400, 1, 2.800, '0', '0'),
	(32, 7, 'P7011', 1, 2.800, 1.400, 1, 3.920, '0', '0'),
	(33, 7, 'P7012', 1, 2.100, 1.400, 1, 2.940, '0', '0'),
	(34, 7, 'P7013', 1, 2.750, 1.400, 1, 3.850, '0', '0'),
	(35, 7, 'P7014', 1, 2.790, 1.400, 1, 3.906, '0', '0'),
	(36, 7, 'P7015', 1, 0.700, 1.200, 1, 0.840, '0', '0'),
	(37, 7, 'P7016', 1, 0.700, 1.200, 1, 0.840, '0', '0'),
	(38, 7, 'P7017', 1, 0.800, 1.200, 1, 0.960, '0', '0'),
	(39, 7, 'P7018', 1, 0.800, 1.200, 1, 0.960, '0', '0'),
	(40, 7, 'P7019', 1, 0.800, 1.200, 1, 0.960, '0', '0'),
	(41, 7, 'P7020', 1, 0.800, 1.200, 1, 0.960, '0', '0'),
	(42, 7, 'P7021', 1, 1.000, 1.200, 1, 1.200, '0', '0'),
	(43, 7, 'P7022', 1, 1.000, 1.200, 1, 1.200, '0', '0'),
	(44, 7, 'P7023', 1, 1.000, 1.200, 1, 1.200, '0', '0'),
	(45, 7, 'P7024', 1, 1.200, 1.200, 1, 1.440, '0', '0'),
	(46, 7, 'P7025', 1, 1.400, 1.200, 1, 1.680, '0', '0'),
	(47, 7, 'P7026', 2, 3.000, 1.600, 1, 4.800, '0', '0'),
	(48, 7, 'Z5001', 1, 1.400, 1.500, 1, 2.100, '0', '0'),
	(49, 7, 'Z5002', 1, 1.500, 1.500, 1, 2.250, '0', '0'),
	(50, 7, 'Z5003', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(51, 7, 'Z5004', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(52, 7, 'Z5005', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(53, 7, 'Z5006', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(54, 7, 'Z5007', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(55, 7, 'Z5008', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(56, 7, 'Z5009', 1, 2.000, 1.500, 1, 3.000, '0', '0'),
	(57, 7, 'Z5010', 1, 2.400, 1.500, 1, 3.600, '0', '0'),
	(58, 7, 'Z5011', 1, 3.000, 1.500, 1, 4.500, '0', '0'),
	(71, 8, 'T1', 8, 1.500, 1.400, 3, 6.300, '1', '1'),
	(72, 9, 'A1', 2, 2.410, 1.365, 1, 3.290, '0', '0'),
	(73, 9, 'A2', 2, 2.390, 1.365, 1, 3.262, '0', '0'),
	(74, 9, 'A3', 1, 0.690, 0.575, 1, 0.397, '0', '0'),
	(75, 9, 'B1', 2, 2.380, 1.320, 1, 3.142, '0', '0'),
	(76, 9, 'B2', 1, 1.370, 1.180, 1, 1.617, '0', '0'),
	(77, 9, 'B3', 1, 1.230, 0.625, 1, 0.769, '0', '0'),
	(78, 10, 'PBNPF02', 10, 0.530, 2.140, 1, 1.134, '0', '0'),
	(79, 10, 'PBNPC4H', 6, 2.670, 2.360, 1, 6.301, '0', '0'),
	(80, 10, 'PBNPF01', 10, 0.480, 2.170, 1, 1.042, '0', '0'),
	(81, 10, 'PBOPF02', 10, 1.098, 2.422, 1, 2.659, '0', '0'),
	(82, 10, 'PBOCB01', 1, 1.007, 0.470, 1, 0.473, '0', '0'),
	(83, 10, 'PBOC4H02', 6, 3.022, 2.100, 1, 6.346, '0', '0'),
	(84, 10, 'PA0CB01', 1, 1.454, 0.490, 1, 0.712, '0', '0'),
	(85, 10, 'PAOVCD01', 2, 1.983, 1.300, 1, 2.578, '0', '0'),
	(86, 10, 'PAOCD02', 2, 1.982, 1.502, 1, 2.977, '0', '0'),
	(87, 10, 'PAECB02', 1, 1.303, 0.425, 1, 0.554, '0', '0'),
	(88, 10, 'PBIC01', 2, 2.285, 0.800, 1, 1.828, '0', '0'),
	(90, 11, 'PBNPF02', 0, 0.530, 2.140, 1, 1.134, '0', '0'),
	(91, 11, 'PBNPC4H', 0, 2.670, 2.360, 1, 6.301, '0', '0'),
	(92, 11, 'PBNPF01', 0, 0.480, 2.170, 1, 1.042, '0', '0'),
	(93, 11, 'PBOPF02', 0, 1.098, 2.422, 1, 2.659, '0', '0'),
	(94, 11, 'PBOCB01', 0, 1.007, 0.470, 1, 0.473, '0', '0'),
	(95, 11, 'PBOC4H02', 0, 3.022, 2.100, 1, 6.346, '0', '0'),
	(96, 11, 'PA0CB01', 0, 1.454, 0.490, 1, 0.712, '0', '0'),
	(97, 11, 'PAOVCD01', 0, 1.983, 1.300, 1, 2.578, '0', '0'),
	(98, 11, 'PAOCD02', 0, 1.982, 1.502, 1, 2.977, '0', '0'),
	(99, 11, 'PAECB02', 0, 1.303, 0.425, 1, 0.554, '0', '0'),
	(100, 11, 'PBIC01', 0, 2.285, 0.800, 1, 1.828, '0', '0'),
	(101, 12, 'PT001', 11, 0.400, 0.400, 3, 0.480, '0', '0'),
	(102, 12, 'PT004', 1, 0.900, 2.160, 1, 1.944, '0', '0'),
	(103, 12, 'PT005', 1, 1.710, 1.450, 1, 2.479, '0', '0'),
	(104, 12, 'PT006', 1, 1.700, 1.950, 1, 3.315, '0', '0'),
	(105, 12, 'PT007', 10, 0.500, 2.100, 1, 1.050, '0', '0'),
	(106, 12, 'PT008', 1, 1.540, 1.500, 1, 2.310, '0', '0'),
	(107, 12, 'PT009', 1, 1.480, 0.700, 1, 1.036, '0', '0'),
	(108, 12, 'PT010', 1, 1.510, 1.250, 1, 1.888, '0', '0'),
	(109, 12, 'PT011', 10, 2.000, 2.390, 1, 4.780, '0', '0'),
	(110, 12, 'PT012', 2, 2.000, 1.500, 1, 3.000, '0', '0'),
	(111, 12, 'PT013', 1, 1.000, 2.500, 1, 2.500, '0', '0'),
	(112, 12, 'PT014', 1, 1.500, 1.500, 1, 2.250, '0', '0'),
	(113, 12, 'PT015', 10, 0.600, 1.500, 1, 0.900, '0', '0'),
	(114, 12, 'PT016', 1, 0.700, 0.600, 1, 0.420, '0', '0'),
	(115, 12, 'PT017', 1, 1.500, 1.500, 1, 2.250, '0', '0'),
	(116, 12, 'PT018', 1, 0.950, 0.600, 1, 0.570, '0', '0'),
	(117, 12, 'PT019', 1, 1.390, 1.500, 1, 2.085, '0', '0'),
	(118, 12, 'PT020', 1, 1.070, 2.520, 1, 2.696, '0', '0'),
	(119, 12, 'PT021', 11, 0.400, 0.400, 3, 0.480, '0', '0'),
	(120, 12, 'PT024', 1, 1.580, 1.500, 1, 2.370, '0', '0'),
	(121, 12, 'PT025', 1, 1.500, 1.250, 1, 1.875, '0', '0'),
	(122, 12, 'PT026', 1, 1.500, 1.500, 1, 2.250, '0', '0'),
	(123, 13, 'E_1_1', 1, 0.683, 0.683, 1, 0.466, '0', '0'),
	(124, 13, 'E_2_1', 1, 0.683, 0.683, 1, 0.466, '0', '0'),
	(125, 13, 'E_3_1', 1, 0.683, 0.683, 1, 0.466, '0', '0'),
	(126, 13, 'E_4_1', 1, 0.683, 0.683, 1, 0.466, '0', '0'),
	(127, 13, 'E_5_1', 1, 0.683, 0.683, 1, 0.466, '0', '0'),
	(128, 13, 'E_1_2', 2, 2.185, 1.400, 1, 3.059, '0', '0'),
	(129, 13, 'E_2_2', 2, 2.185, 1.400, 1, 3.059, '0', '0'),
	(130, 13, 'E_3_2', 2, 2.185, 1.400, 1, 3.059, '0', '0'),
	(131, 13, 'E_4_2', 2, 2.185, 1.400, 1, 3.059, '0', '0'),
	(132, 13, 'E_5_2', 2, 2.185, 1.400, 1, 3.059, '0', '0'),
	(133, 13, 'E_1_3', 2, 0.683, 0.683, 1, 0.466, '0', '0'),
	(134, 13, 'E_2_3', 2, 0.683, 0.683, 1, 0.466, '0', '0'),
	(135, 13, 'E_3_3', 2, 0.683, 0.683, 1, 0.466, '0', '0'),
	(136, 13, 'E_4_3', 2, 0.683, 0.683, 1, 0.466, '0', '0'),
	(137, 13, 'N_1_1', 1, 0.630, 0.630, 1, 0.397, '0', '0'),
	(138, 13, 'N_2_1', 1, 0.630, 0.630, 1, 0.397, '0', '0'),
	(139, 13, 'N_3_1', 1, 0.630, 0.630, 1, 0.397, '0', '0'),
	(140, 13, 'N_4_1', 1, 0.630, 0.630, 1, 0.397, '0', '0'),
	(141, 13, 'N_5_1', 1, 0.630, 0.630, 1, 0.397, '0', '0'),
	(142, 13, 'N_1_2', 1, 1.000, 2.351, 1, 2.351, '0', '0'),
	(143, 13, 'N_2_2', 1, 1.000, 2.351, 1, 2.351, '0', '0'),
	(144, 13, 'N_3_2', 1, 1.000, 2.351, 1, 2.351, '0', '0'),
	(145, 13, 'N_4_2', 1, 1.000, 2.351, 1, 2.351, '0', '0'),
	(146, 13, 'N_5_2', 1, 1.000, 2.351, 1, 2.351, '0', '0'),
	(147, 13, 'S_1_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(148, 13, 'S_2_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(149, 13, 'S_3_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(150, 13, 'S_4_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(151, 13, 'S_5_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(152, 13, 'S_6_1', 1, 0.650, 0.603, 1, 0.392, '0', '0'),
	(153, 13, 'S_1_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(154, 13, 'S_2_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(155, 13, 'S_3_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(156, 13, 'S_4_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(157, 13, 'S_5_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(158, 13, 'S_6_2', 2, 2.000, 2.103, 1, 4.206, '0', '0'),
	(159, 13, 'O_1_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(160, 13, 'O_2_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(161, 13, 'O_3_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(162, 13, 'O_4_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(163, 13, 'O_5_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(164, 13, 'O_6_1', 1, 0.997, 2.099, 1, 2.093, '0', '0'),
	(165, 13, 'O_1_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(166, 13, 'O_2_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(167, 13, 'O_3_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(168, 13, 'O_4_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(169, 13, 'O_5_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(170, 13, 'O_6_2', 2, 2.002, 2.099, 1, 4.202, '0', '0'),
	(171, 13, 'O_1_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(172, 13, 'O_2_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(173, 13, 'O_3_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(174, 13, 'O_4_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(175, 13, 'O_5_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(176, 13, 'O_6_3', 2, 1.955, 2.107, 1, 4.119, '0', '0'),
	(177, 13, 'O_1_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(178, 13, 'O_2_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(179, 13, 'O_3_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(180, 13, 'O_4_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(181, 13, 'O_5_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(182, 13, 'O_6_4', 2, 2.100, 2.107, 1, 4.425, '0', '0'),
	(183, 14, 'jm001', 9, 3.100, 2.570, 1, 7.967, '0', '0'),
	(184, 16, 'PB0001', 6, 3.400, 3.450, 1, 11.730, '0', '0'),
	(185, 16, 'PB0002', 6, 5.000, 3.500, 1, 17.500, '0', '0'),
	(186, 16, '1P0001', 2, 1.480, 2.300, 4, 13.616, '0', '0'),
	(187, 16, 'PB0003', 6, 4.000, 3.500, 1, 14.000, '0', '0'),
	(188, 16, '1P0002', 1, 1.800, 2.380, 2, 8.568, '0', '0'),
	(189, 16, '1P0003', 1, 1.800, 2.380, 5, 21.420, '0', '0'),
	(190, 16, '1P0004', 1, 1.200, 2.330, 8, 22.368, '0', '0'),
	(191, 16, '1P0005', 1, 1.100, 2.330, 1, 2.563, '0', '0'),
	(192, 16, '1P0006', 1, 1.400, 2.330, 1, 3.262, '0', '0'),
	(193, 16, '1P0007', 10, 0.500, 2.400, 1, 1.200, '0', '0'),
	(194, 16, '2P0001', 1, 1.800, 2.330, 8, 33.552, '0', '0'),
	(195, 16, '1P0008', 10, 0.600, 3.200, 4, 7.680, '0', '0'),
	(196, 16, '2P0002', 1, 1.200, 2.330, 11, 30.756, '0', '0'),
	(197, 16, '2P0003', 1, 1.100, 2.330, 1, 2.563, '0', '0'),
	(198, 16, '2P0004', 1, 1.400, 2.330, 1, 3.262, '0', '0'),
	(199, 16, '2P0005', 10, 0.500, 2.400, 1, 1.200, '0', '0'),
	(200, 16, '2P0006', 10, 0.400, 2.900, 1, 1.160, '0', '0'),
	(201, 16, '2P0007', 10, 0.500, 2.900, 1, 1.450, '0', '0'),
	(202, 16, '2P0008', 10, 0.600, 2.900, 3, 5.220, '0', '0'),
	(203, 16, 'TP0001', 1, 1.800, 3.250, 2, 11.700, '0', '0');
/*!40000 ALTER TABLE `cotizacion_detalle` ENABLE KEYS */;


-- Volcando estructura para vista alcon.cotizacion_detalle_materiales
DROP VIEW IF EXISTS `cotizacion_detalle_materiales`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `cotizacion_detalle_materiales` (
	`cotizacion_id` INT(11) NOT NULL COMMENT 'campo=cotizacion_id&titulo=Num&nuevo=select&edit=select&select=$this->funSelect(\'cotizacion\',\'cotizacion_id\')&clase=algn_number&thwdth=50px',
	`materiales_id` VARCHAR(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Material&visible=4&nuevo=select&edit=select&select=$this->funSelect(\'materiales\',\'materiales_id,nombre\')&attr=required&clase=algn_left' COLLATE 'utf8_general_ci',
	`nombre` VARCHAR(150) NULL COLLATE 'utf8_general_ci',
	`formula` VARCHAR(343) NULL COLLATE 'utf8_general_ci',
	`unidad` VARCHAR(10) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para tabla alcon.familias
DROP TABLE IF EXISTS `familias`;
CREATE TABLE IF NOT EXISTS `familias` (
  `familias_id` varchar(25) NOT NULL DEFAULT '0' COMMENT 'campo=familias_id&titulo=Familia&nuevo=doble&thwdth=150px&attr=required',
  `descripcion` varchar(300) NOT NULL COMMENT 'campo=descripcion&titulo=Descripción&nuevo=textarea&edit=textarea&clase=algn_left',
  PRIMARY KEY (`familias_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.familias: ~22 rows (aproximadamente)
DELETE FROM `familias`;
/*!40000 ALTER TABLE `familias` DISABLE KEYS */;
INSERT INTO `familias` (`familias_id`, `descripcion`) VALUES
	('A00', 'Accesorios varios'),
	('Canal U', 'Canales de U'),
	('CORR. S70 FIRAT', 'Puertas y Ventanas Correderas S70 FIRAT'),
	('CorrTemp8', 'Ventanas correderas de vidrio templado 8mm'),
	('H00', 'Herrajería'),
	('L20', 'Perfiles y accesorios para ventanas correderas'),
	('L25', 'Puertas y ventanas correderas'),
	('L32', 'Paño fijo con ventana proyectante'),
	('L35', 'Paño fijo con ventana proyectantes'),
	('L35-F', 'Paño Fijo Linea35'),
	('Lmax', 'Puertas y ventanas correderas (corte 45º)'),
	('MO', 'Mano de Obra'),
	('S3000', 'Linea S-3000 Puertas y venta nas batientes'),
	('S60 Batiente Firat', 'Puertas Batientes; Ventanas Proyectante, Batiente, Oscilobatiente, Fija, Abatible.'),
	('STD', 'Familia estandar'),
	('T45', 'Puertas y ventanas correderas (Corte 45º)'),
	('T45_L', 'Ventanas correderas (corte 45º)'),
	('Tcirc', 'Tubos Circulares'),
	('Tcuad', 'Tubos Cuadrados'),
	('Trect', 'Tubos Rectangulares'),
	('V00', 'Vidrio'),
	('Vtem', 'Puertas y ventanas en vidrio templado');
/*!40000 ALTER TABLE `familias` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.materiales
DROP TABLE IF EXISTS `materiales`;
CREATE TABLE IF NOT EXISTS `materiales` (
  `familias_id` varchar(15) DEFAULT NULL COMMENT 'campo=familias_id&titulo=Familia&nuevo=select&select=$this->funSelect(''familias'',''familias_id'')&thwdth=50px&attr=required',
  `materiales_id` varchar(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Codigo General&nuevo=doble&attr=required  pattern=''[a-zA-Z0-9_]{1,30}''&clase=algn_left&thwdth=60px',
  `nombre` varchar(150) NOT NULL COMMENT 'campo=nombre&titulo=Nombre Desc&attr=required&clase=algn_left&thwdth=140px',
  `cantidad` varchar(150) NOT NULL COMMENT 'campo=cantidad&titulo=Cnt. Ensamb.&clase=algn_number&thwdth=60px',
  `formula` varchar(150) NOT NULL COMMENT 'campo=formula&titulo=Formula Ensamble&clase=algn_left',
  `unidad` varchar(10) NOT NULL COMMENT 'campo=unidad&titulo=Unid.&thwdth=40px',
  `dim1` double(5,4) NOT NULL DEFAULT '0.0000' COMMENT 'campo=dim1&titulo=Dim 1&predet=0&clase=algn_number&thwdth=50px',
  `dim2` double(5,4) NOT NULL DEFAULT '0.0000' COMMENT 'campo=dim2&titulo=Dim 2&predet=0&clase=algn_number&thwdth=50px',
  `dim3` double(5,4) NOT NULL DEFAULT '0.0000' COMMENT 'campo=dim3&titulo=Dim 3&predet=0&clase=algn_number&thwdth=50px',
  `colores` set('ninguno','blanco','bronce','champagne','estandar','mate','negro','titanio','transparente','Nogal') NOT NULL COMMENT 'campo=tipo&titulo=Colores Disponibles&visible=6&nuevo=selectM&edit=selectM&select=$this->funSelect(''color'',''color'')&attr=multiple&clase=algn_left&thwdth=160px',
  PRIMARY KEY (`materiales_id`),
  KEY `FK_materiales_familias` (`familias_id`),
  CONSTRAINT `FK_materiales_familias` FOREIGN KEY (`familias_id`) REFERENCES `familias` (`familias_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.materiales: ~82 rows (aproximadamente)
DELETE FROM `materiales`;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
INSERT INTO `materiales` (`familias_id`, `materiales_id`, `nombre`, `cantidad`, `formula`, `unidad`, `dim1`, `dim2`, `dim3`, `colores`) VALUES
	('CORR. S70 FIRAT', '111_270_1000', 'Marco 2 S70 Corrediza Blanco', '2', '($A+$c)+($h+$c)', 'Barra', 5.9500, 0.0000, 0.0000, 'blanco'),
	('CORR. S70 FIRAT', '121_270_1000', 'Marco 2 S70 Corrediza Nogal', '2', '($A+$c)+($h+$c)', 'Barra', 5.9500, 0.0000, 0.0000, 'Nogal'),
	('CORR. S70 FIRAT', '141_270_1000', 'Marco 2 S70 Corrediza Negro', '2', '($A+$c)+($h+$c)', 'Barra', 5.9500, 0.0000, 0.0000, 'negro'),
	('S3000', '3540', 'S-3000 Marco', '2', '(H*2),(A)', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('S3000', '3541', 'S-3000 Hoja (pierna)', '2', '(($A/$Dv)*2)+(($h)*2)', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('S3000', '3544', 'S-3000 Zocalo', '1', 'A', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('S3000', '3545', 'S-3000 Entrecierre (inversor de hoja)', '1', 'H', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('S3000', '3590', 'S-3000 Pisavidrio (junquillo)', '2', '(H*2),(V*2)', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('A00', 'A010', 'Felpa', '2', '($A*2)+($h*($Dv+$M))', 'ml', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A020', 'Burlete', '1', '(($A*2)+($h*$Dv)*2)', 'ml', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A030', 'Silicon', '1', '($A*$h)/3', 'tubo', 0.0000, 0.0000, 1.0000, 'blanco,negro,transparente'),
	('A00', 'A040', 'Tornillo', '30', '1', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A050', 'Remache', '30', '1', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A060', 'Brazo Proyectante', '2', '1', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A090', 'Tarugos', '12', '1', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'A100', 'Pico de Loro', '1', '$M', 'pza', 0.0000, 0.0000, 1.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('A00', 'A110', 'Tranca Linea 35', '1', '1', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('L20', 'A2090', 'Ruedas', '2', '($M)', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('L25', 'A2590', 'Ruedas', '2', '($M)', 'pza', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KC', 'Kit cierre', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KCLL', 'Kit cierre con llave', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45_L', 'A45KC_L', 'Kit cierres(lite)', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KHF', 'Kit Hoja Fija', '1', '($Dv-$M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45_L', 'A45KHF_L', 'Kit Hoja Fijas(lite)', '1', '($Dv-$M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KHM30', 'Kit Hoja Movil 30kg', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45_L', 'A45KHM30_L', 'Kit Hoja Movil 30kgs(lite)', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KHM80', 'Kit Hoja Movil 80Kg', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45_L', 'A45KHM80_L', 'Kit Hoja Movil 80Kgs(lite)', '1', '($M)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45', 'A45KM1', 'Kit marco', '1', '(1)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('T45_L', 'A45KM1_L', 'Kit marcos(lite)', '1', '(1)', 'unidad', 0.0000, 0.0000, 1.0000, 'estandar'),
	('A00', 'L35UNI', 'Union de Perfiles a 90º', '4', '4', 'pza', 1.0000, 0.0000, 0.0000, 'ninguno'),
	('MO', 'MO01', 'Mano de Obra', '1', '($A*$h)', 'm2', 0.0000, 1.0000, 1.0000, 'ninguno'),
	('L20', 'P2001', 'Riel Superior', '1', '($A+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2002', 'Riel inferior', '1', '($A+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2003', 'Jamba', '2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2004', 'Cabezal', '$Dv', '($A/$Dv)+$c', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2005', 'Zocalo', '$Dv', '($A/$Dv)+$c', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2006', 'Pierna', '($Dv-$M)*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2007A', 'Gancho', '$M*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L20', 'P2008', 'encuentro', '$M', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2501', 'Riel Superior', '1', '($A+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2502', 'Riel Inferior', '1', '($A+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2503', 'Jamba', '2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2504', 'Cabezal', '$Dv', '($A/$Dv)+$c', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2505', 'Zocalo', '$Dv', '($A/$Dv)+$c', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2507', 'Gancho', '$M*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2508', 'encuentro', '$M', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L25', 'P2510', 'Pierna', '($Dv-$M)*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45_L', 'P3415', 'Marco lite', '2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45_L', 'P3416', 'Hojas lite', '$Dv*2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45_L', 'P3417', 'Entrecierres lite', '$M*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3418', 'Marco', '2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3419', 'Adaptador riel', '2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3420', 'Hoja', '$Dv*2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3421', 'Entrecierre', '$M*2', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3422', 'Malla', '$M*2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3426', 'Adaptador Hoja', '$M', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45', 'P3427', 'Doble Entrecierre', '$M*2', '($x+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('T45_L', 'P3428', 'Adaptador Hojas lite', '$M', '($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'blanco,bronce,champagne,mate,negro,titanio'),
	('L35', 'P3501', 'L35 Marco', '2', '($A+$c)+($h+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'mate'),
	('L35', 'P3502', 'Hoja', '2', 'H', 'barra', 0.0000, 0.0000, 6.0000, ''),
	('L35', 'P3503', 'L35 Pilar T', '1', '$A+$c', 'barra', 0.0000, 0.0000, 6.0000, 'mate'),
	('L35', 'P3505', 'L35 Junquillo', '2', '($A+$c)+($A+$c)', 'barra', 0.0000, 0.0000, 6.0000, 'mate'),
	('L35', 'P35080', 'Escuadra', '4', '1', 'pza', 1.0000, 0.0000, 0.0000, 'ninguno'),
	('A00', 'S3000V1', 'Burlete', '1', '(H*2)+(A*2)', 'ml', 0.0000, 0.0000, 0.0000, 'negro'),
	('Trect', 'T25x50', 'Tubo de 50 x 25', '1', 'h*A', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('Trect', 'T30x60', 'Tubo de 30 x 60mm', '1', 'h*A', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('Trect', 'T40x80', 'Tubo de 40 x 80mm', '1', 'h*A', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('Canal U', 'U_12x12', 'U- Canals u 12 x 12', '2', '($h*2)+($A*2)', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('Canal U', 'U_15x25', 'Can al U 15x25 mm', '2', '($A+$h)+2', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('V00', 'V04', 'Vidrio 4mm', '$Dv', '($A/$Dv)x($h)', 'M2', 0.0040, 2.5600, 3.3000, ''),
	('Vtem', 'VT008', 'Vidrio Templado de 8mm', '1', '($A*$h)', 'm2', 0.0800, 1.0000, 1.0000, 'bronce,negro,transparente'),
	('Vtem', 'VT010', 'Vidrio templado 10mm', '1', '($A*$h)', 'm2', 0.1000, 1.0000, 1.0000, 'bronce,transparente'),
	('Vtem', 'VT8_CAB_001', 'Cabezal para ventana corredera 8mm en vidrio templado', '1', '($A)', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('Vtem', 'VT8_CAB_002', 'Tapa Cabezal para ventana corredera 8m en vidrio templado', '1', '($A)', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('A00', 'VT8_CHAP', 'Chapa para ventana corredera 8mm', '1', '1', 'pza', 0.0000, 0.0000, 1.0000, 'mate'),
	('A00', 'VT8_FELP', 'Felpa para ventana corredera 8m vidrio templado', '1', '($A*2)+(($h*$Dv)+1)*2)', 'ml', 0.0000, 0.0000, 1.0000, 'negro'),
	('A00', 'VT8_RUED', 'Ruedas para ventana corredera 8mm', '2', '1', 'pza', 0.0000, 0.0000, 1.0000, 'ninguno'),
	('Vtem', 'VT8_TRILL_002', 'Tapa trillo o riel para ventana corredera de 8m en vidrio templado', '1', '($A)', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('Vtem', 'VT8_TRIL_001', 'Trillo o riel para ventana corredera de 8mm en vidrio templado', '1', '($A)', 'ml', 6.0000, 0.0000, 0.0000, ''),
	('Vtem', 'VT8_Ved', 'Vedapre', '$Dv', '($Dv-1)', 'ml', 6.0000, 0.0000, 0.0000, 'mate'),
	('A00', 'Z999', 'Perfile para union 90ª', '4', 'x', 'ml', 0.0500, 0.0000, 0.0000, '');
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;


-- Volcando estructura para vista alcon.materiales_color
DROP VIEW IF EXISTS `materiales_color`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `materiales_color` (
	`materiales_id` VARCHAR(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Codigo General&nuevo=doble&attr=required  pattern=\'[a-zA-Z0-9_]{1,30}\'&clase=algn_left&thwdth=60px' COLLATE 'utf8_general_ci',
	`nombre` VARCHAR(150) NOT NULL COMMENT 'campo=nombre&titulo=Nombre Desc&attr=required&clase=algn_left&thwdth=140px' COLLATE 'utf8_general_ci',
	`color` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para tabla alcon.precios_materiales
DROP TABLE IF EXISTS `precios_materiales`;
CREATE TABLE IF NOT EXISTS `precios_materiales` (
  `precios_materiales_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=precios_materiales_id&titulo=Num&visible=-1',
  `materiales_id` varchar(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Codigo Material&visible=4&nuevo=select&edit=select&select=$this->funSelect(''materiales'',''materiales_id,nombre'')&attr=required&clase=algn_left&thwdth=120px',
  `codificacion_proveedor` varchar(30) NOT NULL COMMENT 'campo=codificacion_proveedor&titulo=Codigo Mat Prov&attr=required&clase=algn_left&thwdth=80px',
  `proveedores_id` int(11) NOT NULL COMMENT 'campo=proveedores_id&titulo=Provedor&visible=4&nuevo=select&edit=select&select=$this->funSelect(''proveedores'',''proveedores_id,nombre'')&predet=seleccionar&attr=required&clase=algn_left',
  `color` varchar(50) NOT NULL COMMENT 'campo=color&titulo=color&nuevo=select&edit=select&select=$this->funSelect(''color'',''color'')&predet=mate&clase=algn_left&thwdth=80px',
  `precio` double(10,2) NOT NULL DEFAULT '0.00' COMMENT 'campo=precio&titulo=Precio&predet=0.00&clase=algn_number&thwdth=50px',
  `moneda` enum('Bs','USS') NOT NULL DEFAULT 'Bs' COMMENT 'campo=moneda&titulo=Moneda&nuevo=select&edit=select&select=Array(Bs=>Bs,USS=>USS)&predet=Bs&attr=required&clase=algn_left&thwdth=50px',
  PRIMARY KEY (`precios_materiales_id`),
  KEY `FK_precios_materiales_materiales` (`materiales_id`),
  KEY `FK_precios_materiales_color` (`color`),
  KEY `FK_precios_materiales_proveedores` (`proveedores_id`),
  CONSTRAINT `FK_precios_materiales_color` FOREIGN KEY (`color`) REFERENCES `color` (`color`) ON UPDATE CASCADE,
  CONSTRAINT `FK_precios_materiales_materiales` FOREIGN KEY (`materiales_id`) REFERENCES `materiales` (`materiales_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_precios_materiales_proveedores` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores` (`proveedores_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.precios_materiales: ~0 rows (aproximadamente)
DELETE FROM `precios_materiales`;
/*!40000 ALTER TABLE `precios_materiales` DISABLE KEYS */;
/*!40000 ALTER TABLE `precios_materiales` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.proveedores
DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE IF NOT EXISTS `proveedores` (
  `proveedores_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=proveedores_id&titulo=Num&visible=-1',
  `nombre` varchar(50) NOT NULL COMMENT 'campo=nombre&titulo=Nombre&attr=required&clase=algn_left',
  `direccion` varchar(150) NOT NULL COMMENT 'campo=direccion&titulo=Direccion&clase=algn_left',
  PRIMARY KEY (`proveedores_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.proveedores: ~3 rows (aproximadamente)
DELETE FROM `proveedores`;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` (`proveedores_id`, `nombre`, `direccion`) VALUES
	(1, 'Aluvi', 'Av. Blanco Galindo'),
	(2, 'MetalVid', 'Cerca UMSS'),
	(3, 'Carlos Flores', 'El Pueblito');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.tipologia
DROP TABLE IF EXISTS `tipologia`;
CREATE TABLE IF NOT EXISTS `tipologia` (
  `tipologia_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=tipologia_id&titulo=Num&visible=-1&nuevo=hidden&edit=hidden&clase=algn_number&thwdth=20px',
  `tipo` varchar(50) NOT NULL COMMENT 'campo=tipo&titulo=Tipo&attr=required&clase=algn_left&thwdth=80px',
  `familias_id` varchar(15) NOT NULL COMMENT 'campo=familias_id&titulo=Familia&nuevo=select&edit=select&select=$this->funSelect(''familias'',''familias_id'')&attr=required&clase=algn_left&thwdth=45px',
  `descripcion` varchar(500) NOT NULL COMMENT 'campo=descripcion&titulo=Desxripcion&nuevo=textarea&edit=textarea&clase=algn_left&attr=required',
  `div_vertical` int(3) NOT NULL COMMENT 'campo=div_vertical&titulo=Divis. Vertic.&predet=1&attr=required&clase=algn_number&thwdth=40px',
  `div_horizontal` int(3) NOT NULL COMMENT 'campo=div_horizontal&titulo=Divis. Horiz.&predet=1&attr=required&clase=algn_number&thwdth=40px',
  `movil` int(3) NOT NULL COMMENT 'campo=movil&titulo=Hoja Movil&predet=1&attr=required&clase=algn_number&thwdth=40px',
  `cod_movil` varchar(300) NOT NULL COMMENT 'campo=cod_movil&titulo=Cod. Hojas Moviles&clase=algn_left&thwdth=80px',
  `imagen` mediumtext NOT NULL COMMENT 'campo=imagen&titulo=Imagen&visible=5&clase=algn_left&thwdth=80px',
  PRIMARY KEY (`tipologia_id`),
  KEY `FK_tipologia_familias` (`familias_id`),
  CONSTRAINT `FK_tipologia_familias` FOREIGN KEY (`familias_id`) REFERENCES `familias` (`familias_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=-1|0|1|2\r\n&nuevo=&edit=normal|select|hidden|read|textarea|\r\n&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.tipologia: ~15 rows (aproximadamente)
DELETE FROM `tipologia`;
/*!40000 ALTER TABLE `tipologia` DISABLE KEYS */;
INSERT INTO `tipologia` (`tipologia_id`, `tipo`, `familias_id`, `descripcion`, `div_vertical`, `div_horizontal`, `movil`, `cod_movil`, `imagen`) VALUES
	(0, 'standar', 'STD', 'FAMILIA STANDART', 1, 1, 1, '', 'images/disenos/standar.png'),
	(1, 'L25-V-C-2-1-1', 'L25', 'Ventana corredera de dos divisiones verticales una fija y una movil Linea 25', 2, 1, 1, '', 'images/disenos/L25-V-C-2-1-1.png'),
	(2, 'L25-V-C-3-1-1', 'L25', 'Ventana corredera de tres divisiones verticales dos fijas una movil Linea 25', 3, 1, 1, '', 'images/disenos/L25-V-C-3-1-1.png'),
	(3, 'T45L-V-C-2-1-1', 'T45_L', 'Ventana corredera dos divisiones verticales 1 hoja movil T45Lite', 2, 1, 1, '', 'images/disenos/T45L-V-C-2-1-1.png'),
	(4, 'T45L-V-C-3-1-1', 'T45_L', 'Ventana corredera de tres divisiones verticales dos fijas una movil T45 Lite', 3, 1, 1, '', 'images/disenos/T45L-V-C-3-1-1.png'),
	(5, 'L20-V-C-2-1-1', 'L20', 'Ventana corredera de dos divisiones verticales una fija y una movil Linea 20', 2, 1, 1, '', 'images/disenos/L20-V-C-2-1-1.png'),
	(6, 'L25 V-C-4-2-2', 'L25', 'Ventana corredera de 4 divisiones verticales dos fijas y dos moviles', 4, 1, 2, '', 'images/disenos/L25-V-C-4-2-2.png'),
	(7, 'S300-P-B-1-1-1', 'S3000', 'Puertas batientes Linea S-3000 de Una Hoja Vidrio 6mm', 1, 1, 1, '', 'images/disenos/S300-P-B-1-1-1.png'),
	(8, 'PM-T5025', 'Trect', 'Pre marcos con tubo 50 x 25', 1, 1, 1, '', 'images/disenos/PM-T5025.png'),
	(9, 'L35-V-P-1-1-1', 'L35', 'Ventana Proyectante una hoja', 1, 1, 1, '', 'images/disenos/L35-V-P-1-1-1.png'),
	(10, 'L35-V-F-1-2-1', 'L35', 'Ventana Paño Fijo Dos divisiones horizontales Linea 35', 1, 2, 1, '', 'images/disenos/L35-V-F-1-2-1.png'),
	(11, 'U-PF-1-1-0', 'Canal U', 'Ventana paño fijo con canal de U', 1, 1, 0, '', 'images/disenos/U-PF-1-1-0.png'),
	(12, 'V-C-T8-1-2-1', 'Vtem', 'Venatana corredera dos divisiones verticales con vidrio templado de 8mm', 2, 1, 1, '', 'images/disenos/V-C-T8-1-2-1.png'),
	(13, 'V-C-T8-1-3-1', 'Vtem', 'Ventana corredera tres divisiones verticales con vidrio templado de 8mm', 3, 1, 1, '', 'images/disenos/V-C-T8-1-3-1.png'),
	(14, 'L35-PB-1-2-1', 'L35', 'Puerta Batiente dos divisiones verticales vidrio 6mm crudo', 2, 1, 2, '', 'images/disenos/L35-PB-1-2-1.png');
/*!40000 ALTER TABLE `tipologia` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.tipologia_materiales
DROP TABLE IF EXISTS `tipologia_materiales`;
CREATE TABLE IF NOT EXISTS `tipologia_materiales` (
  `tipologia_materiales_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo=tipologia_materiales_id&titulo=Num&visible=-1',
  `tipologia_id` int(11) NOT NULL COMMENT 'campo=tipologia_id&titulo=Tipologia&visible=4&nuevo=select&edit=select&select=$this->funSelect(''tipologia'',''tipologia_id,tipo'',true)&attr=required&clase=algn_left&thwdth=40px',
  `materiales_id` varchar(30) NOT NULL COMMENT 'campo=materiales_id&titulo=Material&visible=4&nuevo=select&edit=select&select=$this->funSelect(''materiales'',''materiales_id,nombre'')&attr=required&clase=algn_left',
  `ensamble` enum('A','h','Ah','x') NOT NULL DEFAULT 'A' COMMENT 'campo=ensamble&titulo=Ensamble&nuevo=select&edit=select&select=array(A=>Ancho,h=>Alto,Ah=>Ancho_Alto,x=>x)&predet=seleccionar&attr=required&thwdth=80px',
  `formula` varchar(100) NOT NULL COMMENT 'campo=formula&titulo=formula ensamble&attr=required&clase=algn_left',
  `cantidad` int(11) NOT NULL COMMENT 'campo=cantidad&titulo=Cantidad&attr=required&thwdth=80px',
  PRIMARY KEY (`tipologia_materiales_id`),
  KEY `FK_tipologia_materiales_materiales` (`materiales_id`),
  KEY `FK_tipologia_materiales_tipologia` (`tipologia_id`),
  CONSTRAINT `FK_tipologia_materiales_materiales` FOREIGN KEY (`materiales_id`) REFERENCES `materiales` (`materiales_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tipologia_materiales_tipologia` FOREIGN KEY (`tipologia_id`) REFERENCES `tipologia` (`tipologia_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.tipologia_materiales: ~151 rows (aproximadamente)
DELETE FROM `tipologia_materiales`;
/*!40000 ALTER TABLE `tipologia_materiales` DISABLE KEYS */;
INSERT INTO `tipologia_materiales` (`tipologia_materiales_id`, `tipologia_id`, `materiales_id`, `ensamble`, `formula`, `cantidad`) VALUES
	(1, 1, 'P2501', 'A', '($A+$c)', 1),
	(2, 1, 'P2502', 'A', '($A+$c)', 1),
	(3, 1, 'P2503', 'h', '($h+$c)', 2),
	(4, 1, 'P2504', 'A', '($A/2)+$c', 2),
	(5, 1, 'P2505', 'A', '($A/2)+$c', 2),
	(6, 1, 'P2510', 'h', '($h+$c)', 2),
	(7, 1, 'P2507', 'h', '($h+$c)', 2),
	(8, 1, 'A2590', 'A', '(1)', 2),
	(9, 1, 'A010', 'Ah', '($A*2)+($h*(2+1))', 2),
	(10, 1, 'A020', 'Ah', '(($A*2)+($h*2)*2)', 1),
	(11, 1, 'A100', 'x', '1', 1),
	(12, 1, 'A030', 'Ah', '($A*$h)/3', 1),
	(13, 1, 'A040', 'Ah', '1', 30),
	(14, 1, 'V04', 'Ah', '($A/2)x($h)', 2),
	(15, 2, 'P2501', 'A', '($A+$c)', 1),
	(16, 1, 'A090', 'Ah', '1', 12),
	(17, 1, 'MO01', 'x', '($A*$h)', 1),
	(18, 2, 'P2502', 'A', '($A+$c)', 1),
	(19, 2, 'P2503', 'h', '($h+$c)', 2),
	(20, 2, 'P2504', 'A', '($A/3)+$c', 3),
	(21, 2, 'P2505', 'A', '($A/3)+$c', 3),
	(22, 2, 'P2510', 'h', '($h+$c)', 4),
	(23, 2, 'P2507', 'h', '($h+$c)', 2),
	(24, 2, 'P2508', 'h', '($h+$c)', 1),
	(25, 2, 'A2590', 'A', '1', 2),
	(26, 2, 'A010', 'Ah', '($A*2)+($h*(3+1))', 2),
	(27, 2, 'A020', 'Ah', '(($A*2)+($h*3)*2)', 1),
	(28, 2, 'A100', 'h', '1', 1),
	(29, 2, 'A030', 'Ah', '($A*$h)/3', 1),
	(30, 2, 'A040', 'Ah', '1', 30),
	(31, 2, 'A090', 'Ah', '1', 12),
	(32, 2, 'V04', 'Ah', '(($A/3))x(($h))', 3),
	(33, 2, 'MO01', 'x', '($A*$h)', 1),
	(34, 3, 'P3415', 'A', '($A+$c)', 2),
	(35, 3, 'P3415', 'h', '($h+$c)', 2),
	(36, 3, 'P3416', 'A', '((($A/2)+0.01)+$c)', 4),
	(37, 3, 'P3416', 'h', '($h+$c)', 4),
	(38, 3, 'P3417', 'h', '($h+$c)', 2),
	(39, 3, 'A45KC_L', 'x', '(1)', 1),
	(40, 3, 'A45KHF_L', 'x', '(2-1)', 1),
	(41, 3, 'A45KHM30_L', 'x', '(1)', 1),
	(42, 3, 'A45KM1_L', 'x', '(1)', 1),
	(43, 3, 'A010', 'Ah', '($A*2)+($h*(2+1))', 2),
	(44, 3, 'A020', 'Ah', '(($A*2)+($h*2)*2)', 1),
	(45, 3, 'A030', 'Ah', '($A*$h)/3', 1),
	(46, 3, 'A040', 'x', '1', 30),
	(47, 3, 'A050', 'x', '1', 30),
	(48, 3, 'A090', 'x', '1', 15),
	(49, 3, 'V04', 'Ah', '(($A/2))x(($h))', 2),
	(50, 3, 'MO01', 'Ah', '($A*$h)', 1),
	(51, 4, 'P3415', 'A', '($A+$c)', 2),
	(52, 4, 'P3415', 'h', '($h+$c)', 2),
	(53, 4, 'P3416', 'A', '(($A/3)+$c)+.01', 6),
	(54, 4, 'P3416', 'h', '($h+$c)', 6),
	(55, 4, 'P3417', 'h', '($h+$c)', 2),
	(56, 4, 'A45KC_L', 'x', '(1)', 1),
	(57, 4, 'P3428', 'h', '($h+$c)', 1),
	(58, 4, 'A45KHF_L', 'x', '(3-1)', 1),
	(59, 4, 'A45KHM30_L', 'x', '(1)', 1),
	(60, 5, 'P2001', 'A', '($A+$c)', 1),
	(62, 4, 'A45KM1_L', 'Ah', '(1)', 1),
	(63, 4, 'A010', 'Ah', '($A*2)+($h*(3+1))', 2),
	(66, 4, 'A020', 'Ah', '(($A*2)+($h*3)*2)', 1),
	(67, 4, 'A030', 'x', '($A*$h)/3', 1),
	(68, 4, 'A040', 'Ah', '1', 30),
	(70, 4, 'A090', 'Ah', '1', 12),
	(72, 4, 'MO01', 'x', '($A*$h)', 1),
	(73, 4, 'V04', 'x', '($A/3)x($h)', 3),
	(77, 4, 'A050', 'x', '1', 30),
	(78, 6, 'P2501', 'A', '($A+$c)', 1),
	(79, 6, 'P2502', 'A', '($A+$c)', 1),
	(80, 6, 'P2503', 'h', '($h+$c)', 2),
	(81, 6, 'P2504', 'A', '($A/4)+$c', 4),
	(82, 6, 'P2505', 'A', '($A/4)+$c', 4),
	(83, 6, 'P2507', 'h', '($h+$c)', 4),
	(84, 6, 'P2508', 'h', '($h+$c)', 1),
	(85, 6, 'P2510', 'h', '($h+$c)', 4),
	(86, 6, 'A010', 'Ah', '($A*2)+($h*(4+1))', 2),
	(87, 6, 'A020', 'Ah', '(($A*2)+($h*4)*2)', 1),
	(88, 6, 'A030', 'x', '($A*$h)/3', 1),
	(89, 6, 'A040', 'x', '1', 40),
	(90, 6, 'A050', 'x', '1', 40),
	(91, 6, 'A090', 'x', '1', 20),
	(92, 6, 'A100', 'x', '1', 2),
	(93, 6, 'A2590', 'x', '(1)', 4),
	(94, 6, 'MO01', 'x', '($A*$h)', 1),
	(95, 6, 'V04', 'Ah', '($A/4)x($h)', 4),
	(97, 7, '3540', 'Ah', '($A)+($h)', 2),
	(99, 7, '3541', 'Ah', '($A)+($h)', 2),
	(101, 7, '3544', 'A', '$A', 1),
	(103, 7, '3590', 'Ah', '($A*2)+($h*2)', 1),
	(104, 8, 'T25x50', 'A', 'A', 2),
	(105, 8, 'T25x50', 'h', 'H', 2),
	(106, 8, 'A050', 'x', '1', 20),
	(107, 8, 'Z999', 'x', 'x', 4),
	(108, 9, 'P3501', 'h', '$h', 2),
	(109, 9, 'P3501', 'A', '$A', 2),
	(110, 9, 'P3502', 'h', '$h', 2),
	(111, 9, 'P3502', 'A', '$A', 2),
	(112, 9, 'P3505', 'Ah', '$h+$A', 2),
	(113, 9, 'A010', 'Ah', '($A*2)+($h*2)', 2),
	(114, 9, 'A030', 'x', '($A*$h)/3', 1),
	(115, 9, 'A040', 'x', '1', 30),
	(116, 9, 'A090', 'x', '1', 12),
	(117, 9, 'A060', 'x', '1', 2),
	(118, 9, 'A110', 'x', '1', 1),
	(119, 10, 'P3501', 'A', '$A+$c', 2),
	(120, 10, 'P3501', 'h', '$h+$c', 2),
	(121, 10, 'P3505', 'A', '$A+$c', 4),
	(122, 10, 'P3505', 'h', '$h+$c', 2),
	(123, 10, 'P3503', 'A', '$A+$c', 1),
	(125, 10, 'A010', 'Ah', '($A*4)+($h*2)', 1),
	(126, 10, 'A030', 'Ah', '($A*$h)/3', 1),
	(127, 10, 'A040', 'x', '1', 30),
	(128, 10, 'A090', 'x', '1', 12),
	(129, 10, 'A050', 'x', '1', 30),
	(131, 10, 'V04', 'Ah', '($h/2)x($A)', 2),
	(132, 10, 'MO01', 'Ah', '($A*$h)', 1),
	(133, 10, 'L35UNI', 'x', '1', 6),
	(134, 11, 'U_12x12', 'Ah', '($h*2)+($A*2)', 2),
	(135, 11, 'A030', 'x', '($A*$h)/3', 1),
	(136, 11, 'A040', 'x', '1', 30),
	(137, 14, 'P3501', 'Ah', '($A+$c)+($h+$c)', 2),
	(138, 14, 'T30x60', 'Ah', '((($A/2)+$c)*2+(($h+$c)*2)', 2),
	(139, 14, 'U_15x25', 'Ah', '((($A/2)+$c))*2+(($h+$c)*2)', 2),
	(140, 14, 'A010', 'Ah', '((($A/2)+$c))*2+(($h+$c)*2)', 4),
	(141, 14, 'A040', 'x', '1', 30),
	(142, 14, 'A030', 'x', '($A*$h)/3', 1),
	(143, 14, 'P35080', 'x', '3', 4),
	(144, 14, 'V04', 'Ah', '($A/2)x($h)', 2),
	(145, 14, 'MO01', 'x', '($A*$h)', 1),
	(146, 14, 'A110', 'x', '1', 1),
	(147, 14, 'P3503', 'A', '$A+$c', 1),
	(148, 13, 'VT8_CAB_001', 'A', '($A)', 1),
	(149, 13, 'VT8_CAB_002', 'A', '($A)', 1),
	(150, 13, 'VT8_TRIL_001', 'A', '($A)', 1),
	(151, 13, 'VT8_TRILL_002', 'A', '($A)', 1),
	(152, 13, 'VT8_Ved', 'h', '(3-1)', 2),
	(153, 13, 'U_15x25', 'h', '($h)+2', 2),
	(154, 13, 'VT8_CHAP', 'x', '1', 1),
	(155, 13, 'A010', 'x', '($A*2)+($h*(3+1))', 2),
	(156, 13, 'VT8_RUED', 'x', '1', 2),
	(157, 13, 'VT008', 'Ah', '(($A+50)*$h)', 1),
	(158, 13, 'MO01', 'x', '($A*$h)', 1),
	(159, 13, 'A030', 'x', '($A*$h)/3', 1),
	(160, 7, 'V04', 'Ah', '($A)x($h)', 1),
	(161, 7, 'A040', 'x', '1', 30),
	(162, 7, 'A030', 'x', '($A*$h)/3', 1),
	(163, 7, 'A010', 'Ah', '($A*2)+($h*(1+1))', 2),
	(164, 7, 'A45KCLL', 'x', '(1)', 1),
	(165, 7, 'MO01', 'Ah', '($A*$h)', 1);
/*!40000 ALTER TABLE `tipologia_materiales` ENABLE KEYS */;


-- Volcando estructura para tabla alcon.user_data
DROP TABLE IF EXISTS `user_data`;
CREATE TABLE IF NOT EXISTS `user_data` (
  `usuarios_id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT 'campo=usuarios_id&titulo=id&visible=-1&nuevo=auto&edit=none',
  `usuarios_nick` varchar(50) NOT NULL COMMENT 'campo=usuarios_nick&titulo=nick&nuevo=unic&edit=read',
  `usuarios_pass` varchar(150) NOT NULL COMMENT 'campo=usuarios_pass&titulo=password&visible=0&nuevo=pass&edit=none&predet=$this->_encript($pass)',
  `usuarios_mail` varchar(80) NOT NULL COMMENT 'campo=usuarios_mail&titulo=e-mail&nuevo=umail&edit=read',
  `usuarios_web` varchar(80) NOT NULL COMMENT 'campo=usuarios_web&titulo=pagina web',
  `usuarios_nombres` varchar(80) NOT NULL COMMENT 'campo=usuarios_nombres&titulo=nombres',
  `usuarios_apellidos` varchar(80) NOT NULL COMMENT 'campo=usuarios_apellidos&titulo=apellidos',
  `usuarios_empresa` varchar(150) NOT NULL COMMENT 'campo=usuarios_empresa&titulo=empresa-imstitucion&visible=0',
  `usuarios_dirfact` varchar(1000) NOT NULL COMMENT 'campo=usuarios_dirfact&titulo=direccion para faturar&visible=0&nuevo=textarea&edit=textarea',
  `usuarios_cargo` varchar(80) NOT NULL COMMENT 'campo=usuarios_cargo&titulo=cargo&visible=0',
  `usuarios_telefono` varchar(80) NOT NULL COMMENT 'campo=usuarios_telefono&titulo=telefono&visible=0',
  `usuarios_direccion` varchar(150) NOT NULL COMMENT 'campo=usuarios_direccion&titulo=direccion&visible=0',
  `usuarios_ciudad` varchar(80) NOT NULL COMMENT 'campo=usuarios_ciudad&titulo=ciudad&visible=0',
  `usuarios_pais` varchar(80) NOT NULL COMMENT 'campo=usuarios_pais&titulo=pais&visible=0',
  `usuarios_nivel` enum('1','2','3','4','5','6','7') NOT NULL DEFAULT '1' COMMENT 'campo=usuarios_nivel&titulo=nivel&visible=0&nuevo=hidden&edit=hidden&select=array(1=>estandar,2=>cliente,3=>operador,4=>vendedor,5=>administrador,6=>superadmin,7=>programador)&predet=1',
  `usuarios_pRec` varchar(20) NOT NULL COMMENT 'campo=usuarios_pRec&titulo=pass_rec&visible=0&nuevo=hidden&edit=none&predet=$pass',
  `usuarios_session` varchar(50) NOT NULL COMMENT 'campo=usuarios_session&titulo=session&visible=0&nuevo=hidden&edit=none',
  PRIMARY KEY (`usuarios_id`),
  UNIQUE KEY `username` (`usuarios_nick`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='campo=&titulo=&visible=&nuevo=&edit=&select=$this->funSelect(''TABLA'',''CAMPO_id,CAMPO_ver'')&predet=&attr=&clase=algn_left|algn_number&thwdth=';

-- Volcando datos para la tabla alcon.user_data: ~4 rows (aproximadamente)
DELETE FROM `user_data`;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
INSERT INTO `user_data` (`usuarios_id`, `usuarios_nick`, `usuarios_pass`, `usuarios_mail`, `usuarios_web`, `usuarios_nombres`, `usuarios_apellidos`, `usuarios_empresa`, `usuarios_dirfact`, `usuarios_cargo`, `usuarios_telefono`, `usuarios_direccion`, `usuarios_ciudad`, `usuarios_pais`, `usuarios_nivel`, `usuarios_pRec`, `usuarios_session`) VALUES
	(1, '', '3a4341d6b9c49c389026f63e1d787a5f85bd6611', '', '', '', '', '', '', '', '', '', '', '', '1', 'user', ''),
	(2, 'juanjito', 'e63cded14c60b071f0854ba201afee8ea632c655', 'j_j_a_a@hotmail.com', '', 'Juan Jose', 'Arandia Avila', 'JJSystem', '', 'Programador', '74776487', 'J. de los Ríos No 1000', 'Cochabamba', 'Bolivia', '7', 'juanjito', 'bg84ln3jrffkcvsqm68ntf7nv3'),
	(3, 'sadmin', 'e63cded14c60b071f0854ba201afee8ea632c655', 'j_j_a_a@hotmail.com', '', 'Juan Jose', 'Arandia Avila', 'JJSystem', '', 'administrador', '74776487', 'J. de los Ríos No 1000', 'Cochabamba', 'Bolivia', '6', 'juanjito', '1nb377v205liemfa4vog6u3286'),
	(4, 'admin', 'e63cded14c60b071f0854ba201afee8ea632c655', 'j_j_a_a@hotmail.com', '', 'Juan Jose', 'Arandia Avila', 'JJSystem', '', 'administrador', '74776487', 'J. de los Ríos No 1000', 'Cochabamba', 'Bolivia', '5', 'juanjito', 'a9nj5crnduobk02fb36ae4v8m7');
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;


-- Volcando estructura para disparador alcon.cotizacion_detalle after_upd
DROP TRIGGER IF EXISTS `cotizacion_detalle after_upd`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `cotizacion_detalle after_upd` AFTER UPDATE ON `cotizacion_detalle` FOR EACH ROW BEGIN
update cotizacion set m2=(
	select round(sum(m2),2) as m2 
	from cotizacion_detalle
	where cotizacion_id=new.cotizacion_id
)
where cotizacion_id=new.cotizacion_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.cotizacion_detalle_after_del
DROP TRIGGER IF EXISTS `cotizacion_detalle_after_del`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `cotizacion_detalle_after_del` AFTER DELETE ON `cotizacion_detalle` FOR EACH ROW BEGIN
update cotizacion set m2=(
	select round(sum(m2),2) as m2 
	from cotizacion_detalle
	where cotizacion_id=old.cotizacion_id
)
where cotizacion_id=old.cotizacion_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.cotizacion_detalle_after_ins
DROP TRIGGER IF EXISTS `cotizacion_detalle_after_ins`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `cotizacion_detalle_after_ins` AFTER INSERT ON `cotizacion_detalle` FOR EACH ROW BEGIN
update cotizacion set m2=(
	select round(sum(m2),2) as m2 
	from cotizacion_detalle
	where cotizacion_id=new.cotizacion_id
)
where cotizacion_id=new.cotizacion_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.cotizacion_detalle_bef_ins
DROP TRIGGER IF EXISTS `cotizacion_detalle_bef_ins`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `cotizacion_detalle_bef_ins` BEFORE INSERT ON `cotizacion_detalle` FOR EACH ROW BEGIN
SET NEW.m2=((NEW.ancho*NEW.alto)*NEW.cantidad);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.cotizacion_detalle_bef_upd
DROP TRIGGER IF EXISTS `cotizacion_detalle_bef_upd`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `cotizacion_detalle_bef_upd` BEFORE UPDATE ON `cotizacion_detalle` FOR EACH ROW BEGIN
SET NEW.m2=((NEW.ancho*NEW.alto)*NEW.cantidad);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.tipologia_before_insert
DROP TRIGGER IF EXISTS `tipologia_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `tipologia_before_insert` BEFORE INSERT ON `tipologia` FOR EACH ROW BEGIN
	SET NEW.imagen=concat('images/disenos/',NEW.tipo,'.png');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador alcon.tipologia_before_update
DROP TRIGGER IF EXISTS `tipologia_before_update`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `tipologia_before_update` BEFORE UPDATE ON `tipologia` FOR EACH ROW BEGIN
	SET NEW.imagen=concat('images/disenos/',NEW.tipo,'.png');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para vista alcon.cotizacion_detalle_materiales
DROP VIEW IF EXISTS `cotizacion_detalle_materiales`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `cotizacion_detalle_materiales`;
CREATE ALGORITHM=UNDEFINED DEFINER=`librosandinos`@`localhost` VIEW `cotizacion_detalle_materiales` AS SELECT cotizacion_detalle.cotizacion_id,
--	cotizacion_detalle.codificacion, 
	tipologia_materiales.materiales_id,
	(select materiales.nombre from materiales where materiales.materiales_id = tipologia_materiales.materiales_id) as nombre,
--	cotizacion_detalle.ancho,
--	cotizacion_detalle.alto,
	concat('{',
	GROUP_CONCAT(concat(replace(tipologia_materiales.materiales_id,'_',''),'_',replace(cotizacion_detalle.codificacion,'_',''),'_',tipologia_materiales.ensamble,': {dim:',
		Replace(
			Replace(
				Replace(
					Replace(
						Replace(
							Replace(formula,'$Dh',div_horizontal),
							'$Dv',div_vertical),
						'$c','0.01'),
					'$M',movil),
				'$h',alto),
			'$A',ancho),', cant:',tipologia_materiales.cantidad,
		'} ')
	),'}') AS formula,
	(select materiales.unidad from materiales where materiales.materiales_id = tipologia_materiales.materiales_id) as unidad

FROM (tipologia INNER JOIN cotizacion_detalle 
	ON tipologia.tipologia_id = cotizacion_detalle.tipologia_id) 
	INNER JOIN tipologia_materiales 
	ON tipologia.tipologia_id = tipologia_materiales.tipologia_id
GROUP BY cotizacion_detalle.cotizacion_id,tipologia_materiales.materiales_id
ORDER BY cotizacion_detalle.cotizacion_id,tipologia_materiales.materiales_id,cotizacion_detalle.codificacion ;


-- Volcando estructura para vista alcon.materiales_color
DROP VIEW IF EXISTS `materiales_color`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `materiales_color`;
CREATE ALGORITHM=UNDEFINED DEFINER=`librosandinos`@`localhost` VIEW `materiales_color` AS SELECT materiales_id, nombre, `color` from materiales join color 
where materiales.colores regexp concat('.*',color.color,'.*') ;


/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
>>>>>>> Stashed changes
