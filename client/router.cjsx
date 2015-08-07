{Router, Route, @Link} = ReactRouter
{history} = ReactRouter.lib.HashHistory

requireAuth = ->

requireAdmin = ->


@Router =
  start: ->
    React.render <Router history={history}>
      <Route path="/" component={Components.App}>
        <Route path="admin" onEnter={requireAdmin} component={Components.Admin.Main}>
          <Route path="index" component={Components.Admin.Index} />
          <Route path="new" component={Components.Admin.Create} />
        </Route>
        <Route path="login" component={Components.Authentication.Login} />
        <Route path="signup" component={Components.Authentication.Signup} />
      </Route>
    </Router>, document.body
