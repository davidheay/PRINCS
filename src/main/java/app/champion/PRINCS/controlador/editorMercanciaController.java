/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.champion.PRINCS.controlador;

import app.champion.PRINCS.dao.MercanciaDao;
import app.champion.PRINCS.dao.MercanciaDaoImpl;
import app.champion.PRINCS.modelo.Mercancia;
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
public class editorMercanciaController extends HttpServlet {

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

        MercanciaDao mercanciaDao = new MercanciaDaoImpl();
        System.out.println("hola post");
        String idMercancia = (String) request.getParameter("idMercancia");
        Mercancia mercancia = mercanciaDao.listarMercancia(idMercancia).get(0);

        if (request.getParameter("cambio") != null) {
            System.out.println("cambio post ");
            String estado = request.getParameter("estado");
            String tipo = request.getParameter("tipoMer");
            String nPiezas = request.getParameter("nPiezas");
            Integer valor = Integer.parseInt(request.getParameter("valor"));
            String moneda = request.getParameter("moneda");
            String observaciones = request.getParameter("observaciones");
            System.out.println(idMercancia + " " + estado + " " + tipo + " " + nPiezas + " " + valor + " " + moneda + " " + observaciones);

            mercanciaDao.actualizarMercancia(idMercancia, tipo, estado, observaciones, nPiezas, valor, moneda);
            mercancia = mercanciaDao.listarMercancia(idMercancia).get(0);
        }
        request.setAttribute("mercancia", mercancia);

        request.setAttribute("idMercancia", mercancia.getIdMercancia());
        request.setAttribute("estado", mercancia.getEstado());
        request.setAttribute("tipo", mercancia.getIdTipo());
        request.setAttribute("cliente", mercancia.getIdCliente());
        request.setAttribute("nPiezas", mercancia.getnPiezas());
        request.setAttribute("valor", mercancia.getValor());
        request.setAttribute("moneda", mercancia.getMoneda());
        request.setAttribute("observaciones", mercancia.getObservaciones());

        request.getRequestDispatcher("editormercancia.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        MercanciaDao mercanciaDao = new MercanciaDaoImpl();
      
        String idMercancia = (String) request.getParameter("idMercancia");
        Mercancia mercancia = mercanciaDao.listarMercancia(idMercancia).get(0);

        if (request.getParameter("cambio") != null) {
            System.out.println("cambio post ");
            String estado = request.getParameter("estado");
            String tipo = request.getParameter("tipoMer");
            String nPiezas = request.getParameter("nPiezas");
            Integer valor = Integer.parseInt(request.getParameter("valor"));
            String moneda = request.getParameter("moneda");
            String observaciones = request.getParameter("observaciones");
            System.out.println(idMercancia + " " + estado + " " + tipo + " " + nPiezas + " " + valor + " " + moneda + " " + observaciones);

            mercanciaDao.actualizarMercancia(idMercancia, tipo, estado, observaciones, nPiezas, valor, moneda);
            mercancia = mercanciaDao.listarMercancia(idMercancia).get(0);
        }
        request.setAttribute("mercancia", mercancia);

        request.setAttribute("idMercancia", mercancia.getIdMercancia());
        request.setAttribute("estado", mercancia.getEstado());
        request.setAttribute("tipo", mercancia.getIdTipo());
        request.setAttribute("cliente", mercancia.getIdCliente());
        request.setAttribute("nPiezas", mercancia.getnPiezas());
        request.setAttribute("valor", mercancia.getValor());
        request.setAttribute("moneda", mercancia.getMoneda());
        request.setAttribute("observaciones", mercancia.getObservaciones());

        request.getRequestDispatcher("editormercancia.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
