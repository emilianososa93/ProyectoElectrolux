create procedure consulta
@usuario nvarchar(50),
@contraseņa nvarchar(50)
as
begin
select nombreempleado from login where @usuario = usuario and @contraseņa = contraseņa;
end; 

drop procedure dbo.consulta;
go

delete * From[login]
go