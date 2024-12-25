use Joins

SELECT 
    e.name AS EmployeeName,
    d.departments_name AS Department

FROM employees e
LEFT JOIN departments d ON e.department_ID = d.departments_ID;

SELECT 
    e.name AS EmployeeName,
    d.departments_name AS Department
FROM employees e
RIGHT JOIN departments d ON e.department_ID = d.departments_ID;


