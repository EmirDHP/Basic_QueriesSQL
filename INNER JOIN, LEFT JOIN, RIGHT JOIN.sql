-- INNER JOIN --
SELECT * FROM sakila.film;
SELECT * FROM sakila.language;
SELECT f.title, f.description, f.release_year, l.name FROM sakila.film f
INNER JOIN sakila.language l ON  (f.language_id = l.language_id);

SELECT * FROM sakila.address;
SELECT * FROM sakila.city;
SELECT a.address AS Direccion, c.city AS Ciudad FROM sakila.address a
INNER JOIN sakila.city c ON (a.city_id = c.city_id);

-- RIGHT JOIN --
SELECT * FROM sakila.customer;
SELECT * FROM sakila.actor;

SELECT c.customer_id, c.first_name, c.last_name, a.actor_id, a.first_name, a.last_name FROM sakila.customer c
RIGHT JOIN sakila.actor a ON (c.last_name = a.last_name);

-- LEFT JOIN --
SELECT * FROM sakila.customer;
SELECT * FROM sakila.actor;

SELECT c.customer_id, c.first_name, c.last_name, a.actor_id, a.first_name, a.last_name FROM sakila.customer c
LEFT JOIN sakila.actor a ON (c.last_name = a.last_name);

-- EJERCICIO PRACTICO #36 --
-- Consulta la tabla address de la base de datos sakila.
-- Realiza un INNER JOIN con las tablas city y country.
-- Mostrar las columnas address, city, country.
SELECT a.address, c.city, co.country FROM sakila.address a
INNER JOIN  sakila.city c ON (a.city_id = c.city_id) 
INNER JOIN sakila.country co ON (c.country_id = co.country_id);

-- EJERCICIO PRACTICO #37 --
-- Consulta la tabla customer de la base de datos sakila.
-- Realiza un LEFT JOIN con las tablas store y address.
-- Mostrar las columnas first_name, address, store_id.
SELECT c.first_name, a.address, s.store_id FROM sakila.customer c
LEFT JOIN sakila.store s ON (c.store_id = s.store_id)
LEFT JOIN sakila.address a ON (c.address_id = a.address_id);

-- EJERCICIO PRACTICO #38 --
-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un INNER JOIN con la tabla staff.
-- Mostrar las columnas rental_id, first_name.
SELECT r.rental_id, s.first_name FROM sakila.rental r
INNER JOIN sakila.staff s ON (r.staff_id = s.staff_id)
