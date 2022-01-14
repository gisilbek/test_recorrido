Contract.destroy_all

puts 'Creating Contract'

10.times do
  Contract.create(name: Faker::Company.name,
                  week_start_time: 19,
                  week_end_time: 24,
                  weekend_start_time: 10,
                  weekend_end_time: 24)
end

puts "Contract creation finished. There is #{Contract.count} contract registered in the database"
