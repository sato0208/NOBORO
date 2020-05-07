class Trophy < ApplicationRecord
  attachment :my_trophy_image
  belongs_to :climber
end