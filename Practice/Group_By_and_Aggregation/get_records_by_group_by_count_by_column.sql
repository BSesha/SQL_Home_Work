/* Count how many products were for sale on each market date */

SELECT 
    market_date, 
    COUNT(product_id) AS product_count 
FROM farmers_market.vendor_inventory 
GROUP BY market_date 
ORDER BY market_date;


/*
* Explanation:
* COUNT(product_id): Counts the total number of products available per market date.
* Helps in understanding product availability trends.
*/
