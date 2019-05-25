/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.champion.PRINCS.modelo;

/**
 *
 * @author deha1
 */
public class Mercancia {

    String idMercancia;
    String idCliente;
    String idTipo;
    String estado;
    String observaciones;
    String nPiezas;
    String idLote;
    String reservaIn;
    String reservaOut;
    int valor;
    String moneda;

    public Mercancia(String idMercancia, String idCliente, String idTipo, String estado, String observaciones, String nPiezas, String idLote, String reservaIn, String reservaOut, int valor, String moneda) {
        this.idMercancia = idMercancia;
        this.idCliente = idCliente;
        this.idTipo = idTipo;
        this.estado = estado;
        this.observaciones = observaciones;
        this.nPiezas = nPiezas;
        this.idLote = idLote;
        this.reservaIn = reservaIn;
        this.reservaOut = reservaOut;
        this.valor = valor;
        this.moneda = moneda;
    }

    public Mercancia() {
    }

    public String getIdMercancia() {
        return idMercancia;
    }

    public void setIdMercancia(String idMercancia) {
        this.idMercancia = idMercancia;
    }

    public String getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }

    public String getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(String idTipo) {
        this.idTipo = idTipo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public String getnPiezas() {
        return nPiezas;
    }

    public void setnPiezas(String nPiezas) {
        this.nPiezas = nPiezas;
    }

    public String getIdLote() {
        return idLote;
    }

    public void setIdLote(String idLote) {
        this.idLote = idLote;
    }

    public String getReservaIn() {
        return reservaIn;
    }

    public void setReservaIn(String reservaIn) {
        this.reservaIn = reservaIn;
    }

    public String getReservaOut() {
        return reservaOut;
    }

    public void setReservaOut(String reservaOut) {
        this.reservaOut = reservaOut;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public String getMoneda() {
        return moneda;
    }

    public void setMoneda(String moneda) {
        this.moneda = moneda;
    }

    @Override
    public String toString() {
        return "Mercancia{" + "idMercancia=" + idMercancia + ", idCliente=" + idCliente + ", idTipo=" + idTipo + ", estado=" + estado + ", observaciones=" + observaciones + ", nPiezas=" + nPiezas + ", idLote=" + idLote + ", reservaIn=" + reservaIn + ", reservaOut=" + reservaOut + ", valor=" + valor + ", moneda=" + moneda + '}';
    }

}
