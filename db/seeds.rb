# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category:"chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category:"chinese"}
jasmine =  {name: "Jasmine", address: "80A Rose Street, London J2 8PQ",category: "italian"}
pizza_express =  {name: "Pizza Express", address: "SU44-45, Priory Meadow Shopping Centre, Hastings TN34 1PH", category:"italian"}
smith_something = {name: "Smith Something", address: "SU44-45, Priory Road, Hastings TN34 1PH", category:"italian"}


[dishoom, pizza_east,jasmine,pizza_express,smith_something].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
