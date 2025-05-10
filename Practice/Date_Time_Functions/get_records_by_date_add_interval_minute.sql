/* Add 30 minutes to the market start time */

SELECT 
    market_start_datetime, 
    DATE_ADD(market_start_datetime, INTERVAL 30 MINUTE) AS mktstrt_date_plus_30min 
FROM farmers_market.datetime_demo;


/*
* Explanation:
* DATE_ADD(market_start_datetime, INTERVAL 30 MINUTE): Adds 30 minutes to the start time.
* Useful for time-based calculations such as event scheduling.
*/
