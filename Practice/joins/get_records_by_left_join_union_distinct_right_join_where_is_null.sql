/* Get both new and deleted customers using UNION */

SELECT c.customer_id, "New Customer" AS customer_type 
FROM farmers_market.customer AS c 
LEFT JOIN farmers_market.customer_purchases AS cp 
ON c.customer_id = cp.customer_id 
WHERE cp.customer_id IS NULL 

UNION DISTINCT 

SELECT cp.customer_id, "Deleted Customer" AS customer_type 
FROM farmers_market.customer AS c 
RIGHT JOIN farmers_market.customer_purchases AS cp 
ON c.customer_id = cp.customer_id 
WHERE c.customer_id IS NULL;


/*
* Explanation:
* First Query: Retrieves new customers who haven’t made purchases.
* Second Query: Retrieves deleted customers who made purchases before deletion.
* UNION DISTINCT: Combines both queries while removing duplicates.
*/
