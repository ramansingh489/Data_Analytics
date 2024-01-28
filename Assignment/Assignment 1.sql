-- Completed

/*
1. Identify the primary keys and foreign keys in maven movies db.
--> PRIMARY KEY :
		actor_id from actor table
		actor_award_id from actor_award table
		address_id from address table
		advisor_id from advisor table
		category_id from category table
		city_id from city table
		country_id from country table
		customer_id from customer table
		film_id from film table
		actor_id,film_id from film_actor table
		film_id, category_id from film_category table
		film_id from film_text table
		inventory_id from inventory
		language_id from language
		payment_id from payment
		rental_id from rental
		staff_id from staff
		store_id from store
		
	FOREIGN KEY:
		city_id from address
		country_id from city
		address_id,store_id from customer
		language_id, original_language_id from film
		actor_id, film_id from film_actor
		film_id, category_id from film_category
		store_id, film_id from inventory
		rental_id, customer_id, staff_id from payment
		staff_id, inventory_id, customer_id from rental
		store_id, address_id from staff
		manager_staff_id,address_id from store
*/

-- 2. List all the details of actors.
select * from mavenmovies.actor;

-- 3. List all the customers information from DB.
select * from mavenmovies.customer;

-- 4. List different countries.
select country from mavenmovies.country;
select count(*) from mavenmovies.country;

-- 5. Display all active customers.
select * from mavenmovies.customer where active = 1;

-- 6. List of all rental IDs for customer with ID1.
select * from mavenmovies.rental where customer_id = 1;

-- 7. Display all the films whose rental duration is greater than 5.
select * from mavenmovies.film where rental_duration > 5;

-- 8. List the total number of films whoes replacement cost is greater than $15 and less than $20.
select count(*) from mavenmovies.film where replacement_cost between 15 and 20;

-- 9. Display the count of unique first names of actors.
select count(distinct first_name) as Total_countOf_FirstName from mavenmovies.actor;

-- 10. Display the first 10 records from the customer table.
select * from mavenmovies.customer limit 10;

-- 11. Display the first 3 records from the customer table whose first name starts with 'b'.
select * from mavenmovies.customer where first_name like "b%" limit 3;

-- 12. Display the names of the first 5 movies which are rated as 'G'.
select * from mavenmovies.film where rating = "G" limit 5;

-- 13. Find all the customers whose first name starts with 'a'.
select first_name from mavenmovies.customer where first_name like 'a%';

-- 14. Find all the customers whose first name ends with 'a'.
select first_name from mavenmovies.customer where first_name like '%a';

-- 15. Display the list of first 4 cities which start and end with 'a'.
select city from mavenmovies.city where city like 'a%a' limit 4;

-- 16. Find all the customers whose first name have "NI" in any position.
select first_name from mavenmovies.customer where first_name like '%ni%';

-- 17. Find all customers whose first name have "r" in the second position.
select first_name from mavenmovies.customer where first_name like "_r%";

-- 18. Find all customers whose first name starts with "a" and are at least 5 characters in length.
select first_name from mavenmovies.customer where first_name like "a____";

-- 19. Find all customers whose first name starts with "a" and ends with "o".
select first_name from mavenmovies.customer where first_name like "a%o";

-- 20. Get the films with pg and pg-13 rating using in operator.
select * from mavenmovies.film where rating in ("pg", "pg-13");

-- 21. Get the films with length between 50 to 100 using between operator.
select film_id,title,length from mavenmovies.film where length between 50 and 100;

-- 22. Get the top 50 actors using limit operator.
select * from mavenmovies.actor limit 50;

-- 23. Get the distinct film ids from inventory table.
select distinct film_id from mavenmovies.inventory;

