CREATE PROCEDURE InsertTransportadora
 @ID_Transportadora int,
 @Nombre varchar(50),
 @transaccionCumplida varchar(2) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY
 
 select @ID_Transportadora = ID_Transportadora from Transportadora where @ID_Transportadora = ID_Transportadora

 IF @ID_Transportadora is null
	begin 
		
		insert into Transportadora(ID_Transportadora, Nombre) 
					values(@ID_Transportadora, @Nombre);

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
 print 'ha ocurrido un error al insertar en la tabla Trasnportadora'

 END CATCH
