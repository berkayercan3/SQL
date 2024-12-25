--INNER JOIN
-- yalnýzca maaþý 5500'den büyük çalýþanlar?
use Joins

SELECT 
    e.name AS EmployeeName,
    d.departments_name AS Department,
    d.manager_id AS ManagerID,
    e.salary AS EmployeeSalary

FROM employees e
Inner JOIN departments d ON e.department_ID = d.departments_ID 
WHERE e.salary > 5500 --kosul
ORDER BY e.salary asc --artan sirada siralama islemi yapar

/*
alias olmadan sorgu su sekilde olur:

	SELECT 
    employees.name AS EmployeeName,
    departments.department_name AS Department,
    departments.manager_id AS ManagerID,
    employees.salary AS EmployeeSalary
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id
WHERE employees.salary > 5500
ORDER BY employees.salary ASC;

*/