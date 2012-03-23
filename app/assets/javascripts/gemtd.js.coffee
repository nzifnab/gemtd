window.Gemtd =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Gemtd.Routers.Gems()
    Backbone.history.start()

$(document).ready ->
  Gemtd.init()
