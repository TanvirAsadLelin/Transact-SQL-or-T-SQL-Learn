use EmployeeDB;
go

execute proc_allEmployeeInfo;
go

select * from department_info;
go
-- Modify stored procedure proc_allEmployeeInfo (Modified by inner join bettewn two table )

alter procedure  proc_allEmployeeInfo
as
begin
    select e.empName , e.empSalary , d.deptLocation
	from employee_info e inner join department_info d
	on e.deptId = d.deptId;
end
go

-- Modify stored procedure proc_allEmployeeInfoByLocation (Modified by get specific column )


execute proc_allEmployeeInfoByLocation @location = 'Dhaka';
go

alter procedure proc_allEmployeeInfoByLocation (@location as varchar(100))
as
begin 
    select e.empName, e.job , d.deptName,d.deptLocation
	from employee_info e 
	inner join department_info d
	on e.deptId = d.deptId
	where d.deptLocation = @location;
end
go