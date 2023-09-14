package Servlets;

import java.io.*;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * @author Matias Abregú
 */
@WebServlet(name = "InicioSesion", urlPatterns = {"/InicioSesion"})
public class InicioSesion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InicioSesion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InicioSesion at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nomail = request.getParameter("UsuarioOEmail");
        String contra = request.getParameter("contrasena");

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matiasairlines", "root", "");

            PreparedStatement pst = cn.prepareStatement("select * from usuarios where (nombre=? or email=?) and contrasena=?");

            pst.setString(1, nomail);
            pst.setString(2, nomail);
            pst.setString(3, contra);

            ResultSet rs = pst.executeQuery();

            if (rs.absolute(1)) {
                nomail = rs.getString(2);
                
                request.setAttribute("Nombre", nomail);
                
                RequestDispatcher rd = request.getRequestDispatcher("/Inicio.jsp");
                
                rd.forward(request, response);
                
                //response.sendRedirect("/MatiasAirlines/Inicio.jsp");
            } else {
                response.sendRedirect("/MatiasAirlines/Iniciar-Sesion.html");
            }

        } catch (Exception e) {
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
