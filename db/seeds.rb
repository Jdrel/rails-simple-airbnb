require 'faker'

Flat.destroy_all

10.times do
  Flat.create!(
  name: Faker::HarryPotter.location,
  address: Faker::Address.full_address,
  description: Faker::FamilyGuy.quote,
  price_per_night: (50..100).to_a.sample,
  number_of_guests: (1..10).to_a.sample
  )
end
