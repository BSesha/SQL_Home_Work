/* Calculate a 5-day moving average for stock prices */

SELECT date, sale, AVG(sale) OVER (ORDER BY date RANGE 4 PRECEDING) AS moving_avg FROM sales;

/*
* Explanation:
* RANGE 4 PRECEDING:
* Includes four previous days in the moving average calculation.
* Useful for stock price analysis.
*/
