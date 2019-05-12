CREATE PROCEDURE InsertTipo
 @ID_Tipo int,
 @Nombre varchar(50),
 @transaccionCumplida varchar(2) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY
 
 select @ID_Tipo = ID_Tipo from Tipo where ID_Tipo = @ID_Tipo

 IF @ID_Tipo is null
	begin 
		
		insert into Tipo(ID_Tipo, Nombre) 
					values(@ID_Tipo, @Nombre);

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

