-- SELECTS --
SELECT * FROM sakila.actor;
SELECT actor_id, first_name, last_name, last_update FROM sakila.actor;
SELECT actor_id, first_name as Nombre, last_name as Apellido, last_name from sakila.actor;

-- DISTINCT -- 
SELECT DISTINCT (store_id) FROM sakila.customer;
SELECT DISTINCT (customer_id)FROM sakila.payment;

-- ORDER BY --
SELECT * FROM sakila.country ORDER BY country ASC;
SELECT * FROM sakila.customer ORDER BY first_name ASC;

-- EJERCICIO PRACTICO #4 --
-- Consulta store_id, first_name y last_name de la tabla customer de la base de datos sakila.
-- Cambia el nombre de las columnas store_id, first_name y last_name a Tienda, Nombre y Apellido respectivamente.
-- Ordena de manera descendente la columna Apellido
SELECT store_id AS Tienda, first_name AS Nombre, last_name AS Apellido FROM sakila.customer ORDER BY last_name DESC;

-- EJERCICIO PRACTICO #5 --
-- Consulta la tabla payment de la base de datos sakila.
-- ¿Cuál es la cantidad mas baja y mas alta de la columna amount?
SELECT DISTINCT amount FROM sakila.payment ORDER BY amount ASC;

