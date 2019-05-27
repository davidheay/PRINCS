/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.champion.PRINCS.controlador;

import app.champion.PRINCS.dao.ReservaDao;
import app.champion.PRINCS.dao.ReservaDaoImpl;
import app.champion.PRINCS.modelo.Reserva;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author deha1
 */
public class creacionActaController extends HttpServlet {

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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ReservaDao reservaDao = new ReservaDaoImpl();

        String idReserva = "Valor auto numerico dado por el max de un query";
        String idMercancia = (String) request.getParameter("idMercancia");
        request.setAttribute("idActa", idReserva);
        request.setAttribute("idMercancia", idMercancia);

        if (request.getParameter("crear") != null) {
            System.out.println("crear");

            idReserva = request.getParameter("idActa");
            idMercancia = request.getParameter("idMercancia");
            String tipoMercancia = request.getParameter("tipoMer");
            System.out.println(idReserva + " " + idMercancia + " " + tipoMercancia);

            response.sendRedirect("/PRINCS/verificacionEntradaController");
        } else {
            request.getRequestDispatcher("creacionacta.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ReservaDao reservaDao = new ReservaDaoImpl();

        String idReserva = "Valor auto numerico dado por el max de un query";
        String idMercancia = (String) request.getParameter("idMercancia");
        request.setAttribute("idActa", idReserva);
        request.setAttribute("idMercancia", idMercancia);

        if (request.getParameter("crear") != null) {
            System.out.println("crear");

            idReserva = request.getParameter("idActa");
            idMercancia = request.getParameter("idMercancia");
            String tipoMercancia = request.getParameter("tipoMer");

            response.sendRedirect("/PRINCS/verificacionEntradaController");
        } else {
            request.getRequestDispatcher("creacionacta.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
