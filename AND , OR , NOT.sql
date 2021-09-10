-- AND  --
SELECT * FROM sakila.country WHERE country = 'Algeria' AND country_id = 2;

-- OR --
SELECT * FROM sakila.country WHERE country = 'Algeria' OR country_id = 12;
SELECT * FROM sakila.language WHERE language_id = 1 OR name = 'German';

-- NOT -- 
SELECT * FROM sakila.category WHERE NOT name = 'Action';
SELECT * FROM sakila.film WHERE NOT rating = 'PG';
SELECT DISTINCT (rating) from sakila.film WHERE NOT rating = 'PG';

-- EJERCICIO PRACTICO # 14 --
-- Consulta la tabla payment de la base de datos sakila
-- Filtra la información donde customer_id sea igual a 36, amount sea mayor a 0.99 y staff_id sea igual a 1.
SELECT * FROM sakila.payment WHERE customer_id = 36 AND amount > 0.99 AND staff_id = 1;

-- EJERCICIO PRACTICO # 15 --
-- Consulta la tabla rental de la base de datos sakila.
-- 	Filtra la información donde staff_id no sea 1, customer_id sea mayor a 250 y inventory_id sea menor de 100.
SELECT * FROM sakila.rental WHERE NOT staff_id = 1 AND customer_id > 250 AND inventory_id < 100;