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

japanese = Restaurant.create!(name: "Place to eat", address: "7th Layer of Hell", category: "japanese", phone_number: "01999623456");
belgian = Restaurant.create!(name: "Fattys", address: "That Place Down The Road", category: "belgian", phone_number: "0433459873");
Restaurant.create!(name: "Deliciouso", address: "2nd Marianna Trench, Bottom of the Sea, On-The-Right", category: "french", phone_number: "34-55-44444444");
Restaurant.create!(name: "Ambrosia", address: "1st Heavens Gate, Cloudy-Bit", category: "chinese", phone_number: "11111111111");
Restaurant.create!(name: "Joyful Existence", address: "42nd Wherever-Mirth-May-Be, Devon", category: "italian", phone_number: "55593827616713");

Review.create!(rating: 1, content:"bad", restaurant: japanese)
Review.create!(rating: 1, content:"bad", restaurant: belgian)
