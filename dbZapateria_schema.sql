/* Gestionar la base de datos */
-- Borrar base de datos
DROP DATABASE IF EXISTS dbZAPATERIA;

-- Crear base de datos
CREATE DATABASE dbZAPATERIA
DEFAULT CHARACTER SET utf8;

-- Poner en uso la base de datos
USE dbZAPATERIA;

-- Ver cual es la base de datos en uso
SELECT DATABASE();

/* Crear tablas */

-- Crear tabla PERSONA
CREATE TABLE PERSONA (
    CODPER char(4),
    NOMPER varchar(50),
    APEPER varchar(50),
    DIRPER varchar(50),
    FECNACPER date,
    SEXPER char(1),
    CELPER char(9),
    DNIPER char(8),
    FLGPER varchar(9),
    ESTPER char(1),
    CONSTRAINT PERSONA_PK PRIMARY KEY (CODPER)
);

-- Crear tabla MARCA
CREATE TABLE MARCA (
    CODMAR char(4),
    NOMMAR char(50),
    CONSTRAINT MARCA_PK PRIMARY KEY (CODMAR)
);

-- Crear tabla PRODUCTO
CREATE TABLE PRODUCTO (
    CODPRO char(4),
    COLPRO varchar(50),
    TALPRO char(2),
    PREPRO decimal(10,2),
    TIPPRO varchar(50),
    STOPRO char(4),
    CODMAR char(4),
    CODPER char(4),
    ESTPRO char(1),
    CONSTRAINT PRODUCTO_PK PRIMARY KEY (CODPRO)
);

-- Crear tabla VENTA
CREATE TABLE VENTA (
    CODVEN char(4),
    FECVEN date,
    CODPER char(4),
    CONSTRAINT VENTA_PK PRIMARY KEY (CODVEN)
);

-- Crear tabla VENTA_DETALLE
CREATE TABLE VENTA_DETALLE (
    CODVENDET char(4),
    CANVENDET char(4),
    CODPRO char(4),
    CODVEN char(4),
    CONSTRAINT VENTA_DETALLE_PK PRIMARY KEY (CODVENDET)
);

SHOW TABLES;

/* Crear las relaciones */

-- Relacionar la tabla PERSONA - PRODUCTO
ALTER TABLE PRODUCTO
ADD CONSTRAINT PERSONA_PRODUCTO_CODPER
FOREIGN KEY (CODPER) REFERENCES PERSONA (CODPER);

-- Relacionar la tabla PERSONA - VENTA
ALTER TABLE VENTA
ADD CONSTRAINT PERSONA_VENTA_CODPER
FOREIGN KEY (CODPER) REFERENCES PERSONA (CODPER);

-- Relacionar la tabla MARCA - PRODUCTO
ALTER TABLE PRODUCTO
ADD CONSTRAINT MARCA_PRODUCTO_CODMAR
FOREIGN KEY (CODMAR) REFERENCES MARCA (CODMAR);

-- Relacionar la tabla PRODUCTO - VENTA_DETALLE
ALTER TABLE VENTA_DETALLE 
ADD CONSTRAINT PRODUCTO_VENTA_DETALLE_CODPRO
FOREIGN KEY (CODPRO) REFERENCES PRODUCTO (CODPRO);

-- Relacionar la tabla VENTA - VENTA_DETALLE
ALTER TABLE VENTA_DETALLE 
ADD CONSTRAINT VENTA_VENTA_DETALLE_CODVEN 
FOREIGN KEY (CODVEN) REFERENCES VENTA (CODVEN);

-- Listar las relaciones entre tablas
SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE table_schema="dbZAPATERIA" 
    AND constraint_type="FOREIGN KEY";
    