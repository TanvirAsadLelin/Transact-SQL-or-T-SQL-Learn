use EmployeeDB;
go

--Create stored procedure without parameters
create procedure proc_allEmployeeInfo
as 
begin 
    select * from employee_info;
	end   
go

execute proc_allEmployeeInfo;
go

--Create stored procedure with parameters

execute proc_allEmployeeInfo;
go
select * from department_info;
go
create procedure proc_allEmployeeInfoByLocation (@location as varchar(100))
as
begin
   select * from employee_info e inner join department_info d
   on e.deptId = d.deptId
   where deptLocation = @location;
end
go

execute  proc_allEmployeeInfoByLocation @location = 'Dhaka';
go