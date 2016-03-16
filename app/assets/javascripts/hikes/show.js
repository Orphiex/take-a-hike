$(document).ready(function(){

  var addHikerLinkBtn = function(user_id, username){
    var btn = '<a href="/hikers/' + user_id + '" class="btn btn-info">View Hiker Page</a>';

    $('#hike_details').append(btn);
  };

  var getHikeData = function(){
    var user_id = window.location.href.split('/')[4];
    $.ajax({
      method: 'GET',
      url: '/hikes/' + user_id +'.json',
      dataType: 'JSON',
      success: function(resp, status){
        console.log(resp);
        resp.hikers.forEach(function(elem, index){
          addHikerLinkBtn(elem.id, elem.nickname);
        });
      },
      error: function(resp){
        console.log(resp);
      }
    });
  };

  if (location.pathname.split('/')[1] == "hikes" && location.pathname.split('/')[2] !== "new") {
    getHikeData();
  }
});