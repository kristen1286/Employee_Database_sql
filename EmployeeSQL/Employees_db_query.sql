--1.List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no;

--2 List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE e.hire_date LIKE '%1986';

--3 List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM  dept_manager AS dm
INNER JOIN departments AS d ON 
d.dept_no = dm.dept_no
INNER JOIN employees AS e ON
e.emp_no = dm.emp_no;

--4 List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name.

SELECT  e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no;

--5 List first name, last name, and sex of each employee whose first name
--is Hercules and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules' AND
	e.last_name LIKE 'B%';

--6 List each employee in the Sales department, 
--including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name, departments.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON 
e.emp_no = de.emp_no
INNER JOIN departments on
de.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007';

--7List each employee in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, departments.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON 
e.emp_no = de.emp_no
INNER JOIN departments on
de.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007'
	OR departments.dept_no = 'd005';
	
--8 List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
SELECT e.last_name, COUNT(e.last_name) AS "Frequency count"
FROM employees AS e
GROUP BY e.last_name
ORDER BY "Frequency count" DESC;

--see the repeating last names
--SELECT e.emp_no, e.last_name
--FROM employees AS e
--ORDER BY e.last_name;


