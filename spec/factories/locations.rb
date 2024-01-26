FactoryBot.define do
  factory :location do
    name { FFaker::Venue.name }
    latitude { rand(-90.0..90.0) }
    longitude { rand(-180.0..180.0) }
  end
end
