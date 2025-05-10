/* Classify purchases based on quantity and transaction time */

SELECT *,
    CASE 
        WHEN quantity > 5 THEN 'Bulk Purchase'
        WHEN quantity BETWEEN 3 AND 5 THEN 'Moderate Purchase'
        ELSE 'Small Purchase'
    END AS Purchase_Volume,
    CASE 
        WHEN transaction_time < '12:00:00' THEN 'Morning Purchase'
        WHEN transaction_time BETWEEN '12:00:00' AND '17:59:59' THEN 'Afternoon Purchase'
        ELSE 'Evening Purchase'
    END AS Transaction_Timing
FROM farmers_market.customer_purchases
ORDER BY customer_id;


/*
* Explanation:
* CASE Statement:
* Classifies purchases based on quantity (Bulk, Moderate, Small).
* Categorizes transaction timing (Morning, Afternoon, Evening).
* ORDER BY customer_id: Sorts results by customer ID.
*/
