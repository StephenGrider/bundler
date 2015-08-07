Utils.createComponent ->
  name: 'App'
  mixins: [
    Reflux.connect Stores.AuthenticatedUser
    ReactRouter.Navigation
  ]

  componentWillMount: ->
    window.navigate = @transitionTo

  render: ->
    content = @props.children or <Components.Home {...@props} />

    <div className="app-container">
      <Components.Header user={@state.user} />
      {content}
      <Components.Footer />
    </div>
