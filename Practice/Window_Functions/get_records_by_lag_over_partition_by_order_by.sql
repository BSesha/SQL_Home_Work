/* Display each vendor's booth assignment alongside their previous booth assignments */

SELECT market_date, vendor_id, booth_number, 
LAG(booth_number,1) OVER (PARTITION BY vendor_id ORDER BY market_date, vendor_id) AS previous_booth_number 
FROM farmers_market.vendor_booth_assignments 
ORDER BY market_date, vendor_id, booth_number;


/*
* Explanation:
* LAG(booth_number,1): Retrieves the booth number from the previous market date.
* Helps in tracking booth changes over time.
*/
