class Info < ApplicationRecord
  belongs_to :gym

  validates :info, presence: true
end
