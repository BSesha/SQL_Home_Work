/* Perform a CROSS JOIN between car models and colors */

SELECT 
    c.Car_model, 
    c1.Color_name 
FROM Cars AS c 
CROSS JOIN Colors AS c1;

/*
* Explanation:
* CROSS JOIN: Matches each car model with every available color.
* Cartesian Product: If Cars has n rows and Colors has m rows, the result will have n × m rows.
*/
