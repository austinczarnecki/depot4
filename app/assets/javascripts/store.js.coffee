# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# note: you have to have "ready page:change" because just "page:change" will only take
# effect when you change pages and not when the document loads for the first time.

$(document).on "ready page:change", ->
	$('.store .entry > img').click ->
		$(this).parent().find(':submit').click() 