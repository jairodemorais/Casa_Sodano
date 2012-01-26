function addToCart(itemId, title){
  $.ajax({
    type: 'POST',
    url: "/carts/"+itemId+"/add",
    xhrFields: {
      withCredentials: true
    },
    success: function(){
      showMessage('success', 'Felicitaciones','El producto "'+title+'" ha sido agregado al carrito de compras.');
      $('#cartQuantity').text(parseInt($('#cartQuantity').text())+1);
    },
    error: function(error){
      window.location = "/users/sign_in";
      showMessage('error', 'Lo lamentamos', 'Hubo un error, vuelva a intentarlo nuevamente');
    }
  });
}