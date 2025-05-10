/* Retrieve customers whose first name starts with "Jer" (e.g., Jerry, Jeremy, Jeremiah) */

SELECT * 
FROM farmers_market.customer 
WHERE LOWER(customer_first_name) LIKE 'jer%';

/*
* Explanation:
* LIKE 'jer%': Matches names starting with "Jer".
* %: Wildcard for any number of characters after "Jer".
* LOWER(customer_first_name): Ensures case-insensitive matching.
*/
