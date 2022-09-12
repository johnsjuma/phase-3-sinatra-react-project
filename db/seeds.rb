puts "🌱 Seeding spices..."

# Seed your database here

service = %w!sauna whirlpool jetbath massage saltscrub clay waxing nailservices pedicures mud bath!

for i in service
  SpaAttendant.create(
    first_name: Faker::Name.name,
    last_name: Faker::Name.middle_name,
    service_type: service[rand(0...service.size)],
    service_id: rand(1..11)
  )
  Customer.create(
    first_name: Faker::Name.name,
    gender: "M", 
    service_name: service[rand(0...service.size)],
    service_id: rand(1..10)
  )
  Service.create(
    service_name: i
  )
end


puts "✅ Done seeding!"
