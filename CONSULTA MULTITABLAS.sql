-- CONSULTA MULTITABLAS --
-- ¿Quien ha vendido mas del STAFF en Agosto 2005?
SELECT 
a.first_name, 
a.last_name,
SUM(b.amount) AS 'Total amount'
FROM sakila.staff a
INNER JOIN sakila.payment b ON (a.staff_id = b.staff_id) AND b.payment_date LIKE '2005-08%'
GROUP BY a.first_name, a.last_name;


-- Haga una lista de cada pelicula y el numero de actores quefiguran en esa pelicula. Utiliza tablas film_actor y film
SELECT b.title, COUNT(actor_id) AS 'Contador de actores' FROM sakila.film_actor a
INNER JOIN film b ON a.film_id = b.film_id
GROUP BY b.title;

-- ¿Cuantas copias de la pelicula Hunchback impossible existen en el sistema de inventario?
SELECT title, COUNT(title) AS 'Copias Disponibles' FROM sakila.film
INNER JOIN sakila.inventory ON film.film_id = inventory.film_id
WHERE title = 'Hunchback Impossible';

-- Anote el total pagado por cada cliente. Listar los clientes alfabeticamente por apellido
SELECT first_name, last_name, SUM(amount) AS 'Total pagado por cliente' FROM sakila.payment
INNER JOIN sakila.customer ON payment.customer_id = customer.customer_id
GROUP BY first_name, last_name
ORDER BY last_name;

-- EJERCICIO PRACTICO #76 --
-- Encuentra DVD vencidos.
-- Muchas tiendas de DVD producen una lista diaria de alquileres vencidos para que los clientes 
-- puedan ser contactados y se les pida que devuelvan sus DVD vencidos.
-- Para crear una lista de este tipo, busque películas en la tabla de alquiler con una fecha de 
-- retorno NULA y donde la fecha de alquiler sea más antigua que la duración del alquiler especificada en la tabla de películas.
-- Si es así, la película está atrasada y debemos producir el nombre de la película junto con el nombre del cliente y el número de teléfono.
SELECT * FROM sakila.inventory;
SELECT * FROM sakila.rental;
SELECT * FROM sakila.customer;
SELECT * FROM sakila.film;

SELECT CONCAT_WS(" ",c.first_name,c.last_name) AS 'Nombre Cliente', f.title AS 'Titulo',a.phone AS 'Telefono' FROM sakila.customer c
INNER JOIN sakila.rental r ON r.customer_id = c.customer_id
INNER JOIN sakila.address a ON c.address_id = a.address_id
INNER JOIN sakila.inventory i ON i.inventory_id = r.inventory_id
INNER JOIN sakila.film f ON f.film_id = i.film_id
WHERE r.return_date IS NULL OR DATEDIFF(r.rental_date,r.return_date) > f.rental_duration
ORDER BY c.first_name;


