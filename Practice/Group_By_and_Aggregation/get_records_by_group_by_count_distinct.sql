/* Count how many different products each vendor offered during a date range */

SELECT 
    vendor_id, 
    COUNT(DISTINCT product_id) AS different_products_offered 
FROM farmers_market.vendor_inventory 
WHERE market_date BETWEEN '2019-04-03' AND '2019-05-16' 
GROUP BY vendor_id 
ORDER BY vendor_id;


/*
* Explanation:
* COUNT(DISTINCT product_id): Counts unique products offered by each vendor.
* Helps in analyzing vendor diversity in product offerings.
*/
