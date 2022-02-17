use EmployeeDB;
go

select * from employee_info;
go 

--Create Scalar valued funtion 

create function func_salary(@name as varchar(50))
returns decimal
begin
     declare @salary decimal;
	 select @salary = empSalary from employee_info 
	 where empName=@name;

	 return @salary;
end
	 
go

--Call function 

select dbo.func_salary('Lelin') as 'Salary';
go
