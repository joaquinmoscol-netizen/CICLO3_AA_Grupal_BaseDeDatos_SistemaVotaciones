SELECT nombre, siglas FROM organizaciones_politicas
WHERE id_organizacion IN (SELECT id_organizacion FROM candidatos);