# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
	$('#bounty_tag_tokens').tokenInput '/tags.json'
		theme: 'facebook'
		prePopulate: $('#bounty_tag_tokens').data('load')
