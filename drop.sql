# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          OVAULA V1.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2016-02-24 11:07                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `curso` DROP FOREIGN KEY `institucion_curso`;

ALTER TABLE `asignacion` DROP FOREIGN KEY `docente_asignacion`;

ALTER TABLE `asignacion` DROP FOREIGN KEY `pensum_asignacion`;

ALTER TABLE `matricula` DROP FOREIGN KEY `curso_matricula`;

ALTER TABLE `matricula` DROP FOREIGN KEY `estudiante_matricula`;

ALTER TABLE `pensum` DROP FOREIGN KEY `materia_pensum`;

ALTER TABLE `pensum` DROP FOREIGN KEY `curso_pensum`;

ALTER TABLE `nota` DROP FOREIGN KEY `examen_estudiante_nota`;

ALTER TABLE `examen` DROP FOREIGN KEY `periodo_examen`;

ALTER TABLE `examen` DROP FOREIGN KEY `asignacion_examen`;

ALTER TABLE `examen_estudiante` DROP FOREIGN KEY `estudiante_examen_estudiante`;

ALTER TABLE `examen_estudiante` DROP FOREIGN KEY `examen_examen_estudiante`;

ALTER TABLE `pregunta` DROP FOREIGN KEY `examen_pregunta`;

ALTER TABLE `correcta` DROP FOREIGN KEY `pregunta_correcta`;

ALTER TABLE `respuesta` DROP FOREIGN KEY `pregunta_respuesta`;

ALTER TABLE `intento` DROP FOREIGN KEY `examen_estudiante_intento`;

# ---------------------------------------------------------------------- #
# Drop table "nota"                                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `nota` DROP PRIMARY KEY;

DROP TABLE `nota`;

# ---------------------------------------------------------------------- #
# Drop table "intento"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `intento` DROP PRIMARY KEY;

DROP TABLE `intento`;

# ---------------------------------------------------------------------- #
# Drop table "respuesta"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `respuesta` DROP PRIMARY KEY;

DROP TABLE `respuesta`;

# ---------------------------------------------------------------------- #
# Drop table "correcta"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `correcta` DROP PRIMARY KEY;

DROP TABLE `correcta`;

# ---------------------------------------------------------------------- #
# Drop table "pregunta"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `pregunta` DROP PRIMARY KEY;

DROP TABLE `pregunta`;

# ---------------------------------------------------------------------- #
# Drop table "examen_estudiante"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `examen_estudiante` DROP PRIMARY KEY;

DROP TABLE `examen_estudiante`;

# ---------------------------------------------------------------------- #
# Drop table "examen"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `examen` DROP PRIMARY KEY;

DROP TABLE `examen`;

# ---------------------------------------------------------------------- #
# Drop table "asignacion"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `asignacion` DROP PRIMARY KEY;

DROP TABLE `asignacion`;

# ---------------------------------------------------------------------- #
# Drop table "periodo"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `periodo` DROP PRIMARY KEY;

DROP TABLE `periodo`;

# ---------------------------------------------------------------------- #
# Drop table "pensum"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `pensum` DROP PRIMARY KEY;

DROP TABLE `pensum`;

# ---------------------------------------------------------------------- #
# Drop table "materia"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `materia` DROP PRIMARY KEY;

DROP TABLE `materia`;

# ---------------------------------------------------------------------- #
# Drop table "matricula"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `matricula` DROP PRIMARY KEY;

DROP TABLE `matricula`;

# ---------------------------------------------------------------------- #
# Drop table "curso"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `curso` DROP PRIMARY KEY;

DROP TABLE `curso`;

# ---------------------------------------------------------------------- #
# Drop table "institucion"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `institucion` DROP PRIMARY KEY;

DROP TABLE `institucion`;

# ---------------------------------------------------------------------- #
# Drop table "estudiante"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `estudiante` DROP PRIMARY KEY;

DROP TABLE `estudiante`;

# ---------------------------------------------------------------------- #
# Drop table "docente"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `docente` DROP PRIMARY KEY;

DROP TABLE `docente`;
