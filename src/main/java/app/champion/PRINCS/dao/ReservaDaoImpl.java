/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.champion.PRINCS.dao;

import app.champion.PRINCS.modelo.Mercancia;
import app.champion.PRINCS.modelo.Reserva;
import app.champion.PRINCS.util.Conn;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class ReservaDaoImpl implements ReservaDao {

    private static final Logger logger = LogManager.getLogger();

    @Override
    public List<Reserva> listarReservas() {

        Conn conexion = new Conn();

        List<Reserva> Reservas = new ArrayList<>();
        try {

            //String sql = "select * from Reserva";
            String sql = "exec GetReservas";

            PreparedStatement prepareStatemente = (PreparedStatement) conexion.getConexion().prepareStatement(sql);
            ResultSet resultSet = prepareStatemente.executeQuery();
            while (resultSet.next()) {
                Reserva Reserva = new Reserva();
                Reserva.setIdReserva(resultSet.getString(1));
                Reserva.setIdMercancia(resultSet.getString(2));
                Reserva.setTipoActa(resultSet.getString(3));
                Reserva.setIdCliente(resultSet.getString(4));
                Reserva.setIdEmpleado(resultSet.getString(5));
                Reserva.setFecha(resultSet.getString(6));
                Reserva.setPlaca(resultSet.getString(7));
                Reserva.setIdTransportadora(resultSet.getString(8));
                Reserva.setnPiezas(resultSet.getInt(9));
                Reserva.setId_Lote(resultSet.getString(10));
                Reserva.setEstiba(resultSet.getString(11));
                Reserva.setNombreConductor(resultSet.getString(12));
                Reserva.setCedulaConductor(resultSet.getString(13));
                Reserva.setDocumentos(resultSet.getString(14));
                Reserva.setPeso(resultSet.getFloat(15));
                Reserva.setValor(resultSet.getInt(16));
                Reserva.setIdEmbalaje(resultSet.getInt(17));
                Reserva.setEtiquetas(resultSet.getString(18));
                Reserva.setReg_Fotografico(resultSet.getString(19));
                Reserva.setID_Estado(resultSet.getString(20));
                Reserva.setObservaciones(resultSet.getString(21));
                Reserva.setFirma(resultSet.getString(22));
                Reserva.setEntrega_Nom(resultSet.getString(23));
                Reserva.setCc_Entrega(resultSet.getString(24));
                Reserva.setMoneda(resultSet.getString(25));

                Reservas.add(Reserva);
            }
            prepareStatemente.close();
            resultSet.close();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
        } finally {
            conexion.cerrarConexion();
        }
        return Reservas;
    }

    @Override
    public List<Reserva> listarReserva(String idReserva) {
        Conn conexion = new Conn();

        List<Reserva> Reservas = new ArrayList<>();
        try {

            String sql = "select * from Reserva where ID_Reserva=?";
            PreparedStatement prepareStatemente = (PreparedStatement) conexion.getConexion().prepareStatement(sql);
            prepareStatemente.setString(1, idReserva);
            ResultSet resultSet = prepareStatemente.executeQuery();
            while (resultSet.next()) {
                Reserva Reserva = new Reserva();
                Reserva.setIdReserva(resultSet.getString(1));
                Reserva.setIdMercancia(resultSet.getString(2));
                Reserva.setTipoActa(resultSet.getString(3));
                Reserva.setIdCliente(resultSet.getString(4));
                Reserva.setIdEmpleado(resultSet.getString(5));
                Reserva.setFecha(resultSet.getString(6));
                Reserva.setPlaca(resultSet.getString(7));
                Reserva.setIdTransportadora(resultSet.getString(8));
                Reserva.setnPiezas(resultSet.getInt(9));
                Reserva.setId_Lote(resultSet.getString(10));
                Reserva.setEstiba(resultSet.getString(11));
                Reserva.setNombreConductor(resultSet.getString(12));
                Reserva.setCedulaConductor(resultSet.getString(13));
                Reserva.setDocumentos(resultSet.getString(14));
                Reserva.setPeso(resultSet.getFloat(15));
                Reserva.setValor(resultSet.getInt(16));
                Reserva.setIdEmbalaje(resultSet.getInt(17));
                Reserva.setEtiquetas(resultSet.getString(18));
                Reserva.setReg_Fotografico(resultSet.getString(19));
                Reserva.setID_Estado(resultSet.getString(20));
                Reserva.setObservaciones(resultSet.getString(21));
                Reserva.setFirma(resultSet.getString(22));
                Reserva.setEntrega_Nom(resultSet.getString(23));
                Reserva.setCc_Entrega(resultSet.getString(24));
                Reserva.setMoneda(resultSet.getString(25));
                Reservas.add(Reserva);
            }
            prepareStatemente.close();
            resultSet.close();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
        } finally {
            conexion.cerrarConexion();
        }
        return Reservas;

    }

    @Override
    public void insertarReserva(String idReserva, String idMercancia, String tipoActa, String idCliente,
            String idEmpleado, String fecha, String placa, String idTransportadora, Integer nPiezas, String Id_Lote, String Estiba,
            String nombreConductor, String cedulaConductor, String documentos, Float peso, Integer valor, Integer idEmbalaje, String Etiquetas,
            String Reg_Fotografico, String ID_Estado, String observaciones, String Firma, String Entrega_Nom, String cc_Entrega, String Moneda) {

        Conn conexion = new Conn();
        try {
            System.out.println("a insertar");
            String sql = "insert into Reserva Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement preparedStatement = conexion.getConexion().prepareStatement(sql);

            preparedStatement.setString(1, idReserva);
            preparedStatement.setString(2, idMercancia);
            preparedStatement.setString(3, tipoActa);
            preparedStatement.setString(4, idCliente);
            preparedStatement.setString(5, idEmpleado);
            preparedStatement.setString(6, fecha);
            preparedStatement.setString(7, placa);
            preparedStatement.setString(8, idTransportadora);
            preparedStatement.setInt(9, nPiezas);
            preparedStatement.setString(10, Id_Lote);
            preparedStatement.setString(11, Estiba);
            preparedStatement.setString(12, nombreConductor);
            preparedStatement.setString(13, cedulaConductor);
            preparedStatement.setString(14, documentos);
            preparedStatement.setFloat(15, peso);
            preparedStatement.setInt(16, valor);
            preparedStatement.setInt(17, idEmbalaje);
            preparedStatement.setString(18, Etiquetas);
            preparedStatement.setString(19, Reg_Fotografico);
            preparedStatement.setString(20, ID_Estado);
            preparedStatement.setString(21, observaciones);
            preparedStatement.setString(22, Firma);
            preparedStatement.setString(23, Entrega_Nom);
            preparedStatement.setString(24, cc_Entrega);
            preparedStatement.setString(25, Moneda);

            preparedStatement.execute();

            preparedStatement.close();

        } catch (SQLException e) {
            logger.error(e + " " + e.getMessage());
        }

    }

    @Override
    public List<Reserva> listarReservasHistoria() {
        Conn conexion = new Conn();

        List<Reserva> reservas = new ArrayList<>();
        try {

            //String sql = "select * from Mercancia";
            String sql = "select Mercancia.ID_Mercancia,Cliente.Nombre,Tipo.Nombre,Reserva.tipo_Acta,Reserva.ID_Reserva,Reserva.fecha from Reserva,Cliente,Mercancia,Tipo where Mercancia.ID_Mercancia=Reserva.ID_Mercancia and Reserva.ID_Cliente=Cliente.ID_Cliente and Mercancia.ID_Tipo=Tipo.Id_Tipo  ";

            PreparedStatement prepareStatemente = (PreparedStatement) conexion.getConexion().prepareStatement(sql);
            ResultSet resultSet = prepareStatemente.executeQuery();
            while (resultSet.next()) {
                Reserva reserva = new Reserva();
                reserva.setIdMercancia(resultSet.getString(1));
                reserva.setIdCliente(resultSet.getString(2));
                reserva.setObservaciones(resultSet.getString(3)); // tipo de carga
                reserva.setTipoActa(resultSet.getString(4));//igual al tipo de acta
                reserva.setIdReserva(resultSet.getString(5));//igual al id de reseva
                reserva.setFecha(resultSet.getString(6));//igual al la fecha

                reservas.add(reserva);
            }
            prepareStatemente.close();
            resultSet.close();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
        } finally {
            conexion.cerrarConexion();
        }
        return reservas;
    }

    @Override
    public List<Reserva> listarReservaTrans(String idReserva) {
        Conn conexion = new Conn();

        List<Reserva> reservas = new ArrayList<>();
        try {

            String sql = "select Reserva.ID_Reserva,Mercancia.ID_Mercancia,Reserva.tipo_Acta,Cliente.Nombre,Empleado.nombre,Reserva.fecha,Reserva.placa,Transportadora.Nombre, Reserva.N_Piezas,Reserva.ID_Lote,Reserva.Estiba,Reserva.Nombre_Conductor,Reserva.cedula_Conductor,Reserva.documentos,Reserva.peso,Reserva.valor,Reserva.ID_Embalaje,Reserva.etiquetas,Reserva.reg_Fotografico,Estado.estado,Reserva.observaciones,Reserva.firma,Reserva.Entrega_NOM,Reserva.cc_entrega,Reserva.moneda,TIpo.Nombre from Reserva,Estado,Mercancia,Tipo,Cliente,Empleado,Transportadora where Mercancia.ID_Mercancia=Reserva.ID_Mercancia and Mercancia.ID_Tipo=Tipo.ID_Tipo and Reserva.ID_Cliente=Cliente.ID_Cliente and Reserva.ID_Empleado=Empleado.ID_Empleado and Reserva.ID_Transportadora=Transportadora.ID_Transportadora and Reserva.ID_Estado=Estado.ID_Estado and Reserva.ID_Reserva=?";
            PreparedStatement prepareStatemente = (PreparedStatement) conexion.getConexion().prepareStatement(sql);
            prepareStatemente.setString(1, idReserva);
            ResultSet resultSet = prepareStatemente.executeQuery();
            while (resultSet.next()) {
                Reserva reserva = new Reserva();
                reserva.setIdReserva(resultSet.getString(1));
                reserva.setIdMercancia(resultSet.getString(2));
                reserva.setTipoActa(resultSet.getString(3));
                reserva.setIdCliente(resultSet.getString(4));
                reserva.setIdEmpleado(resultSet.getString(5));
                reserva.setFecha(resultSet.getString(6));
                reserva.setPlaca(resultSet.getString(7));
                reserva.setIdTransportadora(resultSet.getString(8));
                reserva.setnPiezas(resultSet.getInt(9));
                reserva.setId_Lote(resultSet.getString(10));
                reserva.setEstiba(resultSet.getString(11));
                reserva.setNombreConductor(resultSet.getString(12));
                reserva.setCedulaConductor(resultSet.getString(13));
                reserva.setDocumentos(resultSet.getString(14));
                reserva.setPeso(resultSet.getFloat(15));
                reserva.setValor(resultSet.getInt(16));
                reserva.setIdEmbalaje(resultSet.getInt(17));
                reserva.setEtiquetas(resultSet.getString(18));
                reserva.setReg_Fotografico(resultSet.getString(19));
                reserva.setID_Estado(resultSet.getString(20));
                reserva.setObservaciones(resultSet.getString(21));
                reserva.setFirma(resultSet.getString(22));
                reserva.setEntrega_Nom(resultSet.getString(23));
                reserva.setCc_Entrega(resultSet.getString(24));
                reserva.setMoneda(resultSet.getString(25));
                reserva.setTipoMercancia(resultSet.getString(26));
                reservas.add(reserva);
            }
            prepareStatemente.close();
            resultSet.close();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
        } finally {
            conexion.cerrarConexion();
        }
        return reservas;
    }

}
