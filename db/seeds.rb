# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.delete_all
Artist.delete_all
Song.delete_all

g1 = Genre.create(name: "pop")
a1 = Artist.create(name: "BackstreetBoyz", bio: "We still exist!")
s1 = Song.create(name: "BackstreetsBack Alright!", artist: a1, genre: g1)

"Seeds worked!"
