/* Compare total sales on each market date with the previous market date */

SELECT market_date, SUM(quantity * cost_to_customer_per_qty) AS market_date_total_sales, 
LAG(SUM(quantity * cost_to_customer_per_qty), 1) OVER (ORDER BY market_date) AS previous_market_date_total_sales 
FROM farmers_market.customer_purchases 
GROUP BY market_date;


/*
* Explanation:
* LAG(SUM(quantity * cost_to_customer_per_qty), 1):
* Retrieves total sales from the previous market date.
* Helps in analyzing sales fluctuations.
*/
