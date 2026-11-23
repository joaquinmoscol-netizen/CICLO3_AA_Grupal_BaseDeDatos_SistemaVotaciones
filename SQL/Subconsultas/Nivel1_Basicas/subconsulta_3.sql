SELECT c.nombres, c.apellidos, ca.nombre AS canton
FROM candidatos c
JOIN circunscripciones ci ON c.id_circunscripcion = ci.id_circunscripcion
JOIN cantones ca ON ci.id_canton = ca.id_canton
WHERE ca.id_canton IN (
    SELECT ca2.id_canton
    FROM cantones ca2
    JOIN provincias p ON ca2.id_provincia = p.id_provincia
    WHERE p.nombre = 'Loja'
)
ORDER BY ca.nombre, c.apellidos;