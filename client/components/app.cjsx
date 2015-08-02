Utils.createComponent ->
  name: 'App'
  mixins: [
    Reflux.connect Stores.AuthenticatedUser
  ]

  render: ->
    content = @props.children or <Components.Home {...@props} />

    <div className="app-container">
      <Components.Header user={@state.user} />
      {content}
      <Components.Footer />
    </div>
