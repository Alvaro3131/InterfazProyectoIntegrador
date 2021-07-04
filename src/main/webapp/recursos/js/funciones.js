$(document).ready(function(){
	
})
function login(){
  
	$.get("uc",{"user":$("#username").val(), "pass":$("#password").val(), "opc": 2},function (data) {
		var x = JSON.parse(data);
                var o=x.nombre;
                if(o==null){
                     
                           alert("Lo sentimos no podemos encontrar su usuario")
                         window.location = 'http://localhost:8080/ProyectoIntegrador/index.jsp'; 
                         
			}else{
                            alert("Bienvenido: "+x.nombre+ " "+x.apellido);
                             var user=x.nombre+ " "+x.apellido;
                             sessionStorage.setItem('user',user);
			 window.location = 'http://localhost:8080/ProyectoIntegrador/main.jsp';
                        
			
			}
        
    });
	
}
