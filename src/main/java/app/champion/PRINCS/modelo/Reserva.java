/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.champion.PRINCS.modelo;

import java.sql.Date;

/**
 *
 * @author deha1
 */
public class Reserva {

    String idReserva;
    String idMercancia;
    String tipoActa;
    String idCliente;
    String idEmpleado;
    Date fecha;
    String placa;
    String idTransportadora;
    Integer nPiezas;
    String nombreConductor;
    String cedulaConductor;
    String documentos;
    Float peso;
    Integer valor;
    String idEmbalaje;

    public Reserva(String idReserva, String idMercancia, String tipoActa, String idCliente, String idEmpleado, Date fecha, String placa, String idTransportadora, Integer nPiezas, String nombreConductor, String cedulaConductor, String documentos, Float peso, Integer valor, String idEmbalaje) {
        this.idReserva = idReserva;
        this.idMercancia = idMercancia;
        this.tipoActa = tipoActa;
        this.idCliente = idCliente;
        this.idEmpleado = idEmpleado;
        this.fecha = fecha;
        this.placa = placa;
        this.idTransportadora = idTransportadora;
        this.nPiezas = nPiezas;
        this.nombreConductor = nombreConductor;
        this.cedulaConductor = cedulaConductor;
        this.documentos = documentos;
        this.peso = peso;
        this.valor = valor;
        this.idEmbalaje = idEmbalaje;
    }

    public Reserva() {
    }

    public String getIdReserva() {
        return idReserva;
    }

    public void setIdReserva(String idReserva) {
        this.idReserva = idReserva;
    }

    public String getIdMercancia() {
        return idMercancia;
    }

    public void setIdMercancia(String idMercancia) {
        this.idMercancia = idMercancia;
    }

    public String getTipoActa() {
        return tipoActa;
    }

    public void setTipoActa(String tipoActa) {
        this.tipoActa = tipoActa;
    }

    public String getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }

    public String getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(String idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getIdTransportadora() {
        return idTransportadora;
    }

    public void setIdTransportadora(String idTransportadora) {
        this.idTransportadora = idTransportadora;
    }

    public Integer getnPiezas() {
        return nPiezas;
    }

    public void setnPiezas(Integer nPiezas) {
        this.nPiezas = nPiezas;
    }

    public String getNombreConductor() {
        return nombreConductor;
    }

    public void setNombreConductor(String nombreConductor) {
        this.nombreConductor = nombreConductor;
    }

    public String getCedulaConductor() {
        return cedulaConductor;
    }

    public void setCedulaConductor(String cedulaConductor) {
        this.cedulaConductor = cedulaConductor;
    }

    public String getDocumentos() {
        return documentos;
    }

    public void setDocumentos(String documentos) {
        this.documentos = documentos;
    }

    public Float getPeso() {
        return peso;
    }

    public void setPeso(Float peso) {
        this.peso = peso;
    }

    public Integer getValor() {
        return valor;
    }

    public void setValor(Integer valor) {
        this.valor = valor;
    }

    public String getIdEmbalaje() {
        return idEmbalaje;
    }

    public void setIdEmbalaje(String idEmbalaje) {
        this.idEmbalaje = idEmbalaje;
    }

    @Override
    public String toString() {
        return "Reserva{" + "idReserva=" + idReserva + ", idMercancia=" + idMercancia + ", tipoActa=" + tipoActa + ", idCliente=" + idCliente + ", idEmpleado=" + idEmpleado + ", fecha=" + fecha + ", placa=" + placa + ", idTransportadora=" + idTransportadora + ", nPiezas=" + nPiezas + ", nombreConductor=" + nombreConductor + ", cedulaConductor=" + cedulaConductor + ", documentos=" + documentos + ", peso=" + peso + ", valor=" + valor + ", idEmbalaje=" + idEmbalaje + '}';
    }

}
