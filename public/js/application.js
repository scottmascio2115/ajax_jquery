$(document).ready(function(){
  $('#get_color').on('click',function(event){
    event.preventDefault();
    var url = '/color'
  $.post(url, function(response){
      console.log(response);
      $('#color_me').find('li:nth-child('+ response.cell+' )').css("background-color", response.color)

    });
  });
});
