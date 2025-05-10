/* Get details of all vendors selling products along with the name of each product they sell and the quantity of that product present in their inventory */

SELECT 
    v.vendor_name, 
    v.vendor_type, 
    p.product_name, 
    p.product_size, 
    vi.quantity 
FROM farmers_market.vendor v 
JOIN farmers_market.vendor_inventory vi ON v.vendor_id = vi.vendor_id 
JOIN farmers_market.product p ON vi.product_id = p.product_id 
ORDER BY v.vendor_name;


/*
* Explanation:
* Tables Used: vendor, vendor_inventory, product.
* JOIN Conditions:
* vendor.vendor_id = vendor_inventory.vendor_id → Links vendors to their inventory.
* vendor_inventory.product_id = product.product_id → Links inventory to product details.
* Sorting: ORDER BY v.vendor_name ensures vendors are listed alphabetically.
*/
