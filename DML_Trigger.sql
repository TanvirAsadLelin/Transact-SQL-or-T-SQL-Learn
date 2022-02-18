use EmployeeDB;
go

select * from employee_info;
go 

--Create DML Trigger 

create trigger tr_message
on employee_info
after insert
as 
begin
   print 'New employee information added.';
end

go

insert into employee_info values (6,'Anik',20000 , 'CA',7832467,10);
go


-- Create a extra table for backup pervious tyable and use DML Trigger also in real life 

create table history_employeeInfo
(id int , name varchar(100),salary decimal , job varchar(50), phone int , dept_id int,
modifiedBy varchar(100), modifiedOn date
);
go

select * from history_employeeInfo;
go
--After Insert
create trigger tr_employeeInfo_After_insert
on employee_info
after insert
as 
   begin    
         insert into history_employeeInfo
		 select empId ,empName , empSalary,job,phone,deptId, 'tanvirasad', GETDATE()
		 from inserted;   --Inserted is a Magic table 
   end
go


insert into employee_info values (7,'Sathi',25000 , 'BBA',7324596,11);
go


--After Update
create trigger tr_employeeInfo_After_update
on employee_info
after update
as 
   begin    
         insert into history_employeeInfo
		 select empId ,empName , empSalary,job,phone,deptId, 'tanvirasad', GETDATE()
		 from inserted;   --Inserted is a Magic table 
   end
go

update employee_info set empSalary+=1000 where empName = 'Sathi';
go


--After Delete
create trigger tr_employeeInfo_After_delete
on employee_info
after delete
as 
   begin    
         insert into history_employeeInfo
		 select empId ,empName , empSalary,job,phone,deptId, 'tanvirasad', GETDATE()
		 from deleted;   --Deleted is a Magic table 
   end
go

delete from employee_info where empName = 'Anik';
go
