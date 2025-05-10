/* Fetch the 2nd & 3rd most recent purchase (skip the 1st one) */

SELECT market_date, quantity 
FROM farmers_market.customer_purchases 
ORDER BY market_date DESC 
LIMIT 1, 2;

/*
*  Explanation:
*  In MySQL, LIMIT <offset>, <count> is used instead of LIMIT <count> OFFSET <offset>.
*  LIMIT 1, 2 skips 1 row and retrieves the next 2 rows.
*/
