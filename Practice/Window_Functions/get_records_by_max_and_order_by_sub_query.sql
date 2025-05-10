/* Find the 2nd highest and 3rd highest item price using subqueries */


/* SQL Query 1 (2nd highest price): */

SELECT vendor_id, MAX(original_price) AS second_highest_price 
FROM farmers_market.vendor_inventory 
WHERE original_price < (SELECT MAX(original_price) FROM farmers_market.vendor_inventory);


/* SQL Query 2 (3rd highest price): */

SELECT original_price FROM (
    SELECT original_price FROM farmers_market.vendor_inventory ORDER BY original_price DESC LIMIT 3
) AS Comp 
ORDER BY original_price DESC LIMIT 1;

/*
* Explanation:
* First Query:
* Retrieves the second highest price by filtering out the highest price.
* Second Query:
* Uses LIMIT 3 to get the top 3 prices, then selects the third highest.
*/
