# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

User.destroy_all
Ceremony.destroy_all

user = User.create!(
  email: "user@user.com",
  password: 123456
)

medicines = ['Peyote', 'San Pedro', 'Mushrooms', 'Kambo', 'Bufo Alvarius', 'Yopo', 'Ayahuasca' ]

20.times do |n|
  ceremony = Ceremony.new(
    name: "#{medicines.sample} Ceremony",
    location: Faker::Address.full_address,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit " * 5,
    total_price: rand(1000..3000),
    duration: "#{rand(1..10)} days",
    user: user
    )

  ceremony.save!
end
