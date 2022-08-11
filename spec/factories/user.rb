FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { "password" }
    country { 'Zimbabwe' }
    association :loyalty_tier, factory: :loyalty_tier
  end
end
