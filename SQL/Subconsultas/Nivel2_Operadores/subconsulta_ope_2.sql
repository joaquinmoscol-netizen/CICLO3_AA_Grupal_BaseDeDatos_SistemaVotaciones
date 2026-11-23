SELECT o.nombre, o.siglas FROM organizaciones_politicas o
WHERE NOT EXISTS (
    SELECT 1 FROM candidatos c WHERE c.id_organizacion = o.id_organizacion
);