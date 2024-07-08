--creating tables
create table employees (
	emp_no int not null primary key,
	emp_title_id varchar(250),
	birth_date date,
	first_name varchar(250),
	last_name varchar(250),
	sex varchar(250),
	hire_date date
);
create table departments(
	dept_no varchar(250) not null primary key,
	dept_name varchar(250)
);
create table dept_emp(
	emp_no int not null,
	dept_no varchar(250),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);
create table dept_manager(
	dept_no varchar(250) not null,
	emp_no int,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
create table salaries(
	emp_no int not null primary key,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);
create table titles(
	title_id varchar(250) not null primary key,
	title varchar(250)
);
alter table employees add constraint fk_employees_emp_title_id foreign key (emp_title_id) references titles(title_id)