CREATE PROCEDURE  GetTipo
 @ID_Tipo int,
 @Nombre varchar(50) out

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @Nombre = Nombre from Tipo where @ID_Tipo = ID_Tipo

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH

