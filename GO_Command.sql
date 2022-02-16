--Start batch
use EmployeeDB;
go

--End batch

--Start batch
declare @name varchar(50);
select @name = 'Lelin';
go
--End batch

--Start batch
declare @name varchar(50);
select @name = 'Asad';
go
--End batch

--Start batch
declare @myName varchar(50);
select @myName = 'israt';
select @myName as 'Name';
go
--End batch