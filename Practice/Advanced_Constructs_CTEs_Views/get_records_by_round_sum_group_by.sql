/* Aggregate total sales per market date and vendor */

SELECT 
    market_date, 
    ROUND(SUM(quantity * cost_to_customer_per_qty), 2) AS sales 
FROM farmers_market.customer_purchases 
GROUP BY market_date, vendor_id 
ORDER BY market_date, vendor_id;


/*
* Explanation:
* SUM(quantity * cost_to_customer_per_qty): Computes total sales per market date.
* ROUND(..., 2): Ensures values are rounded to two decimal places.
* Helps in answering questions like:
* Total sales last week
* Sales on Wednesdays vs. Saturdays
* Tracking weekly market sales
*/
