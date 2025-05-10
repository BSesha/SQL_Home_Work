/* Find products priced above the market date's average product cost */

SELECT * FROM (
    SELECT 
        vendor_id, 
        market_date, 
        product_id, 
        original_price, 
        ROUND(AVG(original_price) OVER (PARTITION BY market_date ORDER BY market_date), 2) AS average_cost_product_by_market_date 
    FROM farmers_market.vendor_inventory
) x 
WHERE x.original_price > x.average_cost_product_by_market_date 
ORDER BY x.market_date, x.original_price DESC;


/*
* Explanation:
* Subquery (x):
* Computes average price per market date.
* Filtering (WHERE x.original_price > x.average_cost_product_by_market_date):
* Retrieves products priced above the average.
*/
