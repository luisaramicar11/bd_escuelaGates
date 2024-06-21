/*Creacion de tablas para la base de datos de Escuela*/

CREATE TABLE tipos_de_documento (
  id INT auto_increment,
  nombre_documento VARCHAR(45),
  abreviatura VARCHAR(10),
  PRIMARY KEY (id)
);

CREATE TABLE docentes (
  id INT auto_increment,
  nombre VARCHAR(45),
  apellido VARCHAR(45),
  fecha_nacimiento DATE,
  numero_documento VARCHAR(45),
  tipos_de_documento_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (tipos_de_documento_id) REFERENCES tipos_de_documento(id)
);

CREATE TABLE jornadas (
  id INT auto_increment,
  nombre_jornada ENUM("mañana","tarde"),
  PRIMARY KEY (id)
);

CREATE TABLE grados (
  id INT auto_increment,
  nombre_grado VARCHAR(45),
  PRIMARY KEY (id)
);

CREATE TABLE grupos (
  id INT auto_increment,
  nombre_grupo VARCHAR(45),
  grados_id INT,
  jornadas_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (jornadas_id) REFERENCES jornadas(id),
  FOREIGN KEY (grados_id) REFERENCES grados(id)
);

CREATE TABLE asignaturas (
  id INT auto_increment,
  nombre_asignatura VARCHAR(45),
  PRIMARY KEY (id)
);

CREATE TABLE asignaturas_grupos (
  id INT auto_increment,
  asignaturas_id INT,
  grupos_id INT,
  docentes_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (asignaturas_id) REFERENCES asignaturas(id),
  FOREIGN KEY (docentes_id) REFERENCES docentes(id),
  FOREIGN KEY (grupos_id) REFERENCES grupos(id)
);

CREATE TABLE estudiantes (
  id INT auto_increment,
  nombre VARCHAR(45),
  apellido VARCHAR(45),
  fecha_nacimiento DATE,
  numero_documento VARCHAR(45),
  tipos_de_documento_id INT,
  grupos_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (tipos_de_documento_id) REFERENCES tipos_de_documento(id),
  FOREIGN KEY (grupos_id) REFERENCES grupos(id)
);