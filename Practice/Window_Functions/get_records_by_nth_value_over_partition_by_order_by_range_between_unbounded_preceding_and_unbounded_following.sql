/* Find the employee with the second highest salary within each department */

SELECT employee_name, department, salary, 
NTH_VALUE(employee_name, 2) OVER (PARTITION BY department ORDER BY salary DESC RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS second_highest_salary 
FROM farmers_market.employee;

/*
* Explanation:
* NTH_VALUE(employee_name, 2): Retrieves the second highest salary per department.
* Helps in identifying top earners within each department.
*/
