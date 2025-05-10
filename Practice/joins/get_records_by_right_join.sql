/* Retrieve all products and their categories using a RIGHT JOIN */

SELECT 
    p.product_id, 
    p.product_name, 
    pc.product_category_id, 
    pc.product_category_name 
FROM farmers_market.product_category AS pc 
RIGHT JOIN farmers_market.product AS p 
ON p.product_category_id = pc.product_category_id 
ORDER BY pc.product_category_name, p.product_name;


/*
* Explanation:
* Tables Used: product, product_category.
* JOIN Type: RIGHT JOIN ensures all products are listed, even if they don’t belong to a category.
* Sorting: ORDER BY pc.product_category_name, p.product_name organizes results by category and product name.
*/
