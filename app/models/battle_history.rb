class BattleHistory < ApplicationRecord
  belongs_to :winner, class_name: 'Climber'
  belongs_to :loser, class_name: 'Climber'

  def battle_history_by
    BattleHistory
    .where(winner_id: self.id)
    .or(BattleHistory
    .where(loser_id: self.id))
  end

end