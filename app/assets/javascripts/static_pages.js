$(document).ready(function(){

  $.auth.configure({
    apiUrl: 'https://wdi-take-a-hike.herokuapp.com'
  });

  $("#signup-form").on("submit", function(e){
    e.preventDefault();

    $.auth.emailSignUp({
      email: $('#signup-form input[name="email"]').val(),
      password: $('#signup-form input[name="password"]').val(),
      password_confirmation: $('#signup-form input[name="password_confirmation"]').val()
    }).then(function(user){
      console.log(user);
      window.location.href = '/hikers/' + user.data.id + '/edit';
    }).fail(function(resp){
      console.log(resp);
    });
  });

  $('#signin-form').on('submit', function(e){
    e.preventDefault();

    $.auth.emailSignIn({
      email: $('#signin-form input[name="email"]').val(),
      password: $('#signin-form input[name="password"]').val(),
    }).then(function(user){
      console.log(user);
      window.location.href = '/';
    }).fail(function(resp){
      console.log(resp);
    });
  });

  $('#logout-button').on('click', function(){
    $.auth.signOut();
  });
});
