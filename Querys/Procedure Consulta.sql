create procedure consulta
@usuario nvarchar(50),
@contrase�a nvarchar(50)
as
begin
select nombreempleado from login where @usuario = usuario and @contrase�a = contrase�a;
end; 

drop procedure dbo.consulta;
go

delete * From[login]
go