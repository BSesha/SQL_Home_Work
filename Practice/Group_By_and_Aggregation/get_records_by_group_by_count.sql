/* Count the number of purchases each customer made per market date */

SELECT 
    market_date, 
    customer_id, 
    COUNT(*) AS num_purchases 
FROM farmers_market.customer_purchases 
GROUP BY market_date, customer_id 
ORDER BY market_date, customer_id 
LIMIT 10;


/*
* Explanation:
* GROUP BY market_date, customer_id: Groups purchases by date and customer.
* COUNT(*): Counts the number of purchases per customer per date.
* ORDER BY market_date, customer_id: Sorts results by date and customer ID.
*/
