/* Get the most and least expensive items available in the vendor's inventory */

SELECT 
    MIN(original_price) AS min_price, 
    MAX(original_price) AS max_price 
FROM farmers_market.vendor_inventory;


/*
* Explanation:
* MIN(original_price): Retrieves the lowest price in the vendor inventory.
* MAX(original_price): Retrieves the highest price in the vendor inventory.
* This helps in identifying the cheapest and most expensive items available.
*/
