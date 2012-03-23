describe "Gemtd.Views.GemsIndex", ->
   describe "rendering", ->
     beforeEach ->
       @gem1 = new Backbone.Model({id: 1})
       @gem2 = new Backbone.Model({id: 2})
       @gem3 = new Backbone.Model({id: 3})
       @collection = new Backbone.Collection([@gem1, @gem2, @gem3])

       @view = new Gemtd.Views.GemsIndex(collection: @collection)
       @template = sinon.stub(@view, "template").returns("STRING")
       @view.render()

     afterEach ->
       @view.template.restore()

     it "should create a gem view for the collection", ->
       expect(@template).toHaveBeenCalledOnce()
       expect(@template).toHaveBeenCalledWith()

     it "produces HTML returned from the template", ->
       expect(@view.el.innerHTML)
        .toEqual("STRING")