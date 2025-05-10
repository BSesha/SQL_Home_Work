/* Get all customers who have deleted their account from the market */

SELECT cp.* 
FROM farmers_market.customer AS c 
RIGHT JOIN farmers_market.customer_purchases AS cp 
ON c.customer_id = cp.customer_id 
WHERE c.customer_id IS NULL;


/*
* Explanation:
* Tables Used: customer, customer_purchases.
* JOIN Type: RIGHT JOIN ensures all purchases are listed, even if the customer no longer exists.
* Filtering: WHERE c.customer_id IS NULL ensures only purchases from deleted customers are included.
*/
