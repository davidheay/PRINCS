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
public class Transportadora {

    String idTransportadora;
    String Nom_Transportadora;

    public Transportadora(String idTransportadora, String Nom_Transportadora) {
        this.idTransportadora = idTransportadora;
        this.Nom_Transportadora = Nom_Transportadora;
    }

    public Transportadora() {

    }

    public String getIDTransportadora() {
        return idTransportadora;
    }

    public void setIdTransportadora(String idTransportadora) {
        this.idTransportadora = idTransportadora;
    }

    public String getNomTransportadora() {
        return Nom_Transportadora;
    }

    public void setNomTransportadora(String Nom_Transportadora) {
        this.Nom_Transportadora = Nom_Transportadora;
    }

    @Override
    public String toString() {
        return "Transportadora{" + "idTransportadora=" + idTransportadora + ", Transportadora=" + Nom_Transportadora + '}';
    }

}
