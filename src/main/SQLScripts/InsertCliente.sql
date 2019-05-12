CREATE PROCEDURE InsertCliente
 @ID_Cliente int,
 @nombre varchar(50),
 @direccion varchar(50),
 @telefono varchar(50),
 @transaccionCumplida varchar(2) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @ID_Cliente = ID_Cliente from Cliente where ID_Cliente = @ID_Cliente

 IF @ID_Cliente is null
	begin 
		
		insert into Cliente(ID_Cliente, nombre, direccion, telefono) 
				values(@ID_Cliente, @nombre, @direccion, @telefono);

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
 print 'ha ocurrido un error al insertar en la tabla Cliente'

 END CATCH

