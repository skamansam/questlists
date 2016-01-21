# Polymer body fixes
Meteor.startup( ()->
  $('body').attr('class', 'fullbleed');
);

Template.questlistsApp.helpers({
  userId: () ->
    return Meteor.userId();
});
