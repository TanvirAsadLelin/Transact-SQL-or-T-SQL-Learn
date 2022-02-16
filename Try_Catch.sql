--Try Catch with error

begin try
    select 10/0 as 'Division';
	end try
	begin catch
	select ERROR_MESSAGE() as 'Error message' , ERROR_LINE() as 'Error line'
	, ERROR_NUMBER() as 'Error Number', ERROR_PROCEDURE() as 'Procedure';
	end catch
go
--Try Catch without error

begin try
    select 100/5 as 'Division';
	end try
	begin catch
	select ERROR_MESSAGE() as 'Error message' , ERROR_LINE() as 'Error line'
	, ERROR_NUMBER() as 'Error Number', ERROR_PROCEDURE() as 'Procedure';
	end catch
go 
