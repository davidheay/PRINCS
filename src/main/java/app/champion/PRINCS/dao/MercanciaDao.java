package app.champion.PRINCS.dao;

import app.champion.PRINCS.modelo.Mercancia;
import java.util.List;

public interface MercanciaDao {

    public List<Mercancia> listarMercancias();

    public List<Mercancia> listarMercancia(String idMercancia);

    public void insertarMercancia(String idCliente, String idTipo, String estado, String observaciones, String nPiezas, String reservaIn, String reservaOut, Integer valor, String moneda);

    public void actualizarEstadoMercancia(String idMercancia, String idTipo);
}
