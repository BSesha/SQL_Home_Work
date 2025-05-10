/* Find the number of days between the first and last market dates */


SELECT 
    MIN(market_start_datetime) AS first_market, 
    MAX(market_start_datetime) AS last_market, 
    DATEDIFF(MAX(market_start_datetime), MIN(market_start_datetime)) AS days_first_to_last 
FROM farmers_market.datetime_demo;


/*
* Explanation:
* DATEDIFF(MAX(market_start_datetime), MIN(market_start_datetime)): Computes the difference in days between the first and last market dates.
*/
