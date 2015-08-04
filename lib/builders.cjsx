@Utils = {}

do =>
  _storeSpecs = []
  _componentSpecs = []

  Utils.createComponent = (spec) ->
    _componentSpecs.push spec

  Utils.buildComponents = ->
    for spec in _componentSpecs
      spec = spec()
      namespace = spec.name.split '.'
      if namespace.length is 2
        Components[namespace[0]] ||= {}
        Components[namespace[0]][namespace[1]] = React.createClass spec
      else
        Components[spec.name] = React.createClass spec

  Utils.createStore = (spec) ->
    _storeSpecs.push spec

  Utils.buildStores = ->
    for spec in _storeSpecs
      spec = spec()
      Stores[spec.name] = Reflux.createStore spec
