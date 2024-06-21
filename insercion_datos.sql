INSERT INTO tipos_documento 
VALUES
(1, 'Cédula de Ciudadanía', 'CC'),
(2, 'Tarjeta de Identidad', 'TI'),
(3, 'Cédula de Extranjería', 'CE'),
(4, 'Pasaporte', 'PSP'),
(5, 'Registro Civil', 'RC'),
(6, 'Licencia de Conducir', 'LC'),
(7, 'Documento Nacional de Identidad', 'DNI');

SELECT * FROM tipos_documento;

INSERT INTO roles 
VALUES
(1, 'Administrador'),
(2, 'Profesor'),
(3, 'Servicios varios'),
(4, 'Secretario/a'),
(5, 'Director/a'),
(6, 'Auxiliar'),
(7, 'Encargado/a de Mantenimiento');

SELECT * FROM roles;

INSERT INTO empleados 
VALUES
(1, 'Juan', 'Pérez', 1, '123456789', 2, 2500.00, '1990-05-15', 'juan.perez@example.com'),
(2, 'María', 'Gómez', 2, '987654321', 2, 2000.00, '1988-10-20', 'maria.gomez@example.com'),
(3, 'Carlos', 'López', 1, '456789123', 6, 1800.00, '1995-03-25', 'carlos.lopez@example.com'),
(4, 'Ana', 'Martínez', 3, '654321789', 5, 3000.00, '1985-12-10', 'ana.martinez@example.com'),
(5, 'Pedro', 'Sánchez', 4, '789123456', 4, 2800.00, '1992-08-18', 'pedro.sanchez@example.com'),
(6, 'Laura', 'Rodríguez', 1, '234567891', 2, 2700.00, '1991-07-05', 'laura.rodriguez@example.com'),
(7, 'Javier', 'Díaz', 2, '567891234', 2, 2200.00, '1993-04-30', 'javier.diaz@example.com');

SELECT * FROM empleados;

INSERT INTO jornadas 
VALUES
(1, 'Mañana', '08:00:00', '12:00:00'),
(2, 'Tarde', '14:00:00', '18:00:00'),
(3, 'Noche', '19:00:00', '22:00:00'),
(4, 'Complementaria', '09:00:00', '13:00:00'),
(5, 'Mixta', '07:30:00', '11:30:00'),
(6, 'Participativa', '08:00:00', '12:00:00');

SELECT * FROM jornadas;

INSERT INTO cursos 
VALUES
(1, 'Primero', 2, 1),
(2, 'Segundo', 5, 2),
(3, 'Tercero', 3, 3),
(4, 'Cuarto', 6, 1),
(5, 'Quinto', 4, 2),
(6, 'Sexto', 1, 3),
(7, 'Octavo', 7, 1);

SELECT * FROM cursos;

INSERT INTO asignaturas 
VALUES
(1, 'Matemáticas'),
(2, 'Literatura'),
(3, 'Historia'),
(4, 'Programación'),
(5, 'Economía'),
(6, 'Física'),
(7, 'Biología');

SELECT * FROM asignaturas;

INSERT INTO cursos_asignaturas 
VALUES
(1, 1, 1, 2, 60),
(2, 2, 2, 5, 45),
(3, 3, 3, 3, 30),
(4, 4, 4, 6, 75),
(5, 5, 5, 4, 50),
(6, 6, 6, 1, 40),
(7, 7, 7, 7, 55);

SELECT * FROM cursos_asignaturas;


INSERT INTO estudiantes 
VALUES
(1, 1, 'Luis', 'González', '567890123', 1),
(2, 2, 'Ana', 'Ramírez', '678901234', 2),
(3, 1, 'Pedro', 'Díaz', '789012345', 3),
(4, 3, 'María', 'Sánchez', '890123456', 4),
(5, 1, 'Carlos', 'Martínez', '901234567', 5),
(6, 2, 'Laura', 'López', '012345678', 6),
(7, 1, 'Jorge', 'Pérez', '345678901', 7),
(8, 1, 'Simon', 'Arias', '345655901', 1);

SELECT * FROM estudiantes;

