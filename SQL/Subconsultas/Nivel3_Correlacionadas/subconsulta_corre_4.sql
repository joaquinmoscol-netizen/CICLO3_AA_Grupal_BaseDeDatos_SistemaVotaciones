SELECT c.nombres, c.apellidos FROM candidatos c
WHERE NOT EXISTS (
    SELECT 1 FROM resultados r WHERE r.id_candidato = c.id_candidato
);