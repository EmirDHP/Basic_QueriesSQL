-- WHERE --
SELECT * FROM sakila.actor WHERE first_name = 'DAN';
SELECT * FROM sakila.city WHERE city = 'LONDON';
SELECT * FROM sakila.city WHERE country_id = 102;
SELECT * FROM sakila.customer WHERE store_id = 1;
SELECT * FROM sakila.inventory WHERE film_id > 50;
SELECT DISTINCT amount FROM sakila.payment WHERE amount < 3;
SELECT * FROM sakila.staff WHERE staff_id <> 2;
SELECT * FROM sakila.language WHERE name <> 'German';

-- EJERCICIO PRACTICO #9 --
-- Consulta description, release_year de la tabla film de la base de datos sakila.
-- Filtra la información donde title sea IMPACT ALADDIN.
SELECT description, release_year FROM sakila.film WHERE title = 'IMPACT ALADDIN';

-- EJERCICIO PRACTICO #10 --
-- Consulta la tabla payment de la base de datos sakila.
-- Filtra la información donde amount sea mayor a 0.99.
SELECT * FROM sakila.payment WHERE amount > 0.99;