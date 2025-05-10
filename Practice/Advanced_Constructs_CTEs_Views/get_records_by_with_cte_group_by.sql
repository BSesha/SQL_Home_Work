/* Create a Common Table Expression (CTE) for sales at the date level */


WITH sales_at_date_level AS (
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
    ORDER BY cp.market_date, md.market_year, md.market_week, md.market_day
)
SELECT 
    s.market_year, 
    s.market_week, 
    SUM(s.sales) AS weekly_sales 
FROM sales_at_date_level AS s 
GROUP BY s.market_year, s.market_week;


/*
* Explanation:
* CTE (sales_at_date_level):
* Stores aggregated sales per market date.
* Main Query:
* Computes weekly sales totals.
*/
