-- IN --
SELECT * FROM sakila.customer WHERE first_name IN ('MARY','PATRICIA');
SELECT * FROM sakila.film WHERE special_features IN ('Trailers', 'Trailers,Deleted Scenes') AND rating IN ('G', 'NC-17') AND length > 50;
SELECT * FROM sakila.category WHERE name NOT IN ('Action', 'Animation' , 'Children');

-- EJERCICIO PRACTICO #19 --
-- Consulta la tabla film_text de la base de datos sakila
-- Filtra la información donde title  sea ZORRO ARK, VIRGIN DAISY, UNITED PILOT
SELECT * FROM sakila.film_text WHERE title IN('ZORRO ARK','VIRGIN DAISY','UNITED PILOT');

-- EJERCICIO PRACTICO #20 --
-- Consulta la tabla city de la base de datos sakila.
-- Filtra la información donde city sea Chiayi, Dongying, Fukuyama y Kilis
SELECT * FROM sakila.city WHERE city IN('Chiayi','Dongying','Fukuyama','Kilis');