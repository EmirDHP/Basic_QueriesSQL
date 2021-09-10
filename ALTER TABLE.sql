-- ALTER TABLE --
SELECT * FROM sakila.actor;
ALTER TABLE sakila.actor
ADD COLUMN genero_actor char(1);

UPDATE sakila.actor
SET genero_actor = 'M'
WHERE actor_id = 1;

UPDATE sakila.actor
SET genero_actor = 'M'
WHERE actor_id = 2;

UPDATE sakila.actor
SET genero_actor = 'F'
WHERE actor_id = 3;

ALTER TABLE sakila.actor
DROP COLUMN genero_actor;

-- EJERCICIO PRACTICO 94 --
-- Usa la función ALTER TABLE  y agrega la columna categoria a la tabla film_text, llena la columna de los primeros 10 film_id.
SELECT * FROM sakila.film_text;
ALTER TABLE sakila.film_text
ADD COLUMN category char(30);

UPDATE sakila.film_text
SET category = 'Prueba Categoria'
WHERE film_id < 10;