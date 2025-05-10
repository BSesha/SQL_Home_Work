/* Extract the date and time separately from a datetime field */

SELECT 
    market_start_datetime, 
    DATE(market_start_datetime) AS mktsrt_date, 
    TIME(market_start_datetime) AS mktsrt_time 
FROM farmers_market.datetime_demo;


/*
* Explanation:
* DATE(market_start_datetime): Extracts only the date portion.
* TIME(market_start_datetime): Extracts only the time portion.
*/
