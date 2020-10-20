-- Hello world SQL Query, SELECT all records from actor table
SELECT *
FROM actor;

--Query for first_name and last_name in the actor table
SELECT first_name, last_name
FROM actor;

--Query for for a first_name that equals Nick
SELECT first_name,last_name
FROM actor
WHERE first_name = 'Nick';

--Query for a first_name that is equal to Nick using the Like and WHERE clauses
SELECT first_name,last_name
FROM actor
WHERE first_name LIKE 'Nick';

--Query for all first_name data that starts with a J using the LIKE and WHERE clauses
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

--Query for all first_name that starts with K and has 2 letters after the K using Like and WHERE clauses -- using underscore
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'K__';

--Query for all first_name data that starts with a K and ends with th
--using the LIKE and WHERE clauses -- using BOTH wildcard AND underscore
SELECT first_name, last_name,actor_id
FROM actor
WHERE first_name LIKE 'K%__th';


--Comparing operators are:
--Greater than (>)-- Less than (<)
--Greater or Equal (>=) -- Less or Equal (<=)
--Not Equal (<>)

--Explore Data with SELECT ALL Query (Specific to changeing into the new table)
SELECT *
FROM payment;

--Query for data that shows customers who paid
--an amount GREATER than $2
SELECT customer_id,amount
FROM payment
WHERE amount > 2.00;

--Query for data that shows customers who paid
--an amount LESS than $7.99
SELECT customer_id,amount
FROM payment
WHERE amount < 7.99;

--Query for data that shows customers who paid
--an amount LESS than or EQUAL to $7.99
SELECT customer_id,amount
FROM payment
WHERE amount <= 7.99;

--Query for data that shows customers who paid
--an amount GREATER than or EQUAL to $2.00
--in ascending order
SELECT customer_id,amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount ASC;

--Query for data that shows customers who paid
--an amount BETWEENv $2.00 and $7.99
--Using the NETWEEN with the AND clause
SELECT customer_id,amount
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99;

--Query for data that shows customers who paid
--an amount NOT EQUAL to $0.00
-- ordered to DESCENDING ORDER
SELECT customer_id,amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

--Query to display sum of amounts paid that are greater than $5.99
--SQL Aggregations -- SUM(),AVG(),COUNT(),MIN(), MAX()
--Query for data that shows customers who paid
--an amount NOT EQUAL to $0.00
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

SELECT SUM (amount)
FROM payment
WHERE amount > 5.99;
--QUERY to display average amounts paid that are greater than $5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;
--Query to display the count of DISTINCT amounts paid that are greater tgan $5.99
SELECT COUNT (DISTINCT amount)
FROM payment
WHERE amount > 5.99;

--Query to display the count of amounts paid that are greater than $5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;
--Query to display the count of DISTINCT amounts paid that are greater than $5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;
--Query to display MIN amount greater than $7.99
SELECT MIN(amount)as Min_Num_Payments
FROM payment
WHERE amount > 7.99;
--Query in disply max amount greater than $7.99
SELECT MAX(amount) AS Max_Num_Payments
FROM payment
WHERE amount > 7.99;
--Query to display all amounts (quick demo of groupby)
SELECT amount
FROM payment
WHERE amount = 11.99;


--Query to display diffeent amounts grouped together
SELECT amount,COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

--Query to display customer_ids with the summed amounts for each customer_id
SELECT customer_id, sum(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;

--Query to explore the data inside of the customer table
SELECT *
FROM customer;

--Query to display customer_ids that show up more than 5 times
--Grouping by the customer's email
SELECT COUNT(customer_id),email
FROM customer
WHERE email LIKE 'j__w%'
GROUP BY email
HAVING COUNT(customer_id) > 0;

--Homework

--Question 1
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

--Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--Question 3
SELECT inventory_id
FROM rental;

--Question 4
SELECT last_name
from actor
WHERE last_name = 'William';

--Question 5
SELECT staff_id
FROM rental;

--Question 6
SELECT district
FROM address;

--Question 7
SELECT film_id
FROM film_actor;

--Question 8
SELECT last_name,store_id
FROM customer
WHERE last_name LIKE 'es%';

--Question 9
SELECT COUNT(Customer_id)
FROM payment
WHERE amount > 4.99
GROUP BY amount
HAVING COUNT(Customer_id) > 250;

--Question 10
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating)DESC;