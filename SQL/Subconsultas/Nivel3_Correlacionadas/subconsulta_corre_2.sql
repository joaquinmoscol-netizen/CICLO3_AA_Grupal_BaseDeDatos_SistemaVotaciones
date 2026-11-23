SELECT c.nombres, c.apellidos, ca.nombre AS canton, r.votos
FROM candidatos c
JOIN resultados r ON c.id_candidato = r.id_candidato
JOIN circunscripciones ci ON c.id_circunscripcion = ci.id_circunscripcion
JOIN cantones ca ON ci.id_canton = ca.id_canton
WHERE NOT EXISTS (
    SELECT r2.id_resultado
    FROM resultados r2
    JOIN candidatos c2 ON r2.id_candidato = c2.id_candidato
    JOIN circunscripciones ci2 ON c2.id_circunscripcion = ci2.id_circunscripcion
    WHERE ci2.id_canton = ci.id_canton
      AND r2.votos > r.votos
)
ORDER BY ca.nombre, c.apellidos;