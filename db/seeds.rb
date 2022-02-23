puts "Cleaning database..."
Flat.destroy_all if Rails_env = "development"

puts "Creating flats..."
garden = { name: "Garden", address: "7 Boundary St, London E2 7JE", description: "Beautiful garden", price_per_night: 10, number_of_guests: 2 }
bench = { name: "Bench", address: "10 Hickory St, Paris E288 7JE", description: "Beautiful bench", price_per_night: 30, number_of_guests: 5 }
park = { name: "Park", address: "7 Horray St, Bulgaria E2 7JE", description: "Beautiful park", price_per_night: 100, number_of_guests: 25 }
apartment = { name: "Apartment", address: "7 Dorothy St, England 7JE", description: "Beautiful apartment", price_per_night: 15, number_of_guests: 4 }

[ garden, bench, park, apartment ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
