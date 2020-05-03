class Grade < ApplicationRecord
  has_many :tasks, dependent: :destroy
end
