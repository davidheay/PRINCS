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
        System.out.println("hola get login");
        if (SecurityUtils.getSubject().isAuthenticated()) {
            System.out.println(SecurityUtils.getSubject().getPrincipal());
            request.getRequestDispatcher("menuAdmin.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /**
         * Se valida las credenciales ingresadas para la posterior redireccion
         */
        System.out.println("hola post login");

        if (SecurityUtils.getSubject().isAuthenticated()) {
            System.out.println(SecurityUtils.getSubject().getPrincipal());
            request.getRequestDispatcher("menuAdmin.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
