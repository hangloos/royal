# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u = Unit.create(name: "unit 1", clean_time: 10)
l = Location.create(name: "loc 1", address: "1509 w thomas st", city: "chicago", zipcode: 60642)
r = Route.create(location_id: l.id, name: "route 1")
q = Quantity.create(amount: 5, route_id: r.id, unit_id: u.id)