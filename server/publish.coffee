# publish albums (without track list)
Meteor.publish 'albums', ()->
  Music.find({},{fields: {artist: 1, album: 1, art: 1, arturl: 1}})

# publish tracks for a given album
Meteor.publish 'album', (id)->
  if (id)
    Music.find({_id: id},{fields: {tracks: 1}})
  else
    this.ready();

Music._collection.allow({
  insert: (userId, doc)->
    Music.find({}).count() < 10;
  ,
  remove: (userId, doc)->
    true

})
