FactoryBot.define do
  factory :room do
    name { Faker::Space.planet }
    department
  end
end
