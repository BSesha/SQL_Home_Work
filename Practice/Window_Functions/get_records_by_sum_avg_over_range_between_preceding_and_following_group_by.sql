/* Calculate moving average on a window frame of 1 preceding and 1 following */

SELECT MONTH(date), SUM(sale), AVG(SUM(sale)) OVER (ORDER BY MONTH(date) RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS sliding_avg FROM sales GROUP BY MONTH(date);

/*
* Explanation:
* RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING:
* Includes one previous and one next month in the moving average calculation.
* Helps in smoothing sales trends.
*/
