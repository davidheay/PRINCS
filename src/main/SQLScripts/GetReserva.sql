CREATE PROCEDURE  GetReserva
 @ID_Reserva int,
 @ID_Mercancia int,
 @Tipo_Acta varchar(20),
 @ID_Cliente int,
 @ID_Empleado int,
 @Fecha datetime,
 @Placa varchar(20),
 @ID_Transportadora int,
 @N_piezas int,
 @Nombre_Conductor varchar(50),
 @Cedula_Conductor varchar(50),
 @Documentos varchar(50),
 @Peso float,
 @valor int,
 @ID_Embalaje int,
 @Etiquetas varchar(40),
 @Reg_Fotografico varchar(40),
 @ID_Estado int,
 @Observaciones varchar(255),
 @firma varchar(30),
 @Entrega_NOM varchar(50),
 @CC_Entrega varchar(50),
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

