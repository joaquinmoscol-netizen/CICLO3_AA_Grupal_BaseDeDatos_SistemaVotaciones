SELECT nombres, apellidos FROM candidatos
WHERE id_dignidad = (
    SELECT id_dignidad FROM dignidades WHERE nombre = 'Alcalde'
);