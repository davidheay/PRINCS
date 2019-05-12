CREATE PROCEDURE InsertMercancia
 @ID_Mercancia int,
 @ID_Tipo int,
 @estado varchar(20),
 @observaciones varchar(50),
 @N_Piezas int,
 @ID_Lote int,
 @ID_In int,
 @ID_Out int,
 @valor int,
 @moneda varchar(50),
 @transaccionCumplida varchar(2) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY
 
 select @ID_Mercancia = ID_Mercancia from Mercancia where ID_Mercancia = @ID_Mercancia

 IF @ID_Mercancia is null
	begin 
		
		insert into Mercancia(ID_Mercancia, ID_Tipo, estado, observaciones,
							  N_Piezas, ID_Lote, ID_In, ID_Out, valor, moneda) 
				values(@ID_Mercancia, @ID_Tipo, @estado, @observaciones,
						@N_Piezas, @ID_Lote, @ID_In, @ID_Out, @valor, @moneda);

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

