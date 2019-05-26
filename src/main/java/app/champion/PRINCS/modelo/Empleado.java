/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.champion.PRINCS.modelo;

/**
 *
 * @author Usuario
 */
public class Empleado {

    String idEmpleado;
    String NombreE;
    String correoE;
    String TipoPermiso;
    String Usuario;
    String Password;

    public Empleado(String idEmpleado, String NombreE, String correoE, String TipoPermiso, String Usuario, String Password) {
        this.idEmpleado = idEmpleado;
        this.NombreE = NombreE;
        this.correoE = correoE;
        this.TipoPermiso = TipoPermiso;
        this.Usuario = Usuario;
        this.Password = Password;

    }

    public Empleado() {

    }

    public String getIDEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(String idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public String getNombreE() {
        return NombreE;
    }

    public void setNombreE(String NombreE) {
        this.NombreE = NombreE;
    }

    public String getCorreoE() {
        return correoE;
    }

    public void setCorreoE(String correoE) {
        this.correoE = correoE;
    }

    public String getTipoPermiso() {
        return TipoPermiso;
    }

    public void setTipoPermiso(String TipoPermiso) {
        this.TipoPermiso = TipoPermiso;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    @Override
    public String toString() {
        return "EMPLEADO{" + "idEmpleado=" + idEmpleado + ", Nomre Empleado=" + NombreE + ", Correo= " + correoE + ", Tipo de Permiso= " + TipoPermiso + ", Usuario= " + Usuario + ", contraseña= " + Password + '}';
    }

}
