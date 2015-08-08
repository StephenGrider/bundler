{Router, Route, @Link} = ReactRouter
{history} = ReactRouter.lib.BrowserHistory

requireAuth = (nextState, transition) ->
  unless Meteor.user()
    transition.to '/login'

requireAdmin = (transition) ->

@Router =
  start: ->
    React.render <Router history={history}>
      <Route path="/" component={Components.App}>
        <Route path="admin" onEnter={requireAuth} component={Components.Admin.Main}>
          <Route path="index" component={Components.Admin.Index} />
          <Route path="create" component={Components.Admin.Create} />
        </Route>
        <Route path="login" component={Components.Authentication.Login} />
        <Route path="signup" component={Components.Authentication.Signup} />
      </Route>
    </Router>, document.body
