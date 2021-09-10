-- SUBQUERIES --
SELECT title FROM sakila.film
WHERE title LIKE 'K%' OR title LIKE 'Q%'
AND title IN
(
	SELECT title FROM sakila.film WHERE language_id IN
	(
		SELECT language_id FROM sakila.language WHERE name = 'English'
	)
);


SELECT first_name, last_name FROM sakila.actor
WHERE actor_id in
(
	SELECT actor_id FROM film_actor WHERE film_id in
    (
			SELECT film_id FROM film WHERE title = 'Alone Trip'
    )
);


SELECT title FROM sakila.film
WHERE film_id IN 
(
	SELECT film_id FROM film_category WHERE category_id IN
    (
		SELECT category_id FROM category WHERE name = 'Familiy'
    )
);


-- EJERCICIO PRACTICO #68 --
-- Encuentre el nombre completo y la dirección de correo electrónico de todos los clientes que hayan alquilado una película de acción.
-- Todos los pagos que exceden el promedio para cada cliente junto con el recuento total de pagos que exceden el promedio.
SELECT * FROM rental;
SELECT * FROM customer;
SELECT * FROM inventory;
SELECT * FROM film;
SELECT * FROM film_category;
SELECT * FROM category;

SELECT CONCAT(first_name," ", last_name) AS "Nombre Completo", email FROM sakila.customer
WHERE customer_id IN 
(
	SELECT customer_id FROM sakila.rental WHERE rental_id IN 
    (
		SELECT rental_id FROM sakila.inventory WHERE film_id IN 
        (
			SELECT film_id FROM sakila.film_category WHERE category_id IN 
            (
				SELECT category_id FROM sakila.category WHERE name = 'Action'
            )
        )
    )
);

