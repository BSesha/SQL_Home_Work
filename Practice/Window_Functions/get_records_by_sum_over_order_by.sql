/* Calculate cumulative sales over time */


SELECT employee, sale, date, SUM(sale) OVER (ORDER BY date) AS cumulative_sales FROM sales;


/*
* Explanation:
* ORDER BY date: Ensures sales are accumulated over time, creating a running total.
* Helps in analyzing sales trends over time.
*/
