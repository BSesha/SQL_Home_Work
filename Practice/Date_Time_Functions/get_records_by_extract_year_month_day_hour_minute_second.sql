/* Extract different portions of the datetime value */

SELECT 
    market_start_datetime, 
    EXTRACT(YEAR FROM market_start_datetime) AS year_no, 
    EXTRACT(QUARTER FROM market_start_datetime) AS q_no, 
    EXTRACT(MONTH FROM market_start_datetime) AS month_no, 
    EXTRACT(WEEK FROM market_start_datetime) AS week_no, 
    EXTRACT(DAY FROM market_start_datetime) AS day_no, 
    EXTRACT(DAYOFWEEK FROM market_start_datetime) AS week_day, 
    EXTRACT(HOUR FROM market_start_datetime) AS hr, 
    EXTRACT(MINUTE FROM market_start_datetime) AS minute, 
    EXTRACT(SECOND FROM market_start_datetime) AS second 
FROM farmers_market.datetime_demo;


/*
* Explanation:
* EXTRACT() function retrieves specific portions of the datetime value.
* Useful for time-based analysis such as trends by month, week, or hour.
*/
