# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

Session.destroy_all
Ceremony.destroy_all
User.destroy_all

user = User.create!(
  email: "user@user.com",
  password: 123456
)

addresses = [
  'Querétaro 99 - Condesa, Ciudad de México, CDMX',
  'Colima 55 - Condesa, Ciudad de México, CDMX',
  'Colima 159 - Condesa, Ciudad de México, CDMX',
  'Guanajuato 118, Ciudad de México, CDMX',
  'Campeche 281, Ciudad de México, CDMX',
  'Bajío 231, Ciudad de México, CDMX',
  'Campeche 237, Ciudad de México, CDMX',
  'Alfonso Reyes 58, Ciudad de México, CDMX',
  'Alfonso Reyes 216, Ciudad de México, CDMX',
  'Tabasco 216, Ciudad de México, CDMX',
  'Tabasco 198',
  'Fernando Montes de Oca 28',
]

medicines = ['Peyote', 'San Pedro', 'Mushrooms', 'Kambo', 'Bufo Alvarius', 'Yopo', 'Ayahuasca' ]

10.times do |n|
  ceremony = Ceremony.new(
    name: "#{medicines.sample} Ceremony",
    location: addresses[n],
    description: "This deep immersion retreat is an opportunity to enter into a sacred space away from habitual daily life. This allows oneself to confront disharmonies and to comprehend and heal origins of suffering and disconnection. The deep immersion takes the participant on a journey of profound self-healing and understanding through the discovery of the universe and wisdom within.",
    total_price: rand(1000..3000),
    duration: "#{rand(1..10)} days",
    user: user
  )

  5.times do
    Session.create!(
      start_at: Time.now + rand(0..240).hours,
      ceremony: ceremony,
    )
  end

  ceremony.save!
end
