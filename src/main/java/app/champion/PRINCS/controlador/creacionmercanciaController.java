/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.champion.PRINCS.controlador;

import app.champion.PRINCS.dao.MercanciaDao;
import app.champion.PRINCS.dao.MercanciaDaoImpl;
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
public class creacionmercanciaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        MercanciaDao mercanciaDao = new MercanciaDaoImpl();

        request.setAttribute("idMercancia", mercanciaDao.idMax());
        if (request.getParameter("insertar") != null) {
            String idmercancia = mercanciaDao.idMax();
            String estado = "ES1";
            String tipoMerc = request.getParameter("tipoMer");
            String cliente = request.getParameter("cliente");
            String nPiezas = request.getParameter("nPiezas");
            Integer valor = Integer.parseInt(request.getParameter("valor"));
            String moneda = request.getParameter("moneda");
            String observaciones = request.getParameter("observaciones");
            System.out.println(idmercancia + estado + tipoMerc + cliente + nPiezas + valor + moneda + observaciones);
            mercanciaDao.insertarMercancia(idmercancia, cliente, tipoMerc, estado, observaciones, nPiezas, "NULL", "NULL", valor, moneda);
            response.sendRedirect("/PRINCS/consultaMercanciaController");

        } else {
            request.getRequestDispatcher("creacionmercancia.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        MercanciaDao mercanciaDao = new MercanciaDaoImpl();

        request.setAttribute("idMercancia", mercanciaDao.idMax());
        if (request.getParameter("insertar") != null) {
            String idmercancia = mercanciaDao.idMax();
            String estado = "ES1";
            String tipoMerc = request.getParameter("tipoMer");
            String cliente = request.getParameter("cliente");
            String nPiezas = request.getParameter("nPiezas");
            Integer valor = Integer.parseInt(request.getParameter("valor"));
            String moneda = request.getParameter("moneda");
            String observaciones = request.getParameter("observaciones");
            System.out.println(idmercancia + estado + tipoMerc + cliente + nPiezas + valor + moneda + observaciones);
            mercanciaDao.insertarMercancia(idmercancia, cliente, tipoMerc, estado, observaciones, nPiezas, "NULL", "NULL", valor, moneda);
            response.sendRedirect("/PRINCS/consultaMercanciaController");

        } else {
            request.getRequestDispatcher("creacionmercancia.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
