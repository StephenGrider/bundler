Mixins.Validation =
  componentWillMount: ->
    Actions.clearErrors()

  errors: ->
    return unless @state.error

    <div className="alert alert-warning">
      {@state.error?.reason}
    </div>
