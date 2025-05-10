/* Find the average quantity of products purchased by customers on '2019-05-01' */

SELECT 
    AVG(quantity) AS avg_qty 
FROM farmers_market.customer_purchases 
WHERE market_date = '2019-05-01';

/*
* Explanation:
* AVG(quantity): Calculates the average number of items purchased per transaction.
* WHERE market_date = '2019-05-01': Filters purchases made on May 1, 2019.
*/
