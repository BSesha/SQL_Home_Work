/* Count the total number of purchases during the second quarter of 2019 */

SELECT 
    COUNT(*) AS total_purchases 
FROM farmers_market.customer_purchases 
WHERE market_date BETWEEN '2019-04-01' AND '2019-06-30';

/*
* Explanation:
* COUNT(*): Counts the total number of purchase transactions.
* BETWEEN '2019-04-01' AND '2019-06-30': Filters purchases made in Q2 of 2019.
*/
