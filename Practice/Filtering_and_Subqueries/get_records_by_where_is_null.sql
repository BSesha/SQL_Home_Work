/* Find all products that do not have their sizes mentioned */

SELECT * 
FROM farmers_market.product 
WHERE product_size IS NULL;

/*
* Explanation:
* IS NULL: Filters records where product_size is missing.
*/
