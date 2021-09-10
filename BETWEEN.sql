-- BETWEEN --
SELECT * FROM sakila.rental WHERE (customer_id BETWEEN 300 AND 350) AND staff_id = 1;
SELECT * FROM sakila.payment WHERE amount NOT BETWEEN 3 AND 5;

-- EJERCICIO PRACTICO #23 --
-- Consulta la tabla payment de la base de datos sakila.
-- Filtra la información donde amount esté entre 2.99 y 4.99,  staff_id sea igual a 2 y customer_id sea 1 y 2.
SELECT * FROM sakila.payment WHERE (amount BETWEEN 2.99 and 4.99) AND staff_id = 2 AND customer_id IN(1,2);

-- EJERCICIO PRACTICO #24 --
-- Consulta la tabla address de la base de datos sakila.
-- Filtra la información donde city_id esté entre 300 y 350. 
SELECT * FROM sakila.address WHERE city_id BETWEEN 300 AND 350; 

-- EJERCICIO PRACTICO #25 --
-- Consulta la tabla film de la base de datos sakila.
-- Filtra la información donde rental_rate esté entre 0.99 y 2.99, length sea menor igual de 50  y replacement_cost sea menor de 20.
SELECT * FROM sakila.film WHERE (rental_rate BETWEEN 0.99 AND 2.99) AND length <= 50 AND replacement_cost < 20;