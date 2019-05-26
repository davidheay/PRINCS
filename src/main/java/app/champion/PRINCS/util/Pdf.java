/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.champion.PRINCS.util;

import app.champion.PRINCS.dao.ReservaDao;
import app.champion.PRINCS.dao.ReservaDaoImpl;
import app.champion.PRINCS.modelo.Reserva;
import com.sun.awt.AWTUtilities;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.sun.scenario.effect.ImageData;
import com.itextpdf.io.image.*;
import com.itextpdf.io.image.ImageDataFactory;
import java.awt.Color;
import java.awt.Desktop;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import com.itextpdf.io.image.ImageDataFactory;
import com.itextpdf.text.Image;
import java.net.MalformedURLException;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

import com.itextpdf.io.image.ImageDataFactory;

import com.itextpdf.text.BadElementException;
import java.io.IOException;

/**
 *
 * @author Usuario
 */
public class Pdf {

    /**
     * @param args the command line arguments
     */
    public void generar(String idReserva) throws FileNotFoundException, DocumentException, MalformedURLException, BadElementException, IOException {
        FileOutputStream archivo = new FileOutputStream(idReserva + ".pdf");
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

        try {
            File path = new File(idReserva + ".pdf");
            Desktop.getDesktop().open(path);
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex, "Atención", 2);
        }

    }
    // TODO code application logic here
}
