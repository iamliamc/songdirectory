# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
s1 = Song.create(title: 'Riders', directory: 'C:\Users\TPB\Sounds\Riders.rpt', tempo: 123, key: "A Minor", sample: "Keep an Eye out for the Riders - Lil Huey")
s2 = Song.create(title: 'Hustle', directory: 'C:\Users\TPB\Sounds\Hustle.rpt', tempo: 86, key: "Bb Maj", sample: "N/A")
c1 = Comment.create(title: 'Baller', content: 'Pat is a baller he should write on this track', song_id: s1.id)
c2 = Comment.create(title: 'Sucky', content: 'This one is lame', song_id: s2.id)
c3 = Comment.create(title: 'Tata', content: 'Boom boom boom I want you in my room', song_id: s1.id)
c4 = Comment.create(title: 'Nanana', content: 'Creative text here', song_id: s2.id)
co1 = Contributor.create(name: 'Liam Considine', band: 'Slow Tap', age: 26, bio: 'Self starter, digitial media specialist and avid sample finder')
co2 = Contributor.create(name: 'George Bradley', band: 'TPB', age: 26, bio: 'Guitar under Fitz Greene, DIY specialist, fierce freestyler')
co3 = Contributor.create(name: 'Patrick Morris', band: 'TPB', age: 26, bio: 'Never thought he could freestyle, raquet thrower in HS')
u = User.create(first_name: 'Liam', last_name: 'Considine', email: 'ljc3179@gmail.com', password: 'testing123')
s1.contributors << [co1, co2]
s2.contributors << [co2, co3]
