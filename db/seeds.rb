# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "belgian" }
posh =  { name: "Posh", address: "42 Money Lane, cash town", category: "italian" }
ryu =  { name: "Ryu", address: "Block 10, shibuya, tokyo", category: "japanese" }
red_dragon =  { name: "Red Dragon", address: "1 Zhongshan Street, Nanjing", category: "chinese" }

[ dishoom, pizza_east, posh, ryu, red_dragon ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"