
select * from employee_info;

--While loop

begin
declare @salary int = (select MIN (empSalary) from employee_info);
  begin 
    while @salary <60000
	begin
	   update employee_info set empSalary+=10000;
	   print 'Salary Updated'
	   if (@salary >=60000)
	   print 'Salary is greater than 60000'
	   break;
	end
  end

end