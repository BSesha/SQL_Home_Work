/* Calculate the total amount paid by customers, rounding values to 2 decimal places */

SELECT 
    market_date, 
    customer_id, 
    vendor_id, 
    ROUND(quantity * cost_to_customer_per_qty, 2) AS price 
FROM farmers_market.customer_purchases;

/*
*  Explanation:
*  The ROUND() function ensures the calculated price is rounded to two decimal places.
*  The alias AS price makes the output more readable.
*  This query retrieves the purchase date, customer ID, vendor ID, quantity, cost per unit, and total amount paid.
*/
