<%-- 
    Document   : capacitdor
    Created on : 5 jul. 2021, 11:36:00
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
            <h1>CRUD CAPACITADOR</h1>
        </div>
       <div class="col-10" id="todo">
              <div class="container small" style="margin-bottom: 40px">
                <div class="form-group">
                    <br>
                 <div class="row">
                  <input type="text" class="form-control col-5"	id="idusuario" style="margin-right: 20px;" placeholder="Id_Usuario" /> 
                  <button class="btn btn-danger" id="boton1" style="background-color: rgb(119, 230, 147); border: none">Crear</button>
                  <button class="btn btn-danger" id="boton2" style="margin-left:10px;background-color: rgb(119, 230, 147); border: none" data-toggle="modal" data-target="#exampleModa" onclick="listaru()">Listar Usuarios</button>
                  
                  
                </div>
                <br>
                <div class="row">
                  <input type="text" class="form-control col-5"	id="especialidad" style="margin-right: 20px;" placeholder="Especialidad"/> 

                  <input type="hidden" class="form-control col-7"	id="id" value="0" />
                  
                 
                </div>
                  
                
                </div>
               
              </div>
              <div class="container small">
                <table class="table" id="tablita">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">ID_Usuario</th>
                      <th scope="col">Nombre</th>
                      <th scope="col">Especialidad</th>
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
        <div class="modal fade" id="exampleModa" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Listar Usuarios</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <div class="container small">
                <table class="table" id="tabli">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Nombre_Usuario</th>
                       <th scope="col">Apellido_Usuario</th>
    
                    </tr>
                  </thead>
                  <tbody>
            
                  </tbody>
                </table>
              </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
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
	$.get("cc", {"opc":1}, function(data){
		var c= JSON.parse(data);
                
		$("#tablita tbody tr").remove();
		for(var i=0;i<c.length;i++){
			$("#tablita").append("<tr><td>"+(i+1)+"</td><td>"+c[i].idcapacitador+"</td><td>"+c[i].nombre+"</td><td>"+c[i].especialidad+"</td><td><a href='#' onclick='editar("+c[i].idcapacitador+")'><i class='far fa-edit'></i></a></td><td><a href='#' onclick='eliminar("+c[i].idcapacitador+")'><i class='fas fa-trash-alt'></i></a></td></tr>");
		}
	});
}
$("#boton1").click(function(){
	var idr = $("#id").val();
        
        
	if(idr==0){
        
	var param = {"i":$("#idusuario").val(),"b":$("#especialidad").val(), "opc":2};
	$.ajax({
		beforeSend: function(){
			$('#resultado').html('Esperando...!');
		},
		data: param,
		url: 'cc',
		type: 'POST',
		success: function(response){
                        alert("llega")
			limpiar();
			listar();
                       
                        
                        
		},
		error: function(jqXHR, estado, error){
                    
		console.log(estado)
		console.log(error)
		},
		complete: function (jqXHR, estado){
			console.log(estado)
                       
		}				
	});
	}else{
		
		$.post("cc",{"i":$("#idusuario").val(),"b":$("#especialidad").val(), "opc":4},function (data) {
		listar();
               
		limpiar();	
    });
	}
});
function editar(id){
         
	$("#boton1").html("Editar");
       
	$.get("cc",{"id":id,"opc":3},function (data) {
         var x = JSON.parse(data);
    
        $("#idusuario").val(x.idcapacitador)
        $("#especialidad").val(x.especialidad)
       
        $("#id").val(x.idcapacitador);
    });
}
function eliminar(id){
    alert(id)
	$.get("cc",{"i":id,"opc":5},function () {
        listar();
    });
}
function limpiar(){
        $("#idusuario").val("");
	$("#especialidad").val("");
	
	$("#idusuario").focus();
	$("#id").val(0);
	$("#boton1").html("Crear");
}
function listaru(){
    $.get("uc", {"opc":1}, function(data){
		var c= JSON.parse(data);
                
		$("#tabli tbody tr").remove();
		for(var i=0;i<c.length;i++){
			$("#tabli").append("<tr><td>"+c[i].idusuario+"</td><td>"+c[i].nombre+"</td><td>"+c[i].apellido1+"</td></tr>");
		}
	});
}
  </script>
    </body>
</html>
