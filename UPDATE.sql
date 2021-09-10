-- UPDATE --
SELECT * FROM sakila.city WHERE country_id = 87;

UPDATE sakila.city
SET city = 'NEW YORK'
WHERE country_id = 87;

SELECT * FROM sakila.actor WHERE last_name = 'GUINESS';
UPDATE sakila.actor
SET first_name = 'RAUL'
WHERE last_name = 'GUINESS';

SELECT * FROM sakila.staff;
UPDATE sakila.staff
SET first_name = 'Pablo'
WHERE staff_id = 2;

-- EJERCICIO PRACTICO 87 --
-- Usa la función UPDATE y agrega un registro a la tabla actor.
SELECT * FROM sakila.actor;
UPDATE sakila.actor
SET last_name = 'JUAREZ'
WHERE actor_id = 1;

-- EJERCICIO PRACTICO 87 --
-- Usa la función UPDATE y agrega un registro a la tabla address.
SELECT * FROM sakila.address;
UPDATE sakila.address
SET address = 'Rio Las Lajas #116'
WHERE address_id = 606;

-- EJERCICIO PRACTICO 88 --
-- Usa la función UPDATE y agrega un registro a la tabla category.
SELECT * FROM sakila.category;
UPDATE sakila.category
SET name = 'Prueba'
WHERE category_id = 19;

-- EJERCICIO PRACTICO 89 --
-- Usa la función UPDATE y agrega un registro a la tabla customer.
SELECT * FROM sakila.customer WHERE customer_id = 600;
UPDATE sakila.customer
SET email = 'sarahi.alpirez@gmail.com'
WHERE customer_id = 600;

-- EJERCICIO PRACTICO 90 --
-- Usa la función UPDATE y agrega un registro a la tabla film_text.
SELECT * FROM sakila.film_text WHERE film_id = 0;
UPDATE sakila.film_text
SET title = 'Mob Psycho 100'
WHERE film_id = 0;