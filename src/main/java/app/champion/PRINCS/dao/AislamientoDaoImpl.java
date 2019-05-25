package app.champion.PRINCS.dao;

import app.champion.PRINCS.modelo.Aislamiento;
import app.champion.PRINCS.util.Conn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class AislamientoDaoImpl implements AislamientoDao {

    private static final Logger logger = LogManager.getLogger();

    /**
     * Metodo para la obtencion de todos los pabellos
     *
     * @return List pabellones
     */
    @Override
    public List<Aislamiento> listarpabellones() {
        Conn conexion = new Conn();

        List<Aislamiento> pabellones = new ArrayList<Aislamiento>();
        try {
            String sql = "select m1.mpcodp,(select m.MPNomP from maepab m where m1.mpcodp = m.MPCodP) as Pabellon\n"
                    + "from maepab1 m1 where MPActCam <> 'S' and m1.MPCodP not in ('98','4','18','8','13','17')  group by m1.MPCodP  order by 2";
            PreparedStatement prepareStatemente = (PreparedStatement) conexion.getConexion().prepareStatement(sql);
            ResultSet resultSet = prepareStatemente.executeQuery();
            while (resultSet.next()) {
                Aislamiento pabell = new Aislamiento();
                pabell.setCodPabellon(resultSet.getString(1));
                pabell.setDescPabellon(resultSet.getString(2));
                pabellones.add(pabell);
            }
            prepareStatemente.close();
            resultSet.close();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
        } finally {
            conexion.cerrarConexion();
        }
        return pabellones;
    }

    /**
     * Metodo para la obtencio de todos los pacientes que se encuentren en un
     * pabellon
     *
     * @param idPab
     * @return lista pacientes
     */
    @Override
    public List<Aislamiento> listarPacientes(String idPab) {
        Conn conexion = new Conn();

        List<Aislamiento> pacientes = new ArrayList<Aislamiento>();
        try {
            String sql = "SELECT distinct\n"
                    + "T1.MPNumC as cama, \n"
                    + "case when T1.MPUced='' then '' when T1.MPUced is not null then T1.MPUced end as numero, \n"
                    + "(SELECt c.MPNOMC FROM CAPBAS C WHERE C.MPCEDU=T1.MPUced AND C.MPTDOC=T1.MPUDoc ) as nombre,\n"
                    + "case when T1.MPUced='' then '' else cast(datediff(DAY, (SELECt MPFCHN FROM CAPBAS C WHERE C.MPCEDU=T1.MPUced AND C.MPTDOC=T1.MPUDoc ), getdate()) / (365.23076923074) as int) end as edad,\n"
                    + "convert(date,I.INGFECADM) as fecha_adm,  \n"
                    + "datediff(DAY,I.INGFECADM,getdate()) as Diasest,\n"
                    + "(select TOP 1 case when ai.aislamiento = 'sinaislamiento' then '' else ai.aislamiento end  from REPORT.regaislamientos ai where ai.tipdoc = i.MPTDoc and ai.numdoc = i.MPCedu and  ai.ingreso = i.IngCsc \n"
                    + "and ai.fechorreg = (select max(aii.fechorreg) from REPORT.regaislamientos aii where  ai.tipdoc = aii.tipdoc and ai.numdoc = aii.numdoc and  ai.ingreso = aii.ingreso )   \n"
                    + ") as aislamiento,\n"
                    + "i.IngCsc as ingreso,i.MPTDoc as tipdoc,T1.MPCodP as pab\n"
                    + "FROM ((((MAEPAB1 T1 \n"
                    + "LEFT JOIN MAEPAB T2 \n"
                    + "ON T2.MPCodP = T1.MPCodP) \n"
                    + "LEFT JOIN INGRESOS I \n"
                    + "ON I.MPCEDU=T1.MPUced AND I.MPTDOC=T1.MPUDoc AND I.INGCSC=T1.MPCTVIN) \n"
                    + "LEFT JOIN TMPFAC F \n"
                    + "ON F.TFCedu=T1.MPUCED AND F.TFTDOC=T1.MPUDOC AND F.TMCTVING=I.INGCSC) \n"
                    + "left join hccom51 h \n"
                    + "on h.HISCKEY =I.MPCEDU and h.HISTipDoc = I.MPTDOC and h.HCtvIn51 = I.INGCSC and h.hcprctpop='2')\n"
                    + "WHERE \n"
                    + "(T2.EMPCOD = '1' and T2.MPMCDpto = '001') \n"
                    + "AND (T1.MPActCam <> 'S') \n"
                    + "AND (T2.MPActPab <> 'S') \n"
                    + "AND T1.MPCodP=? and\n"
                    + "T1.mpdisp = 1\n"
                    + "ORDER BY cama";
            PreparedStatement prepareStatemente = (PreparedStatement) conexion.getConexion().prepareStatement(sql);
            prepareStatemente.setString(1, idPab);
            ResultSet resultSet = prepareStatemente.executeQuery();
            while (resultSet.next()) {
                Aislamiento paciente = new Aislamiento();
                paciente.setcama(resultSet.getString(1));
                paciente.setnumero(resultSet.getString(2));
                paciente.setnombre(resultSet.getString(3));
                paciente.setedad(resultSet.getString(4));
                paciente.setfechaAdmision(resultSet.getString(5));
                paciente.setdiasEst(resultSet.getString(6));
                paciente.settipoAislamiento(resultSet.getString(7));
                paciente.setingreso(resultSet.getString(8));
                paciente.settipoDoc(resultSet.getString(9));
                paciente.setpabellonPte(resultSet.getString(10));

                pacientes.add(paciente);
            }
            prepareStatemente.close();
            resultSet.close();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
        } finally {
            conexion.cerrarConexion();
        }
        return pacientes;
    }

    /**
     * Metodo para insertar tipo de aislamiento a paciente
     *
     * @param tipoDoc
     * @param strDocumento
     * @param ingreso
     * @param cama
     * @param strPabellon
     * @param tipoAislamiento
     */
    @Override
    public void insertarAislamientos(String tipoDoc, String strDocumento, String ingreso, String cama, String strPabellon, String tipoAislamiento) {

        Conn conexion = new Conn();
        try {

            String sql = "INSERT INTO REPORT.regaislamientos\n"
                    + "           ([tipdoc]\n"
                    + "           ,[numdoc]\n"
                    + "           ,[fechorreg]\n"
                    + "           ,[ingreso]\n"
                    + "           ,[cama]\n"
                    + "           ,[pabellon]\n"
                    + "           ,[aislamiento])\n"
                    + "           VALUES (?,?,getdate(),?,?,?,?)";

            PreparedStatement preparedStatement = conexion.getConexion().prepareStatement(sql);
            preparedStatement.setString(1, tipoDoc);
            preparedStatement.setString(2, strDocumento);
            preparedStatement.setString(3, ingreso);
            preparedStatement.setString(4, cama);
            preparedStatement.setString(5, strPabellon);
            preparedStatement.setString(6, tipoAislamiento);

            preparedStatement.execute();

            preparedStatement.close();

        } catch (Exception e) {
            conexion.cerrarConexion();
            logger.error(e + " " + e.getMessage());
        } finally {
            conexion.cerrarConexion();
        }

    }
}
