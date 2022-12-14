$(document).ready(function(){
  $(document).on("click", '[id^="flexSwitchCheckDefault"]', function(){
    // order_status = $(this).val();
    id = $(this).attr('id').slice(22,30);
    $.ajax({
      url: '/renter/home/' + id,
      method: 'PUT'
    });
  });

//stripe
var stripe = Stripe('pk_test_51MJflJDPLaapYwZISDOQD8XhcyKVNDIqEYfVvQ2ejLEv1tZwC0soSvaUozzYsspBSHakAlsANW4kj3GJiVki6GMq00RehgiIKz');
// Set up Stripe.js and Elements to use in checkout form
var elements = stripe.elements();
var style = {
  base: {
    color: "#32325d",
  }
};

var card = elements.create("card", { style: style });
card.mount("#card-element");

card.on('change', function(event) {
  var displayError = document.getElementById('card-errors');
  if (event.error) {
    displayError.textContent = event.error.message;
  } else {
    displayError.textContent = '';
  }
});

var form = document.getElementById('payment-form');
form.addEventListener('submit', function(event) {
  event.preventDefault();

  stripe.createToken(card).then(function(result) {
    if (result.error) {
      // Inform the customer that there was an error.
      var errorElement = document.getElementById('card-errors');
      errorElement.textContent = result.error.message;
    } else {
      // Send the token to your server.
      console.log(result.token)
      stripeTokenHandler(result.token);
    }
  });
});

function stripeTokenHandler(token) {
  // Insert the token ID into the form so it gets submitted to the server
  var form = document.getElementById('payment-form');
  var hiddenInput = document.createElement('input');
  hiddenInput.setAttribute('type', 'hidden');
  hiddenInput.setAttribute('name', 'stripeToken');
  hiddenInput.setAttribute('value', token.id);
  form.appendChild(hiddenInput);

  // Submit the form
  form.submit();
}
//stripe
});


