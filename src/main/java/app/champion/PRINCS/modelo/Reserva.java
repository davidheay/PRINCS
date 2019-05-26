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
    String Id_Lote;
    String Estiba;
    String nombreConductor;
    String cedulaConductor;
    String documentos;
    Float peso;
    Integer valor;
    Integer idEmbalaje;
    String Etiquetas;
    String Reg_Fotografico;
    String ID_Estado;
    String observaciones;
    String Firma;
    String Entrega_Nom;
    String cc_Entrega;
    String Moneda;

    public Reserva(String idReserva, String idMercancia, String tipoActa, String idCliente, 
            String idEmpleado, Date fecha, String placa, String idTransportadora, Integer nPiezas, String Id_Lote,String Estiba,
            String nombreConductor, String cedulaConductor, String documentos, Float peso, Integer valor, Integer idEmbalaje, String Etiquetas,
            String Reg_Fotografico,String ID_Estado, String observaciones, String Firma,String Entrega_Nom, String cc_Entrega,String Moneda) {
        this.idReserva = idReserva;
        this.idMercancia = idMercancia;
        this.tipoActa = tipoActa;
        this.idCliente = idCliente;
        this.idEmpleado = idEmpleado;
        this.fecha = fecha;
        this.placa = placa;
        this.idTransportadora = idTransportadora;
        this.nPiezas = nPiezas;
        this.Id_Lote = Id_Lote;
        this.Estiba = Estiba;
        this.nombreConductor = nombreConductor;
        this.cedulaConductor = cedulaConductor;
        this.documentos = documentos;
        this.peso = peso;
        this.valor = valor;
        this.idEmbalaje = idEmbalaje;
        this.Etiquetas = Etiquetas;
        this.Reg_Fotografico = Reg_Fotografico;
        this.ID_Estado = ID_Estado;
        this.observaciones = observaciones;
        this.Firma = Firma;
        this.Entrega_Nom = Entrega_Nom;
        this.cc_Entrega = cc_Entrega;
        this.Moneda = Moneda;
        
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
       public String getIdLote() {
        return Id_Lote;
    }

    public void setIdLote(String Id_Lote) {
        this.Id_Lote = Id_Lote;
    }
           public String getEstiba() {
        return Estiba;
    }

    public void setEstiba(String Estiba) {
        this.Estiba = Estiba;
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

    public Integer getIdEmbalaje() {
        return idEmbalaje;
    }

    public void setIdEmbalaje(Integer idEmbalaje) {
        this.idEmbalaje = idEmbalaje;
    }
    
       public String getEtiquetas() {
        return Etiquetas;
    }

    public void setEtiquetas(String Etiquetas) {
        this.Etiquetas = Etiquetas;
    }
               public String getRegFotografico() {
        return Reg_Fotografico;
    }

    public void setRegFotografico(String Reg_Fotografico) {
        this.Reg_Fotografico = Reg_Fotografico;
    }
               public String getIDEstado() {
        return ID_Estado;
    }

    public void setIDEstado(String ID_Estado) {
        this.ID_Estado = ID_Estado;
    }
               public String getoobservaciones() {
        return observaciones;
    }

    public void setobservaciones(String observaciones) {
        this.observaciones = observaciones;
    }
               public String getFirma() {
        return Firma;
    }

    public void setFirma(String Firma) {
        this.Firma = Firma;
    }
               public String getEntregaNom() {
        return Entrega_Nom;
    }

    public void setEntregaNom(String Entrega_Nom) {
        this.Entrega_Nom = Entrega_Nom;
    }
               public String getccEntrega() {
        return cc_Entrega;
    }

    public void setccEntrega(String cc_Entrega) {
        this.cc_Entrega = cc_Entrega;
    }
               public String getMoneda() {
        return Moneda;
    }

    public void setMoneda(String Moneda) {
        this.Moneda = Moneda;
    }

    @Override
    public String toString() {
        return "Reserva{" + "idReserva=" + idReserva + ", idMercancia=" + idMercancia + ", tipoActa=" + tipoActa + ", idCliente=" + idCliente + 
                ", idEmpleado=" + idEmpleado + ", fecha=" + fecha + ", placa=" + placa + ", idTransportadora=" + idTransportadora + ", nPiezas=" + nPiezas + ", Id_Lote=" + Id_Lote +
                ", Estiba=" + Estiba + ", nombreConductor=" + nombreConductor + ", cedulaConductor=" + cedulaConductor + ", documentos=" + documentos + ", peso=" + peso + ", valor=" + valor +
                ", idEmbalaje=" + idEmbalaje + ", Etiquetas=" + Etiquetas + ", Reg_Fotografico=" + Reg_Fotografico + ", ID_Estado=" + ID_Estado + ", observaciones=" + observaciones + ", Firma=" + Firma +
                ", Entrega_Nom=" + Entrega_Nom + ", cc_Entrega=" + cc_Entrega + ", Moneda=" + Moneda +'}';
    }

}
