/* Rank the products in each vendor's inventory (Expensive products get a lower rank) */

SELECT 
    vendor_id, 
    market_date, 
    product_id, 
    original_price, 
    ROW_NUMBER() OVER (PARTITION BY vendor_id ORDER BY original_price DESC) AS price_rank 
FROM farmers_market.vendor_inventory;


/*
* Explanation:
* ROW_NUMBER() OVER (PARTITION BY vendor_id ORDER BY original_price DESC):
* Assigns a unique rank to each product per vendor.
* Highest-priced item gets rank 1.
* PARTITION BY vendor_id: Ensures ranking is per vendor rather than globally.
*/
