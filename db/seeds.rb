# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all restaurants...."

Restaurant.destroy_all

100.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    stars: rand(1..5),
    chef_name: Faker::Artist.name
  )

  10.times do
    Review.create(
      content: Faker::Address.full_address,
      restaurant: restaurant
    )
  end

  puts "Created restaurant with id: #{restaurant.id}"
end


puts 'Done'
