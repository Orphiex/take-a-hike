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

  var assemblePage = function (id, name, nickname){
    var testLi = '<div class="col-xs-12">' + name + '</div>';
    var testL2 = '<div class="col-xs-12">' + nickname + '</div>';

    $('#user_details').append(testLi);
    $('#user_details').append(testL2);
  };

  var getJSON = function(){
    var user_id = window.location.href.split('/')[4];
    $.ajax({
      method: 'GET',
      url: '/hikers/' + user_id +'.json',
      dataType: 'JSON',
      success: function(resp, status){
        console.log(resp);
        assemblePage(resp.id, resp.name, resp.nickname);
      },
      error: function(resp){
        console.log(resp);
      }
    });
  };

  getJSON();

});