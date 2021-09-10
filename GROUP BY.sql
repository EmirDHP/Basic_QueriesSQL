-- GROUP BY --
SELECT last_name FROM sakila.actor GROUP BY last_name;
SELECT last_name, COUNT(*) FROM sakila.actor GROUP BY last_name;

SELECT c.customer_id, c.first_name, c.last_name, SUM(p.amount)
FROM sakila.payment p
INNER JOIN sakila.customer c ON (c.customer_id = p.customer_id)
GROUP BY 1,2,3;

SELECT c.customer_id, c.first_name, c.last_name, SUM(p.amount)
FROM sakila.payment p
INNER JOIN sakila.customer c ON (c.customer_id = p.customer_id)
GROUP BY c.customer_id, c.first_name, c.last_name;

-- EJERCICIO PRACTICO #48 --
-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un MAX de  la columna rental_date.
SELECT MAX(rental_date) FROM sakila.rental;