use Joins

create table employees (
	employe_ID int primary key,
	name varchar(255),
	department_ID int,
	salary Decimal(10,2)
);

insert into employees ( employe_ID ,name ,department_ID , salary)
values
(1, 'Ali', 101, 5000),
(2, 'Ayşe', 102, 6000),
(3, 'Mehmet', 103, 7000),
(4, 'Zeynep', 101, 5500),
(5, 'Hasan', 104, 8000);

create table departments(
	departments_ID int primary key,
	departments_name varchar(255),
	manager_id int
);
insert into departments ( departments_ID , departments_name , manager_id)
values
(101, 'Human Resources', 201),
(102, 'Finance', 202),
(103, 'IT', 203),
(104, 'Marketing', 204);