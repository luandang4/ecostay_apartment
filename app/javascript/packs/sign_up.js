$(document).ready(function(){
  $(window).on('load', function(){
    divJS = $(".js_remove_field_errors")
    if (divJS.parent().is(".field_with_errors")){
      divJS.parent().remove();
      $(".append-sign-up-back").prepend('<a href="/users/sign_up"><i class="fa-sharp fa-solid fa-circle-arrow-left"></i></a>');
      $(".append-password-back").prepend('<a href="/users/password/new"><i class="fa-sharp fa-solid fa-circle-arrow-left"></i></a>');
    }
  });
});
