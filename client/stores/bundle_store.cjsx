Utils.createStore ->
  name: 'Bundle'
  data: []
  listenables: Actions

  onLoadBundles: ->
    @all()

  all: ->
    @data = Collections.Bundles.find().fetch()
    @emitChange()

  emitChange: ->
    @trigger 'change', @data
