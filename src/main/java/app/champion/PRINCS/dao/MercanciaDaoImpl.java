package app.champion.PRINCS.dao;

import app.champion.PRINCS.modelo.Mercancia;
import app.champion.PRINCS.util.Conn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class MercanciaDaoImpl implements MercanciaDao {

    private static final Logger logger = LogManager.getLogger();

    @Override
    public List<Mercancia> listarMercancias() {

        Conn conexion = new Conn();

        List<Mercancia> mercancias = new ArrayList<>();
        try {

            //String sql = "select * from Mercancia";
            String sql = "select Mercancia.ID_Mercancia,Cliente.Nombre,Tipo.Nombre,Estado.estado,observaciones,N_Piezas,RESERVA_IN,RESERVA_OUT,valor,moneda from Mercancia,Cliente,Tipo,Estado where Mercancia.ID_CLIENTE=Cliente.ID_Cliente and Mercancia.ID_Tipo=Tipo.ID_Tipo and Mercancia.estado=Estado.ID_Estado";

            PreparedStatement prepareStatemente = (PreparedStatement) conexion.getConexion().prepareStatement(sql);
            ResultSet resultSet = prepareStatemente.executeQuery();
            while (resultSet.next()) {
                Mercancia mercancia = new Mercancia();
                mercancia.setIdMercancia(resultSet.getString(1));
                mercancia.setIdCliente(resultSet.getString(2));
                mercancia.setIdTipo(resultSet.getString(3));
                mercancia.setEstado(resultSet.getString(4));
                mercancia.setObservaciones(resultSet.getString(5));
                mercancia.setnPiezas(resultSet.getString(6));
                mercancia.setReservaIn(resultSet.getString(7));
                mercancia.setReservaOut(resultSet.getString(8));
                mercancia.setValor(resultSet.getInt(9));
                mercancia.setMoneda(resultSet.getString(10));
                mercancias.add(mercancia);
            }
            prepareStatemente.close();
            resultSet.close();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
        } finally {
            conexion.cerrarConexion();
        }
        return mercancias;
    }

    @Override
    public List<Mercancia> listarMercancia(String idMercancia) {
        Conn conexion = new Conn();

        List<Mercancia> mercancias = new ArrayList<>();
        try {
            String sql = "select Mercancia.ID_Mercancia,Cliente.Nombre,Tipo.Nombre,Estado.estado,observaciones,N_Piezas,RESERVA_IN,RESERVA_OUT,valor,moneda from Mercancia,Cliente,Tipo,Estado where Mercancia.ID_CLIENTE=Cliente.ID_Cliente and Mercancia.ID_Tipo=Tipo.ID_Tipo and Mercancia.estado=Estado.ID_Estado and ID_Mercancia=?";
            PreparedStatement prepareStatemente = (PreparedStatement) conexion.getConexion().prepareStatement(sql);
            prepareStatemente.setString(1, idMercancia);
            ResultSet resultSet = prepareStatemente.executeQuery();
            while (resultSet.next()) {
                Mercancia mercancia = new Mercancia();
                mercancia.setIdMercancia(resultSet.getString(1));
                mercancia.setIdCliente(resultSet.getString(2));
                mercancia.setIdTipo(resultSet.getString(3));
                mercancia.setEstado(resultSet.getString(4));
                mercancia.setObservaciones(resultSet.getString(5));
                mercancia.setnPiezas(resultSet.getString(6));
                mercancia.setReservaIn(resultSet.getString(7));
                mercancia.setReservaOut(resultSet.getString(8));
                mercancia.setValor(resultSet.getInt(9));
                mercancia.setMoneda(resultSet.getString(10));
                mercancias.add(mercancia);
            }
            prepareStatemente.close();
            resultSet.close();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
        } finally {
            conexion.cerrarConexion();
        }
        return mercancias;

    }

    @Override
    public void insertarMercancia(String idCliente, String idTipo, String estado, String observaciones, String nPiezas, String idLote, String reservaIn, String reservaOut, Integer valor, String moneda) {

    }

    @Override
    public void actualizarEstadoMercancia(String idMercancia, String idTipo) {
        Conn conexion = new Conn();
        try {

            String sql = "update Mercancia set estado=? where ID_Mercancia=?";

            PreparedStatement preparedStatement = conexion.getConexion().prepareStatement(sql);
            preparedStatement.setString(1, idTipo);
            preparedStatement.setString(2, idMercancia);

            preparedStatement.execute();

            preparedStatement.close();

        } catch (SQLException e) {
            logger.error(e + " " + e.getMessage());
        }
    }

}
