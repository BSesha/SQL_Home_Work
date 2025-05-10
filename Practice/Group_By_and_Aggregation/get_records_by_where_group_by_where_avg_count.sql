/* Calculate the average original price of a product per vendor */

SELECT 
    vendor_id, 
    COUNT(product_id) AS different_products_offered, 
    AVG(original_price) AS average_product_price 
FROM farmers_market.vendor_inventory 
WHERE market_date BETWEEN '2019-04-03' AND '2019-05-16' 
GROUP BY vendor_id, product_id 
ORDER BY vendor_id;


/*
* Explanation:
* AVG(original_price): Computes the average price of products per vendor.
* Helps in understanding pricing strategies of vendors.
*/
