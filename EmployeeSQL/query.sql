-- List the following details of each employee: employee number, last name, first name, sex and salary
select 
employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
from employees
inner join salaries on
employees.emp_no = salaries.emp_no;



-- List first name, last name, and hire date for employees who were hired in 1986
select 
employees.first_name,
employees.last_name,
employees.hire_date
from employees
where hire_date >= '1986-01-01'
and hire_date <= '1986-12-31'
order by 3;