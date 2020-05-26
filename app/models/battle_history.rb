class BattleHistory < ApplicationRecord

  belongs_to :winner, class_name: 'Climber'
  belongs_to :, class_name: 'Climber'

  def result_battle_is_win
    if self.is_draw_status == false
      p = 'win'
    else
      p = '引き分け'
    end
  end
end