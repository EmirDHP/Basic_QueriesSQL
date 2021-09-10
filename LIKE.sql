-- LIKE --
SELECT * FROM sakila.actor WHERE first_name LIKE 'A%';
SELECT * FROM sakila.actor WHERE first_name LIKE 'A%' AND last_name LIKE 'B%';
SELECT * FROM sakila.actor WHERE first_name LIKE '%A';
SELECT * FROM sakila.actor WHERE first_name LIKE '%A' AND last_name LIKE '%N';
SELECT * FROM sakila.actor WHERE first_name LIKE '%NE%' AND last_name LIKE '%RO%';
SELECT * FROM sakila.actor WHERE first_name LIKe 'A%E';
SELECT * FROM sakila.actor WHERE first_name LIKe 'C%N' AND last_name LIKE 'G%';

-- EJERCICIO PRACTICO #30 --
-- Consulta la tabla film de la base de datos sakila.
-- Filtra la información donde release_year sea igual a 2006  y title empiece con ALI.
SELECT * FROM sakila.film WHERE release_year = 2006 AND title LIKE 'ALI%';