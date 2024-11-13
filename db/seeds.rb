# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
 require 'faker'

 4.times do
  Flat.create!(
    name: Faker::Movies::HarryPotter.location,
    address: Faker::Address.street_address,
    description: 'Lorem ipsum odor amet, consectetuer adipiscing elt',
    price_per_night: rand(0..200),
    number_of_guests: rand(0..7)
  )
 end
