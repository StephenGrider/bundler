Utils.createStore ->
  name: 'AuthenticatedUser'
  listenables: Actions

  init: ->
    Tracker.autorun @emitChange

  getInitialState: ->
    user: null

  onGetUser: ->
    @emitChange()

  onLoginUser: (props) ->
    { email, password } = props
    Meteor.loginWithPassword email, password,
      (err) => throw err if err

  onLogoutUser: ->
    Meteor.logout()

  onCreateUser: (props) ->
    Accounts.createUser _.pick props, 'email', 'username', 'password',
      (err) => throw err if err

  emitChange: ->
    @trigger user: Meteor.user()
