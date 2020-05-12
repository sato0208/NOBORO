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
      redirect_to request.referer, notice: 'すでにバトルを申し込んできます! 承認されるまでお待ちください'
    end
      redirect_to request.referer, notice: 'バトルを申し込みました! 承認されるとバトルページが使用できます'
  end

  def destroy
    if params[:battle][:fin_battle] == "終了"
      battle.destroy
      flash[:notice] = "バトルを終了しました"
    end
    battle = Battle.find(params[:id])
    battle.destroy
    redirect_to request.referer, notice: 'バトル申請を取り消しました'
  end

  def index
    # binding.pry
    # バトル中一覧（承認済） 自分が送って承認されてものだけでてる 送られて承認したものが出ない
    @now_battles = current_climber.battles
    .where(is_valid_status: true)
    .or(current_climber.battlers.where(is_valid_status: true))
    # binding.pry
    # バトル申請中一覧（未確認）
    @request_battles = current_climber.battles.where(is_valid_status: false)
    # DoneTaskテーブルの開始日をBattleテーブルの開始日から集計する
    # @battle_done_tasks = DoneTask.where("created_at >= finish_at AND created_at < finish_at", date, date + 1)
    # battle_done_tasks = current_climber.@now_battles.where(updated_at:  >= finish_at AND created_at < finish_at)

    # @battle_done_tasks = DoneTask.where(
    #   climber_id: Climber.find(バトル相手のID)
    # .battles.pluck(:battler_id))
    # .where(
    #   created_at: (Battle.updated_at)..(Battle.finish_at)
    # )
  end


  def battle_params
    params.permit(:climber_id, :battler_id, :is_valid_status, :finish_at)
  end
end
