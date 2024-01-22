FactoryBot.define do
  factory :location do
    name { FFaker::Venue.name }
    latitude { rand(10.0..99.9) }
    longitude { rand(10.0..99.9) }
  end
end
