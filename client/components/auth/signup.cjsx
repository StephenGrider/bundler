Utils.createComponent ->
  name: 'Signup'

  getInitialState: ->
    username: ''
    email: ''
    password: ''
    passwordConfirm: ''

  render: ->
    <main className="app-content authentication-signup">
      <form onSubmit={@handleSubmit}>
        <div>
          <label htmlFor="username">Username</label>
          <input
            onChange={_.partial @handleChange, 'username'}
            value={@state.username}
            id="username"
            type="text"
            />
        </div>

        <div>
          <label htmlFor="email">Email</label>
          <input
            onChange={_.partial @handleChange, 'email'}
            value={@state.email}
            id="email"
            type="email"
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

        <div>
          <label htmlFor="password-confirm">Confirm Password</label>
          <input
            onChange={_.partial @handleChange, 'passwordConfirm'}
            value={@state.passwordConfirm}
            id="password-confirm"
            type="password"
            />
        </div>

        <button className="btn btn-primary" type="submit">Sign up</button>
      </form>
    </main>

  handleSubmit: (e) ->
    e.preventDefault()
    Actions.createUser @state

  handleChange: (prop, event) ->
    state = {}
    state[prop] = event.target.value
    @setState state
