-- AA - BASE DE DATOS: SISTEMA DE VOTACIONES

USE sistema_elecciones_aa;

-- 1. PROVINCIAS 
INSERT INTO provincias (id_provincia, nombre) VALUES
(1, 'Loja'),
(2, 'Manabí'),
(3, 'Chimborazo'),
(4, 'Tungurahua'),
(5, 'Esmeraldas');

-- 2. CANTONES 
INSERT INTO cantones (id_canton, nombre, id_provincia) VALUES
(1, 'Loja', 1),
(2, 'Catamayo', 1),
(3, 'Saraguro', 1),
(4, 'Portoviejo', 2),
(5, 'Riobamba', 3),
(6, 'Ambato', 4),
(7, 'Esmeraldas', 5);

-- 3. PARROQUIAS 
INSERT INTO parroquias (id_parroquia, nombre, id_canton) VALUES
(1, 'Malacatos', 1),
(2, 'El Tambo', 2),
(3, 'San Lucas', 1),
(4, 'Urdaneta', 3);

-- 4. ORGANIZACIONES POLITICAS 
INSERT INTO organizaciones_politicas (id_organizacion, nombre, siglas) VALUES
(1, 'Movimiento Renovación Ciudadana', 'MRC'),
(2, 'Alianza Progreso Regional', 'APR'),
(3, 'Movimiento Pueblos Unidos', 'MPU'),
(4, 'Partido Ecuador Participativo', 'PEP'),
(5, 'Frente Acción Comunitaria', 'FAC');

-- 5. DIGNIDADES 
INSERT INTO dignidades (id_dignidad, nombre, nivel) VALUES
(1, 'Alcalde', 'Cantonal'),
(2, 'Prefecto', 'Provincial'),
(3, 'Concejal', 'Cantonal'),
(4, 'Vocal parroquial', 'Parroquial');

-- 6. CIRCUNSCRIPCIONES 
-- NULL significa que ese nivel territorial no corresponde a esa circunscripcion.
INSERT INTO circunscripciones
(id_circunscripcion, nombre, tipo, id_provincia, id_canton, id_parroquia) VALUES
(1, 'Loja - cantonal', 'Cantonal', 1, 1, NULL),
(2, 'Catamayo - cantonal', 'Cantonal', 1, 2, NULL),
(3, 'Saraguro - cantonal', 'Cantonal', 1, 3, NULL),
(4, 'Portoviejo - cantonal', 'Cantonal', 2, 4, NULL),
(5, 'Riobamba - cantonal', 'Cantonal', 3, 5, NULL),
(6, 'Manabí - provincial', 'Provincial', 2, NULL, NULL),
(7, 'Ambato - cantonal', 'Cantonal', 4, 6, NULL),
(8, 'Esmeraldas - cantonal', 'Cantonal', 5, 7, NULL),
(9, 'Riobamba - sector 2', 'Cantonal', 3, 5, NULL),
(10, 'Loja - provincial', 'Provincial', 1, NULL, NULL),
(11, 'El Tambo - parroquial', 'Parroquial', 1, 2, 2);

-- 7. CANDIDATOS 
INSERT INTO candidatos
(id_candidato, nombres, apellidos, id_organizacion, id_dignidad, id_circunscripcion) VALUES
(1, 'Javier', 'Peñafiel', 1, 1, 1),
(2, 'Cristina', 'Narváez', 2, 1, 1),
(3, 'Óscar', 'Villacrés', 3, 1, 1),
(4, 'Valentina', 'Quizhpe', 1, 1, 2),
(5, 'Ricardo', 'Molina', 2, 1, 2),
(6, 'Belén', 'Montaño', 4, 1, 2),
(7, 'Andrés', 'Peralta', 1, 1, 3),
(8, 'Diana', 'Carrión', 3, 1, 3),
(9, 'Iván', 'Celi', 2, 1, 4),
(10, 'Paula', 'Pacheco', 3, 1, 4),
(11, 'Nicolás', 'Benítez', 1, 2, 6),
(12, 'Emilia', 'Sarango', 2, 2, 6),
(13, 'Tomás', 'Bermeo', 1, 3, 1),
(14, 'Daniela', 'Pazmiño', 4, 3, 1),
(15, 'Gabriel', 'Valdivieso', 4, 1, 3),
(16, 'Karla', 'Lema', 2, 1, 7),
(17, 'Renato', 'Paz', 3, 1, 8),
(18, 'Melissa', 'Guamán', 1, 1, 9),
(19, 'Esteban', 'Hidalgo', 4, 2, 10),
(20, 'Romina', 'Rivadeneira', 2, 4, 11);

-- 8. VOTANTES 
INSERT INTO votantes (id_votante, cedula, nombres, apellidos, id_circunscripcion) VALUES
(1, '1105937885', 'Noelia', 'Aguirre', 1),
(2, '1102345674', 'Fabián', 'Torres', 1),
(3, '1303456783', 'Amalia', 'Espinosa', 2),
(4, '1304567893', 'Cristóbal', 'Arias', 2),
(5, '0605678904', 'Mireya', 'Chamba', 3),
(6, '0606789015', 'Elías', 'Vintimilla', 4),
(7, '1807890123', 'Aitana', 'Moreira', 5),
(8, '1808901234', 'Benjamín', 'Cedeño', 6),
(9, '0809012348', 'Maribel', 'Dueñas', 7),
(10, '0800123458', 'Patricio', 'Loor', 8),
(11, '0607891235', 'Joaquín', 'Tene', 9),
(12, '0801234564', 'Inés', 'Campoverde', 10);

-- 9. RESULTADOS dignidades
INSERT INTO resultados (id_resultado, id_candidato, votos) VALUES
(1, 1, 3260),
(2, 2, 1940),
(3, 3, 1125),
(4, 4, 4675),
(5, 5, 4675),
(6, 6, 2360),
(7, 7, 3540),
(8, 8, 2860),
(9, 9, 5980),
(10, 10, 4890),
(11, 11, 9130),
(12, 12, 7680),
(13, 13, 940),
(14, 14, 710),
(15, 16, 8020),
(16, 17, 6740),
(17, 18, 5590),
(18, 19, 13540),
(19, 20, 1250);
