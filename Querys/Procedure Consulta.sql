create procedure consulta
@usuario nvarchar(50),
@contraseña nvarchar(50)
as
begin
select nombreempleado from login where @usuario = usuario and @contraseña = contraseña;
end; 

drop procedure dbo.consulta;
go

delete * From[login]
go