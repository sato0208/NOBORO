class BattleHistory < ApplicationRecord
  belongs_to :winner, class_name: 'Climber'
  belongs_to :loser, class_name: 'Climber'

end