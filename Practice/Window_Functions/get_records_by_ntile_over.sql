/* Divide products into 10 buckets based on price using NTILE() */

SELECT 
    vendor_id, 
    market_date, 
    product_id, 
    original_price, 
    NTILE(10) OVER (ORDER BY original_price DESC) AS price_ntile 
FROM farmers_market.vendor_inventory 
ORDER BY original_price DESC;


/*
* Explanation:
* NTILE(10) OVER (ORDER BY original_price DESC):
* Divides products into 10 equal price-based groups.
* Handling uneven distribution:
* Some groups may contain one extra row if total rows aren’t evenly divisible.
*/
