class Trophy < ApplicationRecord
  attachment :my_trophy_image
  belongs_to :climber
  # 一つのクライマーに対して同じトロフィーを登録させないためのユニーク制約
  validates :climber_id, uniqueness: { scope: [:my_trophy_image_id, :my_trophy_name] }
end