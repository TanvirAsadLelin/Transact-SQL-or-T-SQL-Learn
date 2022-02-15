use EmployeeDB;
--Wroking with variable 

declare @name varchar(50);
set @name= 'Lelin'; -- Assign value and set is use only  for one variable at a time.
select @name; 

select @name  ='Israt';
select @name;

-- Multiple variable 

declare @myname varchar(50), @age int;
select @myname = 'Lelin',@age = 25;
select @myname , @age;
