/* Find the name of each employee's manager */

SELECT 
    CONCAT(e.lastName, ' ', e.firstName) AS Employee, 
    CONCAT(m.lastName, ' ', m.firstName) AS Manager 
FROM employees AS e 
JOIN employees AS m 
ON m.employeeNumber = e.reportsTo 
ORDER BY Manager;


/*
* Explanation:
* Self JOIN: The employees table is joined to itself to match employees with their managers.
* JOIN Condition: m.employeeNumber = e.reportsTo links employees to their respective managers.
* Sorting: ORDER BY Manager organizes results by manager name.
*/
