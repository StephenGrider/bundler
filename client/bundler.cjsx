if Meteor.isClient
  Meteor.startup ->
    Utils.buildStores()
    Utils.buildComponents()

    Actions.indexBundle()

    _.defer Router.start
