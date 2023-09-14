<%@page import="java.util.*"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Matias Airlines - Vuelo Reservado</title>
        <meta charset="UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lora:ital@1&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="img/Logo.ico">
        <link rel="stylesheet" href="EstiloVueloReservado.css"/>
    </head>

    <body>
        <%
            String horaS1 = request.getParameter("horaS1");
            String horaL1 = request.getParameter("horaL1");
            String precio1 = request.getParameter("precio1");
            String[] check = request.getParameterValues("check");
            List<String> datos = new ArrayList<>();

            String horaS2 = request.getParameter("horaS2");
            String horaL2 = request.getParameter("horaL2");
            String precio2 = request.getParameter("precio2");

            String horaS3 = request.getParameter("horaS3");
            String horaL3 = request.getParameter("horaL3");
            String precio3 = request.getParameter("precio3");

            String horaS4 = request.getParameter("horaS4");
            String horaL4 = request.getParameter("horaL4");
            String precio4 = request.getParameter("precio4");

            String horaS5 = request.getParameter("horaS5");
            String horaL5 = request.getParameter("horaL5");
            String precio5 = request.getParameter("precio5");

            String horaS6 = request.getParameter("horaS6");
            String horaL6 = request.getParameter("horaL6");
            String precio6 = request.getParameter("precio6");

            for (String checkTemp : check) {
                datos.add(checkTemp);
            }

            for (String datosTemp : datos) {
                if (datosTemp.equals("1")) {
                    pageContext.setAttribute("horaSF", horaS1);
                    pageContext.setAttribute("horaLF", horaL1);
                    pageContext.setAttribute("precioF", precio1);
                } else if (datosTemp.equals("2")) {
                    pageContext.setAttribute("horaSF", horaS2);
                    pageContext.setAttribute("horaLF", horaL2);
                    pageContext.setAttribute("precioF", precio2);
                } else if (datosTemp.equals("3")) {
                    pageContext.setAttribute("horaSF", horaS3);
                    pageContext.setAttribute("horaLF", horaL3);
                    pageContext.setAttribute("precioF", precio3);
                }
                if (datosTemp.equals("4")) {
                    pageContext.setAttribute("horaSF2", horaS4);
                    pageContext.setAttribute("horaLF2", horaL4);
                    pageContext.setAttribute("precioF2", precio4);
                } else if (datosTemp.equals("5")) {
                    pageContext.setAttribute("horaSF2", horaS5);
                    pageContext.setAttribute("horaLF2", horaL5);
                    pageContext.setAttribute("precioF2", precio5);
                } else if (datosTemp.equals("6")) {
                    pageContext.setAttribute("horaSF2", horaS6);
                    pageContext.setAttribute("horaLF2", horaL6);
                    pageContext.setAttribute("precioF2", precio6);
                }
            }

            int precioF1 = Integer.valueOf("" + pageContext.getAttribute("precioF"));
            int precioF2 = Integer.valueOf("" + pageContext.getAttribute("precioF2"));

            String origenM = request.getParameter("origenM");
        
            if (origenM.contains("Capital")) {
                origenM = "Argentina, Córdoba, Capital";
            } else if (origenM.contains("California")) {
                origenM = "Estados Unidos, California, Los Ángeles";
            } else if (origenM.contains("Toronto")) {
                origenM = "Canadá, Ontario, Toronto";
            } else if (origenM.contains("London")) {
                origenM = "Canadá, Ontario, London";
            } else if (origenM.contains("Madrid")) {
                origenM = "España, Madrid";
            } else if (origenM.contains("Mos")) {
                origenM = "Rusia, Moscú";
            } else if (origenM.contains("Ciudad de")) {
                origenM = "México, Ciudad de México, Ciudad de México";
            }

            String destinoM = request.getParameter("destinoM");
            
            if (destinoM.contains("Capital")) {
                destinoM = "Argentina, Córdoba, Capital";
            } else if (destinoM.contains("California")) {
                destinoM = "Estados Unidos, California, Los Ángeles";
            } else if (destinoM.contains("Toronto")) {
                destinoM = "Canadá, Ontario, Toronto";
            } else if (destinoM.contains("London")) {
                destinoM = "Canadá, Ontario, London";
            } else if (destinoM.contains("Madrid")) {
                destinoM = "España, Madrid";
            } else if (destinoM.contains("Mos")) {
                destinoM = "Rusia, Moscú";
            } else if (destinoM.contains("Ciudad de")) {
                destinoM = "México, Ciudad de México, Ciudad de México";
            }
        %>

        <header>
            <img id="logo" src="img/Logo.png"/>
            <h1 id="titulo">Matias Airlines</h1>
        </header>

        <section>
            <br><br>
            <article>
                <form id="formulario" action="Reservado.jsp" method="get">
                    <p>Vuelo DESDE: <% out.print(origenM); %> | | HASTA: <% out.print(destinoM); %> </p>
                    <p>IDA: <% out.print(request.getParameter("fechaI")); %> | | VUELTA: <% out.print(request.getParameter("fechaV")); %> </p>
                    <p>Cantidad de pasajeros: <% out.print(request.getParameter("pasajeros"));%> </p>
                    <p>(IDA) Hora de Salida: <% out.print(pageContext.getAttribute("horaSF")); %> | | (IDA) Hora de Llegada: <% out.print(pageContext.getAttribute("horaLF")); %></p>
                    <p >(VUELTA) Hora de Salida: <% out.print(pageContext.getAttribute("horaSF2")); %> | | (VUELTA) Hora de Llegada: <% out.print(pageContext.getAttribute("horaLF2")); %></p>
                    <p>Precio total: <% out.print(precioF1 + precioF2 + " ARS");%></p>
                    <p>A nombre de: <% out.print(session.getAttribute("Usuario"));%></p>
                    <button type="submit" id="Reservar">Reservar</button> <button type="button" onclick="window.location.href = 'Inicio.jsp'" id="Inicio">Volver al inicio</button>
                </form>
            </article>
        </section>
    </body>

    <footer>
        <p>®Derechos reservados a Matias Abregú</p>
        <a target="blank" href="https://api.whatsapp.com/send?phone=3512753590">¡Contactame aqui :D!</a>
    </footer>

</html>
