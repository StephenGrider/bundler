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

  onCreateBundle: (model) ->
    model.save (error) ->
      if error
        Actions.addError error
      else
        navigate '/admin/index'
        Actions.clearErrors()

  onRemoveBundle: (id) ->
    @collection.remove id

  emitChange: ->
    @trigger bundles: @data
