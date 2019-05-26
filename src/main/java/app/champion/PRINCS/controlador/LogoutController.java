package app.champion.PRINCS.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

public class LogoutController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // se obtiene la session actual para su posterior cierre y luego la redireccion a la pagina de login
        Subject currentUser = SecurityUtils.getSubject();
        Session session = currentUser.getSession();
        String nomusuario = (String) currentUser.getPrincipal();
        currentUser.logout();
        SecurityUtils.getSecurityManager().logout(currentUser);
        //request.getRequestDispatcher("login.jsp").forward(request, response);
        response.sendRedirect("/PRINCS/");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // se obtiene la session actual para su posterior cierre y luego la redireccion a la pagina de login
        Subject currentUser = SecurityUtils.getSubject();
        Session session = currentUser.getSession();
        String nomusuario = (String) currentUser.getPrincipal();
        currentUser.logout();
        SecurityUtils.getSubject().logout();
        SecurityUtils.getSecurityManager().logout(currentUser);
        //request.getRequestDispatcher("login.jsp").forward(request, response);
        response.sendRedirect("/PRINCS/");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
