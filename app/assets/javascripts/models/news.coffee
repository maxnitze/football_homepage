# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.toggle_lang').attr 'href', '#'
  $('.toggle_lang').click (event) ->
    event.preventDefault()
    langs = $(this).data("langs").split(',')
    lang = $(this).data("lang")

    $(this).addClass 'active'

   	for l in langs
   	  if l != lang
   	    $('#newsform_' + l).hide();

   	$('#newsform_' + lang).show();

   	return

  return
