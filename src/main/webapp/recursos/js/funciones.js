

$(document).ready(function(){
    $("input").keydown(function(){
      $("input").css("background-color", "green");
    });
    $("input").keyup(function(){
      $("input").css("background-color", "red");
    });
  });

  $("#bo4").click(function() {
      
    $("#img1").fadeToggle(3000);
    });

   