Example 1: Stored Procedure

Goal: Create a procedure to get employee details by department.

DELIMITER $$

CREATE PROCEDURE GetEmployeesByDept(IN dept_name VARCHAR(50))
BEGIN
    SELECT emp_id, emp_name, salary, department
    FROM employees
    WHERE department = dept_name;
END$$

DELIMITER ;
Call the procedure:
CALL GetEmployeesByDept('Sales');

Explanation:
IN dept_name → input parameter
The procedure runs a SELECT query filtering employees by department.

 Example 2: Function
Goal: Create a function to calculate annual salary.

DELIMITER $$

CREATE FUNCTION GetAnnualSalary(monthly_salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN monthly_salary * 12;
END$$

DELIMITER ;

Use the function:
SELECT emp_name, GetAnnualSalary(salary) AS Annual_Salary
FROM employees;

Explanation:
RETURNS → defines return type.
DETERMINISTIC → ensures same input gives same output.
You can now use this function inside any query.
Deliverables

Submit:
1. SQL script file containing:
One Stored Procedure (CREATE PROCEDURE ...)
One Function (CREATE FUNCTION ...)

2. Example usage of each (CALL and SELECT statements)
