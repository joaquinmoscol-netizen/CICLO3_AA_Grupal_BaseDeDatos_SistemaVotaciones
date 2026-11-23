
USE sistema_elecciones_aa;

-- ACTIVIDAD B: INFORMACION DE CANDIDATOS

CREATE VIEW vw_candidatos AS
SELECT
    c.id_candidato,
    c.nombres,
    c.apellidos,
    op.nombre AS organizacion_politica,
    op.siglas,
    d.nombre AS dignidad,
    ca.nombre AS canton,
    p.nombre AS provincia
FROM circunscripciones ci
INNER JOIN provincias p
    ON ci.id_provincia = p.id_provincia
LEFT JOIN cantones ca
    ON ci.id_canton = ca.id_canton
INNER JOIN candidatos c
    ON ci.id_circunscripcion = c.id_circunscripcion
INNER JOIN dignidades d
    ON c.id_dignidad = d.id_dignidad
INNER JOIN organizaciones_politicas op
    ON c.id_organizacion = op.id_organizacion;

SELECT * FROM vw_candidatos;
