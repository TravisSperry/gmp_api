# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#translations').on 'cocoon:after-insert', ->
    console.log 'bam!'
    $('.chosen').chosen
      allow_single_deselect: true
      placeholder_text_single: 'Select a Language'

$(document).on 'turbolinks:load', ->
  $('#translations').on 'cocoon:after-insert', ->
    console.log 'bam!'
    $('.chosen').chosen
      allow_single_deselect: true
      placeholder_text_single: 'Select a Language'
