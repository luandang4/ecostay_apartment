$(document).ready(function(){
  $(window).on('load', function(){
    divJS = $(".js_remove_field_errors")
    if (divJS.parent().is( ".field_with_errors" )){
      divJS.parent().remove();
    }
  });
});
