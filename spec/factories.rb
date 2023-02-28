FactoryBot.define do
  factory :user do
    
  end

  factory :meal do
    name { Faker::Food.dish }
    description { Faker::Food.description }
  end
end
