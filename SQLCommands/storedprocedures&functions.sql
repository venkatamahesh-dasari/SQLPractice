--creating stored proceduer with out parameter
create procedure storedprocedure1
as
begin
select *from Employeetable7 
end


--calling stored procedure
execute storedprocedure1

exec storedprocedure1





--creating stored proceduer with parameter
--in/input parameter
create procedure inputstoredprocedure(@id int,@name varchar(50),@city varchar(50))
AS
begin
insert into emp values(@id,@name,@city)
end

--calling stored procedure
execute inputstoredprocedure 1,'mahesh','bvrm'
exec inputstoredprocedure 2,'madhu','bvrm'
select *from emp





--creating stored proceduer with parameter
--in/input parameter
create procedure outputstoredprocedure(@id int, @PF int out,@PT int out)
as
begin
Declare @salary money
select @salary= salary from Employeetable7 where id=@id
set @PF=@salary*0.1
set @PT=@salary*0.2
end
select*from Employeetable7

--calling stored procedure
declare @BPF int,@BPT int
execute outputstoredprocedure 10,@BPF out,@BPT out
print @BPF
print @BPT




--creating scalar valued function
create function Grosssalary(@id int)
returns money
as
begin
Declare @salary money,@HRA money,@DA money,@PF money,@Grosssalary money
select @salary= salary from Employeetable7 where id=@id
set @HRA=@salary*0.1
set @DA=@salary*0.2
set @PF=@salary*0.1
set @Grosssalary=@salary+@HRA+@DA+@PF
return @Grosssalary
end

select*from Employeetable7


--calling sv function
select dbo.Grosssalary(10)




--craeting Table valued function
create function Deptemployeenames(@DEPTNAME varchar(50))
returns table
as
return(select * from Employeetable7 where Dept=@DEPTNAME)


select*from Employeetable7

--calling Table Valued function
select * from Deptemployeenames('HR')

