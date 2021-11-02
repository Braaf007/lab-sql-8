---- lab 8

--- 1. Rank films by length (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, and the rank.

select title, length from film
order by length 

--- 2 Rank films by length within the rating category (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, rating and the rank.

select title, rating, length from film
where length > 0
order by length

--- 3 How many films are there for each of the categories in the category table. Use appropriate join to write this query
select category_id, count(category_id) as counts from film_category
group by category_id
right join category on category.category_id = film_category.category_id

--- 4 Which actor has appeared in the most films?
select actor_id, count(actor_id) as counts from film_actor
group by actor_id
right join actor on actor.actor_id = film_actor.actor_id

--- 5 Most active customer (the customer that has rented the most number of films)
select customer_id, counts(customer_id) as max from rental
group by customer_id



