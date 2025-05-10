/* Find the difference between the first and last market dates in months and years */

SELECT 
    MIN(market_start_datetime) AS first_market, 
    MAX(market_start_datetime) AS last_market, 
    DATEDIFF(MAX(market_start_datetime), MIN(market_start_datetime)) / 30 AS month_diff, 
    DATEDIFF(MAX(market_start_datetime), MIN(market_start_datetime)) / 365 AS year_diff 
FROM farmers_market.datetime_demo;


/*
* Explanation:
* DATEDIFF() / 30: Converts the difference into months.
* DATEDIFF() / 365: Converts the difference into years.
*/
