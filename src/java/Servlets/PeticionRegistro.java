package Servlets;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * @author Matias Abregú
 */
@WebServlet(name = "PeticionRegistro", urlPatterns = {"/PeticionRegistro"})
public class PeticionRegistro extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PeticionRegistro</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PeticionRegistro at " + request.getContextPath() + "</h1>");
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
        
        //Eliminar el processRequest para evitar problemas :D

        String nombre = request.getParameter("Usuario");
        String mail = request.getParameter("Email");
        String contrasena = request.getParameter("contrasena");

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matiasairlines", "root", "");

            PreparedStatement pst = cn.prepareStatement("insert into usuarios (nombre, email, contrasena) values (?, ?, ?)");

            pst.setString(1, nombre);
            pst.setString(2, mail);
            pst.setString(3, contrasena);

            pst.executeUpdate();

            response.sendRedirect("/MatiasAirlines/Inicio.html");
        } catch (SQLException ex) {
        } catch (ClassNotFoundException ex) {
        }

    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
