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
Genre.all.each do |genre|
	10.times do
		genre.artists << Artist.create(name: Faker::Book.author)
	end
end

Artist.all.each do |artist|
	5.times do
		artist.albums << Album.new(name: Faker::Book.title, release_date: Faker::Date.between(50.years.ago, Date.today))
	end
end

Album.all.each do |album|
	rand(6..13).times do
		album.songs << Song.new(name: Faker::Hipster.words(3, true, true).join(' '))
	end
end
