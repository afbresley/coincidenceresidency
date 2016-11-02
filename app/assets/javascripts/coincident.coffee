# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#new_coincident").on("ajax:success", (e, data, status, xhr) ->
    $("#new_coincident").html(
      "<p>Thanks so much for applying - we'll get back to you soon.</p>"
    )
    $("#application").get(0).scrollIntoView()
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#new_coincident").append "<p class='sorry'>Sorry - something went wrong! </p>"
    $(".sorry").delay( 1500 ).fadeOut( 400 )