<%@page import="clasesJava.Horario"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Matias Airlines - Resultados</title>
        <meta charset="UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lora:ital@1&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="img/Logo.ico">
        <link rel="stylesheet" href="EstiloResultados.css"/>
    </head>

    <body>
        <%
            boolean bandera = false;
            String origen = request.getParameter("origen");
            String origenM = origen;
            Horario horario = new Horario();

            origenM = origenM.replace("ABE", "Argentina, Buenos Aires, Ezeiza");
            origenM = origenM.replace("ACC", "Argentina, Córdoba, Capital");
            origenM = origenM.replace("UPM", "Uruguay, Maldonado, Punta del Este");
            origenM = origenM.replace("UCM", "Uruguay, Cerro Largo, Melo");
            origenM = origenM.replace("BES", "Brasil, Estado de Sao Paulo, Sao Paulo");
            origenM = origenM.replace("BER", "Brasil, Estado de Rio de Janeiro, Rio de Janeiro");
            origenM = origenM.replace("ENN", "Estados Unidos, Nueva York, Nueva York");
            origenM = origenM.replace("ECL", "Estados Unidos, California, Los Ángeles");
            origenM = origenM.replace("EFO", "Estados Unidos, Florida, Orlando");
            origenM = origenM.replace("COT", "Canadá, Ontario, Toronto");
            origenM = origenM.replace("COL", "Canadá, Ontario, London");
            origenM = origenM.replace("FP", "Francia, Paris");
            origenM = origenM.replace("IR", "Italia, Roma");
            origenM = origenM.replace("EM", "España, Madrid");
            origenM = origenM.replace("PL", "Portugal, Lisboa");
            origenM = origenM.replace("ID", "Irlanda, Dublín");
            origenM = origenM.replace("RM", "Rusia, Moscú");
            origenM = origenM.replace("RS", "Rusia, San Petersburgo");
            origenM = origenM.replace("NA", "Nueva Zelanda, Auckland");
            origenM = origenM.replace("AS", "Australia, Sydney");
            origenM = origenM.replace("CDMX", "México, Ciudad de México, Ciudad de México");

            String destino = request.getParameter("destino");
            String destinoM = destino;

            destinoM = destinoM.replace("BuenosAires", "Argentina, Buenos Aires, Ezeiza");
            destinoM = destinoM.replace("Cordoba", "Argentina, Córdoba, Capital");
            destinoM = destinoM.replace("Maldonado", "Uruguay, Maldonado, Punta del Este");
            destinoM = destinoM.replace("CerroLargo", "Uruguay, Cerro Largo, Melo");
            destinoM = destinoM.replace("SaoPaulo", "Brasil, Estado de Sao Paulo, Sao Paulo");
            destinoM = destinoM.replace("RioDeJaneiro", "Brasil, Estado de Rio de Janeiro, Rio de Janeiro");
            destinoM = destinoM.replace("NuevaYork", "Estados Unidos, Nueva York, Nueva York");
            destinoM = destinoM.replace("LA", "Estados Unidos, California, Los Ángeles");
            destinoM = destinoM.replace("Florida", "Estados Unidos, Florida, Orlando");
            destinoM = destinoM.replace("Toronto", "Canadá, Ontario, Toronto");
            destinoM = destinoM.replace("London", "Canadá, Ontario, London");
            destinoM = destinoM.replace("Paris", "Francia, Paris");
            destinoM = destinoM.replace("Roma", "Italia, Roma");
            destinoM = destinoM.replace("Madrid", "España, Madrid");
            destinoM = destinoM.replace("Lisboa", "Portugal, Lisboa");
            destinoM = destinoM.replace("Oslo", "Noruega, Oslo");
            destinoM = destinoM.replace("Dublin", "Irlanda, Dublín");
            destinoM = destinoM.replace("Moscu", "Rusia, Moscú");
            destinoM = destinoM.replace("SanPeter", "Rusia, San Petersburgo");
            destinoM = destinoM.replace("Auckland", "Nueva Zelanda, Auckland");
            destinoM = destinoM.replace("Sydney", "Australia, Sydney");
            destinoM = destinoM.replace("CiudadMexico", "México, Ciudad de México, Ciudad de México");

            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
            Date fechaIda = formato.parse(request.getParameter("IDA"));
            Date fechaVuelta = formato.parse(request.getParameter("VUELTA"));

            String fechaI = String.valueOf(fechaIda);
            String fechaV = String.valueOf(fechaVuelta);

            fechaI = fechaI.replace("Mon", "");
            fechaI = fechaI.replace("Tue", "");
            fechaI = fechaI.replace("Wed", "");
            fechaI = fechaI.replace("Thu", "");
            fechaI = fechaI.replace("Fri", "");
            fechaI = fechaI.replace("Sat", "");
            fechaI = fechaI.replace("Sun", "");
            fechaI = fechaI.replace("ART", "");
            fechaI = fechaI.replace("00:00:00", "");
            fechaI = fechaI.replace("Jan", "Enero");
            fechaI = fechaI.replace("Feb", "Febrero");
            fechaI = fechaI.replace("Mar", "Marzo");
            fechaI = fechaI.replace("Apr", "Abril");
            fechaI = fechaI.replace("May", "Mayo");
            fechaI = fechaI.replace("Jun", "Junio");
            fechaI = fechaI.replace("Jul", "Julio");
            fechaI = fechaI.replace("Aug", "Agosto");
            fechaI = fechaI.replace("Sep", "Septiembre");
            fechaI = fechaI.replace("Oct", "Octubre");
            fechaI = fechaI.replace("Nov", "Noviembre");
            fechaI = fechaI.replace("Dec", "Diciembre");

            fechaV = fechaV.replace("Mon", "");
            fechaV = fechaV.replace("Tue", "");
            fechaV = fechaV.replace("Wed", "");
            fechaV = fechaV.replace("Thu", "");
            fechaV = fechaV.replace("Fri", "");
            fechaV = fechaV.replace("Sat", "");
            fechaV = fechaV.replace("Sun", "");
            fechaV = fechaV.replace("ART", "");
            fechaV = fechaV.replace("00:00:00", "");
            fechaV = fechaV.replace("Mar", "Marzo");
            fechaV = fechaV.replace("Apr", "Abril");
            fechaV = fechaV.replace("May", "Mayo");
            fechaV = fechaV.replace("Jun", "Junio");
            fechaV = fechaV.replace("Jul", "Julio");
            fechaV = fechaV.replace("Aug", "Agosto");
            fechaV = fechaV.replace("Sep", "Septiembre");
            fechaV = fechaV.replace("Oct", "Octubre");
            fechaV = fechaV.replace("Nov", "Noviembre");
            fechaV = fechaV.replace("Dec", "Diciembre");

            int pasajeros = Integer.parseInt(request.getParameter("pasajeros"));

            if (session.getAttribute("Usuario") != null) {
                bandera = true;
            }

            String horaS1, horaL1, horaSal1, horaLle1, horaS2, horaL2, horaSal2, horaLle2, horaS3, horaL3, horaSal3, horaLle3;
            String horaS4, horaL4, horaSal4, horaLle4, horaS5, horaL5, horaSal5, horaLle5, horaS6, horaL6, horaSal6, horaLle6;

            pageContext.setAttribute("bandera", bandera);
            pageContext.setAttribute("origen", origen);
            pageContext.setAttribute("destino", destino);
        %>

        <header>
            <img id="logo" src="img/Logo.png"/>
            <h1 id="titulo">Matias Airlines</h1>
        </header>

        <c:choose>
            <c:when test="${bandera == true}">
                <nav>
                    <ul id="navegador">
                        <li id="bienvenido"><p>¡Bienvenido: <% out.print(session.getAttribute("Usuario"));%>!</p></li>
                        <li class="Elementos"><a class="Vinculos" href="Inicio.jsp">Inicio</a></li>
                        <li class="Elementos"><a class="Vinculos" href="Salir.jsp">Salir</a></li>
                    </ul>
                </nav>
            </c:when>
            <c:otherwise>
                <nav>
                    <ul id="navegador">
                        <li class="Elementos"><a class="Vinculos" href="Inicio.html">Inicio</a></li>
                        <li class="Elementos"><a class="Vinculos" href="Iniciar-Sesion.html">Iniciar Sesión</a></li>
                        <li class="Elementos"><a class="Vinculos" href="Registro.html">Registrarse</a></li>
                    </ul>
                </nav>
            </c:otherwise>
        </c:choose>

        <section>
            <article id="carac">
                <p>Vuelo DESDE: <% out.print(origenM); %> | | HASTA: <% out.print(destinoM); %> </p>
                <p>IDA: <% out.print(fechaI); %> | | VUELTA: <% out.print(fechaV); %> </p>
                <p>Cantidad de pasajeros: <% out.print(pasajeros);%> </p>
            </article>

            <form action="VueloReservado.jsp" method="post">
                <input type="hidden" name="origenM" value="<% out.print(origenM); %>">
                <input type="hidden" name="destinoM" value="<% out.print(destinoM); %>">
                <input type="hidden" name="fechaI" value="<% out.print(fechaI); %>">
                <input type="hidden" name="fechaV" value="<% out.print(fechaV); %>">
                <input type="hidden" name="pasajeros" value="<% out.print(pasajeros); %>">
                <h1 id="IDA" class="titulos">IDA</h1>
                <table class="tablas">
                    <thead>
                    <th>Hora de salida:</th>
                    <th>Hora de llegada:</th>
                    <th>Cabinas y precios:</th>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${origen.equals('ACC') && destino.equals('Madrid') || origen.equals('Madrid') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>    
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('Maldonado') || origen.equals('UPM') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>  
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('CerroLargo') || origen.equals('UCM') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>    
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('SaoPaulo') || origen.equals('BES') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(3) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(3) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(3) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>  
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('RioDeJaneiro') || origen.equals('BER') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(5) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(5) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(5) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>   
                            </c:when>     
                            <c:when test="${origen.equals('ACC') && destino.equals('NuevaYork') || origen.equals('ENN') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(13) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(13) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(13) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>   
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('LA') || origen.equals('ECL') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(16) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(16) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(16) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr> 
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('Florida') || origen.equals('EFO') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>    
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('Toronto') || origen.equals('COT') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>      
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('London') || origen.equals('COL') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>   
                            </c:when>                       
                            <c:when test="${origen.equals('ACC') && destino.equals('Paris') || origen.equals('FP') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>       
                            </c:when>           
                            <c:when test="${origen.equals('ACC') && destino.equals('Roma') || origen.equals('IR') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(17) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(17) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(17) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>     
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('Lisboa') || origen.equals('PL') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(14) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(14) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(14) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>      
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('Oslo') || origen.equals('NO') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('Dublin') || origen.equals('ID') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr> 
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('Moscu') || origen.equals('RM') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('SanPeter') || origen.equals('RS') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>   
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('Auckland') || origen.equals('NA') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr> 
                            </c:when>   
                            <c:when test="${origen.equals('ACC') && destino.equals('Sydney') || origen.equals('AS') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(23) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(23) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(23) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>  
                            </c:when>
                            <c:when test="${origen.equals('ACC') && destino.equals('CiudadMexico') || origen.equals('CDMX') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS1 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS1);%>
                                        <input type="hidden" name="horaS1" value="<% out.print(horaS1); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL1 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                            out.print(horaL1);%>
                                        <input type="hidden" name="horaL1" value="<% out.print(horaL1); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio1">
                                            <option value="<% out.print(220000 * pasajeros); %>">Turista: <% out.print((220000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista Premium: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c1" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS2 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS2);%>
                                        <input type="hidden" name="horaS2" value="<% out.print(horaS2); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL2 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                            out.print(horaL2);%>
                                        <input type="hidden" name="horaL2" value="<% out.print(horaL2); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio2">
                                            <option value="<% out.print(220000 * pasajeros); %>">Turista: <% out.print((220000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista Premium: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c2" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS3 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS3);%>
                                        <input type="hidden" name="horaS3" value="<% out.print(horaS3); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL3 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                            out.print(horaL3);%>
                                        <input type="hidden" name="horaL3" value="<% out.print(horaL3); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio3">
                                            <option value="<% out.print(220000 * pasajeros); %>">Turista: <% out.print((220000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista Premium: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c3" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr> 
                            </c:when>
                        </c:choose>
                    </tbody>
                </table>
                <!----------------------------------------------------------------- Vuelta ----------------------------------------------------------------------->
                <h1 class="titulos">VUELTA</h1>
                <table class="tablas">
                    <thead>
                    <th>Hora de salida:</th>
                    <th>Hora de llegada:</th>
                    <th>Cabinas y precios:</th>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${origen.equals('ACC') && destino.equals('Madrid') || origen.equals('Madrid') && destino.equals('Cordoba')}">
                                <tr>
                                    <td>
                                        Hora de salida: 
                                        <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                            out.print(horaS4);%>
                                        <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                    </td>
                                    <td>
                                        Hora de llegada: 
                                        <% horaL4 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                            out.print(horaL4);%>
                                        <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                    </td>
                                    <td>
                                        <select class="opciones" name="precio4">
                                            <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                            <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                        </select>
                                        <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                    </td>
                                </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>   
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('Maldonado') || origen.equals('Maldonado') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>     
                        </c:when>    
                        <c:when test="${origen.equals('ACC') && destino.equals('CerroLargo') || origen.equals('UCM') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(2) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(38000 * pasajeros); %>">Turista: <% out.print((38000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(55000 * pasajeros); %>">Turista Premium: <% out.print((55000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>     
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('SaoPaulo') || origen.equals('BES') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(3) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(3) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(3) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>   
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('RioDeJaneiro') || origen.equals('BER') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(5) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(5) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(5) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(75000 * pasajeros); %>">Turista: <% out.print((75000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(90000 * pasajeros); %>">Turista Premium: <% out.print((90000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>   
                        </c:when>     
                        <c:when test="${origen.equals('ACC') && destino.equals('NuevaYork') || origen.equals('ENN') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(13) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(13) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(13) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('LA') || origen.equals('ECL') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(16) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(16) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(16) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('Florida') || origen.equals('EFO') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(270000 * pasajeros); %>">Turista: <% out.print((270000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('Toronto') || origen.equals('COT') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(15) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('London') || origen.equals('COL') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                        </c:when>                       
                        <c:when test="${origen.equals('ACC') && destino.equals('Paris') || origen.equals('FP') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>   
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('Roma') || origen.equals('IR') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(17) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(17) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(17) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('Lisboa') || origen.equals('Lisboa') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(13) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(13) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(13) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('Oslo') || origen.equals('NO') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(20) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>  
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('Dublin') || origen.equals('ID') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(21) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(21) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(21) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(300000 * pasajeros); %>">Turista: <% out.print((300000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(340000 * pasajeros); %>">Turista Premium: <% out.print((340000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>   
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('Moscu') || origen.equals('RM') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>   
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('SanPeter') || origen.equals('RS') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(26) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>   
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('Auckland') || origen.equals('NA') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(18) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(280000 * pasajeros); %>">Turista: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(320000 * pasajeros); %>">Turista Premium: <% out.print((320000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>      
                        </c:when>   
                        <c:when test="${origen.equals('ACC') && destino.equals('Sydney') || origen.equals('AS') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(23) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(23) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(23) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(360000 * pasajeros); %>">Turista: <% out.print((360000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(400000 * pasajeros); %>">Turista Premium: <% out.print((400000 * pasajeros) + " ARS");%></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr> 
                        </c:when>
                        <c:when test="${origen.equals('ACC') && destino.equals('CiudadMexico') || origen.equals('CDMX') && destino.equals('Cordoba')}">
                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS4 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS4);%>
                                    <input type="hidden" name="horaS4" value="<% out.print(horaS4); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL4 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                        out.print(horaL4);%>
                                    <input type="hidden" name="horaL4" value="<% out.print(horaL4); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio4">
                                        <option value="<% out.print(220000 * pasajeros); %>">Turista: <% out.print((220000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(280000 * pasajeros); %>">Turista Premium: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c4" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                            <td>
                                Hora de salida: 
                                <% horaS5 = horario.horaSalida() + " : " + horario.minutoSalida();
                                    out.print(horaS5);%>
                                <input type="hidden" name="horaS5" value="<% out.print(horaS5); %>">
                            </td>
                            <td>
                                Hora de llegada: 
                                <% horaL5 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                    out.print(horaL5);%>
                                <input type="hidden" name="horaL5" value="<% out.print(horaL5); %>">
                            </td>
                            <td>
                                <select class="opciones" name="precio5">
                                    <option value="<% out.print(220000 * pasajeros); %>">Turista: <% out.print((220000 * pasajeros) + " ARS"); %></option>
                                    <option value="<% out.print(280000 * pasajeros); %>">Turista Premium: <% out.print((280000 * pasajeros) + " ARS"); %></option>
                                </select>
                                <input type="checkbox" class="checkbox" id="c5" onchange="Verificar();" name="check" value=""/>
                            </td>

                            <tr>
                                <td>
                                    Hora de salida: 
                                    <% horaS6 = horario.horaSalida() + " : " + horario.minutoSalida();
                                        out.print(horaS6);%>
                                    <input type="hidden" name="horaS6" value="<% out.print(horaS6); %>">
                                </td>
                                <td>
                                    Hora de llegada: 
                                    <% horaL6 = horario.horaLlegada(12) + " : " + horario.minutoSalida();
                                        out.print(horaL6);%>
                                    <input type="hidden" name="horaL6" value="<% out.print(horaL6); %>">
                                </td>
                                <td>
                                    <select class="opciones" name="precio6">
                                        <option value="<% out.print(220000 * pasajeros); %>">Turista: <% out.print((220000 * pasajeros) + " ARS"); %></option>
                                        <option value="<% out.print(280000 * pasajeros); %>">Turista Premium: <% out.print((280000 * pasajeros) + " ARS");%></option>
                                    </select>
                                    <input type="checkbox" class="checkbox" id="c6" onchange="Verificar();" name="check" value=""/>
                                </td>
                            </tr>
                        </c:when>
                    </c:choose>
                    </tbody>
                </table>

                <c:choose>
                    <c:when test="${bandera == true}">
                        <style>
                            #Reservar{
                                height: 50px;
                                width: 200px;
                                font-size: 20px;
                                margin: 10px 570px;
                                color: white;
                                background-image: linear-gradient(90deg, #D58A6E, #A3CEEF);
                                border: 0px solid transparent;
                                max-width: 100%;
                            }

                            #Reservar:hover{
                                cursor: pointer;
                                animation: degradado 4s linear infinite;
                                box-shadow: 0px 1px 5px #636363;
                            }

                            @keyframes degradado{
                                0%{
                                    background-position: 0 0;
                                }
                                50%{
                                    background-position: 100px 0;
                                }
                                100%{
                                    background-position: 200px 0;
                                }
                            }
                        </style>
                        <button type="submit" id="Reservar">RESERVAR</button>
                    </c:when>
                    <c:otherwise>
                        <style>
                            #BotonSesion{
                                height: 50px;
                                width: 200px;
                                font-size: 20px;
                                margin: 10px 570px;
                                color: white;
                                background-image: linear-gradient(90deg, #D58A6E, #A3CEEF);
                                border: 0px solid transparent;
                                max-width: 100%;
                            }

                            #BotonSesion:hover{
                                cursor: pointer;
                                animation: degradado 4s linear infinite;
                                box-shadow: 0px 1px 5px #636363;
                            }

                            @keyframes degradado{
                                0%{
                                    background-position: 0 0;
                                }
                                50%{
                                    background-position: 100px 0;
                                }
                                100%{
                                    background-position: 200px 0;
                                }
                            }
                        </style>
                        <button type="button" onclick="window.location.href = 'Iniciar-Sesion.html'" id="BotonSesion">INICIAR SESIÓN</button>
                    </c:otherwise>
                </c:choose>
            </form>
        </section>

        <script>
            let valor1 = document.getElementById("c1");
            let valor2 = document.getElementById("c2");
            let valor3 = document.getElementById("c3");
            let valor4 = document.getElementById("c4");
            let valor5 = document.getElementById("c5");
            let valor6 = document.getElementById("c6");

            function Verificar() {
                if (valor1.checked === true) {
                    valor2.checked = false;
                    valor3.checked = false;
                    valor1.value = "1";
                    valor2.value = "0";
                    valor3.value = "0";
                } else if (valor2.checked === true) {
                    valor1.checked = false;
                    valor3.checked = false;
                    valor1.value = "0";
                    valor2.value = "2";
                    valor3.value = "0";
                } else if (valor3.checked === true) {
                    valor1.checked = false;
                    valor2.checked = false;
                    valor1.value = "0";
                    valor2.value = "0";
                    valor3.value = "3";
                }

                if (valor4.checked === true) {
                    valor5.checked = false;
                    valor6.checked = false;
                    valor4.value = "4";
                    valor5.value = "0";
                    valor6.value = "0";
                } else if (valor5.checked === true) {
                    valor4.checked = false;
                    valor6.checked = false;
                    valor4.value = "0";
                    valor5.value = "5";
                    valor6.value = "0";
                } else if (valor6.checked === true) {
                    valor4.checked = false;
                    valor5.checked = false;
                    valor4.value = "0";
                    valor5.value = "0";
                    valor6.value = "6";
                }
            }
        </script>

        <footer>
            <p>®Derechos reservados a Matias Abregú</p>
            <a target="blank" href="https://api.whatsapp.com/send?phone=3512753590">¡Contactame aqui :D!</a>
        </footer>

    </body>
</html>