CREATE PROCEDURE  GetEmpleado
 @ID_Empleado int,
 @Usuario varchar(20) out,
 @nombre varchar(50) out,
 @correo varchar(50) out,
 @tipo_permisos varchar(20) out,
 @contraseña varchar(20) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @nombre = nombre, @correo = correo, @tipo_permisos = Tipo_Permiso,
		@contraseña = contraseña, @Usuario = Usuario
		from Empleado where @ID_Empleado = ID_Empleado

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH

