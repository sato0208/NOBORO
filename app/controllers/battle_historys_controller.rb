class BattleHistorysController < ApplicationController
  def index
    @battle_historys = BattleHistory
    .where(winner_id: current_climber.id)
    .or(BattleHistory
    .where(loser_id: current_climber.id))
  end

  def create
  end

  def battle_historie_params
    params.permit(:winner_id, :winner_count, :loser_id, :loser_count, :is_draw_status, :started_at, :finished_at, :present_trophy_id)
  end
end