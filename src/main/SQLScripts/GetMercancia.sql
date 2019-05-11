CREATE PROCEDURE  GetMercancia
 @ID_Mercancia int,
 @ID_Tipo int,
 @estado varchar(20),
 @observaciones varchar(50),
 @N_piezas int,
 @ID_Lote int,
 @ID_In int,
 @ID_Out int,
 @valor int,
 @moneda varchar(50)
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @ID_Tipo = ID_Tipo,				@estado = estado,
		@observaciones = observaciones, @N_piezas = N_Piezas,
		@ID_Lote = ID_Lote,				@ID_In = ID_In, 
		@ID_Out = ID_Out,				@valor = valor,
		@moneda = moneda
		from Mercancia where @ID_Mercancia = ID_Mercancia

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH

