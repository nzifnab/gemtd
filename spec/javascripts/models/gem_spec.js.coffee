describe "Gem model", ->
  describe "when instantiated", ->
    it "exhibits attributes", ->
      gem = new Gemtd.Models.Gem(name: 'Sapphire')
      expect(gem.get('name')).toEqual('Sapphire')