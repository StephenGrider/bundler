{Router, Route, @Link} = ReactRouter
{history} = ReactRouter.lib.HashHistory

@Router =
  requireAuth: ->

  start: ->
    React.render <Router history={history}>
      <Route path="/" component={Components.App}>
        <Route path="login" component={Components.Login} />
        <Route path="signup" component={Components.Signup} />
      </Route>
    </Router>, document.body
