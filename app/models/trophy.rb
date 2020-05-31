class Trophy < ApplicationRecord
  attachment :my_trophy_image
  belongs_to :climber
  # 一つのclimber_idに対して同じトロフィー情報を登録させないためのユニーク制約
  validates :climber_id, uniqueness: { scope: [:my_trophy_name] }
end