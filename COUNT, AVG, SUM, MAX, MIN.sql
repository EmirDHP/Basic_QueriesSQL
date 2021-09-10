-- SUM --
SELECT SUM(amount) FROM sakila.payment;
SELECT inventory_id + film_id + store_id FROM sakila.inventory;

-- COUNT --
SELECT COUNT(*) FROM sakila.actor;
SELECT COUNT(first_name) FROM sakila.actor;

-- AVG --
SELECT AVG(amount) FROM sakila.payment;

-- MAX, MIN --
SELECT MAX(length) FROM sakila.film;
SELECT MIN(length) FROM sakila.film;
SELECT MAX(replacement_cost) FROM sakila.film;
SELECT MIN(replacement_cost) FROM sakila.film;

-- EJERCICIO PRACTICO #44 --
-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un COUNT de  la columna rental_id.
SELECT COUNT(rental_id) FROM sakila.rental;

-- EJERCICIO PRACTICO #44 --
-- Consulta la tabla payment de la base de datos sakila.
-- Realiza un MAX de  la columna amount.
SELECT MAX(amount) FROM sakila.payment;