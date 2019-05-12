CREATE PROCEDURE  InsertEstado
 @ID_Estado int,
 @estado varchar(50),
 @TransaccionCumplida varchar(2) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

  select @ID_Estado = ID_Estado from Estado where ID_Estado = @ID_Estado

 IF @ID_Estado is null
	begin 
		insert into Estado(ID_Estado, estado)
				values (@ID_Estado, @estado)

		set @transaccionCumplida = 'T'
		save transaction InsertComplited
	end
ELSE
	BEGIN
		set @transaccionCumplida = 'F'
		print 'El ID ya existe'
	END 

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error Al insertar en la tabla Empleado'

 END CATCH