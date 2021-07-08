<%-- 
    Document   : banco
    Created on : 5 jul. 2021, 11:35:10
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
            <h1>CRUD BANCO COMUNAL</h1>
        </div>
       <div class="col-10" id="todo">
              <div class="container small" style="margin-bottom: 40px">
                <div class="form-group">
                    <br>
                 <div class="row">
                  <input type="text" class="form-control col-5"	id="idbanco" style="margin-right: 20px;" placeholder="Id_BancoComunal" /> 
                  <button class="btn btn-danger" id="boton2" style="background-color: rgb(119, 230, 147); border: none">Crear</button>
                  
                  
                  
                </div>
                <br>
                <div class="row">
                  <input type="text" class="form-control col-5"	id="nombre" style="margin-right: 20px;" placeholder="Nombre"/> 

                  <input type="hidden" class="form-control col-7"	id="id" value="0" />
                  
                 
                </div>
                  
                
                </div>
               
              </div>
              <div class="container small">
                <table class="table" id="tablita">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Id_BancoComunal</th>
                      <th scope="col">Nombre</th>
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
    <script >
      
      $(document).ready(function(){
    
	listar();
        limpiar();

	
});

function listar(){
	$.get("bc", {"opc":1}, function(data){
		var c= JSON.parse(data);
                
		$("#tablita tbody tr").remove();
		for(var i=0;i<c.length;i++){
			$("#tablita").append("<tr><td>"+(i+1)+"</td><td>"+c[i].idbanco+"</td><td>"+c[i].nombre+"</td><td><a href='#' onclick='editar("+c[i].idbanco+")'><i class='far fa-edit'></i></a></td><td><a href='#' onclick='eliminar("+c[i].idbanco+")'><i class='fas fa-trash-alt'></i></a></td></tr>");
		}
	});
}
$("#boton2").click(function(){
	var idr = $("#id").val();
        
        
	if(idr==0){
        
	var param = {"i":$("#idbanco").val(),"b":$("#nombre").val(), "opc":2};
	$.ajax({
		beforeSend: function(){
			$('#resultado').html('Esperando...!');
		},
		data: param,
		url: 'bc',
		type: 'POST',
		success: function(response){
                       
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
		
		$.post("bc",{"i":$("#idbanco").val(),"b":$("#nombre").val(), "opc":4},function (data) {
		listar();
               
		limpiar();	
    });
	}
});
function editar(id){
         
	$("#boton2").html("Editar");
       
	$.get("bc",{"id":id,"opc":3},function (data) {
         var x = JSON.parse(data);
    
        $("#idbanco").val(x.idbanco)
        $("#nombre").val(x.nombre)

        $("#id").val(x.idbanco);
    });
}
function eliminar(id){
    alert(id)
	$.get("bc",{"i":id,"opc":5},function () {
        listar();
    });
}
function limpiar(){
        $("#idbanco").val("");
	$("#nombre").val("");
	
	$("#idbanco").focus();
	$("#id").val(0);
	$("#boton2").html("Crear");
}

  </script>
</html>
