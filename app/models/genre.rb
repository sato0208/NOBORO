class Genre < ApplicationRecord
  attachment :genre_image
  has_many :gyms, dependent: :destroy
end
