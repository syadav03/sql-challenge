

-- Create Tables 
-- Create table Departments 
create table departments (
	dept_no VARCHAR(50) primary key,
	dept_name VARCHAR(50) NOT NULL 
);
select * from departments;

--Drop table 
--drop table dept_emp;

-- Create table dept_emp
create table dept_emp  (
	emp_no VARCHAR(50) not null,
	dept_no VARCHAR(50) NOT NULL,
	Primary Key (emp_no,dept_no),
	CONSTRAINT fk_dept_no
		FOREIGN KEY (dept_no)
			REFERENCES departments (dept_no)
);

select * from dept_emp;

-- Double checking the contraints 
--Insert into dept_emp (emp_no,dept_no)
--Values ('10001','d005');

create table titles (
	title_id VARCHAR(50) primary key,
	title VARCHAR(50) NOT NULL 
);

select * from titles;

--drop table employees;
--drop table salaries;
--drop table dept_manager;

create table employees(
	emp_no VARCHAR (50) primary key,
	emp_title_id VARCHAR(50),
	CONSTRAINT fk_emp_title_id
		FOREIGN KEY (emp_title_id)
			REFERENCES titles (title_id),
	birth_date date,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(5),
	hire_date date
);

select * from employees;

create table dept_manager(
	dept_no VARCHAR(50) not null,
	CONSTRAINT fk_dept_no
		FOREIGN KEY (dept_no)
			REFERENCES departments(dept_no),
	emp_no VARCHAR(50) not null,
	CONSTRAINT fk_emp_no
		FOREIGN KEY (emp_no)
			REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no,emp_no)
);

select * from dept_manager;
 
create table salaries(
	emp_no VARCHAR(50) not null primary key,
	salary integer not null,
	CONSTRAINT fk_emp_no
		FOREIGN KEY (emp_no)
			REFERENCES employees(emp_no)
);

select * from salaries;

