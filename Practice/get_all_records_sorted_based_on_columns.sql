/* Sort all products by product_id in descending order */

SELECT product_id, product_name, product_size 
FROM farmers_market.product 
ORDER BY product_id DESC;

/*
*  Explanation:
*  The ORDER BY clause sorts the results based on product_id.
*  DESC ensures the sorting is in descending order, meaning the highest product_id appears first.
*/
