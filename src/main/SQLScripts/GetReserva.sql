CREATE PROCEDURE  GetReserva
 @ID_Reserva int,
 @ID_Mercancia int out,
 @Tipo_Acta varchar(20) out,
 @ID_Cliente int out,
 @ID_Empleado int out,
 @Fecha datetime out,
 @Placa varchar(20) out,
 @ID_Transportadora int out,
 @N_piezas int out,
 @Nombre_Conductor varchar(50) out,
 @Cedula_Conductor varchar(50) out,
 @Documentos varchar(50) out,
 @Peso float out,
 @valor int out,
 @ID_Embalaje int out,
 @Etiquetas varchar(40) out,
 @Reg_Fotografico varchar(40) out,
 @ID_Estado int out,
 @Observaciones varchar(255) out,
 @firma varchar(30) out,
 @Entrega_NOM varchar(50) out,
 @CC_Entrega varchar(50) out,
 @moneda varchar(50) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @ID_Mercancia = ID_Mercancia,			@Tipo_Acta = tipo_Acta, 
		@ID_Cliente = ID_Cliente,				@ID_Empleado = ID_Empleado,
		@Fecha = fecha,							@Placa = placa,
		@ID_Transportadora = ID_Transportadora, @N_piezas = N_Piezas,
		@Nombre_Conductor = Nombre_Conductor,   @Cedula_Conductor = cedula_Conductor,
		@Documentos = documentos,				@Peso = peso,
		@valor = valor,							@ID_Embalaje = ID_Embalaje,
		@Etiquetas = etiquetas,					@Reg_Fotografico = reg_Fotografico,
		@ID_Estado = ID_Estado,					@Observaciones = observaciones,
		@firma = firma,							@Entrega_NOM = Entrega_NOM,
		@CC_Entrega = cc_entrega,				@moneda = moneda
		from Reserva where @ID_Reserva = ID_Reserva

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH

