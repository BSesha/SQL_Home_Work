/* Find booth assignments for vendor_id 7 between April 3, 2019, and May 16, 2019 */

SELECT * 
FROM farmers_market.vendor_booth_assignments 
WHERE vendor_id = 7 
AND market_date BETWEEN '2019-04-03' AND '2019-05-16';

/*
* Explanation:
* BETWEEN '2019-04-03' AND '2019-05-16': Ensures the date range is inclusive.
* AND vendor_id = 7: Filters results for vendor ID 7.
*/
