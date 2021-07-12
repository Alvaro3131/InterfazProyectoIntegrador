<%-- 
    Document   : Programa
    Created on : 11 jul. 2021, 18:10:02
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
         <div class="cuerpo" id="cuerpo">
        <div style="display: flex; flex-direction: row;">
          <div style="text-align: center; width: 90%; height: 100px;"> <h2 style="margin-top: 10px;">PLATOS TÍPICOS</h2>
          </div>
          <div style="">
            <button type="button" class="btn btn-success" style="background-color: rgb(44, 165, 44); width: 150px; height: 50px;" onclick="pagina(4)">VOLVER INICIO</button>
          </div>
        </div>
        
        <div style="display: flex; flex-direction: row;">
          <div style=" margin: 50px;">
            <div id="video" style="border: 3px solid black;" >
            <iframe width="560" height="315" src="https://www.youtube.com/embed/Fe0ODItnoa4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
          </div>
          <div style="width: 50%;">
            <div class="btn-group" role="group" aria-label="Basic example">
              <button type="button" class="btn btn-secondary" style="width: 200px; border: 3px solid black; background-color: cadetblue;"><h2>Modulo 1</h2></button>
              <button type="button" class="btn btn-secondary" style="width: 200px; border: 3px solid black;"><h2>Modulo 2</h2></button>
              <button type="button" class="btn btn-secondary" style="width: 200px; border: 3px solid black;"><h2>Modulo 3</h2></button>
            </div>
            <div style="width: 600px; height: 390px;">
              <div style="width: 600px; height: 130px; border: 3px solid black; display: flex; flex-direction: row;">
                <h1 style="margin-top: 30px; margin-left: 10px">Sesion 1</h1><i class="fab fa-youtube" style="font-size: 100px; margin: 10px; color: rgb(248, 0, 0);"></i>
                <i class="fab fa-youtube" style="font-size: 100px; margin: 10px; color: rgb(230, 0, 0);"></i>
                <i class="fas fa-video" style="font-size: 100px; margin: 10px; color: rgb(42, 75, 165);"></i>
              </div>
              <div style="width: 600px; height: 130px; border: 3px solid black; display: flex; flex-direction: row;">
                <h1 style="margin-top: 30px;margin-left: 10px">Sesion 1</h1><i class="fab fa-youtube" style="font-size: 100px; margin: 10px; color: rgb(255, 0, 0);"></i>
                <i class="fas fa-video" style="font-size: 100px; margin: 10px; color: rgb(42, 75, 165);"></i>
              </div>
              <div style="width: 600px; height: 130px; border: 3px solid black;  display: flex; flex-direction: row;">
                <h1 style="margin-top: 30px;margin-left: 10px">Sesion 1</h1><i class="fab fa-youtube" style="font-size: 100px; margin: 10px; color: rgb(250, 0, 0);"></i>
                <i class="fas fa-video" style="font-size: 100px; margin: 10px; color: rgb(42, 75, 165);"></i>
                <i class="fab fa-youtube" style="font-size: 100px; margin: 10px; color: rgb(255, 0, 0);"></i>
              </div>
            </div>
          </div>
        </div>
    </div>
                <script >
            var data = sessionStorage.getItem('user'); 
$("#login").html(""+data+"</b>");

function pagina(op){

  
    if(op==4){
        $("#cuerpo").load("Principal.jsp");
    }
   
}

        </script>
    </body>
</html>
