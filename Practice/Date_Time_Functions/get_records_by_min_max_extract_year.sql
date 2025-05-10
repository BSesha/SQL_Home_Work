/* Extract the range of years available in the database */

SELECT 
    MIN(EXTRACT(YEAR FROM market_start_datetime)) AS min_year, 
    MAX(EXTRACT(YEAR FROM market_start_datetime)) AS max_year 
FROM farmers_market.datetime_demo;


/*
* Explanation:
* EXTRACT(YEAR FROM market_start_datetime): Retrieves the year from the datetime column.
* MIN() and MAX(): Find the earliest and latest years available in the dataset.
*/
