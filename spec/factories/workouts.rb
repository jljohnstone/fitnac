FactoryBot.define do
  factory :workout do
    starts_at { Time.current + rand(14.days) }
    location
  end
end
