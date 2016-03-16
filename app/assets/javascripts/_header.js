$(document).ready(function(){

  $('#hiker_page').on('click', function(e){
    e.preventDefault();

    $.auth.validateToken().then(function(resp){
      console.log(resp);
      window.location.href = '/hikers/' + resp.id;
    }).fail(function(resp){
      console.log(resp);
    });
  });

  $('#logout-button').on('click', function(e){
    e.preventDefault();

    $.auth.signOut().then(function(resp){
      console.log(resp);
      window.location.href = '/';
    }).fail(function(resp){
      console.log(resp);
    });
  });
});
