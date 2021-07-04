
var data = sessionStorage.getItem('user'); 
$("#user").html("<b >"+data+"</b>");
function l(op){
  if(op==1){
       window.location=('index.jsp')
  }
  if(op==2){
        $("#todo").load("vista/contenedor.jsp");
  }
  
  if(op==3){
      window.location = 'main.jsp'; 
  }
  

}
