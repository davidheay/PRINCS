CREATE PROCEDURE  GetLote
 @ID_Lote int,
 @nombre varchar(50) out,
 @capacidad varchar(50) out,
 @lugar varchar(20) out

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @nombre = nombre, @capacidad = capacidad, @lugar = lugar
		from Lote where @ID_Lote = ID_Lote

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH

