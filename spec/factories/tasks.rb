FactoryBot.define do
  factory :task do
    task_name { Faker::Lorem.characters(number:5) }
    gym_id { 1 }
    grade_id { 1 }
  end
end
