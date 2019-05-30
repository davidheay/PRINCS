package app.champion.PRINCS.controlador;

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

public class consultaMercanciaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Se obtienen los datos del usuario para colocar el nombre
        MercanciaDao mercanciaDao = new MercanciaDaoImpl();
        String idMercancia = (String) request.getParameter("idMercancia");

        if (idMercancia == null || idMercancia.equals("")) {
            request.setAttribute("lstMercancias", mercanciaDao.listarMercancias());
        } else {
            request.setAttribute("lstMercancias", mercanciaDao.listarMercancia(idMercancia));
        }

        if (request.getParameter("hidCambio") != null) {
            System.out.println("cambio");
            //Almacenado de los datos enviados en el formulario en variables
            String estado = (String) request.getParameter("selEstado");
            String idMerc = (String) request.getParameter("IDMercancia");
            mercanciaDao.actualizarEstadoMercancia(idMerc, estado);
            //envio de de datos para visualizacion
            request.setAttribute("lstMercancias", mercanciaDao.listarMercancias());

        }

        request.getRequestDispatcher("consultamercancia.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Se obtienen los datos del usuario para colocar el nombre
        MercanciaDao mercanciaDao = new MercanciaDaoImpl();
        String idMercancia = (String) request.getParameter("idMercancia");

        if (idMercancia == null || idMercancia.equals("")) {
            request.setAttribute("lstMercancias", mercanciaDao.listarMercancias());
        } else {
            request.setAttribute("lstMercancias", mercanciaDao.listarMercancia(idMercancia));
        }

        if (request.getParameter("hidCambio") != null) {
            System.out.println("cambio");
            //Almacenado de los datos enviados en el formulario en variables
            String estado = (String) request.getParameter("selEstado");
            String idMerc = (String) request.getParameter("IDMercancia");
            mercanciaDao.actualizarEstadoMercancia(idMerc, estado);
            //envio de de datos para visualizacion
            request.setAttribute("lstMercancias", mercanciaDao.listarMercancias());

        }

        request.getRequestDispatcher("consultamercancia.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
