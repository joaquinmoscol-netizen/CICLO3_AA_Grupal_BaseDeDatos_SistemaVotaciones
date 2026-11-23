SELECT c.nombres, c.apellidos, r.votos
FROM candidatos c
JOIN resultados r ON c.id_candidato = r.id_candidato
WHERE r.votos > ANY (
    SELECT r2.votos
    FROM resultados r2
    JOIN candidatos c2 ON r2.id_candidato = c2.id_candidato
    WHERE c2.id_circunscripcion IN (
        SELECT ci.id_circunscripcion
        FROM circunscripciones ci
        JOIN cantones ca ON ci.id_canton = ca.id_canton
        WHERE ca.nombre = 'Catamayo'
    )
)
ORDER BY r.votos DESC;
