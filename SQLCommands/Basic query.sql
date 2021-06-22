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
CREATE TABLE Employee_table4 (
    ID int  primary key,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK(Age BETWEEN 18 AND 45),
    City varchar(255) DEFAULT 'Mumbai',
	phonenumber varchar(20) unique
)
select * from Employee_table4
insert into employee_table4  (ID, LastName, Age) values(1,'chandu',23)
insert into employee_table4   values(2,'sai','dasari',23,'bvrm','9701306667')
insert into employee_table4   values(3,'chandu','dasari',45,'bvrm','970130666')
insert into employee_table4 (id,lastname,phonenumber)  values(4,'chandu','9999999')
insert into employee_table4   values(5,'max','well',45,'bvrm','97013066')
select * from Employee_table4 where id=1
select * from Employee_table4 order by age 
select * from Employee_table4 order by age desc
select top (3) age from Employee_table4 order by age 
select id from Employee_table4 group by City
select * from Employee_table4 order by Age desc OFFSET 2 Rows FETCH NEXT 2 rows only



