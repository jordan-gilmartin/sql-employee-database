-- 1. List the following details of each employee: employee number, last name, first name, sex and salary
select 
employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
from employees
inner join salaries on
employees.emp_no = salaries.emp_no;



-- 2. List first name, last name, and hire date for employees who were hired in 1986
select 
employees.first_name,
employees.last_name,
employees.hire_date
from employees
where hire_date >= '1986-01-01'
and hire_date <= '1986-12-31'
order by 3;



-- 3. List the manager of each department with the following information:
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



-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name
select 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees
join dept_emp on
employees.emp_no = dept_emp.emp_no
join departments on
departments.dept_no = dept_emp.dept_no
order by 4;



-- 5. List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B".  
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%'
order by 2;



-- 6. List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name
select 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees
join dept_emp on
employees.emp_no = dept_emp.emp_no
join departments on
departments.dept_no = dept_emp.dept_no
where dept_emp.dept_no = 'd007'
order by 2;



-- 7. List all employees in the Sales and Development departments, including their
-- employee number, last name, first name, and department name
select 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name 
from employees
join dept_emp on
employees.emp_no = dept_emp.emp_no
join departments on
departments.dept_no = dept_emp.dept_no
where dept_emp.dept_no = 'd005' 
or dept_emp.dept_no = 'd007'
order by 2;



-- 8. In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name
select last_name, count(*) as freqcount

from employees

group by last_name having count (*)>1

order by 2;