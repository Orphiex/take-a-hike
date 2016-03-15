$(document).ready(function(){

  $("#edit_your_profile").on("submit", function(e){
    e.preventDefault();

    var user_id = window.location.href.split('/')[4];
    var hiker = {
      name:     $("#hiker_name").val(),
      nickname: $("#hiker_nickname").val(),
      // image:    $("#").val()
    };

    $.ajax({
      method: 'PUT',
      url: '/hikers/' + user_id,
      data: hiker,
      success: function(resp){
        console.log(resp);
        window.location.href = '/hikers/' + user_id;
      },
      error: function(resp){
        console.log(resp);
      }
    });
  });

});