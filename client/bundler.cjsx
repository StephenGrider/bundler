{Router, Route} = ReactRouter
{history} = ReactRouter.lib.HashHistory

if Meteor.isClient
  Meteor.startup ->

    Utils.buildStores()
    Utils.buildComponents()

    Actions.indexBundle()

    routes = <Router history={history}>
      <Route path="/" component={Components.App}>
      </Route>
    </Router>

    React.render routes, document.body
