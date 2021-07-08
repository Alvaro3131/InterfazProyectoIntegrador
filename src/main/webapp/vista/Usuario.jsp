<%-- 
    Document   : Usuario
    Created on : 5 jul. 2021, 11:35:26
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
            <h1>CRUD USUARIO</h1>
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
                  
                 <!-- Button trigger modal -->
                 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="margin-left: 10px; background-color: rgb(119, 230, 147);border:none">
  +
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="form-gropu">
              <div class="row">
                  <input type="text"class="form-control col-5" id="idusuario" placeholder="Id_Usuario" style="margin-right: 5px;margin-left:5px; margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="nombre" placeholder="Nombre" style=" margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="apellido" placeholder="Apellido_P" style="margin-right: 5px;margin-left:5px; margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="apellido2" placeholder="Apellido_M" style=" margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="correo" placeholder="Correo" style="margin-right: 5px;margin-left:5px; margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="telefono" placeholder="Telefono" style=" margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="dni" placeholder="Dni" style="margin-right: 5px;margin-left:5px; margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="u" placeholder="Username" style=" margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="pass" placeholder="Password" style="margin-right: 5px;margin-left:5px; margin-bottom: 5px">
              </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="boton2">Save changes</button>
      </div>
    </div>
  </div>
</div>
                  
                </div>
                  
                
                </div>
               
              </div>
           <div class="container small" >
                <table class="table" id="tablita">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Id_Usuario</th>
                      <th scope="col">Nombre</th>
                      <th scope="col">Apellidos</th>
                      
                      <th scope="col">Correo</th>
                      <th scope="col">Telefono</th>
                      <th scope="col">Dni</th>
                      <th scope="col">Username</th>
                      <th scope="col">Password</th>
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
      
  <script >
      
      $(document).ready(function(){
    
	listar();
        limpiar();

	
});

function listar(){
	$.get("uc", {"opc":1}, function(data){
		var c= JSON.parse(data);
                
		$("#tablita tbody tr").remove();
		for(var i=0;i<c.length;i++){
			$("#tablita").append("<tr><td>"+(i+1)+"</td><td>"+c[i].idusuario+"</td><td>"+c[i].nombre+"</td><td>"+c[i].apellido1+" "+c[i].apellido2+"</td><td>"+c[i].correo+"</td><td>"+c[i].telefono+"</td><td>"+c[i].dni+"</td><td>"+c[i].username+"</td><td>"+c[i].password+"</td><td><a href='#' onclick='editar("+c[i].idusuario+")'><i class='far fa-edit'></i></a></td><td><a href='#' onclick='eliminar("+c[i].idusuario+")'><i class='fas fa-trash-alt'></i></a></td></tr>");
		}
	});
}
$("#boton2").click(function(){
	var idr = $("#id").val();
        var q = $("#u").val();
	if(idr==0){
        
	var param = {"idusuario":$("#idusuario").val(),"nombre":$("#nombre").val(),"apellido":$("#apellido").val(),"apellido2":$("#apellido2").val(),"correo":$("#correo").val(),"telefono":$("#telefono").val(),"dni":$("#dni").val(),"u":$("#u").val(),"pass":$("#pass").val(), "opc":3};
	$.ajax({
		beforeSend: function(){
			$('#resultado').html('Esperando...!');
		},
		data: param,
		url: 'uc',
		type: 'POST',
		success: function(response){
                        
			limpiar();
			listar();
                        $("#exampleModal").modal('hide');
                        
                        
		},
		error: function(jqXHR, estado, error){
                    $("#exampleModal").modal('hide');
		console.log(estado)
		console.log(error)
		},
		complete: function (jqXHR, estado){
			console.log(estado)
                        $("#exampleModal").modal('hide');
		}				
	});
	}else{
		alert($("#id").val()+"/"+$("#nombre").val());
		$.post("uc",{"i":$("#id").val(),"nombre":$("#nombre").val(),"apellido":$("#apellido").val(),"apellido2":$("#apellido2").val(),"correo":$("#correo").val(),"telefono":$("#telefono").val(),"dni":$("#dni").val(),"u":$("#u").val(),"pass":$("#pass").val(), "opc":5},function (data) {
		listar();
                $("#exampleModal").modal('hide');
		limpiar();	
    });
	}
});
function editar(id){
         
	$("#boton2").html("Editar");
        $("#exampleModal").modal('show');
	$.get("uc",{"id":id,"opc":4},function (data) {
         var x = JSON.parse(data);
        $("#nombre").val(x.nombre)
        $("#apellido").val(x.apellido1)
         $("#apellido2").val(x.apellido2)
        $("#correo").val(x.correo)
        $("#telefono").val(x.telefono)
        $("#dni").val(x.dni)
        $("#u").val(x.username)
        $("#pass").val(x.password)
        $("#idusuario").val(x.idusuario);
        $("#id").val(x.idusuario);
    });
}
function eliminar(id){
    
	$.get("uc",{"i":id,"opc":6},function () {
        listar();
    });
}
function limpiar(){
        $("#idusuario").val("");
	$("#nombre").val("");
	$("#apellido").val("");
	$("#apellido2").val("");
	$("#correo").val("");
        $("#telefono").val("");
        $("#dni").val("");
        $("#u").val("");
        $("#pass").val("");
	$("#nombre").focus();
	$("#id").val(0);
	$("#boton2").html("Crear");
}

  </script>
    </body>
</html>
