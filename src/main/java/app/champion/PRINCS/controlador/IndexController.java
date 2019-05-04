package app.champion.PRINCS.controlador;

import app.champion.PRINCS.dao.AislamientoDao;
import app.champion.PRINCS.dao.AislamientoDaoImpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

/**
 * Controller Class para la gestion de peticiones de la vista index
 *
 * @author Innovación y Desarrollo – Clínica Universidad de La Sabana
 */
public class IndexController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*
        //Se obtienen los datos del usuario para colocar el nombre
        Subject currentUser = SecurityUtils.getSubject();
        Session session = currentUser.getSession();
        String nomusuario = (String) currentUser.getPrincipal();
        request.setAttribute("nomusuario", nomusuario);
        //Crea un objeto asilamiento para listar los pabellones en el select
        AislamientoDao aislamientoDao = new AislamientoDaoImpl();
        request.setAttribute("lstPabellones", aislamientoDao.listarpabellones());
        request.setAttribute("dePab", " ");
        //Se deja en codigo pabellon por defecto hospitalización
        request.setAttribute("lstPacientes", aislamientoDao.listarPacientes("0"));

         */
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*
        //Se obtienen los datos del usuario para colocar el nombre
        Subject currentUser = SecurityUtils.getSubject();
        Session session = currentUser.getSession();
        String nomusuario = (String) currentUser.getPrincipal();
        request.setAttribute("nomusuario", nomusuario);
        //Crea un objeto para listar los pabellones en el lstbox
        AislamientoDao aislamientoDao = new AislamientoDaoImpl();
        request.setAttribute("lstPabellones", aislamientoDao.listarpabellones());
        //Se guarda el dato enviado despues de la seleccion del pabellon
        String pabellon = (String) request.getParameter("selPabellon");
        //Se envia la lista de los pacientes del pabellon seleccionado para llenar la tabla
        request.setAttribute("lstPacientes", aislamientoDao.listarPacientes(pabellon));
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
