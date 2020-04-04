
--1.List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no,e.last_name,e.first_name,e.gender,s.salary 
from employees e 
left join salaries s
on e.emp_no=s.emp_no;

--2.List employees who were hired in 1986.
select * 
from employees
where hire_date like '1986%';

--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name, and start and end employment dates.

select demp.*, emp.first_name,emp.last_name, dpt.dept_name
from dept_emp demp 
join employees emp
on demp.emp_no=emp.emp_no
join dept_manager dm 
on demp.emp_no = dm.emp_no 
join departments dpt
on dpt.dept_no=demp.dept_no ;


--List the department of each employee with the following information: employee number, 
--last name, first name, and department name.

select demp.emp_no,demp.dept_no, emp.first_name,emp.last_name, dpt.dept_name
from dept_emp demp 
join employees emp
on demp.emp_no=emp.emp_no
join departments dpt
on dpt.dept_no=demp.dept_no ;

--List all employees whose first name is "Hercules" and last names begin with "B."

select *
from employees
where first_name='Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, 
--first name, and department name.

select demp.emp_no, emp.first_name,emp.last_name, dpt.dept_name
from dept_emp demp 
join employees emp
on demp.emp_no=emp.emp_no
join departments dpt
on dpt.dept_no=demp.dept_no 
where dpt.dept_name='Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select demp.emp_no, emp.first_name,emp.last_name, dpt.dept_name
from dept_emp demp 
join employees emp
on demp.emp_no=emp.emp_no
join departments dpt
on dpt.dept_no=demp.dept_no 
where dpt.dept_name in ('Sales','Development');


--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

select last_name,count(last_name) as freq_lastname
from employees
group by last_name
order by last_name desc;





