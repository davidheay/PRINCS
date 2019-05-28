package app.champion.PRINCS.dao;

import app.champion.PRINCS.modelo.Mercancia;
import java.util.List;

public interface MercanciaDao {

    public List<Mercancia> listarMercancias();

    public List<Mercancia> listarMercanciasEstiba();

    public String idMax();

    public List<Mercancia> listarMercancia(String idMercancia);

    public void insertarMercancia(String idMercancia, String idCliente, String idTipo, String estado, String observaciones, String nPiezas, String reservaIn, String reservaOut, Integer valor, String moneda);

    public void actualizarEstadoMercancia(String idMercancia, String idTipo);

    public void actualizarMercancia(String idMercancia, String idTipo, String estado, String observaciones, String nPiezas, int valor, String moneda);

}
