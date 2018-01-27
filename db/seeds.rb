# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# u = Unit.create(name: "unit 1", clean_time: 10)
# l = Location.create(name: "loc 1", address: "1509 w thomas st", city: "chicago", zipcode: 60642)
# r = Route.create(location_id: l.id, name: "route 1")
# q = Quantity.create(amount: 5, route_id: r.id, unit_id: u.id)
# c = Calculation.create(name: "calc 1", amount: 10)
# b = Batch.create(calculation_id: c.id, route_id: r.id)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


 5.times do |index|
   Unit.create!(name: Faker::Beer.name, clean_time: rand(1...50))
 end

 30.times do |index|
   Location.create!(name: Faker::StarWars.character, address: Faker::Address.street_address, 
     city: Faker::Address.city, zipcode: Faker::Address.zip)
 end

# 20.times do |index|
#   Route.create!(name: Faker::StarWars.name, location_id: rand(1...30))
# end

# 20.times do |index|
#   Quantity.create!(amount: rand(1...10), route_id: rand(1...20), unit_id: rand(1...5))
# end

# b1 = Batch.create
# b1.save

# c = Calculation.create(amount: 10)
# b1.calculation_id = c.id
# c.routes << Route.all
# c.save
# b1.save


# Spice.destroy_all

# 50.times do |index|
#   Spice.create!(name: Faker::Food.spice,
#                         description: Faker::Lorem.sentence(20, false, 0).chop,
#                         image_url: "site.com/here_is_a_picture_of_cardamom.jpg")
# end