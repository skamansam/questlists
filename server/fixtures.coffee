# //  format of User is as follows:
# //   User: {
# //     name  : <String>,
# //     id    : <String>,
# //     avatar: <String>,
# //     lists:{
# //       [list_id]: {
# //         state: <String>
# //         item_states: {
# //           [item_id]: {
# //             <DatetString>: <StateString>,
# //             ...
# //           },
# //           ...
# //         }
# //         ...
# //       }
# //       ...
# //     }
# //   }
# //
# // format of Page:
# // Page: {
# //   title: <String> ,
# //   created_by: <IDString> ,
# //   updated_by: <IDString>
# //   version: <Integer> ,
# //   body: < Text >
# // }
#
# // format of PageDiff
# // PageDiff:{
# //   page_id: <IDString>,
# //   diff: <diff_object>
# // }
#
# // format of QuestList
# // QuestList: {
# //   parent_id: <IDString>,
# //   title: <String> ,
# //   categories: <String> ,
# //   color: <CSSColor> ,
# //   page_id: <IDString>,
# //   item_states: {
# //     stateID1: {
# //       label: <String> ,
# //       color: <CSSColor> ,
# //       highlight: <CSSColor> ,
# //       flags: <CSSTextDecorationValue>,
# //       raw_css: <CSSString>,
# //       image: <imageURL>,
# //       icon: <IronIconValue>
# //     },
# //     ...
# //   },
# //   items: {
# //     itemID1: {
# //       title: <String>,
# //       page_id: <IDString>,
# //       links: [],
# //       description: <Text>
# //     }
# //   }
# // }
#
# // format of QuestListDiff
# // QuestListDiff:{
# //   quest_list_id: <IDString>,
# //   diff: <json_diff_object>
# // }

_randomImageURI = (width, height, category) ->
  height ?= width
  name = faker.lorem.words().join(" ")
  lorempixelcat = [
    'abstract',
    'city',
    'people',
    'transport',
    'animals',
    'food',
    'nature',
    'business',
    'nightlife',
    'sports',
    'cats',
    'fashion',
    'technics'
  ]
  loremindex = Math.floor((Math.random() * 10) + 1)
  category ||= Random.choice(lorempixelcat)
  "http://lorempixel.com/#{width}/#{height}/#{category}/#{loremindex}/" + name.replace(/\s/g, "%20")


user = Meteor.users.find({username: 'admin'})
if user.count() < 1
  user = Accounts.createUser {
    username: 'admin'
    email: 'admin@myhost.com'
    password: 'test123'
    avatar: _randomImageURI(100, 100, 'people')
    profile: {
        first_name: 'Admin'
        last_name: 'User'
        company: 'My Company, LLC'
    }
  }
userId = user._id

_buildUser = () ->
  {
    name : faker.lorem.words()[0] + " " + faker.lorem.words()[0],
    avatar : _randomImageURI(120),
    lists : {}
  }

_buildState = (cnt = 0) ->
  {
    label: 'State 0' + cnt,
    color: faker.internet.color(),
    highlight: false,
    flags: 'underline',
    raw_css: "font-size: #{(cnt * 20) + 80}%",
    image: _randomImageURI(120),
    icon: _randomImageURI(30)
  }

_buildItem = (init_state) ->
  {
    title : faker.lorem.words(),
    page_id : _createPage()._id,
    links : [],
    description : faker.lorem.paragraph(),
    initial_state : init_state.label,
    due_date: faker.date.future()
  }

_buildQuestList = () ->
  states = [_buildState(), _buildState(), _buildState()]
  {
    list_type: 'todo',
    parent_id: undefined,
    due_date: faker.date.future(),
    title: faker.lorem.words(),
    categories: faker.lorem.words(),
    color: faker.internet.color(),
    page_id: _createPage()._id,
    item_states: [_buildState(), _buildState(), _buildState()]
    items: [_buildItem(states[0]), _buildItem(states[1]), _buildItem(states[2])]
  }

_createPage = () ->
  Page.create({
    title: faker.lorem.words ,
    created_by: userId,
    updated_by: userId,
    version: 0 ,
    body: faker.lorem.paragraphs()
  })

initDatabase = () ->
  if (QuestList.find({}).count() <= 5)
    for i in [1,2,3]
      item = QuestList.create _buildQuestList(), (obj)->
        console.log("QuestList create: ", obj.title)
  console.log("QuestList count: ", QuestList.find({}).count())
  for list in QuestList.find({})
    console.log(list.title)


Meteor.setInterval () ->
  QuestList.destroyAll({});
  initDatabase()
, 2 * 3600 * 1000

initDatabase()
true
