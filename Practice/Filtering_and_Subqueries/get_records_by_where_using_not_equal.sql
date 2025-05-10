/* Extract all product names that belong to any category except 1 */

SELECT product_id, product_name, product_category_id 
FROM farmers_market.product 
WHERE product_category_id != 1;

/*
* Explanation:
* != (or <>): Ensures products from all categories except 1 are retrieved.
*/
