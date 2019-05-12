CREATE PROCEDURE  GetTransportadora
 @ID_Transportadora int,
 @Nombre varchar(50) out

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @Nombre = Nombre from Transportadora where @ID_Transportadora = ID_Transportadora

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH

