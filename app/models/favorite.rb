class Favorite < ApplicationRecord
  belongs_to :climber
  belongs_to :gym

  validates :climber_id, uniqueness: { scope: :gym_id }
end
