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

  var personalData = function (id, name, nickname){
    var testLi = '<div class="col-xs-12">' + name + '</div>';
    var testL2 = '<div class="col-xs-12">' + nickname + '</div>';

    $('#user_details').append(testLi);
    $('#user_details').append(testL2);
  };

  var appendHikeData = function (id, name, date, completed){
    var check;
    if (completed === true) {
      check = 'Yes';
    } else {
      check = "No";
    }

    var hikeLi = '<tr><td>' + id + '</td><td>' + date + '</td><td>' + name + '</td><td>' + check + '</td><td><a href="/hikes/' + id + '" class="btn btn-success">View ' + name + '</a></td></tr>';

    $('#all_hikes_table tr:last').after(hikeLi);
  };

  var getHikerData = function(){
    var user_id = window.location.href.split('/')[4];
    $.ajax({
      method: 'GET',
      url: '/hikers/' + user_id +'.json',
      dataType: 'JSON',
      success: function(resp, status){
        console.log(resp);
        personalData(resp.id, resp.name, resp.nickname);
        resp.hikes.forEach(function(elem, index){
          appendHikeData(elem.id, elem.hike_name, elem.date, elem.completed);
        });
      },
      error: function(resp){
        console.log(resp);
      }
    });
  };

  if (location.pathname.split('/')[1] == "hikers") {
    getHikerData();
  }

});
