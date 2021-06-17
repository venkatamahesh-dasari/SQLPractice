create database employee
use employee
create table employee_tb1
( 
  Eid int primary key,
  Fname varchar(50),
  Lname varchar(50),
  Salary float,
  Phonenumber varchar(15)
)
insert into employee_tb1 values(1,'mahesh','dasari',500000,'9701306667')
select * from employee_tb1
insert into employee_tb1 values(2,'chandu','dasari',50000,'9701306664')
insert into employee_tb1 values(3,'sai','dasari',5000,'9701306663')
delete from employee_tb1 where Eid=3
update employee_tb1 set Fname='sai' where Eid=2
SP_HELP employee_tb1
Alter table employee_tb1 alter column fname varchar(20)
Alter table employee_tb1 add eaddress varchar(50)
SP_RENAME'employee_tb1.Fname','firstname'
SP_RENAME'employee-table','employee_tb1'
