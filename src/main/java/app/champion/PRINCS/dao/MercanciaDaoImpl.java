package app.champion.PRINCS.dao;

import app.champion.PRINCS.modelo.Aislamiento;
import app.champion.PRINCS.modelo.Mercancia;
import app.champion.PRINCS.util.Conn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
            String sql = "select * from Mercancia";
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
                mercancia.setIdLote("ninguno");
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
            String sql = "select * from Mercancia where ID_Mercancia=?";
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
                mercancia.setIdLote(resultSet.getString(7));
                mercancia.setReservaIn(resultSet.getString(8));
                mercancia.setReservaOut(resultSet.getString(9));
                mercancia.setValor(resultSet.getInt(10));
                mercancia.setMoneda(resultSet.getString(11));
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

}
