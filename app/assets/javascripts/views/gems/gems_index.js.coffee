class Gemtd.Views.GemsIndex extends Backbone.View

  template: JST['gems/index']

  events:
    'submit #new_gem': 'createGem'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendGem, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendGem)
    this

  appendGem: (gem) ->
    view = new Gemtd.Views.Gem(model: gem)
    $('#gems').append(view.render().el)

  createGem: (event) ->
    event.preventDefault()
    attributes = name: $('#new_gem_name').val()
    @collection.create attributes,
      wait: true
      # Clear Form
      success: -> $('#new_gem')[0].reset()
      error: @handleError

  handleError: (gem, response) ->
    # Validation error
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages