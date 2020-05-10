class Battle < ApplicationRecord
  belongs_to :climber
  belongs_to :battler, class_name: 'Climber'
end
