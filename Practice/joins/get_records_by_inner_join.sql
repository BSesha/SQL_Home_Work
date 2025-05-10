/* Retrieve the vendor name and the corresponding booth number assigned to them at the farmers market */

SELECT 
    v.vendor_name, 
    vba.market_date, 
    vba.booth_number 
FROM farmers_market.vendor v 
INNER JOIN farmers_market.vendor_booth_assignments vba 
ON v.vendor_id = vba.vendor_id 
ORDER BY vba.market_date, v.vendor_name;


/*
* Explanation:
* Tables Used: vendor, vendor_booth_assignments.
* JOIN Type: INNER JOIN ensures only vendors with booth assignments are included.
* Sorting: ORDER BY vba.market_date, v.vendor_name organizes results by date and vendor name.
*/
