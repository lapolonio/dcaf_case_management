# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@renderDonutChart = (target, chartTitle, jsonData, categories) ->
  c3.generate({
    bindto: target,
    data: {
      json: jsonData,
      keys : { value: categories.split(",") },
      type: "donut"},
    donut: { title: chartTitle }
  })


$(document).on 'turbolinks:load', ->
#  data = JSON.parse($("#chart-test_report").attr("val"))
#  subtitles = "brazil,france,united_states,canada,italy,south_africa,thailand"
#
#  renderDonutChart("#country_chart", "% of searches", data, subtitles)