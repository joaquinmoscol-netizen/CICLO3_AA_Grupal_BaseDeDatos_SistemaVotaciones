SELECT c.nombres, c.apellidos
FROM candidatos c
WHERE c.id_organizacion IN (
    SELECT o.id_organizacion
    FROM organizaciones_politicas o
    WHERE o.nombre = 'Movimiento Renovación Ciudadana'
)
ORDER BY c.apellidos;