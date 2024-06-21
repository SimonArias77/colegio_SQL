SHOW TABLES

CREATE TABLE `tipos_documento` (
  `id` INTEGER,
  `nombre` VARCHAR(50),
  `abreviatura` VARCHAR(30),
  PRIMARY KEY (`id`)
);

CREATE TABLE `roles` (
  `id` INTEGER,
  `nombre` VARCHAR(30),
  PRIMARY KEY (`id`)
);

CREATE TABLE `empleados` (
  `id` INTEGER,
  `nombre` VARCHAR(30),
  `apellido` VARCHAR(30),
  `id_tipo_documento` INTEGER,
  `numero_documento` VARCHAR(30),
  `id_rol` INTEGER,
  `salario` FLOAT,
  `fecha_nacimiento` DATE,
  `email` VARCHAR(45),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipos_documento`(`id`),
  FOREIGN KEY (`id_rol`) REFERENCES `roles`(`id`),
  KEY `U` (`numero_documento`)
);

CREATE TABLE `jornadas` (
  `id` INTEGER,
  `nombre` VARCHAR(30),
  `hora_inicio` TIME,
  `hora_fin` TIME,
  PRIMARY KEY (`id`)
);

CREATE TABLE `cursos` (
  `id` INTEGER,
  `nombre` VARCHAR(30),
  `id_profesor_encargado` INTEGER,
  `id_jornada` INTEGER,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_jornada`) REFERENCES `jornadas`(`id`)
);

CREATE TABLE `asignaturas` (
  `id` INTEGER,
  `nombre` VARCHAR(30),
  PRIMARY KEY (`id`)
);

CREATE TABLE `cursos_asignaturas` (
  `id` INTEGER,
  `id_curso` INTEGER,
  `id_asignatura` INTEGER,
  `id_profesor` INTEGER,
  `intensidad_horaria` INTEGER,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_profesor`) REFERENCES `empleados`(`id`),
  FOREIGN KEY (`id_asignatura`) REFERENCES `asignaturas`(`id`),
  FOREIGN KEY (`id_curso`) REFERENCES `cursos`(`id`)
);

CREATE TABLE `estudiantes` (
  `id` INTEGER,
  `id_tipo_documento` INTEGER,
  `nombre` VARCHAR(30),
  `apellido` VARCHAR(30),
  `numero_documento` VARCHAR(30),
  `id_curso` INTEGER,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipos_documento`(`id`),
  FOREIGN KEY (`id_curso`) REFERENCES `cursos`(`id`),
  KEY `U` (`numero_documento`)
);

SHOW TABLES

