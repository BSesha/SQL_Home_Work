/* Count how many different products each vendor brought to market on each date */

SELECT 
    vendor_id, 
    market_date, 
    product_id, 
    original_price, 
    COUNT(product_id) OVER (PARTITION BY market_date, vendor_id) AS vendor_product_count_per_market_date 
FROM farmers_market.vendor_inventory 
ORDER BY vendor_id, market_date, original_price DESC;


/*
* Explanation:
* COUNT(product_id) OVER (PARTITION BY market_date, vendor_id):
* Counts total products per vendor per market date.
* Ensures row-level visibility while maintaining aggregate calculations.
*/
