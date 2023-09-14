<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <style>
            body{
                margin: 0px 60px;
                font-family: 'Lora', serif;
            }
            article{
                padding-top: 10px;
                margin-top: 10px;   
                text-align: center;
                background-color: #F0F0F0;
                height: 120px;
                width: 500px;
                border: 3px solid transparent;
                border-image: linear-gradient(90deg, #D58A6E, #A3CEEF) 1;
            }
            h1{
                color: #2B2B2B;
            }
        </style>
        <article>
        <h1>¡Vuelo reservado con éxito!</h1>
        <a href="Inicio.jsp">Volver al inicio</a>
        </article>
    </body>
</html>
