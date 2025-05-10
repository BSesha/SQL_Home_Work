/* Count the number of unique customers who made purchases in Q2 of 2019 */

SELECT 
    COUNT(DISTINCT customer_id) AS unique_customers 
FROM farmers_market.customer_purchases 
WHERE market_date BETWEEN '2019-04-01' AND '2019-06-30';


/*
* Explanation:
* COUNT(DISTINCT customer_id): Counts unique customers who made purchases.
* Helps in understanding customer engagement during Q2 of 2019.
*/
