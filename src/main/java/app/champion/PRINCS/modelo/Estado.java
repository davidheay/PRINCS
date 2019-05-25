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
public class Estado {

    String idEstado;
    String Nom_Estado;

    public Estado(String idEstado, String Nom_Estado) {
        this.idEstado = idEstado;
        this.Nom_Estado = Nom_Estado;
    }

    public Estado() {

    }

    public String getIDEstado() {
        return idEstado;
    }

    public void setIdEstado(String idEstado) {
        this.idEstado = idEstado;
    }

    public String getNomEstado() {
        return Nom_Estado;
    }

    public void setNomEstado(String Nom_Estado) {
        this.Nom_Estado = Nom_Estado;
    }

    @Override
    public String toString() {
        return "Estado{" + "idEstado=" + idEstado + ", Estado=" + Nom_Estado + '}';
    }
}
