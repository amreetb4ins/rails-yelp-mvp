# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating Restaraunts"
pizza = { name: "Pizza World", address: "London", category: "italian" }
chinese = { name: "Taste of China", address: "Paris", category: "chinese" }
sushi = { name: "Sushi Land", address: "Rome", category: "japanese" }
french = { name: "Taste of France", address: "Berlin", category: "french" }
belgian = { name: "Belgian Buns", address: "Amsterdam", category: "belgian" }

[ pizza, chinese, sushi, french, belgian ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
