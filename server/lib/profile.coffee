class @Profile extends Minimongoid
  # indicate which collection to use
  @_collection: new Mongo.Collection('profiles')

  @defaults:
    description: "The user hasn't provided a description yet."

  # model relations
  @belongs_to: [
    {name: 'user'}
  ]
