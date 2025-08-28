CREATE TABLE docente (
    id_docente INT PRIMARY KEY,
    nom_docente VARCHAR(10),
    ape_docente VARCHAR(15),
    correo VARCHAR(30),
    telefono INT,
    registro_doc TIMESTAMP
);

CREATE TABLE estudiantes (
    id_estudiante INT PRIMARY KEY,
    nom_estudiante VARCHAR(10),
    ape_estudiante VARCHAR(15),
    correo VARCHAR(30),
    telefono INT,
    registro_est TIMESTAMP
);

CREATE TABLE materia (
    id_materia INT PRIMARY KEY,
    nombre_materia VARCHAR(15)
);

CREATE TABLE tutorias (
    id_tutoria INT PRIMARY KEY,
    tema VARCHAR(15),
    fecha DATE,
    hora TIME,
    id_docente INT,
    id_estudiante INT,
    FOREIGN KEY (id_docente) REFERENCES docente(id_docente)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE notas (
    id_nota INT PRIMARY KEY,
    id_materia INT,
    nota FLOAT,
    id_estudiante INT,
    FOREIGN KEY (id_materia) REFERENCES materia(id_materia)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE docente_materia (
    id_docente INT,
    id_materia INT,
    PRIMARY KEY (id_docente, id_materia),
    FOREIGN KEY (id_docente) REFERENCES docente(id_docente)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_materia) REFERENCES materia(id_materia)
        ON UPDATE CASCADE ON DELETE CASCADE
);

ALTER TABLE docente MODIFY telefono BIGINT;
ALTER TABLE estudiantes MODIFY telefono BIGINT;
-- DOCENTES
INSERT INTO docente (id_docente, nom_docente, ape_docente, correo, telefono, registro_doc) VALUES
(1, 'Mario', 'Quintero', 'mario.quintero@uni.edu', '3102221111', NOW()),
(2, 'Lucia', 'Martinez', 'lucia.mtz@uni.edu', '3102221112', NOW()),
(3, 'Pedro', 'Serrano', 'pedro.serrano@uni.edu', '3102221113', NOW()),
(4, 'Elena', 'Paredes', 'elena.paredes@uni.edu', '3102221114', NOW()),
(5, 'Camila', 'Ochoa', 'camila.ochoa@uni.edu', '3102221115', NOW()),
(6, 'Javier', 'Muñoz', 'javier.munoz@uni.edu', '3102221116', NOW()),
(7, 'Rosa', 'Delgado', 'rosa.delgado@uni.edu', '3102221117', NOW()),
(8, 'Mateo', 'Vega', 'mateo.vega@uni.edu', '3102221118', NOW()),
(9, 'Daniela', 'Pinto', 'daniela.pinto@uni.edu', '3102221119', NOW()),
(10, 'Hugo', 'Camacho', 'hugo.camacho@uni.edu', '3102221120', NOW()),
(11, 'Sandra', 'Figueroa', 'sandra.figueroa@uni.edu', '3102221121', NOW()),
(12, 'Alvaro', 'Mendoza', 'alvaro.mendoza@uni.edu', '3102221122', NOW()),
(13, 'Paula', 'Herrera', 'paula.herrera@uni.edu', '3102221123', NOW()),
(14, 'Diego', 'Nieto', 'diego.nieto@uni.edu', '3102221124', NOW()),
(15, 'Veronica', 'Cruz', 'veronica.cruz@uni.edu', '3102221125', NOW()),
(16, 'Ricardo', 'Benitez', 'ricardo.benitez@uni.edu', '3102221126', NOW()),
(17, 'Isabel', 'Arias', 'isabel.arias@uni.edu', '3102221127', NOW()),
(18, 'Fernando', 'Guzman', 'fernando.guzman@uni.edu', '3102221128', NOW()),
(19, 'Tatiana', 'Reina', 'tatiana.reina@uni.edu', '3102221129', NOW()),
(20, 'Carlos', 'Paredes', 'carlos.paredes@uni.edu', '3102221130', NOW()),
(21, 'Diana', 'Rojas', 'diana.rojas@uni.edu', '3102221131', NOW()),
(22, 'Samuel', 'Torres', 'samuel.torres@uni.edu', '3102221132', NOW()),
(23, 'Julieta', 'Santos', 'julieta.santos@uni.edu', '3102221133', NOW()),
(24, 'Oscar', 'Morales', 'oscar.morales@uni.edu', '3102221134', NOW()),
(25, 'Natalia', 'Acosta', 'natalia.acosta@uni.edu', '3102221135', NOW()),
(26, 'Esteban', 'Lopez', 'esteban.lopez@uni.edu', '3102221136', NOW()),
(27, 'Marcela', 'Vargas', 'marcela.vargas@uni.edu', '3102221137', NOW()),
(28, 'Felipe', 'Rincon', 'felipe.rincon@uni.edu', '3102221138', NOW()),
(29, 'Laura', 'Gomez', 'laura.gomez@uni.edu', '3102221139', NOW()),
(30, 'Cristian', 'Mejia', 'cristian.mejia@uni.edu', '3102221140', NOW());

-- ESTUDIANTES
INSERT INTO estudiantes (id_estudiante, nom_estudiante, ape_estudiante, correo, telefono, registro_est) VALUES
(1, 'Andrea', 'Salazar', 'andrea.salazar@uni.edu', '3203331111', NOW()),
(2, 'Julian', 'Ortiz', 'julian.ortiz@uni.edu', '3203331112', NOW()),
(3, 'Tatiana', 'Perez', 'tatiana.perez@uni.edu', '3203331113', NOW()),
(4, 'Camilo', 'Lozano', 'camilo.lozano@uni.edu', '3203331114', NOW()),
(5, 'Marta', 'Jimenez', 'marta.jimenez@uni.edu', '3203331115', NOW()),
(6, 'Felipe', 'Vargas', 'felipe.vargas@uni.edu', '3203331116', NOW()),
(7, 'Angela', 'Moreno', 'angela.moreno@uni.edu', '3203331117', NOW()),
(8, 'Esteban', 'Cortes', 'esteban.cortes@uni.edu', '3203331118', NOW()),
(9, 'Valeria', 'Rincon', 'valeria.rincon@uni.edu', '3203331119', NOW()),
(10, 'Daniel', 'Castro', 'daniel.castro@uni.edu', '3203331120', NOW()),
(11, 'Sofia', 'Gomez', 'sofia.gomez@uni.edu', '3203331121', NOW()),
(12, 'Andres', 'Pardo', 'andres.pardo@uni.edu', '3203331122', NOW()),
(13, 'Carolina', 'Reyes', 'carolina.reyes@uni.edu', '3203331123', NOW()),
(14, 'Juan', 'Ospina', 'juan.ospina@uni.edu', '3203331124', NOW()),
(15, 'Lucia', 'Navarro', 'lucia.navarro@uni.edu', '3203331125', NOW()),
(16, 'Santiago', 'Diaz', 'santiago.diaz@uni.edu', '3203331126', NOW()),
(17, 'Isabella', 'Cano', 'isabella.cano@uni.edu', '3203331127', NOW()),
(18, 'Cristian', 'Bermudez', 'cristian.bermudez@uni.edu', '3203331128', NOW()),
(19, 'Laura', 'Guerrero', 'laura.guerrero@uni.edu', '3203331129', NOW()),
(20, 'Manuel', 'Martinez', 'manuel.mtz@uni.edu', '3203331130', NOW()),
(21, 'Patricia', 'Mora', 'patricia.mora@uni.edu', '3203331131', NOW()),
(22, 'Oscar', 'Peña', 'oscar.pena@uni.edu', '3203331132', NOW()),
(23, 'Catalina', 'Cruz', 'catalina.cruz@uni.edu', '3203331133', NOW()),
(24, 'David', 'Acosta', 'david.acosta@uni.edu', '3203331134', NOW()),
(25, 'Juliana', 'Rivera', 'juliana.rivera@uni.edu', '3203331135', NOW()),
(26, 'Mateo', 'Santos', 'mateo.santos@uni.edu', '3203331136', NOW()),
(27, 'Camila', 'Gutierrez', 'camila.gutierrez@uni.edu', '3203331137', NOW()),
(28, 'Paola', 'Ortega', 'paola.ortega@uni.edu', '3203331138', NOW()),
(29, 'Sebastian', 'Hernandez', 'sebastian.hernandez@uni.edu', '3203331139', NOW()),
(30, 'Maria', 'Diaz', 'maria.diaz@uni.edu', '3203331140', NOW());

-- MATERIAS (sin cambios grandes, solo ejemplo)
INSERT INTO materia (id_materia, nombre_materia) VALUES
(1, 'Geometria'),
(2, 'Fisica2'),
(3, 'QuimicaOrg'),
(4, 'Botanica'),
(5, 'Java'),
(6, 'SQL'),
(7, 'RedesAvanz'),
(8, 'Estadistica2'),
(9, 'IA'),
(10, 'Filosofia');

-- TUTORÍAS (temas y horarios distintos)
INSERT INTO tutorias (id_tutoria, tema, fecha, hora, id_docente, id_estudiante) VALUES
(1, 'Vectores', '2025-08-02', '09:00:00', 1, 2),
(2, 'Termodinamica', '2025-08-02', '11:15:00', 2, 3),
(3, 'Quimica Org', '2025-08-03', '14:30:00', 3, 4),
(4, 'Botanica Gen', '2025-08-03', '08:45:00', 4, 5),
(5, 'Java OOP', '2025-08-04', '16:10:00', 5, 6),
(6, 'SQL Indices', '2025-08-04', '10:40:00', 6, 7),
(7, 'Subnetting', '2025-08-05', '13:20:00', 7, 8),
(8, 'Prob Cond', '2025-08-05', '15:00:00', 8, 9),
(9, 'IA Intro', '2025-08-06', '09:10:00', 9, 10),
(10, 'Filosofia Et', '2025-08-06', '12:30:00', 10, 11),
(11, 'Derivadas', '2025-08-07', '14:00:00', 11, 12),
(12, 'Electrica', '2025-08-07', '11:00:00', 12, 13),
(13, 'Reacciones', '2025-08-08', '08:20:00', 13, 14),
(14, 'Bot Celulas', '2025-08-08', '09:50:00', 14, 15),
(15, 'Python Func', '2025-08-09', '16:00:00', 15, 16),
(16, 'SQL Views', '2025-08-09', '17:30:00', 16, 17),
(17, 'Routers ACL', '2025-08-10', '10:15:00', 17, 18),
(18, 'Reg Lineal', '2025-08-10', '12:00:00', 18, 19),
(19, 'Big O', '2025-08-11', '13:40:00', 19, 20),
(20, 'Filos Vida', '2025-08-11', '15:20:00', 20, 21),
(21, 'Limites', '2025-08-12', '08:30:00', 21, 22),
(22, 'Electrostat', '2025-08-12', '10:30:00', 22, 23),
(23, 'Quim Analit', '2025-08-13', '11:40:00', 23, 24),
(24, 'Bot Evoluc', '2025-08-13', '14:50:00', 24, 25),
(25, 'POO Avanz', '2025-08-14', '09:15:00', 25, 26),
(26, 'ER Normaliz', '2025-08-14', '13:30:00', 26, 27),
(27, 'Switch VLAN', '2025-08-15', '16:30:00', 27, 28),
(28, 'RegLogistic', '2025-08-15', '11:00:00', 28, 29),
(29, 'Algoritmos', '2025-08-16', '12:10:00', 29, 30),
(30, 'Etica Soc', '2025-08-16', '14:00:00', 30, 1);

-- NOTAS (aleatorias)
INSERT INTO notas (id_nota, id_materia, nota, id_estudiante) VALUES
(1, 1, 3.6, 1),
(2, 2, 4.1, 2),
(3, 3, 3.3, 3),
(4, 4, 4.8, 4),
(5, 5, 3.9, 5),
(6, 6, 4.2, 6),
(7, 7, 3.5, 7),
(8, 8, 4.7, 8),
(9, 9, 3.2, 9),
(10, 10, 4.6, 10),
(11, 1, 3.4, 11),
(12, 2, 4.0, 12),
(13, 3, 4.5, 13),
(14, 4, 3.7, 14),
(15, 5, 4.9, 15),
(16, 6, 3.1, 16),
(17, 7, 4.3, 17),
(18, 8, 3.8, 18),
(19, 9, 4.4, 19),
(20, 10, 3.0, 20),
(21, 1, 4.1, 21),
(22, 2, 3.6, 22),
(23, 3, 4.7, 23),
(24, 4, 3.2, 24),
(25, 5, 4.8, 25),
(26, 6, 3.9, 26),
(27, 7, 4.2, 27),
(28, 8, 3.3, 28),
(29, 9, 4.5, 29),
(30, 10, 3.7, 30);

select * from docente;
select * from notas;
select * from tutorias;
select * from materia;

SELECT * from 2_clase.docente;
SELECT  nom_docente, correo FROM 2_clase.docente;
SELECT nom_docente, correo, telefono FROM 2_clase.docente WHERE nom_docente = "Felipe";
SELECT nom_docente, registro_doc FROM 2_clase.docente WHERE registro_doc = "2025-08-26 20:38:48";
SELECT * from 2_clase.estudiantes;
SELECT nom_estudiante, telefono FROM 2_clase.estudiantes ORDER BY telefono DESC;
SELECT nom_estudiante FROM 2_clase.estudiantes LIMIT 5;
SELECT nom_estudiante FROM 2_clase.estudiantes WHERE nom_estudiante LIKE '%A';
SELECT nom_estudiante,ape_estudiante FROM 2_clase.estudiantes WHERE ape_estudiante LIKE '%Ramirez%';
SELECT * from 2_clase.tutorias;
SELECT COUNT(*) FROM 2_clase.tutorias;
SELECT COUNT(*) FROM 2_clase.docente;
SELECT * from 2_clase.docente_materia;
/*SELECT nombre_materia, COUNT(*) AS total_docente FROM nom_docente GROUP BY 2_clase.materia;*/