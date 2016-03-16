// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

  var createNewOption = function(elem, index){
    var name = elem.trail_name;
    // var id = elem.id;
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

  $("#create_a_hike").on("submit", function(e){
    e.preventDefault();

    var postData = {
      hike_name:          $("#hike_name").val(),
      trails_list:        $("#trails_list").val(),
      hike_distance:      $("#hike_distance").val(),
      hike_time:          $("#hike_time").val(),
      date:               $("#date").val(),
      start_time:         $("#start_time").val(),
      start_point:        $("#start_point").val(),
      end_point:          $("#end_point").val(),
      completed:          $("#completed").is(':checked'),
      meet_instructions:  $("#meet_instructions").val()
    };
    console.log(postData);

    $.ajax({
      method: 'POST',
      url: "/hikes",
      data: postData,
      success: function(resp){
        console.log(resp);
        window.location.href = '/hikes/' + resp.id;
      },
      error: function(resp){
        console.log(resp);
      }
    });
  });

});
