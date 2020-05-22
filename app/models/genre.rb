class Genre < ApplicationRecord
  attachment :genre_image
  has_many :gyms, dependent: :destroy

  validates :genre_name, presence: true 
end
