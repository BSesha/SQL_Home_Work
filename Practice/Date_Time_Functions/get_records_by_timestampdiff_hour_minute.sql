/* Calculate the difference between market start and end times in hours and minutes */

SELECT 
    market_start_datetime, 
    market_end_datetime, 
    TIMESTAMPDIFF(HOUR, market_start_datetime, market_end_datetime) AS market_duration_hours, 
    TIMESTAMPDIFF(MINUTE, market_start_datetime, market_end_datetime) AS market_duration_mins 
FROM farmers_market.datetime_demo;


/*
* Explanation:
* TIMESTAMPDIFF(HOUR, market_start_datetime, market_end_datetime): Computes the duration in hours.
* TIMESTAMPDIFF(MINUTE, market_start_datetime, market_end_datetime): Computes the duration in minutes.
*/
