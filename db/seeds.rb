puts "Cleaning database..."
Flat.destroy_all

puts "Creating Flats..."

lights = { name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3 }

fancy =  { name: 'Fancy Studio in New York',
  address: '333 Schermerhorn St, Brooklyn, NY',
  description: 'Sunny and well-decorated studio apartment in New York with wall to wall windows and a beautiful view of the city.',
  price_per_night: 100,
  number_of_guests: 2 }

summer =  { name: 'Easy Summer Living',
  address: '8507 Virginia Lane Long Beach, CA 90805',
  description: 'The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.',
  price_per_night: 150,
  number_of_guests: 4 }

paradise =  { name: 'Paradise Amongst The Palm Trees',
  address: '938 17th Avenue Seattle, WA 98122',
  description: 'Hidden away on the fringe of the city is this charming three bedroom residence plus study on a lush, leafy oasis.',
  price_per_night: 90,
  number_of_guests: 3 }


[ lights, fancy, summer, paradise ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"

