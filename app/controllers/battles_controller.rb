class BattlesController < ApplicationController
  def show
  end

  def update
  end

  def create
  end

  def destroy
  end

  def index
  end


  def battle_params
    params.require(:battle).permit(:climber_id, :battler_id, :is_valid_status, :finish_at)
  end
end
