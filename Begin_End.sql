use EmployeeDB;
go 

select * from employee_info;
go

insert into employee_info values (5,'Tanvir',45000,'AO',34783654,12);
go
--Begin_End
begin
declare @name varchar(50) , @salary integer ,  @deptId int = 12;
select @name =empName, @salary = empSalary from employee_info
where deptId = @deptId;
select @name as 'Name' , @salary as 'Salary';
end
go

--Nested Begin_End
begin
declare @name varchar(50) , @salary integer ,  @deptId int = 12;
select @name =empName, @salary = empSalary from employee_info
where deptId = @deptId;
select @name as 'Name' , @salary as 'Salary';
    begin
	print @deptId;
	end

end
go




