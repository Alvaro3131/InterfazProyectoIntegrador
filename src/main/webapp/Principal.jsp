<%-- 
    Document   : Principal
    Created on : 11 jul. 2021, 17:50:17
    Author     : Alvaro Alva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="recursos/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
 
    </head>
    <body>
          
        <div style="margin-top: 30px" id="cuerpo">
             <div style="text-align: center; height: 100px;"> <h2 style="margin-top: 10px;">Elige la Categoría que mas te guste</h2></div>
        <div style="margin: 20px; text-align: center; flex-direction: row;">
          <button type="button" class="btn btn-success" style="background-color: rgb(255, 0, 0); margin-right: 50px; width: 200px; height: 50px;" onclick="pagina(6)">COCINA</button>
          <button type="button" class="btn btn-success" style="background-color: rgb(48, 48, 182); margin-right: 50px; width: 200px; height: 50px;">JARDINERÍA</button>
          <button type="button" class="btn btn-success" style="background-color: rgb(161, 0, 135); margin-right: 50px; width: 200px; height: 50px;">ENERGÍA</button>
        </div>
        <div style="margin: 20px; text-align: center; flex-direction: row;">
          <button type="button" class="btn btn-success" style="background-color: rgb(0, 255, 21); margin-right: 50px; width: 200px; height: 50px;">MANUALIDADES</button>
          <button type="button" class="btn btn-success" style="background-color: rgb(160, 0, 75); margin-right: 50px; width: 200px; height: 50px;">INSDUSTRIA</button>
          <button type="button" class="btn btn-success" style="background-color: rgb(226, 192, 0); margin-right: 50px; width: 200px; height: 50px;">TURISMO</button>
          <button type="button" class="btn btn-success" style="background-color: rgb(44, 165, 44); margin-right: 50px; width: 200px; height: 50px;">MINERÍA</button>
        </div>
        <div style="margin: 20px; text-align: center; flex-direction: row;">
          <button type="button" class="btn btn-success" style="background-color: rgb(223, 0, 193); margin-right: 50px; width: 200px; height: 50px;">TRANSPORTES</button>
          <button type="button" class="btn btn-success" style="background-color: rgb(0, 247, 255); margin-right: 50px; width: 200px; height: 50px;">TECNOLOGÍA</button>
          <button type="button" class="btn btn-success" style="background-color: rgb(240, 80, 6); margin-right: 50px; width: 200px; height: 50px;">SALUD</button>
        </div>
        </div>
        <script >
            var data = sessionStorage.getItem('user'); 
$("#login").html(""+data+"</b>");

function pagina(op){

    if(op==1){
        $("#todo").load("home.html");
    }
    if(op==2){
        $("#todo").load("contactos.html");
    }
    if(op==3){
        $("#todo").load("raiz.html");
    }
    if(op==4){
        window.location = 'principal.html';
    }
    if(op==5){
        window.location = 'login.html';
    }
    if(op==6){
        $("#cuerpo").load("Cocina.jsp");
    }
    if(op==7){
        window.location = 'programa.html';
    }
    if(op==8){
        $("#video").load("cocina.html");
    }
}
function raiz(){
    var n = $("#numero").val();
    $("#resultado").val(Math.sqrt(n));
}
        </script>
    </body>
</html>
