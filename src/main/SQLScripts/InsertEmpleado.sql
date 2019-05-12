CREATE PROCEDURE  InsertEmpleado
 @ID_Empleado int,
 @Usuario varchar(50),
 @nombre varchar(50),
 @correo varchar(50),
 @tipo_permisos varchar(20),
 @contraseña varchar(20),
 @TransaccionCumplida varchar(2) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

  select ID_Empleado = ID_Empleado from Empleado where ID_Empleado = @ID_Empleado

 IF @ID_Empleado is null
	begin 
		insert into Empleado (ID_Empleado, nombre, correo, Tipo_Permiso, Usuario, contraseña)
				values (@ID_Empleado, @nombre, @correo, @tipo_permisos, @Usuario, @contraseña)

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