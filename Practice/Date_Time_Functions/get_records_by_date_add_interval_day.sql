/* Add 30 days to the market start date */


SELECT 
    market_start_datetime, 
    DATE_ADD(market_start_datetime, INTERVAL 30 DAY) AS mktstrt_date_plus_30days 
FROM farmers_market.datetime_demo;


/*
* Explanation:
* DATE_ADD(market_start_datetime, INTERVAL 30 DAY): Adds 30 days to the start date.
* Useful for forecasting future events.
*/
