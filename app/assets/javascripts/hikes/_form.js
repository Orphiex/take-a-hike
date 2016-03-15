// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

  var createNewOption = function(elem, index){
    var name = elem.trail_name;
    // var id = elem.id;
    console.log(name);
    var newLi = '' + '<option value="' + name + '">' + name + '</option>';

    $("#trails_list").append(newLi);
  };

  var bindTrails = function(data){
    var tmp = data[$('#regions_list').val()];
    $("#trails_list").empty();
    tmp.forEach(createNewOption);
  };

  $("#regions_list").change(function() {
    $.ajax({
      method: 'GET',
      url: '/trails_by_region',
      success: function(resp){
        bindTrails(resp);
      },
      error: function(resp){
        console.log(resp);
      }
    });
  });

});
