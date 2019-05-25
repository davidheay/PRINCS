package app.champion.PRINCS.controlador;

import app.champion.PRINCS.dao.AislamientoDao;
import app.champion.PRINCS.dao.AislamientoDaoImpl;
import app.champion.PRINCS.dao.MercanciaDao;
import app.champion.PRINCS.dao.MercanciaDaoImpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

public class IndexController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Se obtienen los datos del usuario para colocar el nombre
        Subject currentUser = SecurityUtils.getSubject();
        Session session = currentUser.getSession();
        String nomusuario = (String) currentUser.getPrincipal();
        request.setAttribute("nomusuario", nomusuario);
        MercanciaDao mercanciaDao = new MercanciaDaoImpl();
        request.setAttribute("lstMercancias", mercanciaDao.listarMercancias());
        /*
        //Crea un objeto asilamiento para listar los pabellones en el select
        AislamientoDao aislamientoDao = new AislamientoDaoImpl();
        request.setAttribute("lstPabellones", aislamientoDao.listarpabellones());
        request.setAttribute("dePab", " ");
        //Se deja en codigo pabellon por defecto hospitalización
        request.setAttribute("lstPacientes", aislamientoDao.listarPacientes("0"));

         */
        request.getRequestDispatcher("index.jsp").forward(request, response);
        System.out.println("do get");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Se obtienen los datos del usuario para colocar el nombre
        Subject currentUser = SecurityUtils.getSubject();
        Session session = currentUser.getSession();
        String nomusuario = (String) currentUser.getPrincipal();
        request.setAttribute("nomusuario", nomusuario);
        MercanciaDao mercanciaDao = new MercanciaDaoImpl();
        /*
        //Crea un objeto para listar los pabellones en el lstbox
        AislamientoDao aislamientoDao = new AislamientoDaoImpl();
        request.setAttribute("lstPabellones", aislamientoDao.listarpabellones());
        //Se guarda el dato enviado despues de la seleccion del pabellon
        String pabellon = (String) request.getParameter("selPabellon");
        //Se envia la lista de los pacientes del pabellon seleccionado para llenar la tabla
         */
        request.setAttribute("lstMercancias", mercanciaDao.listarMercancias());
        /*
//Enviar nombre y id del pabellon
        request.setAttribute("dePab", request.getParameter("hidNomPabellon"));
        request.setAttribute("selPabellon", request.getParameter(pabellon));
        //Se valida si se envio el campo oculto en el formulario de inserción para separar los dos submits
        if (request.getParameter("hidInsertar") != null) {
            //Almacenado de los datos enviados en el formulario en variables
            String tipoDoc = (String) request.getParameter("hidTipoDocumento");
            String numDoc = (String) request.getParameter("documento");
            String Ing = (String) request.getParameter("hidIngreso");
            String cama = (String) request.getParameter("cama");
            String idPab = (String) request.getParameter("hidPabellon");
            String aisla = (String) request.getParameter("selAisla");
            String nomPab = (String) request.getParameter("hidNomPab2");
            //insercion de datos del formulario
            aislamientoDao.insertarAislamientos(tipoDoc, numDoc, Ing, cama, idPab, aisla);
            //envio de de datos para visualizacion
            request.setAttribute("selPabellon2", idPab);
            request.setAttribute("lstPacientes", aislamientoDao.listarPacientes(idPab));
            request.setAttribute("dePab", nomPab);
        }

         */
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
