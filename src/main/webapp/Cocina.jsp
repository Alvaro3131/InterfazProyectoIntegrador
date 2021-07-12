<%-- 
    Document   : Cocina
    Created on : 11 jul. 2021, 18:04:18
    Author     : Alvaro Alva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div>
    <div style="text-align: center; height: 100px;"> <h2 style="margin-top: 10px;">PROGRAMAS DE COCINA</h2></div>
    <div style="margin: 20px; text-align: center; flex-direction: row;">
      <button type="button" class="btn btn-success" style="background-color: rgb(48, 48, 182); margin-right: 50px; width: 200px; height: 50px;">RECETAS</button>
      <button type="button" class="btn btn-success" style="background-color: rgb(247, 150, 150); margin-right: 50px; width: 200px; height: 50px;">REPOSTERÍA</button>
      <button type="button" class="btn btn-success" style="background-color: rgb(161, 0, 135); margin-right: 50px; width: 200px; height: 50px;">POSTRES</button>
    </div>
    <div style="margin: 20px; text-align: center; flex-direction: row;">
      <button type="button" class="btn btn-success" style="background-color: rgb(0, 255, 21); margin-right: 50px; width: 200px; height: 50px;">PLATOS A LA CARTA</button>
      <button type="button" class="btn btn-success" style="background-color: rgb(44, 165, 44); margin-right: 50px; width: 200px; height: 50px;" onclick="pagina(5)">PLATOS TÍPICOS</button>
    </div>
    <div style="margin: 20px; text-align: center; flex-direction: row;">
      <button type="button" class="btn btn-success" style="background-color: rgb(0, 247, 255); margin-right: 50px; width: 200px; height: 50px;">COMIDA VEGETARIANA</button>
      <button type="button" class="btn btn-success" style="background-color: rgb(223, 0, 193); margin-right: 50px; width: 200px; height: 50px;">COMIDA RAPIDA</button>
      <button type="button" class="btn btn-success" style="background-color: rgb(240, 80, 6); margin-right: 50px; width: 200px; height: 50px;">BEBIBAS</button>
    </div>
    
  </div>
        <script >
            var data = sessionStorage.getItem('user'); 
$("#login").html(""+data+"</b>");

function pagina(op){

  
    if(op==5){
        $("#cuerpo").load("Programa.jsp");
    }
   
}

        </script>
    </body>
    
</html>
