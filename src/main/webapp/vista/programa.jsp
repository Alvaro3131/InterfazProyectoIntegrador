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
                  
                  <button class="btn btn-danger" id="boton1" style="background-color: rgb(119, 230, 147); border: none; margin-left: 15px"data-toggle="modal" data-target="#exampleModal">+</button>
                  <button class="btn btn-danger" style="margin-left: 10px;background-color: rgb(119, 230, 147);border:none" data-toggle="modal" data-target="#exampleModa">Listar Capacitadores</button>
                  <button class="btn btn-danger"style="margin-left: 10px;background-color: rgb(119, 230, 147);border:none"data-toggle="modal" data-target="#exampleMo">Listar Capacitacion</button>
                  <button class="btn btn-danger"style="margin-left: 10px;background-color: rgb(119, 230, 147);border:none"data-toggle="modal" data-target="#example">Listar Categoria</button>
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
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Crear Programa</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="form-gropu">
              <div class="row">
                  <input type="text"class="form-control col-5" id="idprograma" placeholder="Id_Programa" style="margin-right: 5px;margin-left:5px; margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="url" placeholder="URL" style=" margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="inicio" placeholder="F_Inicio" style="margin-right: 5px;margin-left:5px; margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="fin" placeholder="F_Fin" style=" margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="categoria" placeholder="Id_Categoria" style="margin-right: 5px;margin-left:5px; margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="capacitacion" placeholder="Id_Capacitacio" style=" margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="capacitador" placeholder="Id_Capacitador" style="margin-right: 5px;margin-left:5px; margin-bottom: 5px">
          <input type="text"class="form-control col-5" id="nombre" placeholder="Nombre_Programa" style=" margin-bottom: 5px">
       
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
        <div class="modal fade" id="exampleModa" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <div class="container small">
                <table class="table" id="capacitador">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Nombre_Capacitador</th>
                      
                        <th scope="col">Especialidad</th>
    
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
           <div class="modal fade" id="exampleMo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <div class="container small">
                <table class="table" id="capacitacion">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Nombre_Capacitacion</th>
                      
                       
    
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
           <div class="modal fade" id="example" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <div class="container small">
                <table class="table" id="categoria">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Nombre_Categoria</th>
                      
                        
    
                    </tr>
                  </thead>
                  <tbody>
            
                  </tbody>
                </table>
              </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
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
	$.get("pc", {"opc":1}, function(data){
		var c= JSON.parse(data);
                
		$("#tablita tbody tr").remove();
		for(var i=0;i<c.length;i++){
			$("#tablita").append("<tr><td>"+(i+1)+"</td><td>"+c[i].idprograma+"</td><td>"+c[i].nombre+"</td><td>"+c[i].url+"</td><td>"+c[i].nomcapaci+"</td><td>"+c[i].nomcapa+"</td><td>"+c[i].nomcategoria+"</td><td><a href='#' onclick='editar("+c[i].idprograma+")'><i class='far fa-edit'></i></a></td><td><a href='#' onclick='eliminar("+c[i].idprograma+")'><i class='fas fa-trash-alt'></i></a></td></tr>");
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
