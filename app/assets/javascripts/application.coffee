#= require rails-ujs
#= require activestorage
#= require turbolinks
#= require jquery3
#= require popper
#= require bootstrap-sprockets
#= require datatables
#= require chosen-jquery
#= require cocoon
#= require_tree .

$(document).ready ->
  $('.chosen').chosen
    allow_single_deselect: true
    no_results_text: 'No results matched'
    width: '100%'

$(document).on 'turbolinks:load', ->
  $('.chosen').chosen
    allow_single_deselect: true
    no_results_text: 'No results matched'
    width: '100%'
