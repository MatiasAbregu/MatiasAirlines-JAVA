<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Matias Airlines - Inicio</title>
        <meta charset="UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lora:ital@1&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="img/Logo.ico">
        <link rel="stylesheet" href="EstiloInicioJSP.css"/>
    </head>

    <body>
        <%
            String usuario = (String) session.getAttribute("Usuario");

            if (usuario == null) {
                session.setAttribute("Usuario", request.getAttribute("Nombre"));
            }
        %>
        <header>
            <img id="logo" src="img/Logo.png"/>
            <h1 id="titulo">Matias Airlines</h1>
        </header>
        <nav>
            <ul id="navegador">
                <li id="bienvenido"><p>¡Bienvenido: <% out.print(session.getAttribute("Usuario"));%>!</p></li>
                <li class="Elementos"><a class="Vinculos" href="Inicio.jsp">Inicio</a></li>
                <li class="Elementos"><a class="Vinculos" href="Salir.jsp">Salir</a></li>
            </ul>
        </nav>

        <section id="section1">    
            <article>

                <h2>Vuelo</h2>             
                <form action= "Resultados" method="post" onsubmit="return ControlarViaje()">
                    <label for="origen">Origen:</label>
                    <select class="objetos-formulario" id="origen" name="origen" required>
                        <option value="ABE">Argentina, Buenos Aires, Ezeiza</option>
                        <option value="ACC">Argentina, Córdoba, Capital</option>
                        <option value="UMP">Uruguay, Maldonado, Punta del Este</option>
                        <option value="UCM">Uruguay, Cerro Largo, Melo</option>
                        <option value="BES">Brasil, Estado de Sao Paulo, Sao Paulo</option>
                        <option value="BER">Brasil, Estado de Rio de Janeiro, Rio de Janeiro</option>
                        <option value="CDMX">México, Ciudad de México, Ciudad de México</option>
                        <option value="ENN">Estados Unidos, Nueva York, Nueva York</option>
                        <option value="ECL">Estados Unidos, California, Los Ángeles</option>
                        <option value="EFO">Estados Unidos, Florida, Orlando</option>
                        <option value="COT">Canadá, Ontario, Toronto</option>
                        <option value="COL">Canadá, Ontario, London</option>
                        <option value="FP">Francia, Paris</option>
                        <option value="IR">Italia, Roma</option>
                        <option value="EM">España, Madrid</option>
                        <option value="PL">Portugal, Lisboa</option>
                        <option value="NO">Noruega, Oslo</option>
                        <option value="ID">Irlanda, Dublín</option>
                        <option value="RM">Rusia, Moscú</option>
                        <option value="RS">Rusia, San Petersburgo</option>
                        <option value="NA">Nueva Zelanda, Auckland</option>
                        <option value="AS">Australia, Sydney</option>
                    </select>

                    <label for="destino">Destino:</label>
                    <select class="objetos-formulario" id="destino" name="destino" required>
                        <option value="BuenosAires">Argentina, Buenos Aires, Ezeiza</option>
                        <option value="Cordoba">Argentina, Córdoba, Capital</option>
                        <option value="Maldonado">Uruguay, Maldonado, Punta del Este</option>
                        <option value="CerroLargo">Uruguay, Cerro Largo, Melo</option>
                        <option value="SaoPaulo">Brasil, Estado de Sao Paulo, Sao Paulo</option>
                        <option value="RioDeJaneiro">Brasil, Estado de Rio de Janeiro, Rio de Janeiro</option>
                        <option value="CiudadMexico">México, Ciudad de México, Ciudad de México</option>
                        <option value="NuevaYork">Estados Unidos, Nueva York, Nueva York</option>
                        <option value="LA">Estados Unidos, California, Los Ángeles</option>
                        <option value="Florida">Estados Unidos, Florida, Orlando</option>
                        <option value="Toronto">Canadá, Ontario, Toronto</option>
                        <option value="London">Canadá, Ontario, London</option>
                        <option value="Paris">Francia, Paris</option>
                        <option value="Roma">Italia, Roma</option>
                        <option value="Madrid">España, Madrid</option>
                        <option value="Lisboa">Portugal, Lisboa</option>
                        <option value="Oslo">Noruega, Oslo</option>
                        <option value="Dublin">Irlanda, Dublín</option>
                        <option value="Moscu">Rusia, Moscú</option>
                        <option value="SanPeter">Rusia, San Petersburgo</option>
                        <option value="Auckland">Nueva Zelanda, Auckland</option>
                        <option value="Sydney">Australia, Sydney</option>
                    </select>

                    <br><br><br>

                    <label for="ida">Fecha Ida:</label>
                    <input type="date" class="objetos-formulario" id="ida" name="IDA" required/>

                    <label for="vuelta">Fecha Vuelta:</label>
                    <input type="date" class="objetos-formulario" id="vuelta" name="VUELTA" required/>

                    <label for="pasajeros">Número de pasajeros:</label> 
                    <select class="objetos-formulario" id="pasajeros" name="pasajeros" required>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                    </select>

                    <br><br><br>
                    <button type="submit" id="Buscar">Buscar</button>
                </form>

            </article>
        </section>

        <section id="section2">
            <article class="margen" onclick="Roma();">
                <img src="img/Fondo.jpg" id="Roma"/>
                <p>¿Con ganas de visitar Italia? No lo pienses más, viaja a Roma.</p>
            </article>

            <article class="subrayado" onclick="Paris();">
                <img src="img/Paris.jpg" id="Paris"/>
                <p>Visita uno de los lugares más iconicos en el mundo, la Torre Eiffel.</p>
            </article>

            <article class="margen espaciado" onclick="LA();">
                <img src="img/LosAngeles.jpg" id="LA"/>
                <p>¿Con ganas de conocer el famosisimo Hollywood? Visita Los Ángeles.</p>
            </article>

            <article class="subrayado espaciado" onclick="Sydney();">
                <img src="img/Sydney.jpg" id="Sydney"/>
                <p>Visita una de las ciudades más grandes y hermosas de Australia.</p>
            </article>
        </section>

        <footer>
            <p>®Derechos reservados a Matias Abregú</p>
            <a target="blank" href="https://api.whatsapp.com/send?phone=3512753590">¡Contactame aqui :D!</a>
        </footer>

        <script>
            let origen = document.getElementById("origen");
            let destino = document.getElementById("destino");
            let fechaI = document.getElementById("ida");
            let fechaV = document.getElementById("vuelta");
            
            function Roma() {
                destino.value = "Roma";
                window.scrollTo(0, 50);
            }

            function Paris() {
                destino.value = "Paris";
                window.scrollTo(0, 50);
            }

            function LA() {
                destino.value = "LA";
                window.scrollTo(0, 50);
            }

            function Sydney() {
                destino.value = "Sydney";
                window.scrollTo(0, 50);
            }

            function ControlarViaje() {
                if(origen.value === "ABE" && destino.value === "BuenosAires"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "ACC" && destino.value === "Cordoba"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "UMP" && destino.value === "Maldonado"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "UCM" && destino.value === "CerroLargo"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "BES" && destino.value === "SaoPaulo"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "BER" && destino.value === "RioDeJaneiro"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "ENN" && destino.value === "NuevaYork"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "ECL" && destino.value === "LA"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "EFO" && destino.value === "Florida"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "COT" && destino.value === "Toronto"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "COL" && destino.value === "London"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "FP" && destino.value === "Paris"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "IR" && destino.value === "Roma"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "EM" && destino.value === "Madrid"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "PL" && destino.value === "Lisboa"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "NO" && destino.value === "Oslo"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "ID" && destino.value === "Dublin"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "RM" && destino.value === "Moscu"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "RS" && destino.value === "SanPeter"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "NA" && destino.value === "Auckland"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false; 
                } else if(origen.value === "AS" && destino.value === "Sydney"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                } else if(origen.value === "UMP" && destino.value === "CerroLargo"){
                    alert("No hay vuelos disponibles desde Uruguay, Maldonado, Punta del Este hasta Uruguay, Cerro Largo, Melo");
                    return false;
                } else if(origen.value === "UCM" && destino.value === "Maldonado"){
                    alert("No hay vuelos disponibles desde Uruguay, Cerro Largo, Melo hasta Uruguay, Maldonado, Punta del Este");
                    return false;
                } else if(origen.value === "CDMX" && destino.value === "CiudadMexico"){
                    alert("¡¡No puedes seleccionar el mismo destino que el origen!!");
                    return false;
                }
                
                if(fechaI.value > fechaV.value){
                    alert("La fecha de vuelta no puede ser anterior a la de la ida.");
                    return false;
                } else if(fechaI.value === fechaV.value){
                    alert("La fecha de ida no puede ser igual a la fecha de la vuelta.");
                    return false;
                }
            }    
        </script>
        
    </body>

</html>
