function addToCart(itemId){
  $.ajax({
    type: 'POST',
    url: "/carts/"+itemId+"/add",
    xhrFields: {
      withCredentials: true
    },
    success: function(){
      $('#cartQuantity').text(parseInt($('#cartQuantity').text())+1);
    },
    error: function(){
      alert("error");
    }
  });
}