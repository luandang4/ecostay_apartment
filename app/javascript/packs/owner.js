$(document).ready(function(){
  $(document).on("click", ".js-btn-delete-service", function(){
    if(!confirm("Do you really want to do this?")) {
      return false;
    }
    $(".js-delete-service").submit();
  });

  $(document).on('change', '.switch-language', function(){
    debugger
    if($(this).prop('checked')) {
      path = window.location.pathname.slice(3)
      path = '/en' + path
      window.location.pathname = path
      $(this).checked = false
    } else {
      path = window.location.pathname.slice(3)
      path = '/vi' + path
      window.location.pathname = path
      $(this).checked = true
    }
  });

  setTimeout(function() {
    $('.alert-dismissible').hide()
  }, 3500);
});
