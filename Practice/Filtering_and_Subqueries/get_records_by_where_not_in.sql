/* Return a list of all customers except those with last names: Diaz, Edwards, Wilson */

SELECT customer_id, customer_first_name, customer_last_name 
FROM farmers_market.customer 
WHERE customer_last_name NOT IN ('Diaz', 'Edwards', 'Wilson');

/*
* Explanation:
* NOT IN ('Diaz', 'Edwards', 'Wilson'): Excludes customers with these last names.
*/
