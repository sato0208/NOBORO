class BattlesController < ApplicationController
  def show
  end

  def update
  end

  def create
    @new_battle = Battle.new(battle_params)
    @new_battle.climber_id = current_climber.id
    if @new_battle.save
      @new_battle.create_notification_by(current_climber)
    else
    end
    # @new_battle = Battle.find_by(batter_id: params[:battler_id])
    #@new_battle.create_notification_by(current_climber)
    respond_to do |format|
      format.html {redirect_to request.referrer}
      format.js
    end
  end

  def destroy
  end

  def index
  end


  def battle_params
    params.permit(:climber_id, :battler_id, :is_valid_status, :finish_at)
  end
end
