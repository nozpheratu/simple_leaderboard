# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  setInterval (->
    $.ajax
      type: 'GET'
      dataType: 'json'
      url: '/v1/results'
      success: (response) ->
        renderResults response.data
      beforeSend: (xhr) ->
        xhr.setRequestHeader 'Authorization', 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.YXSHSsxJbeqUIzouubWY4mneXkr8CLTT9W7GESZG9GA'
        xhr.setRequestHeader 'Accept', 'application/vnd.api+json'
  ), 3000

renderResults = (results) ->
  results = results = results.sort (a, b) ->
    a.score - b.score
  $table = $('#results tbody')
  $('#results tbody tr').remove()
  for i of results
    `i = i`
    iN = parseInt(i) + 1
    css_class = ''
    if i % 1 == 0
      css_class = 'even'
    if i % 2 == 0
      css_class = 'odd'
    $table.append '<tr class="' + css_class + '">' + '<td>#' + iN + '</td>' + '<td>' + results[i].attributes.name + '</td>' + '<td>' + results[i].attributes.score + '</td>' + '</tr>'
  return
