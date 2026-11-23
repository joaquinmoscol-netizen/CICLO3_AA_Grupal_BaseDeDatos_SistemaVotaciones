SELECT c.nombres, c.apellidos, r.votos
FROM candidatos c
JOIN resultados r ON c.id_candidato = r.id_candidato
WHERE r.votos > ALL (
    SELECT r2.votos
    FROM resultados r2
    JOIN candidatos c2 ON r2.id_candidato = c2.id_candidato
    WHERE c2.id_circunscripcion IN (
        SELECT ci.id_circunscripcion
        FROM circunscripciones ci
        WHERE ci.id_canton IN (
            SELECT ca.id_canton
            FROM cantones ca
            WHERE ca.nombre = 'Loja'
        )
    )
)
ORDER BY r.votos DESC;