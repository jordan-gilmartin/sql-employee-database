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



-- List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name
select 
dept_manager.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
from dept_manager
join departments on
dept_manager.dept_no = departments.dept_no
join employees on
dept_manager.emp_no = employees.emp_no;