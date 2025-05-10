/* Calculate the total quantity purchased by each customer per market date */

SELECT 
    market_date, 
    customer_id, 
    SUM(quantity) AS total_qty_purchased 
FROM farmers_market.customer_purchases 
GROUP BY market_date, customer_id 
ORDER BY market_date, customer_id 
LIMIT 10;


/*
* Explanation:
* SUM(quantity): Computes the total quantity of items purchased.
* Helps in analyzing customer buying behavior per market date.
*/
