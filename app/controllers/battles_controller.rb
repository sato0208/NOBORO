class BattlesController < ApplicationController
	before_action :authenticate_climber!

  def update
    @update_battle = Battle.find(params[:id])
    if params[:battle_status] == "リセット"
      @update_battle.update(finish_at: @update_battle.created_at.next_day(3))
      redirect_to request.referer, notice: "バトルをリセットしました"
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
      redirect_to request.referer, notice: "バトルを申し込みました! 承認されるとバトルページが使用できます"
  end

  def destroy
    @delete_battle = Battle.find(params[:id])
    if params[:battle].present?
      # カレントユーザが申し込んだ側の場合
      if @delete_battle.climber == current_climber
        # 相手の情報を@opponentへ代入
        @opponent = @delete_battle.battler
        # 自分の登れた数と相手の登れた数を比較する 消したバトルの結果
        result = @delete_battle.my_count_result_by(current_climber, @opponent)
        # 勝ち、もしくわ負けの時にカレントユーザをwinner として登録する
        battle_result_by_battle_history(current_climber,@opponent,@delete_battle)
      # カレントユーザが申し込まれた側の場合
      elsif @delete_battle.battler == current_climber
        # 相手の情報を@opponentへ代入
        @opponent = @delete_battle.climber
        # 勝ち、もしくわ負けの時にカレントユーザをwinner として登録する
        battle_result_by_battle_history(current_climber,@opponent,@delete_battle)
      end
      @delete_battle.destroy
      redirect_to request.referer, notice: "バトルを終了しました!　バトル履歴に情報が登録されました"
    else
      @delete_battle.destroy
      redirect_to request.referer, notice: 'バトル申請を取り消しました'
    end
  end

  def index
    # バトル中一覧（自分が挑んだ側 or 挑まれた側 の承認済の全て）
    @now_battles = current_climber.battles
    .where(is_valid_status: true)
    .or(current_climber.battlers
    .where(is_valid_status: true))
    # バトル申請中一覧（自分が挑んだ側 & 相手が未確認全て）
    @request_battles = current_climber.battles.where(is_valid_status: false)
    @battle_historys = BattleHistory
    .where(winner_id: current_climber.id)
    .or(BattleHistory
    .where(loser_id: current_climber.id)).page(params[:page]).per(6)
  end

  private

  # バトル履歴を登録する
  def create_battle_history(winner,loser,battle)
    history = BattleHistory.new(
      winner_id: winner.id,
      winner_count: battle.done_task_by(winner),
      loser_id: loser.id,
      loser_count: battle.done_task_by(loser),
      is_draw_status: battle.my_count_result_by(winner,loser) == "Draw" ? true : false,
      started_at: battle.updated_at,
      finished_at: battle.finish_at
      )
    if history.save
      return true
    else
      return false
    end
  end

  # 勝利したユーザーの勝利カラムを＋1する
  def create_battle_count(winner)
    if winner.win_count == nil
      winner.win_count = 1
    else
      winner.win_count = winner.win_count + 1
    end
    winner.save
  end

  # 勝ち、もしくわ負けの時にカレントユーザをwinner として登録する
  def battle_result_by_battle_history(current_climber,opponent,delete_battle)
    # 自分の登れた数と相手の登れた数を比較する 消したバトルの結果
    result = delete_battle.my_count_result_by(current_climber, opponent)
    if result == "Win" || result == "Draw"
      create_battle_count(current_climber)
      create_battle_history(current_climber,opponent,delete_battle)
    else
      create_battle_count(opponent)
      create_battle_history(opponent,current_climber,delete_battle)
    end
  end

  def battle_params
    params.permit(:climber_id, :battler_id, :is_valid_status, :finish_at)
  end

end