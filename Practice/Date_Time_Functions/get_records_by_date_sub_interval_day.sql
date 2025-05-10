/* Subtract 30 days from the market start date */

SELECT 
    market_start_datetime, 
    DATE_SUB(market_start_datetime, INTERVAL 30 DAY) AS mktstrt_date_minus_30days 
FROM farmers_market.datetime_demo;


/*
* Explanation:
* DATE_SUB(market_start_datetime, INTERVAL 30 DAY): Subtracts 30 days from the start date.
* Helps in historical analysis.
*/
