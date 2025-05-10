/* Rank products while handling ties using RANK() */

SELECT 
    vendor_id, 
    market_date, 
    product_id, 
    original_price, 
    RANK() OVER (PARTITION BY vendor_id ORDER BY original_price DESC) AS price_rank 
FROM farmers_market.vendor_inventory 
ORDER BY vendor_id, original_price DESC;


/*
* Explanation:
* RANK() OVER (PARTITION BY vendor_id ORDER BY original_price DESC):
* Assigns same rank to products with identical prices.
* Difference from ROW_NUMBER():
* RANK() skips numbers when ties occur.
*/
