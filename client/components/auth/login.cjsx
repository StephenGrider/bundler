Utils.createComponent ->
  name: 'Authentication.Login'

  getInitialState: ->
    email: ''
    password: ''

  render: ->
    <form onSubmit={@handleSubmit}>
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

      <input type="submit" value="Log in" />
    </form>

  handleSubmit: (e) ->
    e.preventDefault()
    Actions.loginUser @state

  handleChange: (prop, event) ->
    state = {}
    state[prop] = event.target.value
    @setState state
