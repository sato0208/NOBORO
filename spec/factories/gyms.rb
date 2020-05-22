FactoryBot.define do
  factory :gym do
    gym_name { Faker::Lorem.characters(number:10) }
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
