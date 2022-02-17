use EmployeeDB;
go

--Create Inline Table valued function 

create function func_inlineTableFunction(@salary as decimal)
returns table
as
return select * from employee_info where empSalary = @salary;
go

--use this
--select * from employee_info where empSalary=30000;
--go

select * from func_inlineTableFunction(30000);
go


--Create Multi statement Table valued function 
select * from employee_info;
go

create function func_multiStatementTableFunction (@id int)

returns @table table
--Note :  Number of coloumn is same as the table which table data will be used
(empId int, empName varchar(50),empSalary decimal,job varchar(20),phone int, deptId int)
as
begin 
   insert into @table
   select * from employee_info where deptId = @id;
   return

end
go

--use it

select * from func_multiStatementTableFunction(10);
go
