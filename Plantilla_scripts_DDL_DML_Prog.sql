-- Nombre alumnos/as: Anas Ejbari y Artius 
-- Tema específico del proyecto: Bibliotecas-Ay.-Pamplona
-- Nº de etapa: 2/Porgramación

/*
DISEÑO FÍSICO (RA2)
A continuación, implementa en lenguaje SQL todas las sentencias necesarias para generar la BD. Las sentencias SQL, además de las tablas, deben incluir la creación de la BD.
*/

CREATE DATABASE Bibliotecas_Ay_Pamplona;

use Bibliotecas_Ay_Pamplona;

CREATE TABLE IF NOT EXISTS espacios(
codigo INTEGER PRIMARY KEY,
ubicacion VARCHAR(30) NOT NULL,
aforo INTEGER NOT NULL,
pizarra BOOLEAN NOT NULL,
proyector BOOLEAN NOT NULL,
megafonia BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS autor(
codigo INT PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
apellidos VARCHAR(30),
fecha_nacimiento DATE,
fecha_muerte DATE,
pais_origen VARCHAR(30),
CONSTRAINT nombre_completo UNIQUE (nombre,apellidos)
);

CREATE TABLE IF NOT EXISTS reservas(
codigo INT PRIMARY KEY,
fecha_inicio DATETIME NOT NULL,
fecha_fin DATETIME NOT NULL
);





/*
LENGUAJE DE MANIPULACIÓN DE DATOS (RA3 y RA4)
Este fichero debe tener todas las órdenes necesarias para realizar las operaciones de manipulación exigidas por la etapa de proyecto.*/

/*INSERCIONES: Realiza todas las inserciones necesarias para que el resultado de las consultas arroje varios resultados, pero no todos los registros de una tabla.*/

INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('1234', 'Sala 1', '15', '1', '1', '1');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('3421', 'Sala 2', '12', '1', '1', '0');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('2452', 'Sala 3', '13', '0', '0', '1');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('6234', 'Sala 4', '11', '1', '1', '0');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('7869', 'Sala 5', '15', '1', '1', '1');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('4524', 'Sala 6', '11', '1', '1', '0');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('1278', 'Sala 7', '7', '1', '0', '0');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('6745', 'Sala 8', '12', '1', '1', '1');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('7483', 'Sala 9', '17', '1', '1', '1');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('9211', 'Sala 10', '13', '1', '1', '0');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('6547', 'Sala 11', '19', '1', '1', '1');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('6854', 'Sala 12', '16', '1', '1', '0');
INSERT INTO `bibliotecas_ay_pamplona`.`espacios` (`codigo`, `ubicacion`, `aforo`, `pizarra`, `proyector`, `megafonia`) VALUES ('1111', 'Sala 77', '7', '0', '0', '0');

INSERT INTO `bibliotecas_ay_pamplona`.`autor` (`codigo`, `nombre`, `apellidos`, `fecha_nacimiento`, `fecha_muerte`, `pais_origen`) VALUES ('1542', 'George', 'Orwell', '1903-07-25', '1950-01-21', 'India');
INSERT INTO `bibliotecas_ay_pamplona`.`autor` (`codigo`, `nombre`, `apellidos`, `fecha_nacimiento`, `fecha_muerte`, `pais_origen`) VALUES ('1567', 'Antonio', 'Machado', '1875-08-26', '1939-02-22', 'España');
INSERT INTO `bibliotecas_ay_pamplona`.`autor` (`codigo`, `nombre`, `apellidos`, `fecha_nacimiento`, `fecha_muerte`, `pais_origen`) VALUES ('6484', 'Miguel', 'De Cervantes', '1547-10-29', '1616-04-22', 'España');
INSERT INTO `bibliotecas_ay_pamplona`.`autor` (`codigo`, `nombre`, `apellidos`, `fecha_nacimiento`, `fecha_muerte`, `pais_origen`) VALUES ('1685', 'George', 'Gordon Byron', '1788-01-22', '1824-04-19', 'Reino Unido');
INSERT INTO `bibliotecas_ay_pamplona`.`autor` (`codigo`, `nombre`, `apellidos`, `fecha_nacimiento`, `fecha_muerte`, `pais_origen`) VALUES ('1574', 'William', 'Shakespeare', '1564-04-26', '1616-04-23', 'Reino Unido');
INSERT INTO `bibliotecas_ay_pamplona`.`autor` (`codigo`, `nombre`, `apellidos`, `fecha_nacimiento`, `pais_origen`) VALUES ('5838', 'George', 'Raymond Richard Martin', '1948-10-20', 'Estados Unidos');
INSERT INTO `bibliotecas_ay_pamplona`.`autor` (`codigo`, `nombre`, `apellidos`, `fecha_nacimiento`, `fecha_muerte`, `pais_origen`) VALUES ('9876', 'Ray', 'Bradbury', '1920-09-22', '2012-06-05', 'Estados Unidos');

INSERT INTO `bibliotecas_ay_pamplona`.`reservas` (`codigo`, `fecha_inicio`, `fecha_fin`) VALUES ('1932', '2022-11-21 17:23:05', '2022-11-21 18:30:23');
INSERT INTO `bibliotecas_ay_pamplona`.`reservas` (`codigo`, `fecha_inicio`, `fecha_fin`) VALUES ('1832', '2022-12-18 11:30:00', '2022-12-11 12:30:00');
INSERT INTO `bibliotecas_ay_pamplona`.`reservas` (`codigo`, `fecha_inicio`, `fecha_fin`) VALUES ('6854', '2023-01-12 13:32:12', '2023-01-12 15:00:00');
INSERT INTO `bibliotecas_ay_pamplona`.`reservas` (`codigo`, `fecha_inicio`, `fecha_fin`) VALUES ('6954', '2022-11-21 21:08:00', '2022-11-21 22:30:00');
INSERT INTO `bibliotecas_ay_pamplona`.`reservas` (`codigo`, `fecha_inicio`, `fecha_fin`) VALUES ('6845', '2022-11-01 17:00:00', '2022-11-06 19:00:00');
INSERT INTO `bibliotecas_ay_pamplona`.`reservas` (`codigo`, `fecha_inicio`, `fecha_fin`) VALUES ('9778', '2023-06-19 18:00:00', '2023-06-21 12:00:00');
INSERT INTO `bibliotecas_ay_pamplona`.`reservas` (`codigo`, `fecha_inicio`, `fecha_fin`) VALUES ('3358', '2022-12-13 21:00:00', '2022-12-16 19:00:00');
INSERT INTO `bibliotecas_ay_pamplona`.`reservas` (`codigo`, `fecha_inicio`, `fecha_fin`) VALUES ('9976', '2022-11-28 14:32:00', '2022-11-30 19:00:00');

/*CONSULTAS: Nota: Se incluirá como comentario el enunciado de cada consulta.*/

-- Diseña una consulta para...

/*Ejercicio 2: Necesitamos saber cuál es el nº de espacios, aforo máximo y aforo medio
de todos los espacios que tienen Pizarra y Proyector.*/
 
 select count(*) as "nº Espacios", max(aforo) as "Aforo máximo" ,avg(aforo) as "Aforo medio" 
 from espacios
 where pizarra = true and proyector = true;

/* Ejercicio 4: ¿Qué autores tienen más de 30 años y tienen un solo apellido? Ponlo en
una sola columna usando la primera letra del nombre y el apellido. Ejemplo
de formato: “Nombre: L. Dorado”.
Pista: los apellidos pueden estar separadas o por un espacio o por un guion.*/
SELECT CONCAT(LEFT(nombre,1),".", " ",apellidos) as "Nombre Completo"
from autor
where fecha_muerte - fecha_nacimiento > 30

/* Eejercicio 6: Muestra la duración media en horas de las reservas de espacios por cada
año de aquellos años que tengan una duración media superior a un día.
Para el año usarás el formato AA */

SELECT AVG(HOUR(fecha_fin - fecha_inicio)) as "Duracion_Media", year(fecha_inicio)
from reservas
group by year(fecha_inicio)
having Duracion_media > 24;

/*PROCEDIMIENTOS ALMACENADOS (RA5)
Órdenes necesarias para implementar y ejecutar los procedimientos almacenados descritos en los enunciados.
Notas: 
- Se incluirá como comentario el enunciado cada script.
- Todos los procedimientos, funciones, triggers, etc. deberán contar con sentencias (CALL, etc.) que permitan comprobar su funcionamiento.*/

-- Crea un procedimiento y pruébalo...
CREATE PROCEDURE...
CALL ...
-- Crea una función y pruébala...
CREATE FUNCTION ...
SELECT ...
-- Crea un trigger y pruébalo...
CREATE TRIGGER ...
INSERT...

-- ETC.
