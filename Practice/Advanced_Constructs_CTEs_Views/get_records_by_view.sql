/* Create a view for sales at the date level */

CREATE VIEW farmers_market.vw_sales_at_date_level AS 
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
* View (vw_sales_at_date_level):
* Stores aggregated sales per market date for repeated use.
* Benefits of Views:
* Retrieves latest data dynamically.
* Useful for frequent queries.
*/

/* Retrieve data from the view for a specific date range */


SELECT * 
FROM farmers_market.vw_sales_at_date_level AS s 
WHERE s.market_date BETWEEN '2020-04-01' AND '2020-04-30' 
ORDER BY market_date;


/*
* Explanation:
* Filters sales data for April 2020 using the view.
*/

