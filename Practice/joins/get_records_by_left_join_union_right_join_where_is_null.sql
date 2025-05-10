/* Simulate a FULL OUTER JOIN in MySQL */

SELECT c.customer_id AS new_customer, cp.customer_id AS deleted_customer 
FROM farmers_market.customer AS c 
LEFT JOIN farmers_market.customer_purchases AS cp 
ON c.customer_id = cp.customer_id 
WHERE c.customer_id IS NULL 

UNION 

SELECT c.customer_id AS new_customer, cp.customer_id AS deleted_customer 
FROM farmers_market.customer AS c 
RIGHT JOIN farmers_market.customer_purchases AS cp 
ON c.customer_id = cp.customer_id 
WHERE cp.customer_id IS NULL;


/*
* Explanation:
* MySQL does not support FULL OUTER JOIN, so we combine LEFT JOIN and RIGHT JOIN using UNION.
* First Query: Retrieves new customers without purchases.
* Second Query: Retrieves deleted customers who made purchases before deletion.
*/
