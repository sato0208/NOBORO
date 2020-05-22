FactoryBot.define do
  factory :grade do
    grade { Faker::Lorem.characters(number:2) }
    trophy_name { Faker::Lorem.characters(number:10) }
    trophy_image_id
  end
end