<%-- 
    Document   : index
    Created on : 28 jun. 2021, 19:30:22
    Author     : Alvaro Alva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="recursos/css/bootstrap.min.css" media="all" />
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid" style="background-color: rgb(0, 179, 110); height: 655px;">
    <img src="recursos/imagenes/Adra.jpg" alt="" width="8%" style="border: 1px solid rgb(255, 255, 255); border-radius: 100%;">
       <div class="container" style="max-width: 500px; margin: 0 auto;  ">
           <div class="row">
               <div class="col-12" style="height: 450px; background-color: rgb(51, 153, 131); border-radius: 5%; padding-top: 15px; ">
               <h1 style="text-align: center; color: white;">Iniciar Sesión</h1>
               <br>
                <div style="text-align: center;">
                    <i class="fas fa-user"  alt=""  style=" font-size: 150px; color: white;" ></i>
                </div>
                <br>
                  <div class="col-10" style="padding-left: 100px;">
                    <label class="sr-only" for="inlineFormInputGroup">Username</label>
                    <div class="input-group mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">@</div>
                      </div>
                      <input type="text" class="form-control" id="username" placeholder="Username">
                    </div>
                  </div>
                  <div class="col-10" style="padding-left: 100px;">
                    <label class="sr-only" for="inlineFormInput">Name</label>
                    <input type="password" class="form-control mb-2" id="password" placeholder="Pasword">
                  </div>
                  <div class="col-10" style="padding-left: 100px;">
                    <button type="submit" class="btn btn-primary mb-2" style="width: 100%;" onclick="login()">Submit</button>
                  </div>
               </div>
           </div>
       </div>
   </div>

        <script src="recursos/js/jquery-3.6.0.min.js"></script>
<script src="recursos/js/bootstrap.min.js"></script>
<script src="recursos/js/script.js"></script>
    </body>
</html>
