class BattlesController < ApplicationController
  def show
  end

  def update
  end

  def create
    # バトルを申し込んだ時に通知も作成する。battleモデルにメソッド記載
    @new_battle = Battle.new(battle_params)
    @new_battle.climber_id = current_climber.id
    if @new_battle.save
      @new_battle.create_notification_by(current_climber)
    else
      redirect_to request.referer, notice: 'すでにバトルを申し込んできます。承認されるまでお待ちください'
    end
      redirect_to request.referer, notice: 'バトルを申し込みました！承認されるとバトルページが使用できます'
  end

  def destroy
  end

  def index
  end


  def battle_params
    params.permit(:climber_id, :battler_id, :is_valid_status, :finish_at)
  end
end
