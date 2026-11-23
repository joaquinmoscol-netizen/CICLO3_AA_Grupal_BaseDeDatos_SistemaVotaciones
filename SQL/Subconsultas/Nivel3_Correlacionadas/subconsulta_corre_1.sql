SELECT c.nombres, c.apellidos, d.nombre AS dignidad, r.votos
FROM resultados r
JOIN candidatos c ON r.id_candidato = c.id_candidato
JOIN dignidades d ON c.id_dignidad = d.id_dignidad
WHERE r.votos > (
    SELECT AVG(ra.votos)
    FROM candidatos ca
    JOIN resultados ra ON ca.id_candidato = ra.id_candidato
    WHERE ca.id_dignidad = c.id_dignidad
)
ORDER BY d.nombre, r.votos DESC;