$(document).ready(function(){

  var getHikeData = function(){
    var user_id = window.location.href.split('/')[4];
    $.ajax({
      method: 'GET',
      url: '/hikes/' + user_id +'.json',
      dataType: 'JSON',
      success: function(resp, status){
        console.log(resp);
      },
      error: function(resp){
        console.log(resp);
      }
    });
  };

  if (location.pathname.split('/')[1] == "hikes") {
    getHikeData();
  }
});