$(document).ready(function(){
  $(document).on("click", ".js-btn-delete-service", function(){
    if(!confirm("Do you really want to do this?")) {
      return false;
    }
    $(".js-delete-service").submit();
  });

  setTimeout(function() {
    $('.alert-dismissible').hide()
  }, 3500);
});
