/* Get all customers who haven't purchased anything from the market yet */

SELECT c.* 
FROM farmers_market.customer AS c 
LEFT JOIN farmers_market.customer_purchases AS cp 
ON c.customer_id = cp.customer_id 
WHERE cp.customer_id IS NULL;


/*
* Explanation:
* Tables Used: customer, customer_purchases.
* JOIN Type: LEFT JOIN ensures all customers are listed, even if they haven’t made purchases.
* Filtering: WHERE cp.customer_id IS NULL ensures only customers without purchases are included.
*/
