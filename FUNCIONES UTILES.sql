-- CHAR_LENGTH --
SELECT * FROM sakila.category;
SELECT name, CHAR_LENGTH(name) AS LongitudCadena FROM sakila.category;
SELECT city, CHAR_LENGTH(city) AS LongitudCiudad FROM sakila.city;

-- CONCAT, CONCAT_WS --
SELECT * FROM sakila.customer;
SELECT *, CONCAT(first_name," ", last_name) AS "Nombre completo" FROM sakila.customer;

SELECT * FROM film;
-- SELECT *, CONCAT(COLUMNA1, COLUMNA2, COLUMNA2, COLUMNA3....COMUNA N...)
SELECT CONCAT_WS (" - ", title, description, release_year) FROM sakila.film;

-- ROUND --
SELECT * FROM sakila.payment;
SELECT *, ROUND(amount,0) FROM sakila.payment;

-- UPPERCASE, LOWERCASE --
SELECT * FROM sakila.actor;
SELECT *, LCASE(CONCAT(first_name, " ", last_name)) AS "Nombre Completo" FROM sakila.actor;
SELECT *, UCASE(CONCAT(first_name, " ", last_name)) AS "Nombre Completo" FROM sakila.actor;

-- EJERCICIO PRACTICO #57 --
-- Usa la función CHAR_LENGTH() en la tabla customer y calcula la longitud de la columna email.
SELECT email, CHAR_LENGTH(email) FROM sakila.customer;

-- EJERCICIO PRACTICO #58 --
-- Usa la función CONCAT() en la tabla customer y has un concatenado entre first_name, last_name y email.
SELECT CONCAT (first_name," - ", last_name," - ", email) FROM sakila.customer;

-- EJERCICIO PRACTICO #59 --
-- Usa la función CONCAT_WS() en la tabla film y has un concatenado de todas las columnas.
SELECT CONCAT_WS(' ', film_id, title) FROM sakila.film;

-- EJERCICIO PRACTICO #59 --
-- Consulta la tabla payment y has un group by por customer_id para el promedio de amount, después usa la función ROUND() para redondear a cero decimales el promedio.
SELECT customer_id, AVG(amount) AS Promedio, ROUND(amount,0) AS Redondeo FROM sakila.payment
GROUP BY customer_id, amount;

-- EJERCICIO PRACTICO #60 --
-- Usa la función UCASE() en la tabla city y convierte la columna city en mayúsculas.
SELECT UCASE(city) FROM sakila.city;