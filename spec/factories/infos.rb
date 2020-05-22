FactoryBot.define do
  factory :info do
    gym_id { 1 }
    info { Faker::Lorem.characters(number:10) }
  end
end
