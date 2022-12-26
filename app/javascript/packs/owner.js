$(document).ready(function(){
  $(document).on("click", ".js-btn-delete-service", function(){
    if(!confirm("Do you really want to do this?")) {
      return false;
    }
    $(".js-delete-service").submit();
  });

  $(document).on('change', '.switch-language', function(){
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

  setTimeout(function() {
    $('.errors-message').hide()
  }, 3000);
  
  $(document).on("click", '[id^="add-service-"]', function(){
    service_id = $(this).attr('id').slice(12,20);
    id         = $(this).attr('data-room-id')
    $.ajax({
      url: '/owner/rooms/' + id,
      method: 'PUT',
      data: {
        service_id: service_id,
        action: 'add'
      }
    });
  });

  $(document).on("click", '[id^="remove-service-"]', function(){
    service_id = $(this).attr('id').slice(12,20);
    id         = $(this).attr('data-room-id')
    // $.ajax({
    //   url: '/owner/rooms/' + id,
    //   method: 'PUT',
    //   data: {
    //     service_id: service_id,
    //     action: 'remove'
    //   }
    // });
  });
});
