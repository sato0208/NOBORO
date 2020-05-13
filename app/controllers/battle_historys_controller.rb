class BattleHistorysController < ApplicationController
  def index
  end

  def create
  end
  def battle_historie_params
    params.permit(:winner_id, :winner_count, :loser_id, :loser_count, :is_draw_status, :started_at, :finished_at, :present_trophy_id)
  end
end
