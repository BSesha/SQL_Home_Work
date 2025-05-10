/* Calculate the total sales using a window function */

SELECT SUM(sale) OVER() AS total_sales FROM sales;

/*
* Explanation:
* SUM(sale) OVER(): Computes the total sales but repeats the total in every row.
* Useful when comparing individual sales against the total.
*/
