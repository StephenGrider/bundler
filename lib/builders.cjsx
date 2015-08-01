@Utils = {}

do =>
  _storeSpecs = []
  _componentSpecs = []

  Utils.createComponent = (spec) ->
    _componentSpecs.push spec

  Utils.buildComponents = ->
    for spec in _componentSpecs
      spec = spec()
      Components[spec.name] = React.createClass spec

  Utils.createStore = (spec) ->
    _storeSpecs.push spec

  Utils.buildStores = ->
    for spec in _storeSpecs
      spec = spec()
      Stores[spec.name] = Reflux.createStore spec
