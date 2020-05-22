FactoryBot.define do
  factory :trophy do
    my_trophy_name { Faker::Lorem.characters(number:5) }
    climber_id { 1 }
    my_trophy_image_id
  end
end
