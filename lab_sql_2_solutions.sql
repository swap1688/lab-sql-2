-- LAB 2
# Use sakila database.
USE sakila;

# 1. Select all the actors with the first name ‘Scarlett’.
SELECT first_name
FROM actor
WHERE first_name = "Scarlett";

# 2. Select all the actors with the last name ‘Johansson’.
SELECT last_name
FROM actor
WHERE last_name = "Johansson";

# 3. How many films (movies) are available for rent?
-- Not sure how to compare rental_date and return_date to check the availabe for rent from rental table

# 4. How many films have been rented?
select count(rental_date)
from rental;

# 5. What is the shortest and longest rental period?
SELECT min(rental_duration) as shortest, max(rental_duration) as longest
FROM film;

# 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT max(length) as max_duration , min(length) as min_duration
FROM film;

# 7. What's the average movie duration?
SELECT round(avg(length),2)
FROM film;

# 8. What's the average movie duration expressed in format (hours, minutes)?
select SEC_TO_TIME(avg(length)*60) AS length_hh_mm 
from film;

# 9. How many movies longer than 3 hours?
select count(length) as total_movies_longer_than_3_hrs
from film
where length > 180;

# 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select first_name,last_name,email, concat_ws(' ' ,first_name,last_name,'-',lower(email)) as new_format
from customer;

# 11. What's the length of the longest film title?
select title,LENGTH(title) 
from film 
order by Length(title) desc, title limit 1 ;

-- OR

select title, length(title)
from film
order by length(title) desc
limit 1;



