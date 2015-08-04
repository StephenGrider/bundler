{Router, Route, @Link} = ReactRouter
{history} = ReactRouter.lib.HashHistory

requireAuth = ->

requireAdmin = ->


@Router =
  start: ->
    React.render <Router history={history}>
      <Route path="/" component={Components.App}>
        <Route path="admin" onEnter={requireAdmin} component={Components.Admin.Main}>
          <Route path="bundles" component={Components.Admin.BundleList} />
        </Route>
        <Route path="login" component={Components.Authentication.Login} />
        <Route path="signup" component={Components.Signup} />
      </Route>
    </Router>, document.body
