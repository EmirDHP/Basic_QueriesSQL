-- EJERCICIOS COMPLEMENTARIOS --
-- EJERCICIOS COMPLEMENTARIO 95 --
-- ¿Qué actores tienen el primer nombre 'Scarlett'?
SELECT * FROM sakila.actor WHERE first_name = 'Scarlett';

-- EJERCICIOS COMPLEMENTARIO 96 --
-- ¿Qué actores tienen el apellido "Johansson"?
SELECT * FROM sakila.actor WHERE last_name = 'Johansson';

-- EJERCICIOS COMPLEMENTARIO 97 --
-- ¿Cuántos apellidos de actores distintos hay?
SELECT * FROM sakila.actor;
SELECT COUNT(DISTINCT last_name) AS 'Apellidos distintos' FROM sakila.actor;

-- EJERCICIOS COMPLEMENTARIO 98 --
-- ¿Qué apellidos no se repiten?
SELECT * FROM sakila.actor;
SELECT last_name FROM sakila.actor GROUP BY last_name HAVING COUNT(last_name)=1;
SELECT last_name FROM actor GROUP BY last_name HAVING COUNT(*) = 1;

-- EJERCICIOS COMPLEMENTARIO 99 --
-- ¿Qué actor ha aparecido en la mayoría de las películas?
SELECT * FROM sakila.film_actor;

select sakila.film_actor.actor_id, concat_ws(" ", actor.first_name, actor.last_name) 'Nombre actor', count(*) cuenta from sakila.film_actor
inner join sakila.actor on (sakila.film_actor.actor_id = sakila.actor.actor_id)
group by sakila.film_actor.actor_id order by cuenta desc limit 1;

select actor.actor_id, actor.first_name, actor.last_name,
count(actor_id) as film_count
from actor join film_actor using (actor_id)
group by actor_id
order by film_count desc;

-- EJERCICIOS COMPLEMENTARIO 100 --
-- ¿Se puede alquilar ‘Academy Dinosaur’ en la tienda 1?
select film.film_id, film.title, store.store_id, inventory.inventory_id
from inventory join store using (store_id) join film using (film_id)
where film.title = 'Academy Dinosaur' and store.store_id = 1;