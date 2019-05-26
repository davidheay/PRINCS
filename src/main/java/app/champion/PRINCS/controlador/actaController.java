/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.champion.PRINCS.controlador;

import app.champion.PRINCS.dao.MercanciaDao;
import app.champion.PRINCS.dao.MercanciaDaoImpl;
import app.champion.PRINCS.dao.ReservaDao;
import app.champion.PRINCS.dao.ReservaDaoImpl;
import app.champion.PRINCS.modelo.Mercancia;
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
public class actaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ReservaDao reservaDao = new ReservaDaoImpl();

        String idReserva = (String) request.getParameter("idActa");
        System.out.println(idReserva);
        Reserva reserva = reservaDao.listarReserva(idReserva).get(0);

        request.setAttribute("reserva", reserva);
        request.setAttribute("idReserva", reserva.getIdReserva());
        request.setAttribute("idMercancia", reserva.getIdMercancia());
        request.setAttribute("tipoActa", reserva.getTipoActa());
        request.setAttribute("idCliente", reserva.getIdCliente());
        request.setAttribute("idEmpleado", reserva.getIdEmpleado());
        request.setAttribute("fecha", reserva.getFecha());
        request.setAttribute("placa", reserva.getPlaca());
        request.setAttribute("idTransportadora", reserva.getIdTransportadora());
        request.setAttribute("nPiezas", reserva.getnPiezas());
        request.setAttribute("idLote", reserva.getIdLote());
        request.setAttribute("estiba", reserva.getEstiba());
        request.setAttribute("nombreConductor", reserva.getNombreConductor());
        request.setAttribute("ccConducotr", reserva.getCedulaConductor());
        request.setAttribute("documentos", reserva.getDocumentos());
        request.setAttribute("peso", reserva.getPeso());
        request.setAttribute("valor", reserva.getValor());
        request.setAttribute("idEmbalaje", reserva.getIdEmbalaje());
        request.setAttribute("etiquetas", reserva.getEtiquetas());
        request.setAttribute("foto", reserva.getRegFotografico());
        request.setAttribute("estado", reserva.getIDEstado());
        request.setAttribute("observaciones", reserva.getoobservaciones());
        request.setAttribute("entregaNom", reserva.getEntregaNom());
        request.setAttribute("ccEntrega", reserva.getccEntrega());
        request.setAttribute("moneda", reserva.getMoneda());
        request.setAttribute("frima", reserva.getFirma());
        request.getRequestDispatcher("acta.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ReservaDao reservaDao = new ReservaDaoImpl();

        String idReserva = (String) request.getParameter("idActa");
        System.out.println(idReserva);
        Reserva reserva = reservaDao.listarReserva(idReserva).get(0);

        request.setAttribute("reserva", reserva);
        request.setAttribute("idReserva", reserva.getIdReserva());
        request.setAttribute("idMercancia", reserva.getIdMercancia());
        request.setAttribute("tipoActa", reserva.getTipoActa());
        request.setAttribute("idCliente", reserva.getIdCliente());
        request.setAttribute("idEmpleado", reserva.getIdEmpleado());
        request.setAttribute("fecha", reserva.getFecha());
        request.setAttribute("placa", reserva.getPlaca());
        request.setAttribute("idTransportadora", reserva.getIdTransportadora());
        request.setAttribute("nPiezas", reserva.getnPiezas());
        request.setAttribute("idLote", reserva.getIdLote());
        request.setAttribute("estiba", reserva.getEstiba());
        request.setAttribute("nombreConductor", reserva.getNombreConductor());
        request.setAttribute("ccConducotr", reserva.getCedulaConductor());
        request.setAttribute("documentos", reserva.getDocumentos());
        request.setAttribute("peso", reserva.getPeso());
        request.setAttribute("valor", reserva.getValor());
        request.setAttribute("idEmbalaje", reserva.getIdEmbalaje());
        request.setAttribute("etiquetas", reserva.getEtiquetas());
        request.setAttribute("foto", reserva.getRegFotografico());
        request.setAttribute("estado", reserva.getIDEstado());
        request.setAttribute("observaciones", reserva.getoobservaciones());
        request.setAttribute("entregaNom", reserva.getEntregaNom());
        request.setAttribute("ccEntrega", reserva.getccEntrega());
        request.setAttribute("moneda", reserva.getMoneda());
        request.setAttribute("frima", reserva.getFirma());
        request.getRequestDispatcher("acta.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
