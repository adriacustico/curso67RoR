use sakila;
select * from customer;
select * from address;
-- 1. ¿Qué consulta ejecutarías para obtener todos los clientes dentro de city_id = 312? 
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

select address.city_id, city.city, customer.first_name ,customer.last_name ,customer.email, address.address from customer
inner join address on address.address_id = customer.address_id
inner join city on city.city_id=address.city_id
where address.city_id=312;

-- 2. ¿Qué consulta harías para obtener todas las películas de comedia? category = 'Comedy'
-- Su consulta debe devolver el título de la película, la descripción, 
-- el año de estreno, la calificación, las características especiales y el género (categoría).
select * from category;
select * from film_category;
select film.title, film.description, film.release_year, film.rating, film.special_features, category.name genre from film_category
join film on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id
where category.name = 'Comedy';


-- 3. ¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5? 
-- Su consulta debe devolver la identificación del actor, el nombre del actor, el título de la película, la descripción y el año de lanzamiento.
select film_actor.actor_id, concat(actor.first_name, ' ', actor.last_name) actor_name, film.title, film.description, film.release_year from film_actor
join film on film.film_id = film_actor.film_id
join actor on actor.actor_id = film_actor.actor_id
where actor.actor_id=5;

-- 4. ¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 
-- y dentro de estas ciudades (1, 42, 312 y 459)? Su consulta debe devolver el 
-- nombre, apellido, correo electrónico y dirección del cliente.
select address.city_id, customer.first_name, customer.last_name, customer.email, address.address from customer
join store on store.store_id=customer.store_id
join address on address.address_id=customer.address_id
where address.city_id in(1,42,312,459) and store.store_id=1;

-- 5. ¿Qué consulta realizarías para obtener todas las películas con una "calificación = G" 
-- y "característica especial = detrás de escena", unidas por actor_id = 15? Su consulta 
-- debe devolver el título de la película, la descripción, el año de lanzamiento, la calificación y la función especial. 
-- Sugerencia: puede usar la función LIKE para obtener la parte 'detrás de escena'.

select film.title, film.description, film.release_year, film.rating, film.special_features from film_actor
join film on film.film_id = film_actor.film_id
join actor on actor.actor_id = film_actor.actor_id
where actor.actor_id=15 and film.rating='G' and film.special_features like '%Behind the Scenes%';

-- 6. ¿Qué consulta harías para obtener todos los actores que se unieron en el film_id = 369? 
-- Su consulta debe devolver film_id, title, actor_id y actor_name.

select film.film_id, film.title, actor.actor_id, concat(actor.first_name, ' ', actor.last_name) from film_actor
join film on film.film_id = film_actor.film_id
join actor on actor.actor_id = film_actor.actor_id
where film.film_id=369;

-- 7. ¿Qué consulta harías para obtener todas las películas dramáticas con una tarifa de alquiler de 2.99? 
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, las características especiales y el género (categoría).

select film.title, film.description, film.release_year, film.rating, film.special_features, category.name genre from film
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id
where category.name='Drama' and film.rental_rate=2.99;

-- 8. ¿Qué consulta harías para obtener todas las películas de acción a las que se une SANDRA KILMER?
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, las características especiales, el género (categoría) y el nombre y apellido del actor.

select film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre,
concat(actor.first_name,' ' , actor.last_name) actor_name from film
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id
join film_actor on film_actor.film_id = film.film_id
join actor on actor.actor_id = film_actor.actor_id
where category.name='Action' and actor.first_name='SANDRA' and actor.last_name='KILMER';
