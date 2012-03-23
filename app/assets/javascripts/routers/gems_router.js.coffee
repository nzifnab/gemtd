class Gemtd.Routers.Gems extends Backbone.Router
  routes:
    '': 'index'
    'gems/:id': 'show'

  initialize: ->
    @collection = new Gemtd.Collections.Gems()
    @collection.fetch()

  index: ->
    view = new Gemtd.Views.GemsIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->