class Battle < ApplicationRecord
  belongs_to :climber
  belongs_to :battler, class_name: 'Climber'
  has_many :notification, dependent: :destroy

  # 一つのclimber_id に対して同じbattler 情報を登録させないためのユニーク制約
  validates :climber_id, uniqueness: { scope: [:battler_id] }


  # battleテーブルのステータスがtrueのもの全てを取得
  # scope :only_active, -> {
  #   where(is_valid_status: true)
  # }
    # scope :done_tasks, -> {
    #   climber.done_tasks.where(created_at: self.updated..self.finished_at)
    # }

  # battle レコード作成時にnotification レコードも作成する
  def create_notification_by(current_climber)
      notification = current_climber.active_notifications.new(
      battle_id: self.id,
      visited_id: self.battler_id,
      confirm_status: "未確認"
    )
    notification.save if notification.valid?
  end

  # 自分がバトルを申し込んだ場合の登れた課題全て
  def done_task_climber_by
    done_task = DoneTask.where(climber_id: Climber.find(self.climber.id))
    battle_done_task = done_task.where(created_at: self.updated_at..self.finish_at)
  end

  # 自分がバトルを申し込まれた場合の登れた課題全て
  def done_task_battler_by
    done_task = DoneTask.where(climber_id: Climber.find(self.battler.id))
    battle_done_task = done_task.where(created_at: self.updated_at..self.finish_at)
  end

  # battle.done_task_by(current_climber)
  # バトルがselfに入る。ユーザーが下の比較しているuserに入る
  # userに入れたClimberの登れた課題の数を出すことができる。
  def done_task_by(user)
    # 三項演算子
    # 比較、trueの場合 climber.idが入る falseの場合 battler.idが入る
    my_id = user == self.climber ? self.climber.id : self.battler.id
    done_task = DoneTask.where(climber_id: Climber.find(my_id))
    return done_task.where(created_at: self.updated_at..self.finish_at).count
  end

  # battle.my_count_result_by(user)
  # 勝敗の表示
  def my_count_result_by(climber, opponent)
    if self.done_task_by(climber) == self.done_task_by(opponent)
      result = "Draw"
    elsif self.done_task_by(climber) < self.done_task_by(opponent)
      result = "Lose"
    else self.done_task_by(climber) > self.done_task_by(opponent)
      result = "Win"
    end
  end

  def battle_history_by
    BattleHistory
    .where(winner_id: self.id)
    .or(BattleHistory
    .where(loser_id: self.id))
  end
end