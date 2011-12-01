function addToCart(itemId){
  $.ajax({
    type: 'POST',
    url: "/carts/"+itemId+"/add",
    xhrFields: {
      withCredentials: true
    },
    success: function(){
      alert("Exito");
    },
    error: function(){
      alert("error");
    }
  });
}