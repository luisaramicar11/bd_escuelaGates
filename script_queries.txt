/*Ver listado de estudiantes de un grupo en especifico*/

SELECT e.nombre, e.apellido, g.nombre_grado, gr.nombre_grupo
FROM estudiantes e
JOIN grupos gr ON e.grupos_id = gr.id
JOIN grados g ON gr.grados_id = g.id
WHERE gr.id = 1;

/*Ver listado de estudiantes que ven una asignatura en especifico*/

SELECT e.nombre, e.apellido, a.nombre_asignatura, g.nombre_grado, gr.nombre_grupo
FROM estudiantes e
JOIN grupos gr ON e.grupos_id = gr.id
JOIN asignaturas_grupos ag ON ag.grupos_id = gr.id
JOIN grados g ON gr.grados_id = g.id
JOIN asignaturas a ON ag.asignaturas_id = a.id
WHERE ag.asignaturas_id = 1;

/*Ver listado de profesores que le dan clase a un estudiante en especifico*/

SELECT e.nombre AS nombre_estudiante, e.apellido AS apellido_estudiante, d.nombre AS 
nombre_docente, d.apellido AS apellido_docente, g.nombre_grado, gr.nombre_grupo, a.nombre_asignatura
FROM estudiantes e
JOIN grupos gr ON e.grupos_id = gr.id
JOIN grados g ON gr.grados_id = g.id
JOIN asignaturas_grupos ag ON ag.grupos_id = gr.id
JOIN asignaturas a ON ag.asignaturas_id = a.id
JOIN docentes d ON ag.docentes_id = d.id
WHERE e.id = 1;

/*Ver listado de grupos ordenados en orden descendente por la cantidad de estudiantes inscritos*/

SELECT COUNT(e.id) AS numero_de_estudiantes,gr.nombre_grupo, g.nombre_grado
FROM grupos gr
JOIN estudiantes e ON e.grupos_id = gr.id
JOIN grados g ON gr.grados_id = g.id
GROUP BY gr.nombre_grupo ORDER BY numero_de_estudiantes DESC;






