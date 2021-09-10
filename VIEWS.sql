-- VIEW --
CREATE VIEW ingresos_por_genero AS
SELECT name, SUM(amount)
FROM sakila.category
INNER JOIN film_category
ON category.category_id = film_category.category_id
INNER JOIN inventory
ON film_category.film_id = inventory.film_id
INNER JOIN rental
ON inventory.inventory_id = rental.inventory_id
INNER JOIN payment
ON rental.rental_id = payment.rental_id
GROUP BY name
ORDER BY SUM(amount) DESC LIMIT 5;

SELECT * FROM ingresos_por_genero;

DROP VIEW ingresos_por_genero;

-- EJERCICIO PRACTICO #70 --
-- La vista "lista de clientes" proporciona una lista de clientes, con el nombre y el apellido concatenados
-- juntos y direcciones de información combinadas en una sola vista.
-- La vista "lista de clientes" incorpora datos de las tablas de clientes, direcciones, ciudades y países.
SELECT * FROM sakila.customer;
SELECT * FROM sakila.address;
SELECT * FROM sakila.city;
SELECT * FROM sakila.country;

CREATE VIEW lista_clientes AS
SELECT CONCAT_WS(' ', first_name, last_name) AS "Nombre completo", co.country AS Pais, ct.city AS Ciudad, a.address AS Direccion
FROM sakila.customer c
INNER JOIN sakila.address a ON (c.address_id = a.address_id)
INNER JOIN sakila.city ct ON (a.city_id = ct.city_id)
INNER JOIN sakila.country co ON (ct.country_id = co.country_id);

SELECT * FROM lista_clientes;

DROP VIEW lista_clientes;