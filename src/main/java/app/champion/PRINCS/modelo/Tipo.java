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
public class Tipo {

    String idTipo;
    String Nom_Tipo;

    public Tipo(String idTipo, String Nom_Tipo) {
        this.idTipo = idTipo;
        this.Nom_Tipo = Nom_Tipo;
    }

    public Tipo() {

    }

    public String getIDTipo() {
        return idTipo;
    }

    public void setIdTipo(String idTipo) {
        this.idTipo = idTipo;
    }

    public String getNomTipo() {
        return Nom_Tipo;
    }

    public void setNomTipo(String Nom_Tipo) {
        this.Nom_Tipo = Nom_Tipo;
    }

    @Override
    public String toString() {
        return "Tipo{" + "idTipo=" + idTipo + ", Tipo=" + Nom_Tipo + '}';
    }

}
