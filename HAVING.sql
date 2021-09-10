-- HAVING --
SELECT last_name , COUNT(*) FROM sakila.actor
GROUP BY 1
HAVING COUNT(*) > 3;

SELECT c.customer_id, c.last_name, c.first_name, SUM(p.amount) FROM sakila.payment p
INNER JOIN sakila.customer c ON (p.customer_id = c.customer_id)
GROUP BY 1,2,3
HAVING SUM(p.amount) < 60
ORDER BY SUM(p.amount) DESC;

-- EJERCICIO PRACTICO #51 --
-- Consulta la tabla actor de la base de datos sakila.
-- Realiza un COUNT de  last_name.
-- Mostrar cuando el COUNT sea mayor de 2.
SELECT last_name, COUNT(*) FROM sakila.actor 
GROUP BY last_name
HAVING COUNT(*) > 2;