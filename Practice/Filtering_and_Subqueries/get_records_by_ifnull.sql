/* Fetch all product IDs and set a default value "medium" where product size is NULL */

SELECT product_id, IFNULL(product_size, 'medium') AS adjusted_size 
FROM farmers_market.product;

/*
* Explanation:
* IFNULL(product_size, 'medium'): Replaces NULL values with "medium".
*/
