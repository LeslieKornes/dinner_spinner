FactoryBot.define do
  factory :meal do
    name { Faker::Food.dish }
    description { Faker::Food.description }
  end
end
