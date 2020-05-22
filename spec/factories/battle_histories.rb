FactoryBot.define do
  factory :battle_history do
    winner_id { 1 }
    winner_count { 2 }
    loser_id { 2 }
    loser_count { 1 }
    is_draw_status
  end
end
