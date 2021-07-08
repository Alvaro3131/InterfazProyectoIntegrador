<%-- 
    Document   : programa
    Created on : 5 jul. 2021, 11:36:16
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
   
    .seg{
       
        height: 60px;
        padding-top: 10px;
        border-bottom: 1px solid black;
       
    }
   
    </style>
    </head>
    <body>
        <div class="container-fluid"  >
    <div class="row">
        <div class="col-7 seg">
            <h1>CRUD PROGRAMA </h1>
        </div>
       <div class="col-10" id="todo">
              <div class="container small" style="margin-bottom: 40px">
                <div class="form-group">
                    <br>
                 <div class="row">
                  
                  
                </div>
                <br>
                <div class="row">
                 

                  <input type="hidden" class="form-control col-7"	id="id" value="0" />
                  
                  <button class="btn btn-danger" id="boton1" style="background-color: rgb(119, 230, 147); border: none; margin-left: 15px">+</button>
                  
                </div>
                  
                
                </div>
               
              </div>
           <div class="container small" >
                <table class="table" id="tablita">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Id_Programa</th>
                      <th scope="col">Nombre</th>
                      <th scope="col">URL</th>
                      <th scope="col">Capacitacion</th>
                      <th scope="col">Capacitador</th>
                      <th scope="col">Estado</th>
                      <th scope="col">Categoria</th>
                      
                      <th scope="col" colspan="2">Acción</th>
                    </tr>
                  </thead>
                  <tbody>
            
                  </tbody>
                </table>
              </div>
            </div>
        
    </div>
    </div>
    </body>
</html>
