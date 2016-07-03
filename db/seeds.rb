# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
s1 = Song.create(title: 'Riders', directory: 'C:\Users\TPB\Sounds\Riders.rpt', tempo: 123, key: "A Minor", sample: "D.J. Rogers - Watch Out For The Riders")
s2 = Song.create(title: 'Hustle', directory: 'C:\Users\TPB\Sounds\Hustle.rpt', tempo: 86, key: "Bb Maj", sample: "N/A")
s3 = Song.create(title: 'In the Yard', directory: 'C:\Users\TPB\Sounds\In The Yard.rpt', tempo: 93, key: "F Maj", sample: "N/A")
s4 = Song.create(title: 'Greenpoint', directory: 'C:\Users\TPB\Sounds\TalkingGreen.rpt', tempo: 102, key: "G Minor", sample: "Duff Nation")
c1 = Comment.create(title: 'Baller', content: 'Pat is a baller he should write on this track', song_id: s1.id)
c2 = Comment.create(title: 'Sucky', content: 'This one is lame', song_id: s2.id)
c3 = Comment.create(title: 'Tata', content: 'Boom boom boom I want you in my room', song_id: s1.id)
c4 = Comment.create(title: 'Nanana', content: 'Creative text here', song_id: s2.id)
c5 = Comment.create(title: 'Inspired', content: 'Reminds me of brooklyn', song_id: s4.id)
c6 = Comment.create(title: 'Summer time!', content: 'This one makes me want to hit the backyard up for a BBQ!', song_id: s3.id)
co1 = Contributor.create(name: 'Liam Considine', band: 'Slow Tap', age: 26, bio: 'Self starter, digitial media specialist and avid sample finder')
co2 = Contributor.create(name: 'George Bradley', band: 'TPB', age: 26, bio: 'Guitar under Fitz Greene, DIY specialist, fierce freestyler')
co3 = Contributor.create(name: 'Patrick Morris', band: 'TPB', age: 26, bio: 'Never thought he could freestyle, raquet thrower in HS')
co4 = Contributor.create(name: 'Gitis Baggs', band: 'Bagganalia', age: 30, bio: 'Lost 30 pounds in 10 days, only drinking lemonade, master cleanse like a sensei')
u = User.create(first_name: 'Liam', last_name: 'Considine', email: 'ljc3179@gmail.com', password: 'testing123', role: 'admin')
u2 = User.create(first_name: 'George', last_name: 'Bradley', email: 'gfb@gfb.com', password: 'testing123', role: 'editor')
u3 = User.create(first_name: 'James', last_name: 'Thomas', email: 'jamest@london.com', password: 'testing123', role: 'default')

s1.contributors << [co1, co2, co3]
s2.contributors << [co2, co3, co1]
s3.contributors << [co4, co3, co1]
s4.contributors << [co4, co3, co1]
