class Genre < ApplicationRecord
  has_many :gyms, dependent: :destroy
end
