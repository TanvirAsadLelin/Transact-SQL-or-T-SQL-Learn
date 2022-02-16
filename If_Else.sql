--IF Statement

begin
declare @salary decimal;
select @salary = AVG(empSalary) from employee_info;
select @salary as 'Avg Salary';
if @salary >25000
begin 
print 'Average salary is greater than 25000';
end
end
go

-- if else statement

begin
declare @salary decimal;
select @salary = AVG(empSalary) from employee_info;
select @salary as 'Avg Salary';
if @salary >85000
   begin 
     print 'Average salary is greater than 85000';
   end
else 
   begin 
     print 'Average salary is Less than 85000';
   end
 
end
go