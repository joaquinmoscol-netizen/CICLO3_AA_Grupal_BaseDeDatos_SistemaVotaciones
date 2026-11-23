-- AA - BASE DE DATOS: SISTEMA DE VOTACIONES

CREATE DATABASE sistema_elecciones_aa;
USE sistema_elecciones_aa;

-- 1. PROVINCIAS
CREATE TABLE provincias (
    id_provincia INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- 2. CANTONES
CREATE TABLE cantones (
    id_canton INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    id_provincia INT NOT NULL,
    FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia)
);

-- 3. PARROQUIAS
CREATE TABLE parroquias (
    id_parroquia INT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    id_canton INT NOT NULL,
    FOREIGN KEY (id_canton) REFERENCES cantones(id_canton)
);

-- 4. ORGANIZACIONES POLITICAS
CREATE TABLE organizaciones_politicas (
    id_organizacion INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    siglas VARCHAR(10) NOT NULL
);

-- 5. DIGNIDADES 
CREATE TABLE dignidades (
    id_dignidad INT PRIMARY KEY,
    nombre VARCHAR(70) NOT NULL,
    nivel VARCHAR(30) NOT NULL
);

-- 6. CIRCUNSCRIPCIONES 
CREATE TABLE circunscripciones (
    id_circunscripcion INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    id_provincia INT NOT NULL,
    id_canton INT,
    id_parroquia INT,
    FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia),
    FOREIGN KEY (id_canton) REFERENCES cantones(id_canton),
    FOREIGN KEY (id_parroquia) REFERENCES parroquias(id_parroquia)
);

-- 7. CANDIDATOS
CREATE TABLE candidatos (
    id_candidato INT PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    id_organizacion INT NOT NULL,
    id_dignidad INT NOT NULL,
    id_circunscripcion INT NOT NULL,
    FOREIGN KEY (id_organizacion) REFERENCES organizaciones_politicas(id_organizacion),
    FOREIGN KEY (id_dignidad) REFERENCES dignidades(id_dignidad),
    FOREIGN KEY (id_circunscripcion) REFERENCES circunscripciones(id_circunscripcion)
);

-- 8. VOTANTES 
CREATE TABLE votantes (
    id_votante INT PRIMARY KEY,
    cedula VARCHAR(10) NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    id_circunscripcion INT NOT NULL,
    FOREIGN KEY (id_circunscripcion) REFERENCES circunscripciones(id_circunscripcion)
);

-- 9. RESULTADOS 
CREATE TABLE resultados (
    id_resultado INT PRIMARY KEY,
    id_candidato INT NOT NULL,
    votos INT NOT NULL,
    FOREIGN KEY (id_candidato) REFERENCES candidatos(id_candidato)
);
