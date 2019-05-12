CREATE PROCEDURE  InsertLote
 @ID_Lote int,
 @nombre varchar(50),
 @capacidad varchar(50),
 @lugar varchar(50),
 @TransaccionCumplida varchar(2) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

  select @ID_Lote = ID_Lote from Lote where ID_Lote = @ID_Lote

 IF @ID_Lote is null
	begin 
		insert into Lote (ID_Lote, nombre, capacidad, lugar)
				values (@ID_Lote, @nombre, @capacidad, @lugar)

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