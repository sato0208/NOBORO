class Grade < ApplicationRecord
  attachment :trophy_image
  has_many :tasks, dependent: :destroy

  validates :grade, presence: true 
  validates :trophy_name, presence: true 


end
