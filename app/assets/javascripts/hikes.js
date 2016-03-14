// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

  var getHikes = function(){
    $.ajax({
      method: "GET",
      url:"/trails",
      success: function(response, status) {
        console.log(response);
      },
      error: function (response, status) {
        console.log(response);
      }
    });

    $("#regions-list").change(function() {
      $("#trails-list").load("" + $("#regions-list").val());
    });
  };

  var init = function(){
    getHikes();
  };

  init();
});
