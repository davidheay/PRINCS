CREATE PROCEDURE GetCliente 
 @ID_Cliente int,
 @nombre varchar(50) out,
 @direccion varchar(50) out,
 @telefono varchar(50) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @nombre = nombre, @direccion = direccion, @telefono = telefono 
		from Cliente where @ID_Cliente = ID_Cliente

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH

