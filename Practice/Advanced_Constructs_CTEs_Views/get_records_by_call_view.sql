/* Retrieve data from the view for a specific date range */


SELECT * 
FROM farmers_market.vw_sales_at_date_level AS s 
WHERE s.market_date BETWEEN '2020-04-01' AND '2020-04-30' 
ORDER BY market_date;


/*
* Explanation:
* Filters sales data for April 2020 using the view.
*/
