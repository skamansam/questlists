// publish albums (without track list)
Meteor.publish('questlists', function() {
  return Questlists.find({},{fields: {name: 1, user: 1, large_icon: 1, lists: 1}});
});

// publish tracks for a given album
Meteor.publish('questlist-items', function(id) {
  if (id)
    return Questlists.find({_id: id},{fields: {items: 1}});
  else
    this.ready();
});

Questlists.allow({
  insert: function(userId, doc) {
    return Questlists.find({}).count() < 10;
  },
  remove: function(userId, doc) {
    return true;
  }
});
