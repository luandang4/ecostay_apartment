$(document).ready(function(){
  $(document).on("click", '[id^="flexSwitchCheckDefault"]', function(){
    // order_status = $(this).val();
    id = $(this).attr('id').slice(22,30);
    $.ajax({
      url: '/renter/home/' + id,
      method: 'PUT'
    });
  });
});
