FactoryBot.define do
  factory :department do
    sequence(:name, 123456) { |n| "Department #{n}" }
  end
end
