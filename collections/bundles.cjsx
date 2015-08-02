@Collections.Bundles = new Mongo.Collection 'bundles'

Bundle = new SimpleSchema
  title:
    type: String
    label: 'Title'
    max: 200

@Collections.Bundles.attachSchema Bundle
