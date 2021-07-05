<%-- 
    Document   : gestiondetablaas
    Created on : 5 jul. 2021, 10:26:37
    Author     : Alvaro Alva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <style>
        .navbar{
            border-bottom: 1px solid white;
        }
    </style>
    </head>
    <body>
        <div class="container-fluid">
        <div class="row">
            <div class="col-2" style="height: 592px; background-color: rgb(119, 230, 147);">
                <nav class="navbar navbar-light " style="display: flex; flex-direction:inherit;">
                    <div style=" display: flex; flex-direction: initial;">
                     <i class="fas fa-share-square" style=" width: 10px; margin-right: 15px; margin-top: 10px;"></i>
                     <a class="navbar-brand color" href="#" style="color: rgb(255, 255, 255); font-size: 18px;" onclick="g(1)"  >
                        Socio
                     </a>
                   </div>
                   </nav>
                   <nav class="navbar navbar-light " style="display: flex; flex-direction:inherit;">
                    <div style=" display: flex; flex-direction: initial;">
                     <i class="fas fa-registered" style=" width: 10px; margin-right: 15px; margin-top: 10px;"></i>
                     <a class="navbar-brand color" href="#" style="color: rgb(255, 255, 255); font-size: 18px; " onclick="g(2)">
                        Banco_Comunal
                     </a>
                   </div>
                   </nav>
                 <nav class="navbar navbar-light " style="display: flex; flex-direction:inherit;">
                    <div style=" display: flex; flex-direction: initial;">
                     <i class="fas fa-pen" style=" width: 10px; margin-right: 15px; margin-top: 10px;"></i>
                     <a class="navbar-brand color" href="#" style="color: rgb(255, 255, 255); font-size: 18px; " onclick="g(3)">
                        Usuario
                     </a>
                   </div>
                   </nav>
                 
                <nav class="navbar navbar-light " style="display: flex; flex-direction:inherit;">
                    <div style=" display: flex; flex-direction: initial;">
                     <i class="fas fa-user" style=" width: 10px; margin-right: 15px; margin-top: 10px;"></i>
                     <a class="navbar-brand color" href="#" style="color: rgb(255, 255, 255); font-size: 18px; " onclick="g(4)">
                        Nom_Rol
                     </a>
                   </div>
                 </nav>
                <nav class="navbar navbar-light " style="display: flex; flex-direction:inherit;">
                    <div style=" display: flex; flex-direction: initial;">
                     <i class="fas fa-folder-open" style=" width: 10px; margin-right: 15px; margin-top: 10px;"></i>
                     <a class="navbar-brand color" href="#" style="color: rgb(255, 255, 255); font-size: 18px; " onclick="g(5)">
                        Capacitador
                     </a>
                   </div>
                 </nav>
                <nav class="navbar navbar-light " style="display: flex; flex-direction:inherit;">
                    <div style=" display: flex; flex-direction: initial;">
                     <i class="fas fa-file-import" style=" width: 10px; margin-right: 15px; margin-top: 10px;"></i>
                     <a class="navbar-brand color" href="#" style="color: rgb(255, 255, 255); font-size: 18px; " onclick="g(6)">
                        Prog_Capacitacion
                     </a>
                   </div>
                 </nav>
                <nav class="navbar navbar-light " style="display: flex; flex-direction:inherit;">
                    <div style=" display: flex; flex-direction: initial;">
                     <i class="fas fa-signal" style=" width: 10px; margin-right: 15px; margin-top: 10px;"></i>
                     <a class="navbar-brand color" href="#" style="color: rgb(255, 255, 255); font-size: 18px; " onclick="g(7)">
                        Capacitación
                     </a>
                   </div>
                 </nav>
                 <nav class="navbar navbar-light " style="display: flex; flex-direction:inherit;">
                    <div style=" display: flex; flex-direction: initial;">
                     <i class="fas fa-signal" style=" width: 10px; margin-right: 15px; margin-top: 10px;"></i>
                     <a class="navbar-brand color" href="#" style="color: rgb(255, 255, 255); font-size: 18px; " onclick="g(8)">
                        Sesion
                     </a>
                   </div>
                 </nav>
                 <nav class="navbar navbar-light " style="display: flex; flex-direction:inherit;">
                    <div style=" display: flex; flex-direction: initial;">
                     <i class="fas fa-signal" style=" width: 10px; margin-right: 15px; margin-top: 10px;"></i>
                     <a class="navbar-brand color" href="#" style="color: rgb(255, 255, 255); font-size: 18px; " onclick="g(9)">
                        Recurso
                     </a>
                   </div>
                 </nav>
                 <nav class="navbar navbar-light " style="display: flex; flex-direction:inherit;">
                    <div style=" display: flex; flex-direction: initial;">
                     <i class="fas fa-signal" style=" width: 10px; margin-right: 15px; margin-top: 10px;"></i>
                     <a class="navbar-brand color" href="#" style="color: rgb(255, 255, 255); font-size: 18px; " onclick="g(10)">
                        Asistencia
                     </a>
                   </div>
                 </nav>
                 <nav class="navbar navbar-light " style="display: flex; flex-direction:inherit;">
                    <div style=" display: flex; flex-direction: initial;">
                     <i class="fas fa-signal" style=" width: 10px; margin-right: 15px; margin-top: 10px;"></i>
                     <a class="navbar-brand color" href="#" style="color: rgb(255, 255, 255); font-size: 18px; " onclick="g(11)">
                        Inscripcion
                     </a>
                   </div>
                 </nav>
                   
                   
            </div>
            <div class="col-6" id="crud">
                
            </div>
        </div>
    </div>
       
    </body>
</html>
