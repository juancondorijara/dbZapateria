-- Poner en uso la base de datos
USE dbZAPATERIA;

-- Ver cual es la base de datos en uso
SELECT DATABASE();


/* Ver estructura de la tabla PERSONA */
SHOW COLUMNS IN PERSONA;
/*Insertar reistros en la tabla PERSONA*/
INSERT INTO PERSONA
	(CODPER, NOMPER, APEPER, DIRPER, FECNACPER, SEXPER, CELPER, DNIPER, FLGPER, ESTPER)
VALUES
    ("PE01", "Diego", "Alarcon", "Imperial", '98-08-13', "H", "948375302", "49385647", "Cliente", "A"),
    ("PE02", "Josue", "Quispe", "San Vicente", '94-02-06', "H", "906836251", "49782536", "Empleado", "A"),
    ("PE03", "Carmen", "Romero", "San Luis", '96-04-09', "F", "948071632", "49028154", "Empleado", "A"),
    ("PE04", "Alvaro", "Díaz", "Chilca", '94-07-13', "H", "942323896", "48403921", "Cliente", "A"),
    ("PE05", "Kevin", "Carrillo", "Cerro Azul", '97-02-05', "H", "985654732", "49675831", "Empleado", "A"),
    ("PE06", "Daniela", "Huamán", "San Antonio", '98-08-01', "F", "934356479", "48459326", "Cliente", "A"),
    ("PE07", "Rodrigo", "Guerra", "Quilmaná", '94-06-12', "H", "923657810", "48043982", "Empleado", "A"),
    ("PE08", "Lucia", "Guzman", "Nuevo Imperial", '97-05-17', "F", "915467932", "49463270", "Empleado", "A"),
    ("PE09", "Brayan", "Cáceres", "Mala", '93-07-14', "H", "940903248", "48453879", "Cliente", "A"),
    ("PE10", "Sofia", "Zamudio", "Asia", '92-11-10', "F", "961873625", "48195382", "Proveedor", "A");
/* Listar registros de la tabla PERSONA */
SELECT * FROM PERSONA;


/* Ver estructura de la tabla MARCA */
SHOW COLUMNS IN MARCA;
/*Insertar reistros en la tabla MARCA*/
INSERT INTO MARCA
	(CODMAR, NOMMAR)
VALUES
	("M001", "Adidas"),
    ("M002", "Puma"),
    ("M003", "Nike"),
    ("M004", "Reebok"),
    ("M005", "Asics"),
    ("M006", "Converse"),
    ("M007", "Vans"),
    ("M008", "Diadora"),
    ("M009", "Skechers"),
    ("M010", "Merrell");
/* Listar registros de la tabla MARCA */
SELECT * FROM MARCA;


/* Ver estructura de la tabla PRODUCTO */
SHOW COLUMNS IN PRODUCTO;
/*Insertar reistros en la tabla PRODUCTO*/
INSERT INTO PRODUCTO
	(CODPRO, COLPRO, TALPRO, PREPRO, TIPPRO, STOPRO, CODMAR, CODPER, ESTPRO)
VALUES
	("P001", "Rojo", "39", "200", "Para Correr", "55", "M001", "PE01", "A"),
    ("P002", "Azul", "41", "245", "Para Caminar", "45", "M002", "PE02", "A"),
    ("P003", "Negro", "40", "250", "Para Correr", "25", "M003", "PE03", "A"),
    ("P004", "Gris", "39", "230", "Para Caminar", "30", "M004", "PE04", "A"),
    ("P005", "Marrón", "41", "270", "Para Caminar", "40", "M005", "PE05", "A"),
    ("P006", "Celeste", "38", "220", "Para Caminar", "45", "M006", "PE06", "A"),
    ("P007", "Amarillo", "40", "250", "Para Correr", "55", "M007", "PE07", "A"),
    ("P008", "Morado", "41", "190", "Para Caminar", "65", "M008", "PE08", "A"),
    ("P009", "Anaranjado", "39", "220", "Para Correr", "45", "M009", "PE09", "A"),
    ("P010", "Verde", "40", "230", "Para Caminar", "35", "M010", "PE10", "A");
/* Listar registros de la tabla PRODUCTO */
SELECT * FROM PRODUCTO;


/* Ver estructura de la tabla VENTA */
SHOW COLUMNS IN VENTA;
/*Insertar reistros en la tabla VENTA*/
INSERT INTO VENTA
	(CODVEN, FECVEN, CODPER)
VALUES
	("V001", '21-01-05', "PE01"),
    ("V002", '21-01-09', "PE02"),
    ("V003", '21-01-03', "PE03"),
    ("V004", '21-01-13', "PE04"),
    ("V005", '21-01-11', "PE05"),
    ("V006", '21-01-08', "PE06"),
    ("V007", '21-01-04', "PE07"),
    ("V008", '21-01-11', "PE08"),
    ("V009", '21-01-06', "PE09"),
    ("V010", '21-01-07', "PE10");
/* Listar registros de la tabla VENTA */
SELECT * FROM VENTA;


/* Ver estructura de la tabla VENTA_DETALLE */
SHOW COLUMNS IN VENTA_DETALLE;
/*Insertar reistros en la tabla VENTA_DETALLE*/
INSERT INTO VENTA_DETALLE
	(CODVENDET, CANVENDET, CODPRO, CODVEN)
VALUES
	("VD01", "1", "P001", "V001"),
    ("VD02", "3", "P002", "V002"),
    ("VD03", "2", "P003", "V003"),
    ("VD04", "4", "P004", "V004"),
    ("VD05", "3", "P005", "V005"),
    ("VD06", "1", "P006", "V006"),
    ("VD07", "2", "P007", "V007"),
    ("VD08", "4", "P008", "V008"),
    ("VD09", "2", "P009", "V009"),
    ("VD10", "3", "P010", "V010");
/* Listar registros de la tabla VENTA_DETALLE */
SELECT * FROM VENTA_DETALLE;
