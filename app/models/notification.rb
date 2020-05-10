class Notification < ApplicationRecord
  enum confirm_status: { 未確認: 0,承認: 1,拒否:2 }
end