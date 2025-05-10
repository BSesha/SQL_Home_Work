/* Get all the products per vendor that have a price rank of 1 */

SELECT * FROM (
    SELECT 
        vendor_id, 
        market_date, 
        product_id, 
        original_price, 
        ROW_NUMBER() OVER (PARTITION BY vendor_id ORDER BY original_price DESC) AS price_rank 
    FROM farmers_market.vendor_inventory 
    ORDER BY vendor_id
) x 
WHERE x.price_rank = 1;


/*
* Explanation:
* Subquery (x):
* Generates ranked products per vendor.
* Filtering (WHERE x.price_rank = 1):
* Retrieves only the most expensive product per vendor.
*/
