/* Calculate total sales per employee */

SELECT employee, date, SUM(sale) OVER(PARTITION BY employee) AS total_sales_per_employee FROM sales;

/*
* Explanation:
* PARTITION BY employee: Groups sales per employee, ensuring each employee's total sales are calculated separately.
*/
