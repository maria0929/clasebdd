CREATE DATABASE IF NOT EXISTS empresa
;

USE empresa
;

CREATE TABLE IF NOT EXISTS personas (
    id_personas int NOT NULL auto_increment, 
    dni int NOT NULL, 
    apyn varchar(20), 
    correo varchar(20), 
    telefono int,  
    PRIMARY KEY (id_personas)
    )
;

CREATE TABLE IF NOT EXISTS clientes (
    id_clientes int NOT NULL auto_increment,  
    tarjeta int, 
    credito int, 
    id_personas int, 
    PRIMARY KEY (id_clientes), 
    FOREIGN KEY (id_personas) REFERENCES personas (id_personas)
    )
    ;

CREATE TABLE IF NOT EXISTS facturas (
    id_factura int NOT NULL auto_increment, 
    cod_factura varchar(10) NOT NULL, 
    total int, 
    id_clientes int, 
    PRIMARY KEY (id_factura), 
    FOREIGN KEY (id_clientes) REFERENCES clientes (id_clientes)
    )
;


CREATE TABLE IF NOT EXISTS id_empleados (
    id_empleado int NOT NULL auto_increment,  
    categoria varchar(20), 
    sueldo int, 
    id_personas int; 
    PRIMARY KEY (id_empleado), 
    FOREIGN KEY (id_personas) REFERENCES personas(id_personas)
    )
;

CREATE TABLE productos
    (id_prod int, precio int, stock int)
;

INSERT INTO personas (dni, apyn, telefono, correo)
    VALUES (1354646, 'ricardo ford', 1234875, 'richar@hotmail.com' ), 
           (521654, 'guillermo francella', 4852658, 'guille@gmail.com'), 
           (157899, 'pepe biondi', 8785464, 'pepe@hotmail.com'),
           (956418, 'viviana canosa', 5489218, 'vivi@gmail.com'),
           (564688, 'liliana calabro', 548924, 'lili@gmail.com'),
           (855866, 'chunia villafania', 855685, 'chuni@gmail.com')
