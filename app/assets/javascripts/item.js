function getItems(categoryId){
  $.ajax({
    type: 'POST',
    url: "/items/"+categoryId+"/get_items_by_category/",
    success: function(){
      alert("Exito");
    },
    error: function(){
      alert("error");
    }
  });
}