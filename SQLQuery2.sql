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
 