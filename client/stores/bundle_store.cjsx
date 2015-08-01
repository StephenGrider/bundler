Utils.createStore ->
  name: 'Bundle'
  data: []
  listenables: Actions

  init: ->
    @collection = Collections.Bundles
    Tracker.autorun @onIndexBundle

  onIndexBundle: ->
    @data = @collection.find().fetch()
    @emitChange()

  onGetBundle: ->

  onCreateBundle: (payload) ->
    @collection.insert title: payload.title

  onRemoveBundle: (id) ->
    @collection.remove id

  emitChange: ->
    @trigger 'change', @data
