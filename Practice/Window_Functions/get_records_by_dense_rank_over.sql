/* Rank products while ensuring no skipped numbers using DENSE_RANK() */

SELECT 
    vendor_id, 
    market_date, 
    product_id, 
    original_price, 
    DENSE_RANK() OVER (PARTITION BY vendor_id ORDER BY original_price DESC) AS price_rank 
FROM farmers_market.vendor_inventory 
ORDER BY vendor_id, original_price DESC;


/* 
* Explanation:
* DENSE_RANK() OVER (PARTITION BY vendor_id ORDER BY original_price DESC):
* Assigns same rank to identical prices without skipping numbers.
* Difference from RANK():
* DENSE_RANK() ensures continuous ranking.
*/
