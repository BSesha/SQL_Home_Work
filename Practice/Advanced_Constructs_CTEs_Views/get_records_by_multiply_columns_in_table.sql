/* Filter out the data needed for analysis */

SELECT 
    market_date, 
    quantity * cost_to_customer_per_qty AS total_cost 
FROM farmers_market.customer_purchases;


/*
* Explanation:
* Retrieves market_date and total cost for each purchase.
* Helps in summarizing sales at the date level.
*/
