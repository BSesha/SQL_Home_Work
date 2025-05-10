/* Convert transaction time into a proper datetime format */

SELECT *, 
    STR_TO_DATE(CONCAT(market_date, ' ', transaction_time), '%Y-%m-%d %H:%i:%s') AS market_date_trans_time 
FROM farmers_market.customer_purchases;


/*
* Explanation:
* STR_TO_DATE(CONCAT(market_date, ' ', transaction_time), '%Y-%m-%d %H:%i:%s'):
* Combines market_date and transaction_time into a proper datetime format.
*/
