/* Calculate the total price paid by customer_id 3 per market date */

SELECT 
    market_date, 
    SUM(quantity * cost_to_customer_per_qty) AS total_spent 
FROM farmers_market.customer_purchases 
WHERE customer_id = 3 
GROUP BY market_date 
ORDER BY market_date;


/*
* Explanation:
* SUM(quantity * cost_to_customer_per_qty): Computes total spending per market date.
* WHERE customer_id = 3: Filters purchases made by customer ID 3.
*/
