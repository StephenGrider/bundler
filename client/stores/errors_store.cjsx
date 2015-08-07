Utils.createStore ->
  name: 'Errors'
  listenables: Actions
  error: null

  onAddError: (error) ->
    @error = error
    @emitChange()

  onClearErrors: ->
    @error = null
    @emitChange()

  emitChange: ->
    @trigger error: @error
