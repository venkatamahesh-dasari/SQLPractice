-----sample table
CREATE TABLE Employeetable5
(
 Id INT,
 Name VARCHAR(50),
 Salary INT,
 Gender VARCHAR(10),
 City VARCHAR(50),
 Dept VARCHAR(50)
)
INSERT INTO Employeetable5 VALUES (3,'Pranaya', 4500, 'Male', 'New York', 'IT')
INSERT INTO Employeetable5 VALUES (1,'Anurag', 2500, 'Male', 'London', 'IT')
INSERT INTO Employeetable5 VALUES (4,'Priyanka', 5500, 'Female', 'Tokiyo', 'HR')
INSERT INTO Employeetable5 VALUES (5,'Sambit', 3000, 'Male', 'Toronto', 'IT')
INSERT INTO Employeetable5 VALUES (7,'Preety', 6500, 'Female', 'Mumbai', 'HR')
INSERT INTO Employeetable5 VALUES (6,'Tarun', 4000, 'Male', 'Delhi', 'IT')
INSERT INTO Employeetable5 VALUES (2,'Hina', 500, 'Female', 'Sydney', 'HR')
INSERT INTO Employeetable5 VALUES (8,'John', 6500, 'Male', 'Mumbai', 'HR')
INSERT INTO Employeetable5 VALUES (10,'Pam', 4000, 'Female', 'Delhi', 'IT')
INSERT INTO Employeetable5 VALUES (9,'Sara', 500, 'Female', 'London', 'IT')
--defult clustered index
CREATE TABLE employeetable6
(
 Id INT PRIMARY KEY,
 Name VARCHAR(50),
 Salary INT,
 Gender VARCHAR(10),
 City VARCHAR(50),
 Dept VARCHAR(50)
)
--view the cluster
sp_helpindex Employeetable6
--Insertinging data
INSERT INTO employeetable6 VALUES (3,'Pranaya', 4500, 'Male', 'New York', 'IT')
INSERT INTO employeetable6 VALUES (1,'Anurag', 2500, 'Male', 'London', 'IT')
INSERT INTO employeetable6 VALUES (4,'Priyanka', 5500, 'Female', 'Tokiyo', 'HR')
INSERT INTO employeetable6 VALUES (5,'Sambit', 3000, 'Male', 'Toronto', 'IT')
INSERT INTO employeetable6 VALUES (7,'Preety', 6500, 'Female', 'Mumbai', 'HR')
INSERT INTO employeetable6 VALUES (6,'Tarun', 4000, 'Male', 'Delhi', 'IT')
INSERT INTO employeetable6 VALUES (2,'Hina', 500, 'Female', 'Sydney', 'HR')
--To view data
select * from employeetable6
--To view 
select * from employeetable6 where id=8
--creating another cluster index
create clustered index salaryname on employeetable6 (salary)-------error
--creating composite cluster index
create clustered index index_Gender_Salary on employeetable5(Gender asc,salary desc)
--viewing the composite cluster index resut
select * from Employeetable5



--EXAMPLE FOR NON-CLUSTERED INDEX 
CREATE TABLE Employeetable7
(
 Id INT,
 Name VARCHAR(50),
 Salary INT,
 Gender VARCHAR(10),
 City VARCHAR(50),
 Dept VARCHAR(50)
)
--Inserting data
INSERT INTO Employeetable7 VALUES (3,'Pranaya', 4500, 'Male', 'New York', 'IT')
INSERT INTO Employeetable7 VALUES (1,'Anurag', 2500, 'Male', 'London', 'IT')
INSERT INTO Employeetable7 VALUES (4,'Priyanka', 5500, 'Female', 'Tokiyo', 'HR')
INSERT INTO Employeetable7 VALUES (5,'Sambit', 3000, 'Male', 'Toronto', 'IT')
INSERT INTO Employeetable7 VALUES (7,'Preety', 6500, 'Female', 'Mumbai', 'HR')
INSERT INTO Employeetable7 VALUES (6,'Tarun', 4000, 'Male', 'Delhi', 'IT')
INSERT INTO Employeetable7 VALUES (2,'Hina', 500, 'Female', 'Sydney', 'HR')
INSERT INTO Employeetable7 VALUES (8,'John', 6500, 'Male', 'Mumbai', 'HR')
INSERT INTO Employeetable7 VALUES (10,'Pam', 4000, 'Female', 'Delhi', 'IT')
INSERT INTO Employeetable7 VALUES (9,'Sara', 500, 'Female', 'London', 'IT')
--To view data
select * from employeetable7
--creating non-clusterd index 
CREATE NONCLUSTERED INDEX id_index ON employeetable7(id)
--To view 
select id from employeetable7 
--creating composite non-cluster index
create nonclustered index index_Gender_Salary on employeetable7(Gender asc,salary desc)
--viewing the data
select Gender,Salary from employeetable7 where gender='Female' and Salary=500






--creating a unique clustereing and deleting
CREATE TABLE Employeetable8
(
  Id INT PRIMARY KEY,
  FastName VARCHAR(30),
  LastName VARCHAR(30),
  Salary INT,
  Gender VARCHAR(30),
  City VARCHAR(30)
)
INSERT INTO Employeetable8 VALUES(2,'Priyanka', 'Dwegaan',4500,'Female','Mumbai')
INSERT INTO Employeetable8 VALUES(2,'Preety', 'Tiwary',2500,'Female','Delhi')
select * from Employeetable8



