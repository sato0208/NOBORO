class Grade < ApplicationRecord
  attachment :trophy_image
  has_many :tasks, dependent: :destroy
end
