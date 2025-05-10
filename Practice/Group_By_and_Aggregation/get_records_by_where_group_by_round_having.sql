/* Find the average amount spent on each market day, considering only days with more than 3 purchases and transactions above $5 */

SELECT 
    market_date, 
    ROUND(AVG(quantity * cost_to_customer_per_qty), 2) AS avg_spent 
FROM farmers_market.customer_purchases 
WHERE quantity * cost_to_customer_per_qty > 5 
GROUP BY market_date 
HAVING COUNT(*) > 3 
ORDER BY market_date;


/*
* Explanation:
* HAVING COUNT(*) > 3: Filters market days with more than 3 purchases.
* WHERE quantity * cost_to_customer_per_qty > 5: Ensures each transaction exceeds $5.
*/
