SELECT o.nombre, o.siglas,
    (SELECT COUNT(*) FROM candidatos c WHERE c.id_organizacion = o.id_organizacion)
    AS cantidad_candidatos
FROM organizaciones_politicas o
WHERE (SELECT COUNT(*) FROM candidatos c WHERE c.id_organizacion = o.id_organizacion)
    > (SELECT COUNT(*) FROM candidatos) / (SELECT COUNT(*) FROM organizaciones_politicas);
