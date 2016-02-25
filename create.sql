# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          OVAULA V1.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2016-02-24 11:07                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "docente"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `docente` (
    `id` VARCHAR(15) NOT NULL,
    `nombre` VARCHAR(40) NOT NULL,
    `apellido` VARCHAR(40) NOT NULL,
    `tipo_documento` VARCHAR(2) NOT NULL,
    `documento` VARCHAR(15) NOT NULL,
    `email` VARCHAR(40) NOT NULL,
    `telefono` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_docente` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "estudiante"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `estudiante` (
    `id` VARCHAR(15) NOT NULL,
    `nombre` VARCHAR(40) NOT NULL,
    `apellido` VARCHAR(40) NOT NULL,
    `tipo_documento` VARCHAR(2) NOT NULL,
    `documento` VARCHAR(15) NOT NULL,
    `email` VARCHAR(40) NOT NULL,
    `telefono` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_estudiante` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "institucion"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `institucion` (
    `id` VARCHAR(15) NOT NULL,
    `resol_sec` VARCHAR(40) NOT NULL,
    `nit` VARCHAR(40) NOT NULL,
    `dane` VARCHAR(40) NOT NULL,
    `direccion` VARCHAR(40) NOT NULL,
    `telefono` VARCHAR(40) NOT NULL,
    `correo` VARCHAR(40) NOT NULL,
    `cod_rector` VARCHAR(40) NOT NULL,
    `cod_coordinador` VARCHAR(40) NOT NULL,
    `cod_secretaria` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_institucion` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "curso"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `curso` (
    `id` VARCHAR(3) NOT NULL,
    `grado` VARCHAR(2) NOT NULL,
    `nomenclatura` VARCHAR(1) NOT NULL,
    `cod_institucion` VARCHAR(15) NOT NULL,
    CONSTRAINT `PK_curso` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "matricula"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `matricula` (
    `id` VARCHAR(18) NOT NULL,
    `estado` VARCHAR(2) NOT NULL,
    `cod_estudiante` VARCHAR(15) NOT NULL,
    `cod_curso` VARCHAR(3) NOT NULL,
    CONSTRAINT `PK_matricula` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "materia"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `materia` (
    `id` INTEGER(2) NOT NULL,
    `nombre` VARCHAR(60) NOT NULL,
    CONSTRAINT `PK_materia` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "pensum"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `pensum` (
    `id` VARCHAR(5) NOT NULL,
    `cod_materia` INTEGER(2) NOT NULL,
    `cod_curso` VARCHAR(3) NOT NULL,
    CONSTRAINT `PK_pensum` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "periodo"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `periodo` (
    `id` INTEGER NOT NULL,
    `fecha_inicio` DATE NOT NULL,
    `fecha_fin` DATE NOT NULL,
    `descripcion` VARCHAR(50) NOT NULL,
    CONSTRAINT `PK_periodo` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "asignacion"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `asignacion` (
    `id` VARCHAR(20) NOT NULL,
    `cod_docente` VARCHAR(15) NOT NULL,
    `cod_pensum` VARCHAR(5) NOT NULL,
    CONSTRAINT `PK_asignacion` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "examen"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `examen` (
    `id` INTEGER NOT NULL,
    `fecha` DATE NOT NULL,
    `enunciado` VARCHAR(1000) NOT NULL,
    `cod_periodo` INTEGER NOT NULL,
    `cod_asigmacion` VARCHAR(20) NOT NULL,
    CONSTRAINT `PK_examen` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "examen_estudiante"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `examen_estudiante` (
    `id` INTEGER NOT NULL,
    `estado` NUMERIC NOT NULL,
    `fecha` DATE NOT NULL,
    `cod_estudiante` VARCHAR(15) NOT NULL,
    `cod_examen` INTEGER NOT NULL,
    CONSTRAINT `PK_examen_estudiante` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "pregunta"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `pregunta` (
    `id` INTEGER NOT NULL,
    `descripcion` VARCHAR(3000) NOT NULL,
    `cod_examen` INTEGER NOT NULL,
    CONSTRAINT `PK_pregunta` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "correcta"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `correcta` (
    `id` INTEGER NOT NULL,
    `respuesta` VARCHAR(100) NOT NULL,
    `cod_pregunta` INTEGER,
    CONSTRAINT `PK_correcta` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "respuesta"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `respuesta` (
    `id` INTEGER NOT NULL,
    `respuesta` VARCHAR(100) NOT NULL,
    `cod_pregunta` INTEGER NOT NULL,
    CONSTRAINT `PK_respuesta` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "intento"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `intento` (
    `id` INTEGER NOT NULL,
    `fecha_presentado` DATE NOT NULL,
    `cod_examen_estudiante` INTEGER NOT NULL,
    CONSTRAINT `PK_intento` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add table "nota"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `nota` (
    `id` INTEGER NOT NULL,
    `calificacion` NUMERIC(2,1) NOT NULL,
    `cod_examen_estudiante` INTEGER NOT NULL,
    CONSTRAINT `PK_nota` PRIMARY KEY (`id`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `curso` ADD CONSTRAINT `institucion_curso` 
    FOREIGN KEY (`cod_institucion`) REFERENCES `institucion` (`id`);

ALTER TABLE `asignacion` ADD CONSTRAINT `docente_asignacion` 
    FOREIGN KEY (`cod_docente`) REFERENCES `docente` (`id`);

ALTER TABLE `asignacion` ADD CONSTRAINT `pensum_asignacion` 
    FOREIGN KEY (`cod_pensum`) REFERENCES `pensum` (`id`);

ALTER TABLE `matricula` ADD CONSTRAINT `curso_matricula` 
    FOREIGN KEY (`cod_curso`) REFERENCES `curso` (`id`);

ALTER TABLE `matricula` ADD CONSTRAINT `estudiante_matricula` 
    FOREIGN KEY (`cod_estudiante`) REFERENCES `estudiante` (`id`);

ALTER TABLE `pensum` ADD CONSTRAINT `materia_pensum` 
    FOREIGN KEY (`cod_materia`) REFERENCES `materia` (`id`);

ALTER TABLE `pensum` ADD CONSTRAINT `curso_pensum` 
    FOREIGN KEY (`id`) REFERENCES `curso` (`id`);

ALTER TABLE `nota` ADD CONSTRAINT `examen_estudiante_nota` 
    FOREIGN KEY (`cod_examen_estudiante`) REFERENCES `examen_estudiante` (`id`);

ALTER TABLE `examen` ADD CONSTRAINT `periodo_examen` 
    FOREIGN KEY (`cod_periodo`) REFERENCES `periodo` (`id`);

ALTER TABLE `examen` ADD CONSTRAINT `asignacion_examen` 
    FOREIGN KEY (`cod_asigmacion`) REFERENCES `asignacion` (`id`);

ALTER TABLE `examen_estudiante` ADD CONSTRAINT `estudiante_examen_estudiante` 
    FOREIGN KEY (`cod_estudiante`) REFERENCES `estudiante` (`id`);

ALTER TABLE `examen_estudiante` ADD CONSTRAINT `examen_examen_estudiante` 
    FOREIGN KEY (`cod_examen`) REFERENCES `examen` (`id`);

ALTER TABLE `pregunta` ADD CONSTRAINT `examen_pregunta` 
    FOREIGN KEY (`cod_examen`) REFERENCES `examen` (`id`);

ALTER TABLE `correcta` ADD CONSTRAINT `pregunta_correcta` 
    FOREIGN KEY (`cod_pregunta`) REFERENCES `pregunta` (`id`);

ALTER TABLE `respuesta` ADD CONSTRAINT `pregunta_respuesta` 
    FOREIGN KEY (`cod_pregunta`) REFERENCES `pregunta` (`id`);

ALTER TABLE `intento` ADD CONSTRAINT `examen_estudiante_intento` 
    FOREIGN KEY (`cod_examen_estudiante`) REFERENCES `examen_estudiante` (`id`);
