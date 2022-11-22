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
DROP TABLE espacios;

CREATE TABLE IF NOT EXISTS prestamos(
codigo INTEGER PRIMARY KEY,
fecha_prestamo DATETIME NOT NULL DEFAULT(now()),
fecha_limite DATE NOT NULL,
fecha_devolucion DATETIME,
nº_renovaciones INT DEFAULT(0)
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


INSERT INTO `bibliotecas_ay_pamplona`.`prestamos` (`codigo`, `fecha_prestamo`, `fecha_limite`, `fecha_devolucion`, `nº_renovaciones`) VALUES ('3517', '2021-04-04 11:36:03', '2022-07-23', '2022-06-15 13:53:23', '5');
INSERT INTO `bibliotecas_ay_pamplona`.`prestamos` (`codigo`, `fecha_prestamo`, `fecha_limite`, `fecha_devolucion`, `nº_renovaciones`) VALUES ('2347', '2022-04-14 15:36:19', '2022-04-18', '2022-04-22 17:34:14', '3');
INSERT INTO `bibliotecas_ay_pamplona`.`prestamos` (`codigo`, `fecha_prestamo`, `fecha_limite`, `fecha_devolucion`, `nº_renovaciones`) VALUES ('8536', '2020-10-21 18:36:35', '2021-05-16', '2021-05-21 18:52:17', '1');
INSERT INTO `bibliotecas_ay_pamplona`.`prestamos` (`codigo`, `fecha_prestamo`, `fecha_limite`, `fecha_devolucion`, `nº_renovaciones`) VALUES ('4739', '2018-08-14 14:36:21', '2022-02-19', '2022-02-19 05:42:41', '0');
INSERT INTO `bibliotecas_ay_pamplona`.`prestamos` (`codigo`, `fecha_prestamo`, `fecha_limite`, `fecha_devolucion`, `nº_renovaciones`) VALUES ('0578', '2022-11-22 08:54:07', '2022-10-31', '2022-11-05 23:36:24', '14');
INSERT INTO `bibliotecas_ay_pamplona`.`prestamos` (`codigo`, `fecha_prestamo`, `fecha_limite`, `fecha_devolucion`, `nº_renovaciones`) VALUES ('5832', '2019-04-06 06:36:57', '2022-12-28', '2023-01-04 12:14:27', '7');
INSERT INTO `bibliotecas_ay_pamplona`.`prestamos` (`codigo`, `fecha_prestamo`, `fecha_limite`, `fecha_devolucion`, `nº_renovaciones`) VALUES ('5396', '2022-09-15 19:36:26', '2022-04-06', '2022-04-05 19:17:53', '9');



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
INSERT INTO `bibliotecas_ay_pamplona`.`autor` (`codigo`, `nombre`, `apellidos`, `fecha_nacimiento`, `fecha_muerte`, `pais_origen`) VALUES ('1574', 'William', 'Shakespear', '1564-04-26', '1616-04-23', 'Reino Unido');
INSERT INTO `bibliotecas_ay_pamplona`.`autor` (`codigo`, `nombre`, `apellidos`, `fecha_nacimiento`, `pais_origen`) VALUES ('5838', 'George', 'Raymond Richard Martin', '1948-10-20', 'Estados Unidos');
INSERT INTO `bibliotecas_ay_pamplona`.`autor` (`codigo`, `nombre`, `apellidos`, `fecha_nacimiento`, `fecha_muerte`, `pais_origen`) VALUES ('9876', 'Ray', 'Bradbury', '1920-09-22', '2012-06-05', 'Estados Unidos');
UPDATE `bibliotecas_ay_pamplona`.`autor` SET `apellidos` = 'Shakespearez' WHERE (`codigo` = '1574');
UPDATE `bibliotecas_ay_pamplona`.`autor` SET `apellidos` = 'Gordon Byronrez' WHERE (`codigo` = '1685');
UPDATE `bibliotecas_ay_pamplona`.`autor` SET `fecha_nacimiento` = '1788-01-14' WHERE (`codigo` = '1685');
UPDATE `bibliotecas_ay_pamplona`.`autor` SET `fecha_nacimiento` = '1564-04-13' WHERE (`codigo` = '1574');

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
/*Ejercicio 1: Muestra el código de todos los préstamos, la fecha de inicio y los días de
retraso de aquellos que hayan tenido más de tres días de retraso, pero
menos de 10. La fecha de inicio tendrá el formato DD/MM/AA. Ordénalos
de más a menos días de retraso. */

 select codigo, date_format(fecha_prestamo, "%d%m%y"), timestampdiff(DAY, fecha_limite, fecha_devolucion) as "retraso"
 from prestamos
 where timestampdiff(DAY, fecha_limite, fecha_devolucion) between 3 and 10
 order by timestampdiff(DAY, fecha_limite, fecha_devolucion) desc;
 
 /*Ejercicio 3: Muestra el año medio de nacimiento de los autores cuyo apellido acaba
en "rez" y han nacido en la primera quincena de un mes. */

select avg(year(fecha_nacimiento))
from autor
where (apellidos like "%rez") and (day(fecha_nacimiento)between 1 and 15);
 



/* Ejercicio 4: ¿Qué autores tienen más de 30 años y tienen un solo apellido? Ponlo en
una sola columna usando la primera letra del nombre y el apellido. Ejemplo
de formato: “Nombre: L. Dorado”.
Pista: los apellidos pueden estar separadas o por un espacio o por un guion.*/
SELECT CONCAT(LEFT(nombre,1),".", " ",apellidos) as "Nombre Completo"
from autor
where fecha_muerte - fecha_nacimiento > 30

/* Ejercicio 5: Lista de países en mayúsculas con el número de escritores de cada país
para países que tengan más de un escritor. Ten en cuenta solo los escritores
vivos. 
select mayus(

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

/* Ejercicio 4: Crea un procedimiento que reciba por parámetro un año y calcule el
número medio, máximo y mínimo de minutos que han durado las reservas
de espacios en ese año. Insertará esos datos en tres variables para después
mostrarlos por pantalla de la siguiente manera: “Las reservas de espacios
en el año W han tenido un tiempo mínimo de X minutos, un tiempo máximo
de Y minutos y un tiempo medio de Z minutos”. */ 
DELIMITER $$
DROP PROCEDURE IF EXISTS reservas_año;
CREATE PROCEDURE reservas_año (año YEAR)
BEGIN
	DECLARE media FLOAT;
    DECLARE maximo FLOAT;
    DECLARE minimo FLOAT;
    DECLARE texto VARCHAR(60);
    
    SET media = select AVG(MINUTE(fecha_fin - fecha_inicio)) from reservas 
    where year(fecha_inicio) == año; 
    
     SET maximo = select MAX(MINUTE(fecha_fin - fecha_inicio)) from reservas 
    where year(fecha_inicio) == año; 
    
	 SET minimo = select MIN(MINUTE(fecha_fin - fecha_inicio)) from reservas 
    where year(fecha_inicio) == año; 
    
    SET texto = CONCAT("Las reservas de espacios
		en el año ", año, " han tenido un tiempo mínimo de ",minimo " minutos, un tiempo máximo
		de ", maximo, " minutos y un tiempo medio de ", media, " minutos")
        
	select texto;
END
$$
DELIMITER;
    
-- Crea una función y pruébala...
CREATE FUNCTION ...
SELECT ...

/* Ejercicio 2: Escribe una función que reciba como parámetros una fecha de nacimiento
y un país. La función devolverá la diferencia en años entre la edad media
de ese país y la edad correspondiente a la fecha de nacimiento pasada
por parámetro */
DELIMITER $$
CREATE FUNCTION diferencia_media (fecha_nacimiento DATE, pais_origen VARCHAR(30), edad_media INT) RETURNS int 
BEGIN
	 DECLARE edad_actual int;
	 SET edad_actual = DATE(NOW()) - fecha_nacimiento;
     
     return edad_actual;
END
$$
DELIMITER ;

-- Crea un trigger y pruébalo...
CREATE TRIGGER ...
INSERT...

-- ETC.
