$(document).ready(function(){

  $('#edit_user_details').on('click', function(e){
    e.preventDefault();

    $.auth.validateToken().then(function(resp){
      console.log(resp);
      window.location.href = '/hikers/' + resp.id + '/edit';
    }).fail(function(resp){
      console.log(resp);
    });
  });

});