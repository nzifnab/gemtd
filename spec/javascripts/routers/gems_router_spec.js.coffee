start_backbone = (router)->
  try
    Backbone.history.start(silent: true, pushState: true)
  catch e
    router.navigate("elsewhere")

describe "Gemtd.Routers.Gems routes", ->
  beforeEach ->
    @router = new Gemtd.Routers.Gems()
    @routeSpy = sinon.spy()
    start_backbone(@router)

  it "fires the index route with a blank hash", ->
    @router.on('route:index', @routeSpy)
    @router.navigate("", true)
    expect(@routeSpy).toHaveBeenCalledOnce()
    expect(@routeSpy).toHaveBeenCalledWith()

  it "fires the gem show route", ->
    @router.on('route:show', @routeSpy)
    @router.navigate("/gems/3", true)
    expect(@routeSpy).toHaveBeenCalledOnce()
    expect(@routeSpy).toHaveBeenCalledWith("3")

