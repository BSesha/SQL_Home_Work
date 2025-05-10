/* Retrieve details about all farmer's market booths and vendor booth assignments for every market date */

SELECT 
    b.booth_number, 
    b.booth_type, 
    vba.market_date, 
    v.vendor_id, 
    v.vendor_name, 
    v.vendor_type 
FROM farmers_market.booth AS b 
LEFT JOIN farmers_market.vendor_booth_assignments AS vba 
ON b.booth_number = vba.booth_number 
LEFT JOIN farmers_market.vendor AS v 
ON v.vendor_id = vba.vendor_id 
ORDER BY b.booth_number, vba.market_date;


/*
* Explanation:
* Tables Used: booth, vendor_booth_assignments, vendor.
* JOIN Type:
* LEFT JOIN booth → vendor_booth_assignments: Ensures all booths are included, even if they aren’t assigned to a vendor.
* LEFT JOIN vendor → vendor_booth_assignments: Ensures all vendors assigned to booths are included.
* Sorting: ORDER BY b.booth_number, vba.market_date organizes results by booth number and market date.
*/
