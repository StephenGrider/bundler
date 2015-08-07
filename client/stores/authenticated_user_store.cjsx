Utils.createStore ->
  name: 'AuthenticatedUser'
  listenables: Actions

  init: ->
    Tracker.autorun @emitChange
    @emitChange()

  getInitialState: ->
    user: null

  onGetUser: ->
    @emitChange()

  onLoginUser: (props) ->
    { email, password } = props
    Meteor.loginWithPassword email, password, @onAuthenticationSuccess

  onLogoutUser: ->
    Meteor.logout()

  onCreateUser: (props) ->
    Actions.clearErrors()
    Accounts.createUser _.pick(props, 'email', 'username', 'password'),
      @onAuthenticationSuccess

  onAuthenticationSuccess: (error) ->
    if error
      Actions.addError error
    else
      navigate '/'
      @emitChange()
      Actions.clearErrors()

  emitChange: ->
    @trigger user: Meteor.user()
