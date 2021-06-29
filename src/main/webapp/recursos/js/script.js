$(document).ready(function(){
	
})
function login(){
  
	var param = {"user":$("#username").val(), "pass":$("#password").val(), "opc": 2 };

	$.ajax({
		beforeSend: function(){
			$('#resultado').html('Esperando...!');
		},
		data: param,
		url: 'uc',
		type: 'POST',
		success: function(response){
			$('#resultado').html(response);
			var x=response;
			if(x==1){
			window.location = 'http://localhost:8080/ProyectoIntegrador/main.jsp';  
			}else{
			 alert("Lo sentimos no podemos encontrar su usuario")
                         window.location = 'http://localhost:8080/ProyectoIntegrador/index.jsp';  
			}
		},
		error: function(jqXHR, estado, error){
		console.log(estado)
		console.log(error)
		},
		complete: function (jqXHR, estado){
			console.log(estado)
		}		
	});
}
