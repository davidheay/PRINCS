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
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /**
         * Se valida las credenciales ingresadas para la posterior redireccion
         */
        System.out.println("hola get");

        System.out.println(SecurityUtils.getSubject().getPrincipal());

        if (SecurityUtils.getSubject().isAuthenticated()) {
            if (SecurityUtils.getSubject().hasRole("ROLE_ADMIN")) {
                System.out.println("ROLE_ADMIN");
                response.sendRedirect("/PRINCS/IndexController");

            }
            if (SecurityUtils.getSubject().hasRole("ROLE_USER")) {

                System.out.println("ROLE_USER");
                response.sendRedirect("/PRINCS/IndexControllerasd");
            }

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
        System.out.println("hola post");

        System.out.println(SecurityUtils.getSubject().getPrincipal());

        if (SecurityUtils.getSubject().isAuthenticated()) {
            if (SecurityUtils.getSubject().hasRole("ROLE_ADMIN")) {
                System.out.println("ROLE_ADMIN");
                response.sendRedirect("/PRINCS/IndexController");

            }
            if (SecurityUtils.getSubject().hasRole("ROLE_USER")) {

                System.out.println("ROLE_USER");
                response.sendRedirect("/PRINCS/IndexControllerasd");
            }

        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
