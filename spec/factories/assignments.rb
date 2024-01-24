FactoryBot.define do
  factory :assignment do
    user
    time_at { DateTime.now - rand(0..365) }
    room
  end
end
