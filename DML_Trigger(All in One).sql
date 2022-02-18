select * from history_employeeInfo;
go

select * from employee_info;
go

--Create trigger for multiple operation in a single trigger

create trigger tr_employee_info_AllDMLOperation
on employee_info
after insert, delete , update
as
begin     
         --Insert
    if exists (select * from inserted) and not exists (select * from deleted)
		 insert into history_employeeInfo
		 select empId ,empName , empSalary,job,phone,deptId, 'tanvirasad', GETDATE()
		 from inserted;   --Inserted is a Magic table 
		  
		 --Update
    else if exists (select * from inserted)and exists (select * from deleted)
		 insert into history_employeeInfo 
		 select empId ,empName , empSalary,job,phone,deptId, 'tanvirasad', GETDATE()
		 from inserted;   --Inserted is a Magic table 

		 --Delete
   else if exists (select * from deleted) and not exists (select * from inserted)
         insert into history_employeeInfo
		 select empId ,empName , empSalary,job,phone,deptId, 'tanvirasad', GETDATE()
		 from deleted;   --Deleted is a Magic table 

    else
	begin 
	   print 'Nothing happened'
	   return
	end
end
go



