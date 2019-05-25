package app.champion.PRINCS.dao;

import app.champion.PRINCS.modelo.Aislamiento;
import java.util.List;

public interface AislamientoDao {

    public List<Aislamiento> listarpabellones();

    public List<Aislamiento> listarPacientes(String strIdPab);

    public void insertarAislamientos(String tipoDoc, String strDocumento, String ingreso, String cama, String strPabellon, String tipoAislamiento);
}
