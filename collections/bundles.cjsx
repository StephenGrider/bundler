@Collections.Bundles = new Mongo.Collection 'bundles'

Bundle = new SimpleSchema
  title:
    type: String
    max: 200
  # youtubeId:
  #   type: String
  # createdBy:
  #   type: String
  # likes:
  #   type: Number

@Collections.Bundles.attachSchema Bundle
