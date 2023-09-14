package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Matias
 */
@WebServlet(name = "Resultados", urlPatterns = {"/Resultados"})
public class Resultados extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RedirigirResultado</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RedirigirResultado at " + request.getContextPath() + "</h1>");
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
        
        //Trabajar aqui para redirigir a JSP
        String origen = request.getParameter("origen");
        String destino = request.getParameter("destino");
        RequestDispatcher rd;
        
        if(origen.equals("ABE") || destino.equals("BuenosAires")){       
            rd = request.getRequestDispatcher("/ResultadosBSAS.jsp");
            rd.forward(request, response);
        } else if(origen.equals("ACC") || destino.equals("Cordoba")){
            rd = request.getRequestDispatcher("/ResultadosCordoba.jsp");
            rd.forward(request, response);
        } else if(origen.equals("UMP") || destino.equals("Maldonado")){
            rd = request.getRequestDispatcher("/ResultadosUruMal.jsp");
            rd.forward(request, response);
        } else if(origen.equals("UCM") || destino.equals("CerroLargo")){
            rd = request.getRequestDispatcher("/ResultadosUruCerrol.jsp");
            rd.forward(request, response);
        } else if(origen.equals("BES") || destino.equals("SaoPaulo")){
            rd = request.getRequestDispatcher("/ResultadosSaoPaulo.jsp");
            rd.forward(request, response);
        } else if(origen.equals("BER") || destino.equals("RioDeJaneiro")){
            rd = request.getRequestDispatcher("/ResultadosRioDeJanerio.jsp");
            rd.forward(request, response);
        } else if(origen.equals("ENN") || destino.equals("NuevaYork")){
            rd = request.getRequestDispatcher("/ResultadosNuevaYork.jsp");
            rd.forward(request, response);
        } else if(origen.equals("ECL") || destino.equals("LA")){
            rd = request.getRequestDispatcher("/ResultadosLosAngeles.jsp");
            rd.forward(request, response);
        } else if(origen.equals("EFO") || destino.equals("Florida")){
            rd = request.getRequestDispatcher("/ResultadosOrlando.jsp");
            rd.forward(request, response);
        } else if(origen.equals("COT") || destino.equals("Toronto")){
            rd = request.getRequestDispatcher("/ResultadosToronto.jsp");
            rd.forward(request, response);
        } else if(origen.equals("COL") || destino.equals("London")){
            rd = request.getRequestDispatcher("/ResultadosLondon.jsp");
            rd.forward(request, response);
        } else if(origen.equals("FP") || destino.equals("Paris")){
            rd = request.getRequestDispatcher("/ResultadosParis.jsp");
            rd.forward(request, response);
        } else if(origen.equals("IR") || destino.equals("Roma")){
            rd = request.getRequestDispatcher("/ResultadosRoma.jsp");
            rd.forward(request, response);
        } else if(origen.equals("EM") || destino.equals("Madrid")){
            rd = request.getRequestDispatcher("/ResultadosMadrid.jsp");
            rd.forward(request, response);
        } else if(origen.equals("PL") || destino.equals("Lisboa")){
            rd = request.getRequestDispatcher("/ResultadosLisboa.jsp");
            rd.forward(request, response);
        } else if(origen.equals("NO") || destino.equals("Oslo")){
            rd = request.getRequestDispatcher("/ResultadosOslo.jsp");
            rd.forward(request, response);
        } else if(origen.equals("ID") || destino.equals("Dublin")){
            rd = request.getRequestDispatcher("/ResultadosDublin.jsp");
            rd.forward(request, response);
        } else if(origen.equals("RM") || destino.equals("Moscu")){
            rd = request.getRequestDispatcher("/ResultadosMoscu.jsp");
            rd.forward(request, response);
        } else if(origen.equals("RS") || destino.equals("SanPeter")){
            rd = request.getRequestDispatcher("/ResultadosSanPeter.jsp");
            rd.forward(request, response);
        } else if(origen.equals("NA") || destino.equals("Auckland")){
            rd = request.getRequestDispatcher("/ResultadosAuckland.jsp");
            rd.forward(request, response);
        } else if(origen.equals("AS") || destino.equals("Sydney")){
            rd = request.getRequestDispatcher("/ResultadosSydney.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
