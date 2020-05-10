class BattlesController < ApplicationController
  def show
  end

  def update
  end

  def create
    # binding.pry
    @new_battle = Battle.new(battle_params)
    @new_battle.climber_id = current_climber.id
    @new_battle.save
    @new_battle = Battle.find(params[:battler_id])
    @new_battle.create_notification_by(current_climber)
    respond_to do |format|
      format.html {redirect_to request.referrer}
      format.js
    end
    redirect_to request.referer

  end

  def destroy
  end

  def index
  end


  def battle_params
    # binding.pry
    params.permit(:climber_id, :battler_id, :is_valid_status, :finish_at)
  end
end
