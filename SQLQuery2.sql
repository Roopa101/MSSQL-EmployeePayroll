

---UC1----
create database EmployeePayroll_Service;
use EmployeePayroll_Service;

---UC2---
create table employee_Payroll
(
 id int IDENTITY(1,1) not null primary key,
 name varchar(150) not null,
 salary money not null,
 start_date date not null
)

select * from employee_Payroll

-----UC3----
set identity_insert employee_payroll on

insert into employee_payroll (id,name,salary,start_date) values
(1,'billi', 230000.0,'2018-01-03')

insert into employee_payroll (id,name,salary,start_date) values
(2,'jack', 456000.0,'2019-11-13')

insert into employee_payroll (id,name,salary,start_date) values
(4,'Terissa', 560000.0,'2020-11-13')

insert into employee_payroll (id,name,salary,start_date) values
(3,'charlie', 240000.0,'2019-01-03')

set identity_insert employee_payroll off

------UC4-----
select * from employee_Payroll

-----UC5------

select salary from  employee_Payroll where name = 'billi'

select * from employee_payroll where start_date between '2019-01-01' and GETDATE()

-----UC6-------
Alter table employee_payroll add gender char (1)
update employee_payroll set gender = 'M' where name ='bill' or name= 'charlie'
update employee_payroll set gender = 'F' where name= 'jack' or name= 'Terissa'
select * from employee_Payroll


-----UC7------
select AVG(salary) 'Avg Salary' from employee_Payroll where gender = 'M' group by gender
select AVG(salary) 'Avg Salary'from employee_Payroll where gender = 'F' group by gender
select SUM(salary) 'Total Salary'from employee_Payroll where gender = 'M' group by gender
select SUM(salary) 'Total Salary'from employee_Payroll where gender = 'F' group by gender
select MIN(salary) 'Min Salary'from employee_Payroll where gender = 'M' group by gender
select MIN(salary) 'Min Salary'from employee_Payroll where gender = 'F' group by gender
select MAX(salary) 'Max Salary' from employee_Payroll where gender = 'M' group by gender
select MAX(salary) 'Max Salary'from employee_Payroll where gender = 'F' group by gender


------UC8------
alter table employee_Payroll Add Department varchar(10) ;
alter table employee_Payroll Add Phonenumber varchar(15) ;
Alter table employee_payroll add Address varchar(50) not null default 'India'
update employee_Payroll set Department = 'Finance' where name = 'Billi';
update employee_Payroll set Department = 'Mech' where name = 'jack';
update employee_Payroll set Department = 'Production' where name = 'Charlie';
update employee_Payroll set Department = 'Marketing' where name = 'Terissa';

select * from employee_Payroll


-------UC9------------
Alter Table employee_Payroll Add Basic_Pay money;
Alter Table employee_Payroll Add Deductions money;
Alter Table employee_Payroll Add Taxable_Pay money;
Alter Table employee_Payroll Add Income_Tax money;
Alter Table employee_Payroll Add Net_Pay money;


-----UC10------
update employee_Payroll set Basic_Pay = '9000000.00' where name = 'Billi';
update employee_Payroll set Basic_Pay = '90000.00' where name = 'jack';
update employee_Payroll set Basic_Pay = '29000.00' where name = 'Charlie';
update employee_Payroll set Basic_Pay = '290000.00' where name = 'Terissa';
update employee_Payroll set Deductions = '5638.00' where name = 'Terissa';
update employee_Payroll set Taxable_Pay = '1234.00' where name = 'Charlie';
update employee_Payroll set Income_Tax = '9153.00' where name = 'billi';
update employee_Payroll set Net_Pay = '1539.00' where name = 'billi';

select * from employee_Payroll



