create database employee
use employee
create table employee_table1
( 
  Eid int primary key,
  Fname varchar(50),
  Lname varchar(50),
  Salary float,
  Phonenumber varchar(15)
)
insert into employee_table1 values(1,'mahesh','dasari',500000,'9701306667')
select * from employee_table1
insert into employee_table1 values(2,'chandu','dasari',50000,'9701306664')
insert into employee_table1 values(3,'sai','dasari',5000,'9701306663')
alter table employee_table1 alter column phonenumber varchar(20)
alter table employee_table1 add Eage int
SP_RENAME'employee_table1.Fname','firstname'
alter table employee_table1 drop column Eage
select * from employee_table2
Truncate table employee_table2
drop table employee_table2
update employee_table1 set firstname='venkat' where Eid=1
update employee_table1 set Salary=400000
delete from employee_table1 where Eid=3
delete from employee_table1