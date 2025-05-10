/* Extract all product names that belong to product category 1 */

SELECT product_id, product_name, product_category_id 
FROM farmers_market.product 
WHERE product_category_id = 1 
LIMIT 5;

/*
* Explanation:
* WHERE product_category_id = 1: Filters products belonging to category 1.
* LIMIT 5: Restricts output to the first five matching records.
*/
