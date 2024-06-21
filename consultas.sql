
-- SE COMENZARÀN A REALIZAR LAS CONSULTAS

-- VER LISTADO DE ESTUDIANTES DE UN GRUPO X

SELECT * FROM estudiantes WHERE id_curso = 2;

-- VER LA LISTA DE ESTUDIANTES QUE VEAN UNA ASIGNATURA X

SELECT * FROM estudiantes INNER JOIN asignaturas  ON estudiantes.id_curso = asignaturas.id WHERE asignaturas.id = 1;


-- VER LA LISTA DE PROFESORES QUE LE DICTAN CLASE A UN ESTUDIANTE X.

SELECT estudiantes.nombre as estudiante ,empleados.nombre as profesor FROM empleados INNER JOIN cursos_asignaturas ON empleados.id = cursos_asignaturas.id_profesor INNER JOIN cursos ON cursos.id = cursos_asignaturas.id_curso INNER JOIN estudiantes ON estudiantes.id_curso = cursos.id WHERE cursos_asignaturas.id_curso = 1 and estudiantes.id = 8  


-- VER LOS GRUPOS ORDENADOS DE FORMA DESCENDENTE POR LA CANTIDAD DE ESTUDIANTES QUE TIENE INSCRITOS.


SELECT cursos.nombre as curso,  COUNT(estudiantes.id) as cantidad_estudiantes FROM cursos INNER JOIN estudiantes ON estudiantes.id_curso = cursos.id GROUP BY cursos.id 

