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
      customer1 = Customer.create(first_name:"Eduord ",last_name:"Mendy",gender:"Male",service_name: service[rand(0...service.size)],service_id: rand(1..10)),
    customer2 = Customer.create(first_name:"Jerry",last_name:"Johns",gender:"Male",service_name: service[rand(0...service.size)],service_id: rand(1..10)),
    customer4 = Customer.create(first_name:"James",last_name:" Oduor",gender:"Male",service_name: service[rand(0...service.size)],service_id: rand(1..10)),
    customer5 = Customer.create(first_name:"Betty ",last_name:"Konyagi",gender:"Female",service_name: service[rand(0...service.size)],service_id: rand(1..10)),
    customer6 = Customer.create(first_name:"Eduord",last_name:" Wanyonyi",gender:"Male",service_name: service[rand(0...service.size)],service_id: rand(1..10))
 )
  Service.create(
    service_name: i
  )
end


puts "✅ Done seeding!"
