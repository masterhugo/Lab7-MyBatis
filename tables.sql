
CREATE TABLE `PACIENTES` (
`id` int(11) NOT NULL,
`tipo_id` varchar(2) NOT NULL,
`nombre` varchar(45) NOT NULL,
`fecha_nacimiento` date NOT NULL,
PRIMARY KEY (`id`,`tipo_id`)
);
CREATE TABLE `CONSULTAS` (
`idCONSULTAS` int(11) NOT NULL AUTO_INCREMENT,
`fecha_y_hora` datetime NOT NULL,
`resumen` varchar(45) NOT NULL,
`PACIENTES_id` int(11) NOT NULL DEFAULT '0',
`PACIENTES_tipo_id` varchar(2) NOT NULL DEFAULT 'cc',
PRIMARY KEY (`idCONSULTAS`),
CONSTRAINT `fk_CONSULTAS_PACIENTES1` FOREIGN KEY (`PACIENTES_id`, `PACIENTES_tipo_id`) REFERENCES `PACIENTES` (`id`, `tipo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
