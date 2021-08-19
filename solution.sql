USE sakila;

-- EXERCISE 1

SELECT c.name AS category_name, COUNT(DISTINCT fc.film_id) AS total_films
FROM sakila.category c
JOIN sakila.film_category fc
USING(category_id)
GROUP BY category_name
ORDER BY total_films DESC;

-- EXERCISE 2

SELECT s.first_name AS employee_name, SUM(p.amount) AS total_amount
FROM sakila.payment p
JOIN sakila.staff s
USING(staff_id)
GROUP BY employee_name
ORDER BY total_amount DESC;

-- EXERCISE 3

SELECT a.first_name AS actor_name, COUNT(DISTINCT fa.film_id) AS film_appearances
FROM sakila.actor a
JOIN sakila.film_actor fa
USING(actor_id)
GROUP BY actor_id
ORDER BY film_appearances DESC;

-- EXERCISE 4

SELECT c.first_name AS customer_name, COUNT(DISTINCT r.rental_id) AS total_rentals
FROM sakila.customer c
JOIN sakila.rental r
USING(customer_id)
GROUP BY customer_name
ORDER BY total_rentals DESC;

-- EXERCISE 5

SELECT s.first_name AS employee_name, s.last_name AS employee_last_name, a.address
FROM sakila.staff s
JOIN sakila.address a
USING(address_id);

-- EXERCISE 6

SELECT f.title AS film_title, COUNT(DISTINCT fa.actor_id) AS number_of_actors
FROM sakila.film f
JOIN sakila.film_actor fa
USING(film_id)
GROUP BY film_title
ORDER BY number_of_actors DESC;

-- EXERCISE 7

SELECT customer_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name, SUM(p.amount) AS amount_paid
FROM sakila.customer c
JOIN sakila.payment p
USING(customer_id)
GROUP BY customer_id
ORDER BY amount_paid DESC;

-- EXERCISE 8

SELECT c.name AS category_name, COUNT(DISTINCT fc.film_id) AS total_films
FROM sakila.category c
JOIN sakila.film_category fc
USING(category_id)
GROUP BY category_name
ORDER BY total_films DESC;