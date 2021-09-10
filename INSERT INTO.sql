-- INSERT INTO --
SELECT * FROM sakila.city;
INSERT INTO sakila.city (city, country_id)
VALUES ('Prueba', '100');

SELECT * FROM sakila.actor;
INSERT INTO sakila.actor (first_name, last_name)
VALUES ('SARAHI', 'ALPIREZ');

SELECT * FROM sakila.category;
INSERT INTO sakila.category (name)
VALUES ('CIENCIA FICCION');

-- EJERCICIO PRACTICO 79 --
-- Usa la función INSER INTO y agrega un registro a la tabla actor.
SELECT * FROM sakila.actor;
INSERT INTO sakila.actor (first_name, last_name)
VALUES ('SARAHI', 'ALPIREZ');

-- EJERCICIO PRACTICO 80 --
-- Usa la función INSER INTO y agrega un registro a la tabla address.
SELECT * FROM sakila.address;
INSERT INTO sakila.address (address, district, city_id, postal_code, phone)
VALUES ('Rio las lajas 116', 'Reynosa', '300', '88776', '8991692609');

-- EJERCICIO PRACTICO 81 --
-- Usa la función INSER INTO y agrega un registro a la tabla category.
SELECT * FROM sakila.category;
INSERT INTO sakila.category (name)
VALUES ('Prueba categoria');

-- EJERCICIO PRACTICO 82 --
-- Usa la función INSER INTO y agrega un registro a la tabla customer.
SELECT * FROM sakila.customer;
INSERT INTO sakila.customer (store_id, first_name, last_name, email, address_id, active)
VALUES ('1', 'SARAHI DE JESUS', 'ALPIREZ COTERO', 'sarahi.alpirez@outlook.com', '606','1');

-- EJERCICIO PRACTICO 83 --
-- Usa la función INSER INTO y agrega un registro a la tabla film_text.
SELECT * FROM sakila.film_text;
INSERT INTO sakila.film_text (title, description)
VALUES ('Mob Psycho', 'A pyscho guy who has a lot power.');
