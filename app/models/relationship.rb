class Relationship < ApplicationRecord
  belongs_to :climber
  belongs_to :follow, class_name: 'Climber'

end
