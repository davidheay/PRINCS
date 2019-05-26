package app.champion.PRINCS.controlador;

import app.champion.PRINCS.dao.MercanciaDao;
import app.champion.PRINCS.dao.MercanciaDaoImpl;
import app.champion.PRINCS.dao.ReservaDaoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class inventarioBodegaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        MercanciaDao mercanciaDao = new MercanciaDaoImpl();

        request.setAttribute("lstMercancias", mercanciaDao.listarMercancias());
        request.getRequestDispatcher("inventariobodega.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        MercanciaDao mercanciaDao = new MercanciaDaoImpl();

        request.setAttribute("lstMercancias", mercanciaDao.listarMercancias());
        request.getRequestDispatcher("inventariobodega.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
