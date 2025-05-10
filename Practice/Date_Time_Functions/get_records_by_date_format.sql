/* Display the name of the day and month for each market date */

SELECT 
    market_start_datetime, 
    DATE_FORMAT(market_start_datetime, '%M') AS mktsrt_month_name, 
    DATE_FORMAT(market_start_datetime, '%W') AS mktsrt_day_name 
FROM farmers_market.datetime_demo;

/*
* Explanation:
* DATE_FORMAT(market_start_datetime, '%M'): Retrieves the month name (e.g., "January").
* DATE_FORMAT(market_start_datetime, '%W'): Retrieves the day name (e.g., "Monday").
*/
