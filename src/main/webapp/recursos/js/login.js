/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


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
                            alert("Bienvenido: "+x.nombre+ " "+x.apellido1);
                             var user=x.nombre+ " "+x.apellido1;
                             sessionStorage.setItem('user',user);
			 window.location = 'http://localhost:8080/ProyectoIntegrador/main.jsp';
                        
			
			}
        
    });
	
}
