require 'faker'

puts "Generating restaurants"

10.times do
  restaurant = Restaurant.create(name: Faker::Restaurant.name , city: Faker::Address.city)
  puts "Restaurant #{restaurant.name} created!"
end

puts "You have #{Restaurant.count} restaurants"

