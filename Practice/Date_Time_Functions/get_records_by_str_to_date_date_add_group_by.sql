/* Count the number of sales occurring within the first 30 minutes after the market opened */

SELECT market_date, COUNT(*) AS num_sales 
FROM farmers_market.customer_purchases cp 
JOIN farmers_market.market_date_info mdi 
ON cp.market_date = mdi.market_date 
WHERE STR_TO_DATE(CONCAT(cp.market_date, ' ', cp.transaction_time), '%Y-%m-%d %H:%i:%s') 
<= DATE_ADD(STR_TO_DATE(CONCAT(mdi.market_date, ' ', mdi.market_start_time), '%Y-%m-%d %H:%i:%s'), INTERVAL 30 MINUTE) 
GROUP BY market_date 
ORDER BY market_date;


/*
* Explanation:
* Subquery (STR_TO_DATE()): Converts market_date and transaction_time into a datetime format.
* Filtering (<= DATE_ADD(...)): Ensures only transactions within the first 30 minutes are counted.
*/
