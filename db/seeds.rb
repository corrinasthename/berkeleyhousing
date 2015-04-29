# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# Make Pokemon


# Make other trainers
# %w(Ash Gary Misty Brock).each do |name|
#   Trainer.create name: name, email: name+"@pokeportal.com", password: 'password'
# end


#Make Users
User.create name: "Corrina", year: "Junior", email: "corrina.calanoc@berkeley.edu", password: 'password'
User.create name: "Tanya", year: "Sophomore", email: "tanyakris@berkeley.edu", password: 'password'
User.create name: "Nirvana", year: "Junior", email: "nirvana@berkeley.edu", password: 'password'

AptListing.create address: "2527 Dwight Way", rooms: 2, baths: 1, details: "Next to People's park", price: 2400, email: "email@email.com", password: 'password123'
AptListing.create address: "3243 Shattuck Ave", rooms: 4, baths: 3, details: "Super expensive", price: 2400, email: "email1@email.com", password: 'password123'
AptListing.create address: "2335 Dwight Way", rooms: 2, baths: 1, details: "Worst apt in berkeley", price: 2400, email: "email2@email.com", password: 'password123'

SubListing.create address: "289 College Ave.", rooms: 3, baths: 2, gender: "female", details: "Next to the church", price: 2400, email: "email3@email.com", password: 'password123'
SubListing.create address: "2048 Derby Ave.", rooms: 5, baths: 3, gender: "male", details: "Far, but nice", price: 2400, email: "email4@email.com", password: 'password123'
SubListing.create address: "540 Channing Way", rooms: 2, baths: 2, gender: "female", details: "Next to Unit 1", price: 2400, email: "email5@email.com", password: 'password123'

# %w(tony@berkeley.edu, captain@gmail.com, hulk@yahoo.com).each do |email|
#   User.create name: "Jane Doe", year: "Junior", email: email, password: 'password'
# end


# Make listings
# %w("2527 Dwight Way" "3243 Shattuck Ave" "2335 Dwight Way").each do |address|
#   SubListing.create address: address, date: 'June 1st'
# end



