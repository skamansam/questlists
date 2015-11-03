class @QuestList extends Minimongoid
  @_collection = new Mongo.Collection('questlists')
  @_debug = true

###
  constructor: (attributes = {}) ->
    if attributes._id
      @attributes = @demongoize(attributes)
      @id = attributes._id
    else
      @attributes = attributes

  # model relations
  @belongs_to: [
#    {name: 'user'},
#    {name: 'parent', as: 'QuestList'}
  ]
  @embeds_many: [
#    {name: 'item_states'},
#    {name: 'items'}
  ]

  # model defaults
  @defaults:
    created_by: 0,
    last_updated_by: 0,
    parent_id: 0,
    title: '' ,
    categories: [] ,
    color: '#ffffff' ,
    page_id: 0,
    item_states: []


  # titleize the name before creation
  @before_create: (obj) ->
    obj.name = _.titleize(obj.name)
    obj

  @after_save: (self)->
    console.log("SAVED LIST!",self)

  # class methods
  # Find me all recipes with an ingredient that starts with "zesty"
  @zesty: ->
    @where({'ingredients.name': /^zesty/i})

  # Add some validation parameters. As long as the @error() method is triggered, then validation will fail
  validate: ->
    #unless @title and @title.length > 2
    #  @error('title', 'QuestList title is required and should be longer than 2 letters.')
    true

  error_message: ->
    msg = ''
    for i in @errors
      for key,value of i
        msg += "<strong>#{key}:</strong> #{value}"
    msg

  # instance methods
  spicy: ->
    "That's a spicy #{@name}!"

  # is this one of my personal creations? T/F
  myList: ->
    @created_by == Meteor.userId() || @updated_by == Meteor.userId()
###
