Utils.createStore ->
  name: 'Bundle'
  data: []
  listenables: Actions

  getInitialState: ->
    bundles: @data

  init: ->
    @collection = Collections.Bundles
    Tracker.autorun @onIndexBundle

  fetchAll: ->
    @data = @collection.find().fetch()
    @emitChange()

  onIndexBundle: ->
    @fetchAll()

  onCreateBundle: (payload) ->
    @collection.insert payload

  onRemoveBundle: (id) ->
    @collection.remove id

  emitChange: ->
    @trigger bundles: @data
