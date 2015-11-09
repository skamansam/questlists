initDatabase = ()->
  if Music.find({}).count() < 1
    lorempixelcat = [
      'abstract', 'city', 'people', 'transport', 'animals', 'food', 'nature',
      'business', 'nightlife', 'sports', 'cats', 'fashion', 'technics'
    ];

    for i in [0..3]
      tracks = [];
      for j in [0..Random.choice([5,6,7,8,9])]
        tracks.push(faker.lorem.words().join(" "))

      artist = faker.lorem.words()[0];
      album = faker.lorem.words().slice(0,2).join(" ");
      loremindex = Math.floor((Math.random() * 10) + 1);
      Music.create({
        artist: artist,
        album: faker.lorem.words().slice(0,2).join(" "),
        arturl: "http://lorempixel.com/480/480/"+Random.choice(lorempixelcat)+"/"+loremindex+"/"+album.replace(/\s/g, "%20"),
        tracks: tracks
      });

Meteor.setInterval(()->
  Music.remove({});
  initDatabase()
, 2*3600*1000);

initDatabase()
