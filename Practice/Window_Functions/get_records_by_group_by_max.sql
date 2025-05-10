/* Get the price of the most expensive item per vendor */

SELECT 
    vendor_id, 
    MAX(original_price) AS highest_price 
FROM farmers_market.vendor_inventory 
GROUP BY vendor_id;


/* 
* Explanation:
* GROUP BY vendor_id: Groups records by vendor.
* MAX(original_price): Retrieves the highest-priced item per vendor.
*/
