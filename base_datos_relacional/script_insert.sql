/*INSERCIONES CON INSERT INTO*/

/*Inserciones en tabla de Docentes*/

INSERT INTO docentes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id)
VALUES("jose","perez","2000-11-02","101601010151",1);

INSERT INTO docentes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id)
VALUES("juan","torres","2000-11-01","101001510131",4);

INSERT INTO docentes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id)
VALUES("luisa","ramos","2000-10-09","101001210181",2);

INSERT INTO docentes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id)
VALUES("olga","lopera","2000-04-09","107401210101",2);

INSERT INTO docentes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id)
VALUES("hugo","boss","2000-11-09","101401210101",2);

/*Inserciones en tabla de Estudiantes*/

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id,grupos_id)
VALUES("lucas","ponce","2008-11-09","161001210101",2,4);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id,grupos_id)
VALUES("andres","carreño","2008-01-03","161001210801",2,3);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id,grupos_id)
VALUES("tara","alvarez","2008-02-07","161641210801",2,3);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id,grupos_id)
VALUES("carlos","casas","2008-11-09","101001210101",2,5);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id,grupos_id)
VALUES("albeiro","villa","2008-01-01","101001010901",1,1);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id,grupos_id)
VALUES("andy","roberts","2008-01-01","101001010901",2,2);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_documento,tipos_de_documento_id,grupos_id)
VALUES("mary","roberts","2008-04-01","101055010901",2,2);

/*Inserciones en tabla de Tipos de documentos*/

INSERT INTO tipos_de_documento (nombre_documento,abreviatura)
VALUES("cedula de ciudadania","cc");

INSERT INTO tipos_de_documento (nombre_documento,abreviatura)
VALUES("tarjeta de identidad","ti");

INSERT INTO tipos_de_documento (nombre_documento,abreviatura)
VALUES("registro civil","rc");

INSERT INTO tipos_de_documento (nombre_documento,abreviatura)
VALUES("pasaporte","pa");

INSERT INTO tipos_de_documento (nombre_documento,abreviatura)
VALUES("cedula de extranjeria","ce");

/*Inserciones en tabla de Grados*/

INSERT INTO grados (nombre_grado)
VALUES("septimo");

INSERT INTO grados (nombre_grado)
VALUES("sexto");

INSERT INTO grados (nombre_grado)
VALUES("decimo");

INSERT INTO grados (nombre_grado)
VALUES("once");

INSERT INTO grados (nombre_grado)
VALUES("noveno");

INSERT INTO grados (nombre_grado)
VALUES("octavo");

/*Inserciones en tabla de Grupos*/

INSERT INTO grupos (nombre_grupo,grados_id,jornadas_id)
VALUES("A",5,1);

INSERT INTO grupos (nombre_grupo,grados_id,jornadas_id)
VALUES("B",3,1);

INSERT INTO grupos (nombre_grupo,grados_id,jornadas_id)
VALUES("C",1,2);

INSERT INTO grupos (nombre_grupo,grados_id,jornadas_id)
VALUES("D",4,1);

INSERT INTO grupos (nombre_grupo,grados_id,jornadas_id)
VALUES("E",2,2);

/*Inserciones en tabla de Jornadas*/

INSERT INTO jornadas (nombre_jornada)
VALUES("mañana");

INSERT INTO jornadas (nombre_jornada)
VALUES("tarde");

/*Inserciones en tabla de Asignaturas*/

INSERT INTO asignaturas (nombre_asignatura)
VALUES("matematicas");

INSERT INTO asignaturas (nombre_asignatura)
VALUES("educacion fisica");

INSERT INTO asignaturas (nombre_asignatura)
VALUES("lengua castellana");

INSERT INTO asignaturas (nombre_asignatura)
VALUES("ingles");

INSERT INTO asignaturas (nombre_asignatura)
VALUES("ciencias naturales");

INSERT INTO asignaturas (nombre_asignatura)
VALUES("ciencias sociales");

/*Inserciones en tabla de Asignaturas_grupos*/

INSERT INTO asignaturas_grupos (asignaturas_id,grupos_id,docentes_id)
VALUES(1,2,3);

INSERT INTO asignaturas_grupos (asignaturas_id,grupos_id,docentes_id)
VALUES(1,1,3);

INSERT INTO asignaturas_grupos (asignaturas_id,grupos_id,docentes_id)
VALUES(1,2,1);

INSERT INTO asignaturas_grupos (asignaturas_id,grupos_id,docentes_id)
VALUES(2,2,2);

INSERT INTO asignaturas_grupos (asignaturas_id,grupos_id,docentes_id)
VALUES(2,4,3);

INSERT INTO asignaturas_grupos (asignaturas_id,grupos_id,docentes_id)
VALUES(1,4,3);

INSERT INTO asignaturas_grupos (asignaturas_id,grupos_id,docentes_id)
VALUES(1,3,1);

INSERT INTO asignaturas_grupos (asignaturas_id,grupos_id,docentes_id)
VALUES(2,3,2);

INSERT INTO asignaturas_grupos (asignaturas_id,grupos_id,docentes_id)
VALUES(2,4,3);

INSERT INTO asignaturas_grupos (asignaturas_id,grupos_id,docentes_id)
VALUES(2,5,3);