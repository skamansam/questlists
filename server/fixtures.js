var initDatabase = function() {
  if (Questlists.find({}).count() < 1) {
    var lorempixelcat = [
      'abstract', 'city', 'people', 'transport', 'animals', 'food', 'nature',
      'business', 'nightlife', 'sports', 'cats', 'fashion', 'technics'
    ];

    for (var i = 0; i<4; i++) {

      var items = [];
      for (var j = 0; j<Random.choice([5,6,7,8,9]); j++)
        items.push({
          name: faker.lorem.words().join(" "),
          due_date: Date.now(),
          complete_date: Date.now(),
          prerequisite_ids: [Random.choice([5,6,7,8,9])],
          postrequisite_id: Random.choice([5,6,7,8,9])
        });

      var user = faker.lorem.words()[0];
      var album = faker.lorem.words().slice(0,2).join(" ");
      var loremindex = Math.floor((Math.random() * 10) + 1);
      Questlists.insert({
        user: user,
        name: faker.lorem.words().slice(0,2).join(" "),
        large_icon: "http://lorempixel.com/96/96/"+Random.choice(lorempixelcat)+"/"+loremindex+"/"+album.replace(/\s/g, "%20"),
        items: items
      });
    }
  }
}

Meteor.setInterval(function() {
  Questlists.remove({});
  initDatabase()
}, 2*3600*1000);

initDatabase();
