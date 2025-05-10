/* Generate promotional tags for vendors and booths */

SELECT 
    CONCAT(UPPER(vendor_name), '_', LOWER(SUBSTR(vendor_type, 1, 3))) AS Vendor_Tag,
    CONCAT(SUBSTR(booth_type, -2), '-', booth_number) AS Booth_Label,
    CONCAT(UPPER(SUBSTR(vendor_owner_first_name, 1, 4)), LOWER(SUBSTR(vendor_owner_last_name, -3))) AS Custom_Identifier
FROM farmers_market.vendor, farmers_market.booth;

/*
* Explanation:
* UPPER(vendor_name): Converts the vendor name to uppercase.
* LOWER(SUBSTR(vendor_type, 1, 3)): Extracts the first three characters of the vendor type and converts them to lowercase.
* SUBSTR(booth_type, -2): Extracts the last two characters of the booth type.
* CONCAT(): Combines extracted values with separators (_, -).
* This query generates formatted promotional tags for vendors and booths.
*/
