class BattlesController < ApplicationController
  def show

  end

  def update
    @update_battle = Battle.find(params[:id])
    if params[:battle_status] == "延長"
      # binding.pry
      @update_battle.update(finish_at: @update_battle.finish_at.next_day(3))
      redirect_to request.referer, notice: "バトルを3日延長しました"
    end
  end

  def create
    # バトルを申し込んだ時に通知も作成する。battleモデルにメソッド記載
    @new_battle = Battle.new(battle_params)
    @new_battle.climber_id = current_climber.id
    if @new_battle.save
      # 通知に登録。モデルへ記述
      @new_battle.create_notification_by(current_climber)
    else
      redirect_to request.referer, notice: 'すでにバトルを申し込んできます! 承認されるまでお待ちください'
    end
      redirect_to request.referer, notice: 'バトルを申し込みました! 承認されるとバトルページが使用できます'
  end

  def destroy
    @delete_battle = Battle.find(params[:id])
    @delete_battle.destroy
    if params[:battle][:fin_battle] == "終了"
    # バトル履歴に登録。モデルへ記述しなおす
    # 自分の登れた本数が相手と同じ本数の場合winnerに自分を登録。is_draw_statusをtrueにする
      if my_count == rival_count
        battle_history.new(
        winner_id: crrent_climber.id,
        winner_count: my_count,
        loser_id: 対戦相手のid,
        loser_count: rival_count,
        is_draw_status: true,
        started_at: @delite_battle.updated_at,
        finished_at: @delite_battle.finish_at
      )
    # 自分の登れた本数が相手より多い場合winnerに自分を登録。is_draw_statusをfalseにする
      elsif my_count > rival_count
        battle_history.new(
          winner_id: crrent_climber.id,
          winner_count: my_count,
          loser_id: 対戦相手のid,
          loser_count: rival_count,
          is_draw_status: false,
          started_at: @delite_battle.updated_at,
          finished_at: @delite_battle.finish_at
        )
      else
    # 自分の登れた本数が相手より多い場合winnerに自分を登録。is_draw_statusをfalseにする
        battle_history.new(
          winner_id: 対戦相手のid,
          winner_count: rival_count,
          loser_id: current_climber.id,
          loser_count: my_count,
          is_draw_status: false,
          started_at: @delite_battle.updated_at,
          finished_at: @delite_battle.finish_at
        )
      end
      redirect_to request.referer, notice: "バトルを終了しました"
    elsif
      redirect_to request.referer, notice: 'バトル申請を取り消しました'
    end
  end

  def index
    # binding.pry
    # バトル中一覧（自分が挑んだ側 or 挑まれた側 の承認済の全て）
    @now_battles = current_climber.battles
    .where(is_valid_status: true)
    .or(current_climber.battlers
    .where(is_valid_status: true))
    # binding.pry
    # バトル申請中一覧（自分が挑んだ側 & 相手が未確認全て）
    @request_battles = current_climber.battles.where(is_valid_status: false)
  end


  def battle_params
    params.permit(:climber_id, :battler_id, :is_valid_status, :finish_at)
  end
end
