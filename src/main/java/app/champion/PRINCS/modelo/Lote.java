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
public class Lote {

    String idLote;
    String NombreL;
    String Capacidad;
    String Lugar;

    public Lote(String idLote, String NombreL) {
        this.idLote = idLote;
        this.NombreL = NombreL;
    }

    public Lote() {

    }

    public String getIDLote() {
        return idLote;
    }

    public void setIdLote(String idLote) {
        this.idLote = idLote;
    }

    public String getNombreL() {
        return NombreL;
    }

    public void setNombreL(String NombreL) {
        this.NombreL = NombreL;
    }

    public String getCapacidad() {
        return Capacidad;
    }

    public void setCapacidad(String Capacidad) {
        this.Capacidad = Capacidad;
    }

    public String getLugar() {
        return Lugar;
    }

    public void setLugar(String Lugar) {
        this.Lugar = Lugar;
    }

    @Override
    public String toString() {
        return "Lote{" + "idLote=" + idLote + ", Nombre=" + NombreL + ", Capacidad=" + Capacidad + ", Lugar=" + Lugar + '}';
    }

}
