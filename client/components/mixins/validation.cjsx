Mixins.Validation =
  componentWillMount: ->
    Actions.clearErrors()

  errors: ->
    return null unless @state.error

    <div className="alert alert-warning">
      {@state.error?.reason}
    </div>
