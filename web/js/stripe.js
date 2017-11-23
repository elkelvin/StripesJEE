
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
(function () {
    'use strict';
    var stripe = Stripe('pk_test_awEEOMGcGuldtd62bsauv7Kj');
    var elements = stripe.elements();
    var card = elements.create('card');
// Add an instance of the card Element into the `card-element` <div>
    card.mount('#card-element');


    card.addEventListener('change', function (event) {
        var displayError = document.getElementById('card-errors');
        if (event.error) {
            displayError.textContent = event.error.message;
        } else {
            displayError.textContent = '';
        }
    });



    var form = document.getElementById('payment-form');
    form.addEventListener('submit', function (event) {
        event.preventDefault();

        stripe.createToken(card).then(function (result) {
            if (result.error) {
                // Inform the customer that there was an error
                var errorElement = document.getElementById('card-errors');
                errorElement.textContent = result.error.message;
            } else {
                // Send the token to your server
                stripeTokenHandler(result.token);
            }
        });
    });
    
    function stripeTokenHandler(token) {        
  // Insert the token ID into the form so it gets submitted to the server
  /*var form = document.getElementById('payment-form');
  var hiddenInput = document.createElement('input');  
  hiddenInput.setAttribute('name', 'stripeToken');
  hiddenInput.setAttribute('value', token.id);
  form.appendChild(hiddenInput)*/
  // Submit the form
  //form.submit();
  enviarToken(token);
}
    
})();


function enviarToken(token){
    $.ajax({
        url:'srvToken',        
        type:'post',
        data:{
            token:token,            
        }
    }).done(function(){        
               $.growl.notice({title:"Éxitoso",message:"Tarjeta correcta"});                 
    }).fail(function(){
        $.growl.error({title:"Error!!",message:"Ha ocurrido un problema"});
        });
}
