=begin
highway hash, which has
4 keys for lanes,
Each lane has an array as the value
Each array has a hash with keys for car & passengers
=end

highway = {
  east_high_speed_lane: [
    {
      car: 'Toyota',
      passengers: ['Jack', 'Ma'],
    },
    {
      car: 'Honda',
      passengers: ['Bill', 'Gates']
    },
  ],

  east_low_speed_lane: [
    {
      car: 'Ford',
      passengers: ['Warren', 'Buffet', 'Bill', 'Graham'],
    },
    {
      car: 'Chrysler',
      passengers: ['Anthony']
    },
  ],

  west_high_speed_lane: [
    {
      car: 'Tesla',
      passengers: ['Elon', 'Musk', 'Nikola'],
    },

  ],

  west_low_speed_lane: [
    {
      car: 'Mercedes',
      passengers: ['Angela', 'Gustav'],
    },
    {
      car: 'Kia',
      passengers: ['Steve', 'Jobs']
    },
  ],
}

puts "----------------------------------"
# access west_low_speed_lane
puts "Accss west_low_speed_lane"
puts "----------------------------------"
puts highway[:west_low_speed_lane]
puts "##################################"
puts ""

puts "----------------------------------"
puts "Alternative access to the west_low_speed_lane"
puts "----------------------------------"
puts highway["west_low_speed_lane".to_sym] # alternative
puts "##################################"
puts ""


# access the car Tesla
puts "----------------------------------"
puts "Access Tesla"
puts highway[:west_high_speed_lane][0][:car]
puts "##################################"
puts ""

# access Anthony
puts "----------------------------------"
puts "Access Anthony"
puts highway[:east_low_speed_lane][1][:passengers][0]
puts "##################################"
puts ""


