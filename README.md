# AA Grupal – Base de Datos: Sistema de Votaciones

**Universidad Nacional de Loja** · FEIRNNR · Carrera de Computación · Ciclo 3 A
Asignatura: Base de Datos

## Descripción

Base de datos académica (ficticia) para un proceso de elecciones seccionales en Ecuador: organizaciones políticas, candidatos, dignidades, circunscripciones, votantes y resultados. No reproduce el sistema oficial del CNE.

## Estructura del repositorio

```
├── Documento/
│   └── AA_Parejas_SistemaVotaciones.docx   # Informe con planteamiento, capturas y resultados
├── Modelo/
│   └── Sistema_Elecciones.drawio.svg        # Diagrama relacional
└── SQL/
    ├── 01_creacion_tablas.sql               # Crea la BD sistema_elecciones_aa y sus tablas
    ├── 02_insercion_datos.sql               # Datos de prueba
    ├── Subconsultas/
    │   ├── Nivel1_Basicas/                  # subconsulta_1 a 4
    │   ├── Nivel2_Operadores/               # IN, NOT EXISTS, ALL, ANY (subconsulta_ope_1 a 4)
    │   └── Nivel3_Correlacionadas/          # subconsulta_corre_1 a 4
    └── Vistas/
        └── creacion_vista.sql               # Vista vw_candidatos
```

## Actividad A: subconsultas

| Nivel | Archivo | Consulta |
| --- | --- | --- |
| 1 | `subconsulta_1.sql` | Candidatos del Movimiento Renovación Ciudadana |
| 1 | `subconsulta_2.sql` | Candidatos a la dignidad de alcalde |
| 1 | `subconsulta_3.sql` | Candidatos de cantones de la provincia de Loja |
| 1 | `subconsulta_4.sql` | Candidatos con votación superior al promedio general |
| 2 | `subconsulta_ope_1.sql` | Organizaciones con candidatos inscritos (`IN`) |
| 2 | `subconsulta_ope_2.sql` | Organizaciones sin candidatos (`NOT EXISTS`) |
| 2 | `subconsulta_ope_3.sql` | Votación superior a todos los candidatos de Loja (`ALL`) |
| 2 | `subconsulta_ope_4.sql` | Votación superior a algún candidato de Catamayo (`ANY`) |
| 3 | `subconsulta_corre_1.sql` | Votación superior al promedio de su dignidad |
| 3 | `subconsulta_corre_2.sql` | Candidato con mayor votación por cantón |
| 3 | `subconsulta_corre_3.sql` | Organizaciones con más candidatos que el promedio |
| 3 | `subconsulta_corre_4.sql` | Candidatos sin resultados electorales |

## Actividad B: vistas

`creacion_vista.sql` crea `vw_candidatos` con el id, nombres, apellidos, organización política, siglas, dignidad, cantón y provincia de cada candidato.

## Cómo ejecutar (MySQL)

1. `SQL/01_creacion_tablas.sql`
2. `SQL/02_insercion_datos.sql`
3. Cualquier archivo de `SQL/Subconsultas/` o `SQL/Vistas/`
