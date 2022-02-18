use EmployeeDB;
go

--Create DDL Trigger

create or alter trigger tr_onTableCreate
on database
for create_table, drop_table  --multiple events added
as
begin
   print 'Successfuly create table'
end