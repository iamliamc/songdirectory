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