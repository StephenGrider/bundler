@Collections.Bundles = new Mongo.Collection 'bundles'

Bundle = new SimpleSchema
  title:
    type: Number
    label: 'Title'
    max: 200

@Collections.Bundles.attachSchema Bundle
