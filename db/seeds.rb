# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name:'admin', email:'admin@admin.com', password: 'password')

10.times do
	User.create(name: Faker::Name.first_name, email: Faker::Internet.safe_email, password: 'password')	
end


genres = ['Hip-Hop', 'Electronic', 'Rock', 'Soul', 'Jazz', 'Blues', 'Reggae', 'Country', 'World', 'Classical']

genres.each do |name|
	Genre.create(name: name)
end

15.times do
	Artist.create(name: Faker::Book.author)
end

35.times do
	Album.create(name: Faker::Book.title, artist_id: rand(1..15))
end

