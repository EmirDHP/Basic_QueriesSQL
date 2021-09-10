-- CASE --
SELECT * FROM sakila.address;

SELECT address, address2,
CASE
WHEN address2 IS NULL THEN "Sin direccion 2"
ELSE "CON DIRECCION"
END AS Comentario
FROM sakila.address;

SELECT * FROM sakila.payment;

SELECT payment_id, amount,
CASE
WHEN amount < 1 THEN "Precio minimo"
WHEN amount BETWEEN 1 AND 3 THEN "Precio intermedio"
ELSE "Precio maximo"
END AS Comentario
FROM sakila.payment;

-- EJERCICIO PRACTICO #63 --
-- Usa la función CASE en la tabla film y calcula 3 casos, si rental_rate es menor que 1 ingresa 
-- "Pelicula Mala", si la calificacion esta dentro de 1 y 3 que muestre "Pelicula Buena", si es mayor que muestre "Pelicula Excelente"
SELECT title, rental_rate,
CASE
WHEN rental_rate < 1 THEN "Pelicula Mala"
WHEN rental_rate BETWEEN 1 AND 3 THEN "Pelicula Buena"
ELSE "Pelicula Excelente"
END AS Comentario
FROM sakila.film;