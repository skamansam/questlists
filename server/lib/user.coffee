class @User extends Minimongoid
  # indicate which collection to use
  @_collection: Meteor.users

  @has_many: [
    {name: 'musics', foreign_key: 'user_id'}
  ]

  @has_one: [
    {name: 'profile', foreign_key: 'user_id'}
  ]

  # class methods
  @current: ->
    User.init(Meteor.user()) if Meteor.userId()

  email: ->
    if (@emails and @emails.length) then @emails[0].address else ''
