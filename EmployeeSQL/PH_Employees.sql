SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';

SELECT *
FROM "Departments";

SELECT *
FROM "Dept_emp";

SELECT *
FROM "Dept_manager";

SELECT * 
FROM "Employees";

SELECT * 
FROM "Salaries";

SELECT *
FROM "Titles";

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" as e
JOIN "Salaries" as s ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
From "Employees" 
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM "Dept_manager" as dm
JOIN "Employees" as e ON dm.emp_no = e.emp_no
JOIN "Departments" as d ON dm.dept_no = d.dept_no;

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dept_emp" as de
JOIN "Employees" as e ON de.emp_no = e.emp_no
JOIN "Departments" as d ON de.dept_no = d.dept_no;

SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name
FROM "Employees" as e
JOIN "Dept_emp" as de ON e.emp_no = de.emp_no
JOIN "Departments" as d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" as e 
JOIN "Dept_emp" as de on e.emp_no = de.emp_no
JOIN "Departments" as d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT last_name, count(*) As frequency
FROM "Employees"
GROUP BY last_name
ORDER BY frequency DESC;

