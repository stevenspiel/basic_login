$(document).ready(function() {

  $('#submit').click(function() {
    var user_input = document.getElementById("field").value
    console.log('click::' + user_input)
    $.ajax({
      type: "POST",
      url: "/rp/urls",
      data: {full_url: user_input},
      success: function(res){
        console.log(res);
        $('#holder').html("Your Short Url: <a href = '"+res.short_url+"'>"+res.short_url+"</a>");
      },
      error: function(res){
        $('#holder').html("That is not a valid url.");
      }
    });
  });

});
