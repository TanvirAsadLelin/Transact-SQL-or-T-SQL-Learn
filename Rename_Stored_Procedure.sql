use EmployeeDB;
go

--Create a stored procedure for apply Rename 

create procedure proc_forRenamePorpuse
as
begin 
  print 'This procedure is use for rename stored procedure.';
  print 2+2;
  end
  go

  execute proc_forRenamePorpuse;
  go

--Rename Operation here
exec sp_rename 'proc_forRenamePorpuse','proc_renameSuccessfulyDone';
go

--Drawback already created when rename a stored procedure

select * from sys.sql_modules;