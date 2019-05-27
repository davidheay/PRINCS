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
import java.sql.Date;
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
            idReserva = request.getParameter("idActa");
            idMercancia = request.getParameter("idMercancia");
            String tipoMercancia = request.getParameter("tipoMer");
            String cliente = request.getParameter("cliente");

            Integer nPiezas = Integer.parseInt(request.getParameter("nPiezas"));
            String placa = request.getParameter("placa");
            Integer valor = Integer.parseInt(request.getParameter("valor"));
            Float peso = Float.parseFloat(request.getParameter("peso"));
            Integer idembalaje = Integer.parseInt(request.getParameter("idembalaje"));
            String nomCondu = request.getParameter("nomCondu");
            String ccCondu = request.getParameter("ccCondu");
            String docus = request.getParameter("docus");
            String etiquetas = request.getParameter("etiquetas");
            String fecha = request.getParameter("fecha");
            String estiba = request.getParameter("estiba");
            String bodega = request.getParameter("bodega");
            String observaciones = request.getParameter("observaciones");
            String ccOperario = request.getParameter("ccOperario");
            String firOperario = request.getParameter("firOperario");
            String transportadora = request.getParameter("transportadora");
            String nomOperario = request.getParameter("nomOperario");
            String moneda = request.getParameter("moneda");

            reservaDao.insertarReserva(idReserva, idMercancia, "ENTRADA", cliente, ccOperario, fecha, placa, transportadora, nPiezas, bodega, estiba, nomCondu, ccCondu, docus, peso, valor, idembalaje, etiquetas, "img/user.png", "ES2", observaciones, firOperario, nomOperario, ccOperario, moneda);

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
