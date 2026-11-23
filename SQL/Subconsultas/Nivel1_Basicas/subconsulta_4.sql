SELECT c.nombres, c.apellidos, r.votos
FROM resultados r
JOIN candidatos c ON r.id_candidato = c.id_candidato
WHERE r.votos > (
    SELECT AVG(r2.votos)
    FROM resultados r2
)
ORDER BY r.votos DESC;