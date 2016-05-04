# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
350_000.times do |i|
	Customer.create!(
		first_name: Faker::Name.first_name,
		last_name:  Faker::Name.last_name,
		username:  	"#{Faker::Internet.user_name}#{i}", # appending the index to the username is to ensure these values are unique
		email:  		Faker::Internet.user_name + i.to_s + "@#{Faker::Internet.domain_name}" # appending the index to the email is to ensure these values are unique
	)
end