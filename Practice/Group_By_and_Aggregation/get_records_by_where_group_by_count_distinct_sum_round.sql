/* Calculate the actual average price of items in each vendor's inventory */

SELECT 
    vendor_id, 
    COUNT(DISTINCT product_id) AS different_products_offered, 
    SUM(quantity * original_price) AS value_of_inventory, 
    SUM(quantity) AS inventory_item_count, 
    ROUND(SUM(quantity * original_price) / SUM(quantity), 2) AS average_inventory_price 
FROM farmers_market.vendor_inventory 
WHERE market_date BETWEEN '2019-04-03' AND '2019-05-16' 
GROUP BY vendor_id 
ORDER BY vendor_id;


/*
* Explanation:
* SUM(quantity * original_price) / SUM(quantity): Computes weighted average price.
* Ensures accurate pricing analysis based on inventory size.
*/
