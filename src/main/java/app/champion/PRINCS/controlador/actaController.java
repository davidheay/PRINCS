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
import app.champion.PRINCS.util.Pdf;
import com.itextpdf.text.BadElementException;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.awt.Desktop;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
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
            throws ServletException, IOException, DocumentException {
        response.setContentType("application/pdf");
        OutputStream archivo = response.getOutputStream();
        String idReserva = request.getParameter("idActa");

        Document documento = new Document();
        PdfWriter.getInstance(documento, archivo);
        documento.open();
        ReservaDao reservaDao = new ReservaDaoImpl();
        Reserva reserva = reservaDao.listarReserva(idReserva).get(0);

        Paragraph parrafo = new Paragraph("Acta de la Reserva");
        parrafo.setAlignment(1);
        documento.add(parrafo);

        documento.add(new Paragraph("ID Reserva: " + idReserva));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("ID MERCANCIA: " + reserva.getIdMercancia()));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("ID del Cliente: " + reserva.getIdCliente() + "                                   "
                + "               " + "Nombre del Cliente: "));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("ID del empleado: " + reserva.getIdEmpleado() + "                                          "
                + "            " + "Fecha: " + reserva.getFecha()));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Transportadora: " + reserva.getIdTransportadora() + "                                         "
                + "               " + "Placa: " + reserva.getPlaca()));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Lote: " + reserva.getIdLote() + "                             "
                + "                                            " + "Estiba: " + reserva.getEstiba()));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Nombre del Conductor: " + reserva.getNombreConductor()));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Cedula del Conductor: " + reserva.getCedulaConductor()));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Peso: " + reserva.getPeso()));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Valor: " + reserva.getValor() + "                                          "
                + "                             " + "Moneda: " + reserva.getMoneda()));
        documento.add(new Paragraph("\n"));

        documento.add(new Paragraph("Foto: " + reserva.getRegFotografico()));
        String imageFile = reserva.getRegFotografico();
        Image img = Image.getInstance("C:\\Users\\" + System.getProperty("user.name") + "\\Documents\\NetBeansProjects\\PRINCS\\src\\main\\webapp\\" + imageFile);

        documento.add(img);
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Observaciones: " + reserva.getoobservaciones()));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Firma: " + reserva.getFirma()));

        documento.close();
        System.out.println("se genero correctamente");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ReservaDao reservaDao = new ReservaDaoImpl();

        String idReserva = (String) request.getParameter("idActa");
        try {

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

            if (request.getParameter("pdf") != null) {
                System.out.println("generar pdf");
                try {
                    processRequest(request, response);
                    //
                } catch (DocumentException ex) {
                    System.out.println(ex);
                }
            } else {
                request.getRequestDispatcher("acta.jsp").forward(request, response);
            }
        } catch (Exception e) {
            response.sendRedirect("/PRINCS/");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ReservaDao reservaDao = new ReservaDaoImpl();

        String idReserva = (String) request.getParameter("idActa");
        try {

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

            if (request.getParameter("pdf") != null) {
                System.out.println("generar pdf");
                try {
                    processRequest(request, response);
                } catch (DocumentException ex) {
                    System.out.println(ex);
                }
            } else {
                request.getRequestDispatcher("acta.jsp").forward(request, response);
            }
        } catch (Exception e) {
            response.sendRedirect("/PRINCS/");
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
