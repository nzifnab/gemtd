class Gemtd.Views.Gem extends Backbone.View

  template: JST['gems/gem']
  tagName: 'li'

  events:
    'click .delete_gem': 'deleteGem'

  initialize: ->
    @model.on('destroy', @removeGem, this)

  render: ->
    $(@el).html(@template(gem: @model))
    this

  deleteGem: (event) ->
    event.preventDefault()
    @model.destroy()

  removeGem: (gem) ->
    $(@el).remove()