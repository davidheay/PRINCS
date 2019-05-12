CREATE PROCEDURE InsertMercancia
 @ID_Reserva int,
 @ID_Mercancia int,
 @tipo_Acta varchar(20),
 @ID_Cliente int,
 @ID_Empleado int,
 @fecha datetime,
 @placa varchar(20),
 @ID_Transportadora int,
 @Nombre_Conductor varchar(50),
 @Cedula_Conductor varchar(50),
 @N_Piezas int,
 @documentos varchar(50),
 @peso float,
 @valor int, 
 @ID_Embalaje int,
 @etiquetas varchar(40),
 @reg_Fotografico varchar(50),
 @ID_Estado int,
 @observaciones varchar(255),
 @firma varchar(30),
 @Entrega_NOM varchar(50),
 @cc_Entrega varchar(50),
 @moneda varchar(50),
 @transaccionCumplida varchar(2) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY
 
 select @ID_Reserva = ID_Reserva from Reserva where ID_Reserva = @ID_Reserva

 IF @ID_Reserva is null
	begin 
		
		insert into Reserva(ID_Reserva,ID_Mercancia, tipo_Acta, ID_Cliente,
							ID_Empleado, fecha, placa, ID_Transportadora, 
							N_Piezas, Nombre_Conductor, cedula_Conductor,
							documentos, peso, valor, ID_Embalaje, etiquetas,
							reg_Fotografico, ID_Estado, observaciones, firma,
							Entrega_NOM, cc_entrega, moneda) 
				values(@ID_Reserva, @ID_Mercancia, @tipo_Acta, @ID_Cliente,
							@ID_Empleado, @fecha, @placa, @ID_Transportadora, 
							@N_Piezas, @Nombre_Conductor, @Cedula_Conductor,
							@documentos, @peso, @valor, @ID_Embalaje, @etiquetas,
							@reg_Fotografico, @ID_Estado, @observaciones, @firma,
							@Entrega_NOM, @cc_Entrega, @moneda);

		set @transaccionCumplida = 'T'
		save transaction InsertComplited

	end
 ELSE

	begin 
		set @transaccionCumplida = 'F'
		print 'El ID ya existe'
	end

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al insertar en la tabla Mercancia'

 END CATCH

