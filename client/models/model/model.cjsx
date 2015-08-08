class Models.Model
  constructor: ->
    @attrs = {}

  save: (callback) ->
    Meteor.call @method, @attrs, callback
