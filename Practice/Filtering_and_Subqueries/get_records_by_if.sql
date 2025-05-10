/* Alternative approach using IF() function */

SELECT *,
    IF(quantity > 5, 'Bulk Purchase', 
        IF(quantity BETWEEN 3 AND 5, 'Moderate Purchase', 'Small Purchase')
    ) AS Purchase_Volume,
    IF(transaction_time < '12:00:00', 'Morning Purchase', 
        IF(transaction_time BETWEEN '12:00:00' AND '17:59:59', 'Afternoon Purchase', 'Evening Purchase')
    ) AS Transaction_Timing
FROM farmers_market.customer_purchases
ORDER BY customer_id;

/*
* Explanation:
* IF() function:
* Works similarly to CASE, but is more compact.
* Nested IF() statements handle multiple conditions.
*/
