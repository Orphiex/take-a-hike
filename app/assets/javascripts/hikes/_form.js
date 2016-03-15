// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

  var createNewOption = function(elem, index){
    var name = elem.trail_name;
    console.log(name);
    var newLi = '' + '<option value="' + name + '">' + name + '</option>';

    $("#trails-list").append(newLi);
  };

  var bindTrails = function(data){
    var tmp = data[$('#regions-list').val()];
    $("#trails-list").empty();
    tmp.forEach(createNewOption);
  };

  $("#regions-list").change(function() {
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
