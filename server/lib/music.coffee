class @Music extends Minimongoid
  @_collection: new Meteor.Collection('music')

  # model relations
  @belongs_to: [
    {name: 'user'}
  ]
  #@embeds_many: [
  #  {name: 'tracks'}
  #]

  @defaults:
    artist: '',
    album: '',
    arturl: '',
    tracks: []
