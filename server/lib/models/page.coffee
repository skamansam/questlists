class @Page extends Minimongoid
  # indicate which collection to use
  @_collection: new Meteor.Collection('pages')
  @_debug = true

###
  # model relations
  @belongs_to: [
#    {name: 'questlist'}
  ]
  @embeds_many: [
#    {name: 'links'}
  ]

  # model defaults
  @defaults:
    name: ''
    body: ''


  @myPages = ->
    @_collection.find({created_by: Meteor.userid(), updated_by: Meteor.userId()})

  # titleize the name before creation
  @before_create: (obj) ->
    obj.name = _.titleize(obj.name)
    obj

  # class methods
  # Find me all recipes with an ingredient that starts with "zesty"
  @zesty: ->
    @where({'ingredients.name': /^zesty/i})

  # Add some validation parameters. As long as the @error() method is triggered, then validation will fail
  validate: ->
    unless @name and @name.length > 3
      @error('name', 'Name is required and should be longer than 3 letters.')

  error_message: ->
    msg = ''
    for i in @errors
      for key,value of i
        msg += "<strong>#{key}:</strong> #{value}"
    msg

  # instance methods
  findLinks: ->
    #TODO: find links in body and update links[]

  # is this one of my personal creations? T/F
  myPage: ->
    @user_id == Meteor.userId()
###
