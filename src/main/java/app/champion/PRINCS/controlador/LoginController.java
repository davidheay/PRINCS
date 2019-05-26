package app.champion.PRINCS.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;

public class LoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SecurityUtils.getSubject().logout();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /**
         * Se valida las credenciales ingresadas para la posterior redireccion
         */

        try {

            if (SecurityUtils.getSubject().isAuthenticated()) {
                String client = (String) SecurityUtils.getSubject().getPrincipal();
                System.out.println(client.equals("admin"));
                if (client.equals("admin")) {
                    request.getRequestDispatcher("menuAdmin.jsp").forward(request, response);
                }
                if (client.equals("user")) {
                    request.getRequestDispatcher("menuoperario.jsp").forward(request, response);
                }

            } else {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /**
         * Se valida las credenciales ingresadas para la posterior redireccion
         */
        try {

            if (SecurityUtils.getSubject().isAuthenticated()) {
                String client = (String) SecurityUtils.getSubject().getPrincipal();
                System.out.println(client.equals("admin"));
                if (client.equals("admin")) {
                    request.getRequestDispatcher("menuAdmin.jsp").forward(request, response);
                }
                if (client.equals("user")) {
                    request.getRequestDispatcher("menuoperario.jsp").forward(request, response);
                }

            } else {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
