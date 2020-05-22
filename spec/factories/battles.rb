FactoryBot.define do
  factory :battle do
    climber_id { 1 }
    battler_id { 2 }
    is_valid_status {false}
  end
end
