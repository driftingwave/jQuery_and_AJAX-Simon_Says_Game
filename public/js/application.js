$(document).ready(function(){
  $('#get_color').on('click', function(){
    $.post('/color', function(response){
      console.log(response.cell);
      console.log(response.color);
      $("#color_me li:nth-child(" + response.cell +")").css("background-color", response.color);
    }, 'json');
  });
});