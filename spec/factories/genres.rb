FactoryBot.define do
  factory :genre do
    genre_name { Faker::Lorem.characters(number:5) }
    genre_image
  end
end