--WaitFor Time
select GETDATE();
go
begin
waitfor time '15:22:00'
 print 'This is 15:22:00';
 select * from employee_info;
 end
 go

 select GETDATE() as 'Current date';
 go

 --WaitFor Delay
select GETDATE();
go
begin
waitfor delay '00:00:20'
 print 'This delay 20 seconds';
 select * from employee_info;
 end
 go