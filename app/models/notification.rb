class Notification < ApplicationRecord
  enum confirm_status: { 未確認: 0,承認: 1,拒否:2 }

  belongs_to :battle
  belongs_to :visiter, class_name: 'Climber'
  belongs_to :visited, class_name: 'Climber'
end