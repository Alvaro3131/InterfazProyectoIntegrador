<%-- 
    Document   : main
    Created on : 28 jun. 2021, 19:30:30
    Author     : Alvaro Alva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="recursos/css/bootstrap.min.css">
        <style>
  .a{
    background-color: rgb(119, 230, 147);
    
    
  }
</style>
    </head>
    <body>
        <!-- Navigation -->
  <div style="height: 56px; background-color: black; width: 100%;">
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top a" style="border: none;">
      <img src="recursos/imagenes/ADRA Horizontal Logo_1.png" alt="">
    <div class="container">
      <a class="navbar-brand" href="#">SIGCA</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#" onclick="l(3)">HOME
                  <span class="sr-only">(current)</span>
                </a>
          </li>
          <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          CAPACITACIONES
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          
          
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#" >Mis Cursos</a>
        </div>
      </li>
         
          <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <img src="recursos/imagenes/descarga.png" alt="" width="20px" style="margin-bottom: 5px">
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#" id="user"></a>
          
          
        </div>
      </li>
       <li class="nav-item">
            <a class="nav-link" href="#" onclick="l(1)">CERRAR SESION</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</div>
  
        <div id="todo" style="margin-top: 8px;">
             <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item active" >
            <img src="recursos/imagenes/c.jpg" alt="" style="width:100%">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="display-4"></h3>
            <p class="lead"></p>
          </div>
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" >
            <img src="recursos/imagenes/b.jpg" alt="" style="width:100%">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="display-4"></h3>
            <p class="lead"></p>
          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" >
            <img src="recursos/imagenes/a.jpg" alt="" style="width:100%">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="display-4"></h3>
            <p class="lead"></p>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
    </div>
  </header>
  
  <!-- Page Content -->
  <section class="py-5">
    <div class="container">
      <h1 class="font-weight-light">¿Quien es ADRA?</h1>
      <p class="lead">ADRA está considerada por los organismos internacionales como una red de agencias de ayuda humanitaria y de desarrollo. Es una ONGD confesional que estando vinculada a la Iglesia Adventista mantiene su estructura y organización administrativa de manera independiente. En los momentos actuales la red de ADRA está actuando en más de ciento veinte países. </p>
    </div>
  </section>
  <section class="py-5">
    <div class="container">
      <h1 class="font-weight-light">Misión</h1>
      <p class="lead">De acuerdo a las enseñanzas dadas por Jesucristo, ADRA cree que los seres humanos tienen el derecho a una vida digna y a desarrollar sus posibilidades sociales, morales e intelectuales.</p>
    </div>
  </section>
  <section class="py-5">
    <div class="container">
      <h1 class="font-weight-light">Visión</h1>
      <p class="lead">ADRA trabaja para lograr la equidad, la justicia social, la paz y la participación de todas las personas en su comunidad y país; creando oportunidades que favorezcan el desarrollo social, cultural, económico y democrático de los pueblos a partir de su propia creencia  y cultura.</p>
    </div>
  </section>
  <section class="py-5">
    <div class="container">
      <h1 class="font-weight-light">Valores</h1>
      <p class="lead">Respeto a la individualidad: Apoya que cada individuo y comunidad puedan fijarse metas de crecimiento y desarrollo a partir de su propia creencia y cultura. <br> <br>

        Desarrollo integral: Favorece el desarrollo de las capacidades de las personas, de las comunidades y de los países, creando oportunidades que les permitan alcanzar  sus derechos en los aspectos sociales, culturales, económicos y democráticos. <br> <br>
        
        Equidad de género: Tiene como elemento prioritario de su actuación fomentar el pleno ejercicio de los derechos de la mujer. <br>
        
        Respeto del medioambiente: Orienta siempre sus acciones y proyectos al cuidado de la naturaleza.  <br> <br>
        
        Calidad de la ayuda y transparencia: Desarrolla un esfuerzo de gestión permanente por la transparencia y la calidad en la gestión de la entidad, que deberá plasmarse en la realización del conjunto de sus actividades.
        
        </p>
    </div>
  </section>
  
        </div>
  <script src="recursos/js/jquery-3.6.0.min.js"></script>
  <script src="recursos/js/bootstrap.min.js"></script>
  <script src="recursos/js/main.js" ></script>
  
    </body>
</html>