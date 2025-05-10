/* Return a list of customers with last names: Diaz, Edwards, Wilson */

SELECT customer_id, customer_first_name, customer_last_name 
FROM farmers_market.customer 
WHERE customer_last_name IN ('Diaz', 'Edwards', 'Wilson');

/*
* Explanation:
* IN ('Diaz', 'Edwards', 'Wilson'): Matches any of the specified last names.
* This is more efficient than using multiple OR conditions.
*/
