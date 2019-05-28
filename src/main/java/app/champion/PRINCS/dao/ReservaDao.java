/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.champion.PRINCS.dao;

import app.champion.PRINCS.modelo.Reserva;
import java.util.Date;
import java.util.List;

public interface ReservaDao {

    public List<Reserva> listarReservas();

    public List<Reserva> listarReservasHistoria();

    public String idMax();

    public List<Reserva> listarReserva(String idReserva);

    public List<Reserva> listarReservaTrans(String idReserva);

    public void insertarReserva(String idReserva, String idMercancia, String tipoActa, String idCliente,
            String idEmpleado, String fecha, String placa, String idTransportadora, Integer nPiezas, String Id_Lote, String Estiba,
            String nombreConductor, String cedulaConductor, String documentos, Float peso, Integer valor, Integer idEmbalaje, String Etiquetas,
            String Reg_Fotografico, String ID_Estado, String observaciones, String Firma, String Entrega_Nom, String cc_Entrega, String Moneda);

}
