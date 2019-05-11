CREATE PROCEDURE  Estado
 @ID_Estado int,
 @Estado varchar(20) out 
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @Estado = Estado from Estado where @ID_Estado = ID_Estado

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH

