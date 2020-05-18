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
    # binding.pry
    @delete_battle = Battle.find(params[:id])
    # @delete_battle.battler
    if params[:battle].present?
        # カレントユーザが申し込んだ側の場合
      if @delete_battle.climber == current_climber
        # 相手の情報を@opponentへ代入
        @opponent = @delete_battle.battler
        # 自分の登れた数と相手の登れた数を比較する 消したバトルの結果
        result = @delete_battle.my_count_result_by(@opponent)
        # 勝ち、もしくわ負けの時にカレントユーザをwinner として登録する
        if result == "Win" || result == "Draw"
          create_battle_history(current_climber,@opponent,@delete_battle)
          # create_battle_history(winner,loser,battle)
        else
          create_battle_history(@opponent,current_climber,@delete_battle)
        end
        # カレントユーザが申し込まれた側の場合
      elsif @delete_battle.battler == current_climber
        # 相手の情報を@opponentへ代入
        @opponent = @delete_battle.climber
        # 自分の登れた数と相手の登れた数を比較する 消したバトルの結果
        result = @delete_battle.my_count_result_by(@opponent)
        # 勝ち、もしくわ負けの時にカレントユーザをwinner として登録する
        if result == "Win" || result == "Draw"
          create_battle_history(current_climber,@opponent,@delete_battle)
        else
          create_battle_history(@opponent,current_climber,@delete_battle)
        end
      end
      @delete_battle.destroy
      redirect_to request.referer, notice: "バトルを終了しました"
    else
      @delete_battle.destroy
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
    @battle_historys = BattleHistory
    .where(winner_id: current_climber.id)
    .or(BattleHistory
    .where(loser_id: current_climber.id))
  end

  private
  def battle_params
    params.permit(:climber_id, :battler_id, :is_valid_status, :finish_at)
  end

  def create_battle_history(winner,loser,battle)
    # binding.pry
    history = BattleHistory.new(
      winner_id: winner.id,
      winner_count: battle.done_task_by(winner),
      loser_id: loser.id,
      loser_count: battle.done_task_by(loser),
      is_draw_status: battle.my_count_result_by(winner) == "Draw" ? true : false,
      started_at: battle.updated_at,
      finished_at: battle.finish_at
      )
    if history.save
      return true
    else
      return false
    end
  end
end