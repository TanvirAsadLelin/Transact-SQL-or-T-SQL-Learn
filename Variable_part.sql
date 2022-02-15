use EmployeeDB;
--Wroking with variable 

declare @name varchar(50);
set @name= 'Lelin'; -- Assign value and set is use only  for one variable at a time.
select @name; 

select @name  ='Israt';
select @name;

-- Multiple variable with  Alaise

declare @myname varchar(50), @age int , @salary decimal (7,2)=45000;
select @myname = 'Lelin',@age = 25;
select @myname as 'Name' , @age as 'Age' , @salary as 'Salary'; -- Alaise for column name use as keyword


--Operation with variable

declare @number int = 100;
set @number+= 50;
select @number as 'Number';

set @number = @number-50;
select @number as 'Number';

select * from employee_info;
 --Assign value from DB data
declare @name varchar(50) , @salary decimal (7,2);
select @name = empName , @salary = empSalary from   employee_info;
select @name as 'Name' , @salary as 'Salary';






