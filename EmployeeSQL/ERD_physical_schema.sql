titles
--
title_id VARCHAR PK
title VARCHAR

departments
--
dept_no VARCHAR PK
dept_name VARCHAR

employees
--
emp_no INT PK
emp_title_id VARCHAR FK >- titles.title_id
birth_date VARCHAR
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date VARCHAR

#  The dept_emp table is many-many relationship, so two primary keys are needed
dept_emp
--
emp_no INT PK FK >- employees.emp_no
dept_no VARCHAR PK FK >- departments.dept_no

salaries
--
emp_no INT PK FK - employees.emp_no
salary INT


dept_manager
--
dept_no VARCHAR FK >- departments.dept_no
emp_no INT PK FK >- employees.emp_no


