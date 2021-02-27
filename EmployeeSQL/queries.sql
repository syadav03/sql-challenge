
--Create #1 details of each employee 
select e.emp_no,e.last_name,e.first_name,e.sex,s.salary from employees e 
join salaries s 
on e.emp_no = s.emp_no;

-- #2 analysis 

--Count number of rows for employees hired in 1986 
--select count(1) from employees e 
--where hire_date >= '1986-01-01' and hire_date < '1987-01-01';

select e.first_name, e.last_name, e.hire_date from employees e 
where extract(YEAR from hire_date)=1986;

-- Create analysis #3 using joins 
select d.dept_no, d.dept_name, man.emp_no, e.last_name, e.first_name from departments d
join dept_manager man 
on d.dept_no=man.dept_no 
join employees e 
on e.emp_no = man.emp_no;

-- Create analysis # 4 
select emp.emp_no, e.last_name, e.first_name, d.dept_name from employees e 
join dept_emp emp
on e.emp_no = emp.emp_no
join departments d
on emp.dept_no = d.dept_no;

-- Create analysis #5 
select e.first_name, e.last_name, e.sex 
from employees e
where e.first_name like 'Hercules' and e.last_name like 'B%';

--Create Analysis # 6 
select emp.emp_no, e.last_name, e.first_name, d.dept_name from dept_emp emp
join departments d
on d.dept_no = emp.dept_no 
join employees e 
on emp.emp_no = e.emp_no
where d.dept_name = 'Sales';

-- Create Analysis # 7 
select emp.emp_no, e.last_name, e.first_name, d.dept_name from dept_emp emp
join departments d
on d.dept_no = emp.dept_no 
join employees e 
on emp.emp_no = e.emp_no
where d.dept_name = 'Sales' or d.dept_name ='Development';

-- # 8 
select e.last_name, count(1) from employees e 
group by e.last_name
order by count(1) ASC;






