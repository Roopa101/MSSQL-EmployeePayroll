create database EmployeePayroll_Service;
use EmployeePayroll_Service;

create table employee_Payroll
(
 id int IDENTITY(1,1) not null primary key,
 name varchar(150) not null,
 salary money not null,
 start_date date not null
)

select * from employee_Payroll

set identity_insert employee_payroll on

insert into employee_payroll (id,name,salary,start_date) values
(1,'billi', 230000.0,'2018-01-03')

insert into employee_payroll (id,name,salary,start_date) values
(2,'jack', 456000.0,'2019-11-13')

insert into employee_payroll (id,name,salary,start_date) values
(3,'charlie', 240000.0,'2019-01-03')

set identity_insert employee_payroll off
