Meteor.publish 'questlists', ()->
  return QuestList.find()

Meteor.publish 'questlist', (id)->
  return QuestList.find({_id: id})

Meteor.publish 'userData', ()->
  User.find({}, {
    fields: {
      username: 1,
      friend_ids: 1,
      createdAt: 1
    }
  })

#Meteor.publish 'questlist-item', (id) ->
#  if (id)
#    QuestList.find()
#  else
#    this.ready()

Meteor.publish 'pages', (id)->
  return Page.find()

#QuestList._collection.allow {
#  insert : (userId, doc) ->
#    userId != null
#  remove : (userId, doc) ->
#    userId && doc.created_by == userId
#  update : (userId, doc, fields, modifier) ->
#    userId != null
#}
