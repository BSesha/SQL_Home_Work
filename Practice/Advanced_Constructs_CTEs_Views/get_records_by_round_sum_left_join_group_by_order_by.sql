/* Add market day, week, and year information */

SELECT 
    cp.market_date, 
    md.market_year, 
    md.market_week, 
    md.market_day, 
    ROUND(SUM(cp.quantity * cp.cost_to_customer_per_qty), 2) AS sales 
FROM farmers_market.customer_purchases AS cp 
LEFT JOIN farmers_market.market_date_info AS md 
ON cp.market_date = md.market_date 
GROUP BY cp.market_date, md.market_year, md.market_week, md.market_day 
ORDER BY cp.market_date, md.market_year, md.market_week, md.market_day;


/*
* Explanation:
* LEFT JOIN market_date_info: Adds market year, week, and day details.
* Helps in weekly and seasonal sales analysis.
*/
