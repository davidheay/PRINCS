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
import java.awt.Color;
import java.awt.Desktop;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Usuario
 */
public class Pdf {

    public static final String Dest = "C:\\Users\\Usuario\\Documents\\NetBeansProjects\\PRINCS";

    /**
     * @param args the command line arguments
     */
    public static void generar(String idReserva) throws FileNotFoundException, DocumentException {
        FileOutputStream archivo = new FileOutputStream(idReserva + ".pdf");
        Document documento = new Document();
        PdfWriter.getInstance(documento, archivo);
        documento.open();
        ReservaDao reservaDao = new ReservaDaoImpl();
        List<Reserva> reserva = reservaDao.listarReserva(idReserva);

        Paragraph parrafo = new Paragraph("Acta de la Reserva");
        parrafo.setAlignment(1);
        documento.add(parrafo);

        documento.add(new Paragraph("ID Reserva: " + idReserva));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("ID MERCANCIA: " + reserva.get(0).getIdMercancia()));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("ID del Cliente: " + idCliente + "                                   "
                + "               " + "Nombre del Cliente: "));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("ID del empleado: " + idEmpleado + "                                          "
                + "            " + "Fecha: " + fecha));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Transportadora: " + idTransportadora + "                                         "
                + "               " + "Placa: " + placa));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Lote: " + Id_Lote + "                             "
                + "                                            " + "Estiba: " + Estiba));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Nombre del Conductor: " + nombreConductor));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Cedula del Conductor: " + cedulaConductor));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Peso: " + peso));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Valor: " + valor + "                                          "
                + "                             " + "Moneda: " + Moneda));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Foto: " + Reg_Fotografico));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Observaciones: " + observaciones));
        documento.add(new Paragraph("\n"));
        documento.add(new Paragraph("Firma: " + Firma));

        documento.close();
        JOptionPane.showMessageDialog(null, "Archivo PDF creado correctamente", "Información", 1);

        try {
            File path = new File(idReserva + ".pdf");
            Desktop.getDesktop().open(path);
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex, "Atención", 2);
        }

    }
    // TODO code application logic here
}
