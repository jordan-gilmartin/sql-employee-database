titles
-
title_id varchar pk 
title varchar

employees
-
emp_no int pk 
emp_title_id varchar fk >- titles.title_id 
birth_date date 
first_name varchar 
last_name varchar 
sex varchar 
hire_date date 

departments
-
dept_no varchar pk
dept_name varchar

dept_manager
-
dept_no varchar pk fk >- departments.dept_no
emp_no int pk fk >- employees.emp_no


dept_emp
-
emp_no int pk fk >- employees.emp_no
dept_no varchar pk fk >- departments.dept_no

salaries
-
emp_no int pk fk >- employees.emp_no
salary int 