$(document).ready(function(){

  $.auth.configure({
    apiUrl: 'http://localhost:3000'
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
