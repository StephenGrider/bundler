Utils.createComponent ->
  name: 'Authentication.Login'
  mixins: [
    Reflux.connect Stores.Errors
    Mixins.Validation
  ]

  getInitialState: ->
    email: ''
    password: ''

  render: ->
    <main className="app-content authentication-login">
      <form onSubmit={@handleSubmit}>
        {@errors()}
        <div>
          <label htmlFor="email">Email</label>
          <input
            onChange={_.partial @handleChange, 'email'}
            value={@state.email}
            id="email"
            type="text"
            />
        </div>

        <div>
          <label htmlFor="password">Password</label>
          <input
            onChange={_.partial @handleChange, 'password'}
            value={@state.password}
            id="password"
            type="password"
            />
        </div>

        <button className="btn btn-primary" type="submit">Log In</button>
      </form>
    </main>

  handleSubmit: (e) ->
    e.preventDefault()
    Actions.loginUser @state

  handleChange: (prop, event) ->
    state = {}
    state[prop] = event.target.value
    @setState state
